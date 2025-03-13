---
id: resume-intro
title: 个人简历
sidebar_position: 1
---

<div className="resume-container">

# 👤 个人简历

<div className="resume-header">

## 📋 基本信息

<div className="info-grid">
<div>

- 👤 **姓名**：张明远
- 📧 **邮箱**：zmy@example.com
- 📱 **电话**：138xxxx9876
- 🌐 **期望城市**：上海
- 💼 **求职意向**：前端开发工程师
- 💰 **期望薪资**：15-20K
- 👨 **个人信息**：男 | 26岁 | 4年工作经验

</div>
</div>

</div>

## 💫 个人优势

1. 精通现代前端开发技术栈，包括React、Vue、TypeScript等，能够构建高性能的Web应用
2. 具备良好的代码规范和架构设计能力，注重代码质量和可维护性
3. 熟练使用前端工程化工具，如Webpack、Vite、ESLint等，提升开发效率
4. 有丰富的组件库开发和维护经验，善于抽象和复用代码
5. 具备良好的团队协作能力，能够有效进行技术方案沟通和文档编写
6. 熟悉前端性能优化技术，能够解决复杂的性能问题
7. 对前端新技术保持持续学习和关注，具有技术探索精神
8. 具备基本的后端开发知识，能够进行全栈开发

## 💻 技术栈

<div className="skill-grid">

### 🔧 核心技能
- **语言**：JavaScript、TypeScript、HTML5、CSS3
- **框架**：React、Vue、Next.js、Nuxt.js
- **状态管理**：Redux、Vuex、Mobx
- **UI框架**：Ant Design、Element Plus
- **工具链**：Webpack、Vite、Babel

### 🎨 其他技能
- **测试**：Jest、Cypress
- **构建**：Docker、Jenkins
- **版本控制**：Git、GitLab
- **后端**：Node.js、Express
- **数据库**：MongoDB、MySQL

### ⚙️ 开发工具
- **IDE**：VS Code、WebStorm
- **调试工具**：Chrome DevTools
- **设计工具**：Figma、Sketch
- **接口测试**：Postman
- **文档工具**：Notion、Confluence

</div>

## 👔 工作经历

### 字节跳动 - 前端开发工程师
*2022.03 - 至今*

#### 企业级中台项目
- **主要职责**：
  - 负责中台核心组件库的开发和维护
  - 参与前端架构设计和技术选型
  - 制定前端开发规范和最佳实践
  - 解决性能优化问题

### 阿里巴巴 - 前端开发工程师
*2020.07 - 2022.02*

#### 电商平台项目
- **主要职责**：
  - 负责商品详情页的开发和优化
  - 参与移动端适配和性能优化
  - 开发和维护通用组件库
  - 解决跨浏览器兼容性问题

## ⭐ 项目经验

### 企业级组件库项目
- **技术栈**：React + TypeScript + Webpack + Jest
- **开发工具**：VS Code、GitLab、Figma
- **项目简介**：
  企业级UI组件库，包含50+基础组件，支持主题定制，国际化等特性。该组件库服务于公司内部多个业务线，大幅提升了开发效率和产品一致性。
- **项目成果**：
  1. 组件库月下载量超过10万次
  2. 组件库文档使用量每月超过5000次
  3. 解决了90%的常见UI组件需求
  4. 支持按需加载，减少打包体积

### 电商平台重构项目
- **技术栈**：Vue3 + Vite + TypeScript + Pinia
- **开发工具**：WebStorm、Docker、Jenkins
- **项目简介**：
  对原有的电商平台进行技术栈升级和重构，采用最新的Vue3生态，实现了更好的性能和用户体验。
- **项目成果**：
  1. 页面加载速度提升50%
  2. 首屏渲染时间降低40%
  3. 代码量减少30%
  4. 用户体验显著提升

## 🎓 教育背景

### 浙江大学
*2016 - 2020*
- **专业**：计算机科学与技术
- **学历**：本科
- **主修课程**：数据结构、算法设计、Web开发、软件工程

</div>

<style>
{`
.resume-container {
  max-width: 1000px;
  margin: 0 auto;
  padding: 20px;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  line-height: 1.6;
}

.resume-header {
  border-bottom: 2px solid var(--ifm-color-primary);
  margin-bottom: 2rem;
  padding-bottom: 1rem;
}

.info-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin: 1rem 0;
}

.skill-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin: 1rem 0;
}

h1 {
  font-size: 2.5rem;
  color: var(--ifm-color-primary);
  margin-bottom: 2rem;
}

h2 {
  color: var(--ifm-color-primary-darker);
  border-bottom: 2px solid var(--ifm-color-primary-lighter);
  padding-bottom: 0.5rem;
  margin-top: 2rem;
}

h3 {
  color: var(--ifm-color-primary);
  margin-top: 1.5rem;
  font-size: 1.3rem;
}

h4 {
  color: var(--ifm-color-primary-light);
  margin-top: 1rem;
  font-size: 1.1rem;
}

ul {
  list-style-type: none;
  padding-left: 0;
}

li {
  margin-bottom: 0.5rem;
  line-height: 1.6;
}

strong {
  color: var(--ifm-color-primary-darker);
}

.info-grid li {
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

.skill-grid li {
  margin-bottom: 1rem;
}

em {
  color: var(--ifm-color-emphasis-600);
  font-style: normal;
}

.project-details {
  background: var(--ifm-background-surface-color);
  border-radius: 8px;
  padding: 1rem;
  margin: 1rem 0;
  border: 1px solid var(--ifm-color-emphasis-200);
}
`}
</style> 