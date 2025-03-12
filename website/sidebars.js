/** @type {import('@docusaurus/plugin-content-docs').SidebarsConfig} */
const sidebars = {
  tutorialSidebar: [
    {
      type: 'category',
      label: '技术文档',
      items: [
        'tech/intro',
        {
          type: 'category',
          label: '前端开发',
          items: [
            'tech/frontend/frontend-getting-started'
          ],
        },
        {
          type: 'category',
          label: '后端开发',
          items: [
            {
              type: 'doc',
              id: 'tech/intro',
              label: '后端开发简介'
            }
          ],
        },
        {
          type: 'category',
          label: '数据库',
          items: [
            {
              type: 'doc',
              id: 'tech/intro',
              label: '数据库基础'
            }
          ],
        },
        {
          type: 'category',
          label: '系统架构',
          items: [
            {
              type: 'doc',
              id: 'tech/intro',
              label: '架构设计基础'
            }
          ],
        },
        {
          type: 'category',
          label: 'DevOps',
          items: [
            {
              type: 'doc',
              id: 'tech/intro',
              label: 'DevOps 实践'
            }
          ],
        },
      ],
    },
  ],
  interviewSidebar: [
    {
      type: 'category',
      label: '面试资料',
      items: [
        'interview/intro',
        {
          type: 'category',
          label: '算法题解',
          items: [
            {
              type: 'doc',
              id: 'interview/intro',
              label: '算法基础'
            }
          ],
        },
        {
          type: 'category',
          label: '系统设计',
          items: [
            {
              type: 'doc',
              id: 'interview/intro',
              label: '系统设计基础'
            }
          ],
        },
        {
          type: 'category',
          label: '技术面试题',
          items: [
            {
              type: 'doc',
              id: 'interview/intro',
              label: '面试题概述'
            }
          ],
        },
        {
          type: 'category',
          label: '面试经验',
          items: [
            {
              type: 'doc',
              id: 'interview/intro',
              label: '经验分享'
            }
          ],
        },
      ],
    },
  ],
  resumeSidebar: [
    {
      type: 'category',
      label: '个人简历',
      items: [
        'resume/resume-intro'
      ],
    },
  ],
};

module.exports = sidebars; 