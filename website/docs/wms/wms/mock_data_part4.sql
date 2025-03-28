-- 模拟入库单数据
INSERT INTO `wms_receipt_order` (`receipt_order_no`, `receipt_type`, `supplier_id`, `warehouse_id`, `order_status`, `receipt_status`, `expect_time`, `arrival_time`, `total_count`, `total_amount`, `remark`, `creator`, `tenant_id`) VALUES
('RO2401010001', 0, 1, 1, 2, 2, '2024-01-01 10:00:00', '2024-01-01 10:30:00', 100, 699900.00, 'iPhone入库', 'admin', 1),
('RO2401010002', 0, 1, 1, 2, 2, '2024-01-01 14:00:00', '2024-01-01 14:30:00', 50, 649950.00, 'MacBook入库', 'admin', 1),
('RO2401020001', 0, 2, 2, 2, 2, '2024-01-02 10:00:00', '2024-01-02 10:30:00', 80, 503920.00, 'iPad入库', 'admin', 1),
('RO2401020002', 0, 3, 2, 2, 2, '2024-01-02 14:00:00', '2024-01-02 14:30:00', 100, 499900.00, '小米手机入库', 'admin', 1),
('RO2401030001', 0, 4, 1, 2, 2, '2024-01-03 10:00:00', '2024-01-03 10:30:00', 100, 699900.00, '华为手机入库', 'admin', 1),
('RO2401030002', 0, 5, 3, 2, 2, '2024-01-03 14:00:00', '2024-01-03 14:30:00', 30, 119970.00, '冰箱入库', 'admin', 1),
('RO2401040001', 0, 5, 3, 2, 2, '2024-01-04 10:00:00', '2024-01-04 10:30:00', 30, 89970.00, '空调入库', 'admin', 1),
('RO2401040002', 0, 5, 4, 2, 2, '2024-01-04 14:00:00', '2024-01-04 14:30:00', 30, 77970.00, '洗衣机入库', 'admin', 1),
('RO2401050001', 0, 5, 4, 2, 2, '2024-01-05 10:00:00', '2024-01-05 10:30:00', 50, 14950.00, '豆浆机入库', 'admin', 1),
('RO2401050002', 0, 5, 4, 2, 2, '2024-01-05 14:00:00', '2024-01-05 14:30:00', 50, 19950.00, '电饭煲入库', 'admin', 1);

-- 模拟入库单明细数据
INSERT INTO `wms_receipt_order_detail` (`receipt_order_id`, `item_id`, `plan_count`, `real_count`, `location_id`, `price`, `quality_status`, `status`, `remark`, `creator`, `tenant_id`) VALUES
(1, 1, 100, 100, 1, 6999.00, 1, 2, 'iPhone入库', 'admin', 1),
(2, 2, 50, 50, 2, 12999.00, 1, 2, 'MacBook入库', 'admin', 1),
(3, 3, 80, 80, 3, 6299.00, 1, 2, 'iPad入库', 'admin', 1),
(4, 4, 100, 100, 4, 4999.00, 1, 2, '小米手机入库', 'admin', 1),
(5, 5, 100, 100, 1, 6999.00, 1, 2, '华为手机入库', 'admin', 1),
(6, 6, 30, 30, 5, 3999.00, 1, 2, '冰箱入库', 'admin', 1),
(7, 7, 30, 30, 6, 2999.00, 1, 2, '空调入库', 'admin', 1),
(8, 8, 30, 30, 7, 2599.00, 1, 2, '洗衣机入库', 'admin', 1),
(9, 9, 50, 50, 8, 299.00, 1, 2, '豆浆机入库', 'admin', 1),
(10, 10, 50, 50, 9, 399.00, 1, 2, '电饭煲入库', 'admin', 1); 