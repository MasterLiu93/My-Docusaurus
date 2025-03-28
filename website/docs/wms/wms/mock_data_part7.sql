-- 模拟库存盘点数据
INSERT INTO `wms_inventory_check` (`check_no`, `warehouse_id`, `check_type`, `check_status`, `total_count`, `checked_count`, `difference_count`, `remark`, `creator`, `tenant_id`) VALUES
('IC2401110001', 1, 0, 2, 130, 130, -1, '仓库1电子产品盘点', 'admin', 1),
('IC2401110002', 2, 0, 2, 100, 100, -2, '仓库2电子产品盘点', 'admin', 1),
('IC2401120001', 3, 0, 2, 40, 40, 1, '仓库3家电盘点', 'admin', 1),
('IC2401120002', 4, 0, 2, 80, 80, -1, '仓库4家电盘点', 'admin', 1),
('IC2401130001', 1, 1, 2, 100, 100, 0, '仓库1季度末盘点', 'admin', 1);

-- 模拟库存盘点明细数据
INSERT INTO `wms_inventory_check_detail` (`check_id`, `item_id`, `location_id`, `book_count`, `check_count`, `difference_count`, `check_status`, `remark`, `creator`, `tenant_id`) VALUES
(1, 1, 1, 50, 49, -1, 1, 'iPhone盘点-有差异', 'admin', 1),
(1, 2, 2, 30, 30, 0, 1, 'MacBook盘点-无差异', 'admin', 1),
(1, 5, 1, 50, 51, 1, 1, '华为手机盘点-有差异', 'admin', 1),
(2, 3, 3, 50, 50, 0, 1, 'iPad盘点-无差异', 'admin', 1),
(2, 4, 4, 50, 48, -2, 1, '小米手机盘点-有差异', 'admin', 1),
(3, 6, 5, 20, 20, 0, 1, '冰箱盘点-无差异', 'admin', 1),
(3, 7, 6, 20, 21, 1, 1, '空调盘点-有差异', 'admin', 1),
(4, 8, 7, 20, 20, 0, 1, '洗衣机盘点-无差异', 'admin', 1),
(4, 9, 8, 30, 30, 0, 1, '豆浆机盘点-无差异', 'admin', 1),
(4, 10, 9, 30, 29, -1, 1, '电饭煲盘点-有差异', 'admin', 1),
(5, 1, 1, 49, 49, 0, 1, 'iPhone复盘-无差异', 'admin', 1),
(5, 5, 1, 51, 51, 0, 1, '华为手机复盘-无差异', 'admin', 1);

-- 模拟库存调拨数据
INSERT INTO `wms_move_order` (`move_order_no`, `move_type`, `from_warehouse_id`, `to_warehouse_id`, `from_location_id`, `to_location_id`, `order_status`, `move_status`, `total_count`, `remark`, `creator`, `tenant_id`) VALUES
('MO2401140001', 0, 1, 2, 1, 4, 2, 2, 15, '仓库1到仓库2调拨电子产品', 'admin', 1),
('MO2401140002', 0, 2, 1, 3, 2, 2, 2, 20, '仓库2到仓库1调拨电子产品', 'admin', 1),
('MO2401150001', 0, 3, 4, 5, 7, 2, 2, 10, '仓库3到仓库4调拨家电', 'admin', 1),
('MO2401150002', 0, 4, 3, 8, 5, 2, 2, 10, '仓库4到仓库3调拨家电', 'admin', 1),
('MO2401160001', 0, 1, 3, 1, 5, 2, 2, 10, '仓库1到仓库3调拨混合商品', 'admin', 1);

-- 模拟库存调拨明细数据
INSERT INTO `wms_move_order_detail` (`move_order_id`, `item_id`, `plan_count`, `real_count`, `status`, `remark`, `creator`, `tenant_id`) VALUES
(1, 1, 10, 10, 2, 'iPhone调拨', 'admin', 1),
(1, 2, 5, 5, 2, 'MacBook调拨', 'admin', 1),
(2, 3, 10, 10, 2, 'iPad调拨', 'admin', 1),
(2, 4, 10, 10, 2, '小米手机调拨', 'admin', 1),
(3, 6, 5, 5, 2, '冰箱调拨', 'admin', 1),
(3, 7, 5, 5, 2, '空调调拨', 'admin', 1),
(4, 8, 5, 5, 2, '洗衣机调拨', 'admin', 1),
(4, 9, 5, 5, 2, '豆浆机调拨', 'admin', 1),
(5, 1, 5, 5, 2, 'iPhone调拨到家电仓', 'admin', 1),
(5, 2, 5, 5, 2, 'MacBook调拨到家电仓', 'admin', 1); 