-- ----------------------------
-- WMS字典类型数据
-- ----------------------------

-- 基础数据字典
INSERT INTO `system_dict_type` (`name`, `type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES 
('客户级别', 'wms_customer_level', 0, '客户级别字典', 'admin', now(), 'admin', now(), b'0'),
('供应商级别', 'wms_supplier_level', 0, '供应商级别字典', 'admin', now(), 'admin', now(), b'0'),
('仓库类型', 'wms_warehouse_type', 0, '仓库类型字典', 'admin', now(), 'admin', now(), b'0'),
('货区类型', 'wms_area_type', 0, '货区类型字典', 'admin', now(), 'admin', now(), b'0'),
('货架类型', 'wms_rack_type', 0, '货架类型字典', 'admin', now(), 'admin', now(), b'0'),
('库位类型', 'wms_location_type', 0, '库位类型字典', 'admin', now(), 'admin', now(), b'0'),
('库位状态', 'wms_location_status', 0, '库位状态字典', 'admin', now(), 'admin', now(), b'0'),
('物料类型', 'wms_item_type', 0, '物料类型字典', 'admin', now(), 'admin', now(), b'0'),
('通用状态', 'wms_common_status', 0, '通用状态字典', 'admin', now(), 'admin', now(), b'0'),
('入库单状态', 'wms_receipt_order_status', 0, '入库单状态字典', 'admin', now(), 'admin', now(), b'0'),
('入库单类型', 'wms_receipt_type', 0, '入库单类型字典', 'admin', now(), 'admin', now(), b'0'),
('质检状态', 'wms_quality_status', 0, '质检状态字典', 'admin', now(), 'admin', now(), b'0'),
('出库单状态', 'wms_shipment_order_status', 0, '出库单状态字典', 'admin', now(), 'admin', now(), b'0'),
('出库单类型', 'wms_shipment_type', 0, '出库单类型字典', 'admin', now(), 'admin', now(), b'0'),
('移库类型', 'wms_move_type', 0, '移库类型字典', 'admin', now(), 'admin', now(), b'0'),
('移库单状态', 'wms_move_order_status', 0, '移库单状态字典', 'admin', now(), 'admin', now(), b'0'),
('移库状态', 'wms_move_status', 0, '移库状态字典', 'admin', now(), 'admin', now(), b'0'),
('库存移动类型', 'wms_inventory_movement_type', 0, '库存移动类型字典', 'admin', now(), 'admin', now(), b'0'),
('批次状态', 'wms_batch_status', 0, '批次状态字典', 'admin', now(), 'admin', now(), b'0'),
('批次移动类型', 'wms_batch_movement_type', 0, '批次移动类型字典', 'admin', now(), 'admin', now(), b'0');

-- 基础数据字典数据
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES 
-- 客户级别
(1, '普通客户', '0', 'wms_customer_level', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '重要客户', '1', 'wms_customer_level', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, 'VIP客户', '2', 'wms_customer_level', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 供应商级别
(1, '普通供应商', '0', 'wms_supplier_level', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '重要供应商', '1', 'wms_supplier_level', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '战略供应商', '2', 'wms_supplier_level', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 仓库类型
(1, '原材料仓', '0', 'wms_warehouse_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '半成品仓', '1', 'wms_warehouse_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '成品仓', '2', 'wms_warehouse_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(4, '退货仓', '3', 'wms_warehouse_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 货区类型
(1, '存储区', '0', 'wms_area_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '暂存区', '1', 'wms_area_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '拣货区', '2', 'wms_area_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(4, '出货区', '3', 'wms_area_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 货架类型
(1, '标准货架', '0', 'wms_rack_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '重型货架', '1', 'wms_rack_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '悬臂货架', '2', 'wms_rack_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 库位类型
(1, '普通库位', '0', 'wms_location_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '快检库位', '1', 'wms_location_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '退货库位', '2', 'wms_location_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 库位状态
(1, '空闲', '0', 'wms_location_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '占用', '1', 'wms_location_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '锁定', '2', 'wms_location_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(4, '禁用', '3', 'wms_location_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 物料类型
(1, '原材料', '0', 'wms_item_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '半成品', '1', 'wms_item_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '成品', '2', 'wms_item_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(4, '包装材料', '3', 'wms_item_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 通用状态
(1, '正常', '0', 'wms_common_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '禁用', '1', 'wms_common_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 入库单状态
(1, '草稿', '0', 'wms_receipt_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '待审核', '1', 'wms_receipt_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '审核通过', '2', 'wms_receipt_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(4, '审核拒绝', '3', 'wms_receipt_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(5, '入库中', '4', 'wms_receipt_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(6, '已完成', '5', 'wms_receipt_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 入库单类型
(1, '采购入库', '0', 'wms_receipt_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '生产入库', '1', 'wms_receipt_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '退货入库', '2', 'wms_receipt_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(4, '其他入库', '3', 'wms_receipt_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 质检状态
(1, '未检验', '0', 'wms_quality_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '已检验', '1', 'wms_quality_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 出库单状态
(1, '草稿', '0', 'wms_shipment_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '待审核', '1', 'wms_shipment_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '审核通过', '2', 'wms_shipment_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(4, '审核拒绝', '3', 'wms_shipment_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(5, '拣货中', '4', 'wms_shipment_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(6, '已完成', '5', 'wms_shipment_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 出库单类型
(1, '销售出库', '0', 'wms_shipment_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '生产领料', '1', 'wms_shipment_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '其他出库', '2', 'wms_shipment_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 移库类型
(1, '仓库间移库', '0', 'wms_move_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '库区间移库', '1', 'wms_move_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '库位间移库', '2', 'wms_move_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 移库单状态
(1, '草稿', '0', 'wms_move_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '待审核', '1', 'wms_move_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '审核通过', '2', 'wms_move_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(4, '审核拒绝', '3', 'wms_move_order_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 移库状态
(1, '未移库', '0', 'wms_move_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '部分移库', '1', 'wms_move_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '已完成', '2', 'wms_move_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 库存移动类型
(1, '入库', '0', 'wms_inventory_movement_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '出库', '1', 'wms_inventory_movement_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '移库', '2', 'wms_inventory_movement_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(4, '库存调整', '3', 'wms_inventory_movement_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 批次状态
(1, '正常', '0', 'wms_batch_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '冻结', '1', 'wms_batch_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '禁用', '2', 'wms_batch_status', 0, NULL, 'admin', now(), 'admin', now(), b'0'),

-- 批次移动类型
(1, '入库', '0', 'wms_batch_movement_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(2, '出库', '1', 'wms_batch_movement_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'),
(3, '库存调整', '2', 'wms_batch_movement_type', 0, NULL, 'admin', now(), 'admin', now(), b'0'); 