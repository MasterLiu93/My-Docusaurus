import React from 'react';
import clsx from 'clsx';
import Link from '@docusaurus/Link';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import Layout from '@theme/Layout';
import styles from './index.module.css';

// 网站配置数据
const homeConfig = {
  // Hero区域配置
  hero: {
    title: '个人技术博客',
    subtitle: '全栈工程师 | 8年开发经验 | 技术分享',
    description: '分享全栈开发技术，包括前端、后端、DevOps、架构设计等领域的实践经验',
    buttons: [
      {
        text: '开始阅读',
        link: '/docs/intro',
        type: 'primary',
      },
      {
        text: '关于我',
        link: '/about',
        type: 'secondary',
      },
    ],
  },
  // 背景配置
  background: {
    nodeCount: 20, // 网络节点数量
  },
};

function NetworkBackground() {
  return (
    <div className={styles.particlesContainer}>
      <div className={styles.particles}>
        {Array.from({ length: homeConfig.background.nodeCount }).map((_, index) => (
          <div key={index} className={styles.particle} />
        ))}
      </div>
    </div>
  );
}

function HomepageHeader() {
  return (
    <header className={styles.heroBanner}>
      <NetworkBackground />
      <div className={styles.heroContent}>
        <h1 className={styles.heroTitle}>{homeConfig.hero.title}</h1>
        <p className={styles.heroSubtitle}>{homeConfig.hero.subtitle}</p>
        <p className={styles.heroDescription}>{homeConfig.hero.description}</p>
        <div className={styles.buttons}>
          {homeConfig.hero.buttons.map((button, index) => (
            <Link
              key={index}
              className={clsx(styles.heroButton, 'button', button.type === 'primary' ? 'button--primary' : '')}
              to={button.link}>
              {button.text}
            </Link>
          ))}
        </div>
      </div>
    </header>
  );
}

export default function Home(): JSX.Element {
  const {siteConfig} = useDocusaurusContext();
  return (
    <Layout
      title="个人技术博客"
      description="全栈工程师 | 技术分享">
      <HomepageHeader />
    </Layout>
  );
}
