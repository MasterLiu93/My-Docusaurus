# 个人技术博客项目

## 📖 项目介绍

这是一个基于 [Docusaurus 3](https://docusaurus.io/) 构建的技术博客网站，用于分享技术经验、学习笔记、项目文档等内容。项目采用现代化的前端技术栈，支持 Markdown 文档编写，并提供了良好的主题定制能力。

### ✨ 特性

- 📝 支持 Markdown/MDX 文档编写
- 🎨 可自定义主题和样式
- 📱 响应式设计，支持移动端访问
- 🔍 内置全文搜索功能
- 🌍 支持国际化
- 📊 支持文档版本控制
- 🚀 静态站点生成，部署简单
- 💻 开发者友好的文档编写体验

## 🛠️ 技术栈

- [Docusaurus 3](https://docusaurus.io/)
- [React](https://reactjs.org/)
- [TypeScript](https://www.typescriptlang.org/)
- [Node.js](https://nodejs.org/)

## 📦 项目结构

```
my-docusaurus/
├── website/                # 主要项目目录
│   ├── docs/              # 文档目录
│   │   └── resume/        # 简历相关文档
│   ├── blog/              # 博客文章
│   ├── src/               # React 源代码
│   │   ├── pages/        # 页面组件
│   │   │   ├── index.tsx        # 首页组件
│   │   │   └── index.module.css  # 首页样式
│   │   ├── css/          # 全局样式
│   │   └── components/   # 公共组件
│   ├── static/            # 静态资源
│   ├── docusaurus.config.js  # Docusaurus 配置
│   └── sidebars.js        # 侧边栏配置
└── package.json           # 项目依赖配置
```

## 🚀 快速开始

### 环境要求

- Node.js 版本 >= 18
- Yarn 版本 >= 1.22

### 安装步骤

1. **克隆项目**

```bash
git clone https://github.com/your-username/my-docusaurus.git
cd my-docusaurus
```

2. **安装依赖**

```bash
yarn install
```

3. **启动开发服务器**

```bash
yarn start
```

现在你可以在浏览器中访问 http://localhost:3000 查看网站。

### 构建部署

1. **构建静态文件**

```bash
yarn build
```

2. **本地预览构建结果**

```bash
yarn serve
```

3. **部署**

项目可以部署到任何静态网站托管服务，如 GitHub Pages、Netlify、Vercel 等。

## 📝 文档编写

### 添加新文档

1. 在 `website/docs` 目录下创建新的 Markdown 文件
2. 添加文档头部配置：

```markdown
---
id: doc-id
title: 文档标题
sidebar_label: 侧边栏标题
sidebar_position: 1
---

文档内容...
```

### 配置侧边栏

编辑 `website/sidebars.js` 文件：

```javascript
module.exports = {
  docs: [
    {
      type: 'category',
      label: '分类名称',
      items: ['doc-id'],
    },
  ],
};
```

## 🎨 主题定制

### 修改主题配置

编辑 `website/docusaurus.config.js` 文件：

```javascript
module.exports = {
  themeConfig: {
    // 自定义主题配置
  },
};
```

### 自定义 CSS

在 `website/src/css/custom.css` 中添加自定义样式。

## 🔧 常用命令

- `yarn start` - 启动开发服务器
- `yarn build` - 构建静态文件
- `yarn serve` - 本地预览构建结果
- `yarn clear` - 清理构建缓存
- `yarn write-translations` - 生成翻译文件
- `yarn write-heading-ids` - 生成标题 ID

## 🤝 贡献指南

1. Fork 项目
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交改动 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 提交 Pull Request

## 📄 许可证

本项目基于 MIT 许可证开源 - 查看 [LICENSE](LICENSE) 文件了解更多详情。

## 📮 联系方式

- 项目维护者：[Your Name]
- Email：[your-email@example.com]
- GitHub：[your-github-profile]

## 🙏 致谢

- [Docusaurus](https://docusaurus.io/)
- [React](https://reactjs.org/)
- [Node.js](https://nodejs.org/)

---

如果这个项目对你有帮助，欢迎给一个 ⭐️ Star！

## 💡 页面定制

### 首页配置

首页是访问者的第一印象，可以通过以下方式自定义：

1. **修改首页内容**：
   编辑 `website/src/pages/index.tsx` 文件：
   ```tsx
   import React from 'react';
   import Layout from '@theme/Layout';
   import HomepageFeatures from '@site/src/components/HomepageFeatures';

   export default function Home(): JSX.Element {
     return (
       <Layout
         title="首页"
         description="个人技术博客">
         <main>
           // 自定义首页内容
         </main>
       </Layout>
     );
   }
   ```

2. **自定义首页样式**：
   编辑 `website/src/pages/index.module.css` 文件：
   ```css
   /* 自定义首页样式 */
   .heroBanner {
     padding: 4rem 0;
     text-align: center;
     position: relative;
     overflow: hidden;
   }

   .buttons {
     display: flex;
     align-items: center;
     justify-content: center;
   }
   ```

3. **配置首页特性展示**：
   创建或编辑 `website/src/components/HomepageFeatures/index.tsx`：
   ```tsx
   import React from 'react';

   const FeatureList = [
     {
       title: '特性一',
       description: '描述文本',
     },
     // 添加更多特性
   ];

   export default function HomepageFeatures(): JSX.Element {
     return (
       <section>
         {/* 特性展示组件 */}
       </section>
     );
   }
   ```

### 导航配置

在 `docusaurus.config.js` 中配置导航栏和页脚：

```javascript
module.exports = {
  themeConfig: {
    navbar: {
      title: '个人技术博客',
      logo: {
        alt: 'Logo',
        src: 'img/logo.svg',
      },
      items: [
        {to: '/blog', label: '博客', position: 'left'},
        {to: '/docs/intro', label: '文档', position: 'left'},
        // 更多导航项
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: '文档',
          items: [
            {label: '开始', to: '/docs/intro'},
          ],
        },
        // 更多页脚链接
      ],
    },
  },
};
```
