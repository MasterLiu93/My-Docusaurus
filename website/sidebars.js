/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
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
          items: ['tech/frontend/frontend-getting-started'],
        },
        {
          type: 'category',
          label: '后端开发',
          items: [
            'tech/server/分布式锁实现文档',
            'tech/server/工作交接清单',
            'tech/server/统一编码规则文档',
            'tech/server/OpenWeather_API文档',
            'tech/server/大屏设计文档',
          ],
        },
        {
          type: 'category',
          label: 'WMS仓储管理系统',
          items: [
            'wms/intro',
            'wms/wms_basic_data_module',
            'wms/wms_receipt_module',
            'wms/wms_shipment_module',
            'wms/wms_inventory_module',
            'wms/wms_move_module',
            'wms/wms_batch_module',
            'wms/wms_report_module',
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
          items: ['interview/intro'],
        },
        {
          type: 'category',
          label: '系统设计',
          items: ['interview/intro'],
        },
        {
          type: 'category',
          label: '技术面试题',
          items: ['interview/intro'],
        },
        {
          type: 'category',
          label: '面试经验',
          items: ['interview/intro'],
        },
      ],
    },
  ],
  resumeSidebar: [
    {
      type: 'category',
      label: '个人简历',
      items: ['resume/resume-intro'],
    },
  ],
};

module.exports = sidebars;
