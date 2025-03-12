import React, { useCallback } from 'react';
import clsx from 'clsx';
import Layout from '@theme/Layout';
import Link from '@docusaurus/Link';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import styles from './index.module.css';
import Particles from "react-tsparticles";
import { loadSlim } from "tsparticles-slim";

function ParticlesBackground() {
  const particlesInit = useCallback(async engine => {
    await loadSlim(engine);
  }, []);

  return (
    <Particles
      className={styles.particles}
      init={particlesInit}
      options={{
        fullScreen: false,
        background: {
          color: {
            value: "#041E42",
          },
        },
        fpsLimit: 120,
        particles: {
          number: {
            value: 80,
            density: {
              enable: true,
              value_area: 800
            }
          },
          color: {
            value: "#ffffff"
          },
          shape: {
            type: "circle"
          },
          opacity: {
            value: 0.5,
            random: true,
            anim: {
              enable: true,
              speed: 1,
              opacity_min: 0.1,
              sync: false
            }
          },
          size: {
            value: 3,
            random: true,
            anim: {
              enable: true,
              speed: 2,
              size_min: 0.1,
              sync: false
            }
          },
          line_linked: {
            enable: true,
            distance: 150,
            color: "#ffffff",
            opacity: 0.4,
            width: 1
          },
          move: {
            enable: true,
            speed: 2,
            direction: "none",
            random: true,
            straight: false,
            out_mode: "out",
            bounce: false,
            attract: {
              enable: true,
              rotateX: 600,
              rotateY: 1200
            }
          }
        },
        interactivity: {
          detect_on: "canvas",
          events: {
            onhover: {
              enable: true,
              mode: "grab"
            },
            onclick: {
              enable: true,
              mode: "push"
            },
            resize: true
          },
          modes: {
            grab: {
              distance: 140,
              line_linked: {
                opacity: 1
              }
            },
            push: {
              particles_nb: 4
            }
          }
        },
        retina_detect: true
      }}
    />
  );
}

function HomepageHeader() {
  const {siteConfig} = useDocusaurusContext();
  return (
    <header className={clsx('hero', styles.heroBanner)}>
      <ParticlesBackground />
      <div className="container">
        <div className={styles.heroContent}>
          <h1 className={styles.heroTitle}>刘佳兴的技术博客</h1>
          <p className={styles.heroSubtitle}>
            全栈工程师 | 8年开发经验 | 技术分享
          </p>
          <p className={styles.heroDescription}>
            分享全栈开发技术，包括前端、后端、DevOps、架构设计等领域的实践经验
          </p>
          <div className={styles.buttons}>
            <Link
              className={clsx(
                'button button--primary button--lg',
                styles.heroButton
              )}
              to="/docs/intro">
              开始阅读
            </Link>
            <Link
              className={clsx(
                'button button--secondary button--lg',
                styles.heroButton
              )}
              to="/docs/resume/intro">
              关于我
            </Link>
          </div>
        </div>
      </div>
    </header>
  );
}

function TechStack() {
  return (
    <section className={styles.techStack}>
      <div className="container">
        <h2 className={styles.sectionTitle}>技术栈</h2>
        <div className={styles.techGrid}>
          <div className={styles.techCard}>
            <h3>🔧 后端开发</h3>
            <ul>
              <li>Spring Cloud/Alibaba</li>
              <li>MyBatis Plus</li>
              <li>MySQL/Redis</li>
              <li>微服务架构</li>
            </ul>
          </div>
          <div className={styles.techCard}>
            <h3>🎨 前端开发</h3>
            <ul>
              <li>Vue/React</li>
              <li>TypeScript</li>
              <li>Element UI/Ant Design</li>
              <li>响应式设计</li>
            </ul>
          </div>
          <div className={styles.techCard}>
            <h3>⚙️ DevOps</h3>
            <ul>
              <li>Docker/K8s</li>
              <li>Jenkins/GitLab CI</li>
              <li>ELK Stack</li>
              <li>自动化部署</li>
            </ul>
          </div>
          <div className={styles.techCard}>
            <h3>📊 数据分析</h3>
            <ul>
              <li>大数据处理</li>
              <li>数据可视化</li>
              <li>业务分析</li>
              <li>性能优化</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
  );
}

function LatestArticles() {
  const articles = [
    {
      title: '微服务架构实践',
      description: '基于Spring Cloud Alibaba的微服务架构设计与实现',
      link: '/docs/category/microservice',
      date: '2024-03',
    },
    {
      title: '前端工程化探索',
      description: '现代前端工程化实践：从开发到部署的最佳实践',
      link: '/docs/category/frontend',
      date: '2024-03',
    },
    {
      title: 'DevOps最佳实践',
      description: '企业级DevOps流程搭建与工具链整合经验分享',
      link: '/docs/category/devops',
      date: '2024-02',
    },
  ];

  return (
    <section className={styles.latestArticles}>
      <div className="container">
        <h2 className={styles.sectionTitle}>最新文章</h2>
        <div className={styles.articleGrid}>
          {articles.map((article, idx) => (
            <Link key={idx} to={article.link} className={styles.articleCard}>
              <h3>{article.title}</h3>
              <p>{article.description}</p>
              <span className={styles.articleDate}>{article.date}</span>
            </Link>
          ))}
        </div>
      </div>
    </section>
  );
}

export default function Home() {
  const {siteConfig} = useDocusaurusContext();
  return (
    <Layout
      title={siteConfig.title}
      description="刘佳兴的技术博客 - 全栈开发技术分享">
      <HomepageHeader />
      <main>
        <TechStack />
        <LatestArticles />
      </main>
    </Layout>
  );
} 