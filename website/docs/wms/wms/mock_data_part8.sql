-- 批次信息表模拟数据
INSERT INTO `wms_batch` (`batch_no`, `item_id`, `warehouse_id`, `supplier_id`, `production_date`, `expiry_date`, `batch_attr1`, `batch_attr2`, `batch_attr3`, `batch_attr4`, `total_count`, `available_count`, `locked_count`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`)
VALUES 
('B202401010001', 1, 1, 1, '2024-01-01', '2024-12-31', '产地：上海', '质检：合格', NULL, NULL, 1000, 800, 200, 0, '2024年第一批次', 'admin', now(), 'admin', now(), b'0', 1),
('B202401010002', 2, 1, 2, '2024-01-02', '2024-06-30', '产地：北京', '质检：合格', NULL, NULL, 500, 450, 50, 0, '易碎品', 'admin', now(), 'admin', now(), b'0', 1),
('B202401010003', 3, 2, 1, '2024-01-03', '2025-01-02', '产地：广州', '质检：合格', NULL, NULL, 2000, 1800, 200, 0, '大批量入库', 'admin', now(), 'admin', now(), b'0', 1),
('B202401010004', 4, 2, 3, '2024-01-04', '2024-07-03', '产地：深圳', '质检：合格', NULL, NULL, 300, 300, 0, 0, '小批量测试', 'admin', now(), 'admin', now(), b'0', 1),
('B202401010005', 5, 1, 2, '2024-01-05', '2024-12-31', '产地：武汉', '质检：合格', NULL, NULL, 1500, 1400, 100, 0, '常规入库', 'admin', now(), 'admin', now(), b'0', 1);

-- 批次库存表模拟数据
INSERT INTO `wms_batch_inventory` (`batch_id`, `item_id`, `warehouse_id`, `location_id`, `stock_count`, `available_count`, `locked_count`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`)
VALUES 
(1, 1, 1, 1, 500, 400, 100, 0, '正常库存', 'admin', now(), 'admin', now(), b'0', 1),
(1, 1, 1, 2, 500, 400, 100, 0, '正常库存', 'admin', now(), 'admin', now(), b'0', 1),
(2, 2, 1, 3, 500, 450, 50, 0, '正常库存', 'admin', now(), 'admin', now(), b'0', 1),
(3, 3, 2, 4, 1000, 900, 100, 0, '正常库存', 'admin', now(), 'admin', now(), b'0', 1),
(3, 3, 2, 5, 1000, 900, 100, 0, '正常库存', 'admin', now(), 'admin', now(), b'0', 1),
(4, 4, 2, 6, 300, 300, 0, 0, '正常库存', 'admin', now(), 'admin', now(), b'0', 1),
(5, 5, 1, 7, 800, 750, 50, 0, '正常库存', 'admin', now(), 'admin', now(), b'0', 1),
(5, 5, 1, 8, 700, 650, 50, 0, '正常库存', 'admin', now(), 'admin', now(), b'0', 1);

-- 批次操作记录表模拟数据
INSERT INTO `wms_batch_record` (`batch_id`, `movement_type`, `movement_id`, `count`, `before_count`, `after_count`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`)
VALUES 
(1, 0, 1, 1000, 0, 1000, '初始入库', 'admin', now(), 'admin', now(), b'0', 1),
(1, 1, 1, 100, 1000, 900, '销售出库', 'admin', now(), 'admin', now(), b'0', 1),
(2, 0, 2, 500, 0, 500, '初始入库', 'admin', now(), 'admin', now(), b'0', 1),
(2, 2, 1, 50, 500, 450, '库存调整', 'admin', now(), 'admin', now(), b'0', 1),
(3, 0, 3, 2000, 0, 2000, '初始入库', 'admin', now(), 'admin', now(), b'0', 1),
(3, 1, 2, 200, 2000, 1800, '生产领料', 'admin', now(), 'admin', now(), b'0', 1),
(4, 0, 4, 300, 0, 300, '初始入库', 'admin', now(), 'admin', now(), b'0', 1),
(5, 0, 5, 1500, 0, 1500, '初始入库', 'admin', now(), 'admin', now(), b'0', 1),
(5, 1, 3, 100, 1500, 1400, '销售出库', 'admin', now(), 'admin', now(), b'0', 1); 