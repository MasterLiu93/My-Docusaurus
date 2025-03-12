import React from 'react';
import Layout from '@theme/Layout';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import styles from './index.module.css';

export default function Home(): JSX.Element {
  const {siteConfig} = useDocusaurusContext();
  
  return (
    <Layout
      title={siteConfig.title}
      description={siteConfig.tagline}>
      <main className={styles.main}>
        <div className={styles.container}>
          <h1>{siteConfig.title}</h1>
          <p>{siteConfig.tagline}</p>
          <div className={styles.buttons}>
            <a className="button button--primary button--lg" href="/tech/intro">
              技术文档
            </a>
            <a className="button button--secondary button--lg" href="/interview/intro">
              面试资料
            </a>
            <a className="button button--info button--lg" href="/resume/resume-intro">
              个人简历
            </a>
          </div>
        </div>
      </main>
    </Layout>
  );
} 