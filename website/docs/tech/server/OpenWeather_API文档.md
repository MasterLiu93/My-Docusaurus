---
id: OpenWeather_API文档
title: OpenWeather API 集成文档
sidebar_label: OpenWeather API 文档
---

## 1. API 概述

### 1.1 基本信息

- API 提供商：OpenWeather
- API 版本：2.5
- 基础 URL：https://api.openweathermap.org/data/2.5
- API 密钥：需要在 OpenWeather 注册获取
- 文档地址：https://openweathermap.org/api

### 1.2 配置参数

```java
private static final String API_KEY = "your_api_key";
private static final double LAT = 24.4539;  // 阿布扎比的纬度
private static final double LON = 54.3773;  // 阿布扎比的经度
private static final String REDIS_KEY = "sys:weather:abudhabi";
```

## 2. API 端点

### 2.1 当前天气数据

```
GET /weather
```

#### 请求参数

| 参数  | 类型   | 必填 | 说明                  |
| ----- | ------ | ---- | --------------------- |
| lat   | double | 是   | 纬度                  |
| lon   | double | 是   | 经度                  |
| appid | string | 是   | API 密钥              |
| units | string | 否   | 单位(metric/imperial) |
| lang  | string | 否   | 语言代码(如 zh_cn)    |

#### 示例请求

```java
String currentUrl = String.format(
    "https://api.openweathermap.org/data/2.5/weather?lat=%f&lon=%f&appid=%s&units=metric&lang=zh_cn",
    LAT, LON, API_KEY
);
```

#### 响应示例

```json
{
  "coord": {
    "lon": 54.3773,
    "lat": 24.4539
  },
  "weather": [
    {
      "id": 800,
      "main": "Clear",
      "description": "晴天",
      "icon": "01d"
    }
  ],
  "main": {
    "temp": 35.6,
    "feels_like": 39.2,
    "temp_min": 34.8,
    "temp_max": 36.2,
    "pressure": 1008,
    "humidity": 45
  },
  "wind": {
    "speed": 5.2,
    "deg": 120
  }
}
```

### 2.2 五天天气预报

```
GET /forecast
```

#### 请求参数

| 参数  | 类型   | 必填 | 说明                  |
| ----- | ------ | ---- | --------------------- |
| lat   | double | 是   | 纬度                  |
| lon   | double | 是   | 经度                  |
| appid | string | 是   | API 密钥              |
| units | string | 否   | 单位(metric/imperial) |
| lang  | string | 否   | 语言代码(如 zh_cn)    |

#### 示例请求

```java
String forecastUrl = String.format(
    "https://api.openweathermap.org/data/2.5/forecast?lat=%f&lon=%f&appid=%s&units=metric&lang=zh_cn",
    LAT, LON, API_KEY
);
```

#### 响应示例

```json
{
  "list": [
    {
      "dt": 1645369200,
      "main": {
        "temp": 35.6,
        "feels_like": 39.2,
        "temp_min": 34.8,
        "temp_max": 36.2,
        "pressure": 1008,
        "humidity": 45
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "晴天",
          "icon": "01d"
        }
      ],
      "wind": {
        "speed": 5.2,
        "deg": 120
      }
    }
  ]
}
```

## 3. 数据模型

### 3.1 天气数据模型

```java
public class WeatherVO {
    private CurrentWeather current;
    private List<HourlyWeather> hourly;
    private List<DailyWeather> weekly;
    private MonthlyStats monthly;

    // 当前天气
    public static class CurrentWeather {
        private double temp;
        private int humidity;
        private double windSpeed;
        private String description;
        private String icon;
    }

    // 小时预报
    public static class HourlyWeather {
        private long dt;
        private double temp;
        private String description;
        private String icon;
    }

    // 每日预报
    public static class DailyWeather {
        private long dt;
        private double temp;
        private double tempMin;
        private double tempMax;
        private String description;
        private String icon;
    }

    // 月度统计
    public static class MonthlyStats {
        private double maxTemp;
        private double minTemp;
        private double avgTemp;
    }
}
```

## 4. 实现示例

### 4.1 获取天气数据

```java
@Service
public class WeatherServiceImpl implements IWeatherService {
    @Override
    public WeatherVO getAbuDhabiWeather() {
        // 检查缓存
        WeatherVO weatherVO = redisCache.getCacheObject(REDIS_KEY);
        if (weatherVO != null) {
            return weatherVO;
        }

        // 获取实时天气
        String currentResponse = HttpUtils.sendGet(currentUrl);
        JSONObject currentData = JSON.parseObject(currentResponse);

        // 获取天气预报
        String forecastResponse = HttpUtils.sendGet(forecastUrl);
        JSONObject forecastData = JSON.parseObject(forecastResponse);

        // 处理数据...

        // 缓存结果
        redisCache.setCacheObject(REDIS_KEY, weatherVO, 1, TimeUnit.HOURS);

        return weatherVO;
    }
}
```

## 5. 缓存策略

### 5.1 Redis 缓存配置

```java
// 缓存key
private static final String REDIS_KEY = "sys:weather:abudhabi";

// 缓存时间
redisCache.setCacheObject(REDIS_KEY, weatherVO, 1, TimeUnit.HOURS);
```

### 5.2 缓存更新策略

- 缓存时间：1 小时
- 自动过期
- 按需更新
- 异常时返回缓存数据

## 6. 错误处理

### 6.1 错误类型

1. API 调用错误
2. 数据解析错误
3. 网络超时
4. 参数无效

### 6.2 错误处理示例

```java
try {
    // API调用
} catch (Exception e) {
    log.error("Error while fetching weather data", e);
    return null;
}
```

## 7. 监控和日志

### 7.1 日志记录

```java
// 缓存命中
log.info("Get weather data from Redis cache");

// API调用
log.info("Fetching weather data from OpenWeather API");

// 错误记录
log.error("Failed to get weather data from OpenWeather API");
```

### 7.2 监控指标

- API 调用次数
- 响应时间
- 错误率
- 缓存命中率

## 8. 最佳实践

### 8.1 使用建议

1. 合理设置缓存时间
2. 添加错误重试机制
3. 实现降级策略
4. 监控 API 限额

### 8.2 性能优化

1. 使用异步调用
2. 实现请求合并
3. 优化数据缓存
4. 定时预热缓存

---
