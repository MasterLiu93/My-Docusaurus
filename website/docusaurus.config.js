// @ts-check

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: '个人技术博客',
  tagline: '分享技术文档与面试经验',
  favicon: 'img/favicon.ico',

  url: 'https://your-docusaurus-site.example.com',
  baseUrl: '/',

  organizationName: 'your-github-user',
  projectName: 'your-repo-name',

  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',

  i18n: {
    defaultLocale: 'zh-Hans',
    locales: ['zh-Hans'],
  },

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          routeBasePath: '/',
        },
        blog: false,
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      navbar: {
        title: '个人技术博客',
        logo: {
          alt: 'Site Logo',
          src: 'img/logo.svg',
        },
        items: [
          {
            type: 'docSidebar',
            sidebarId: 'tutorialSidebar',
            position: 'left',
            label: '技术文档',
          },
          {
            type: 'docSidebar',
            sidebarId: 'interviewSidebar',
            position: 'left',
            label: '面试资料',
          },
          {
            type: 'docSidebar',
            sidebarId: 'resumeSidebar',
            position: 'left',
            label: '个人简历',
          },
          {
            href: 'https://github.com/your-github-user/your-repo-name',
            label: 'GitHub',
            position: 'right',
          },
        ],
      },
      footer: {
        style: 'dark',
        links: [
          {
            title: '文档',
            items: [
              {
                label: '技术文档',
                to: '/tech/intro',
              },
              {
                label: '面试资料',
                to: '/interview/intro',
              },
              {
                label: '个人简历',
                to: '/resume/resume-intro',
              },
            ],
          },
          {
            title: '社区',
            items: [
              {
                label: 'GitHub',
                href: 'https://github.com/your-github-user',
              },
            ],
          },
        ],
        copyright: `Copyright © ${new Date().getFullYear()} My Project, Inc. Built with Docusaurus.`,
      },
    }),
};

module.exports = config; 