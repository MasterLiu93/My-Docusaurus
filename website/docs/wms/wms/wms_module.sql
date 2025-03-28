-- ----------------------------
-- 1. WMS基础数据模块
-- ----------------------------

-- ----------------------------
-- 客户表
-- ----------------------------
DROP TABLE IF EXISTS `wms_customer`;
CREATE TABLE `wms_customer` (
                                `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '客户ID',
                                `customer_code` varchar(64) NOT NULL COMMENT '客户编码',
                                `customer_name` varchar(128) NOT NULL COMMENT '客户名称',
                                `customer_level` tinyint(4) NOT NULL COMMENT '客户级别(0-普通客户 1-重要客户 2-VIP客户)',
                                `contact` varchar(64) NOT NULL COMMENT '联系人',
                                `phone` varchar(32) NOT NULL COMMENT '联系电话',
                                `email` varchar(128) DEFAULT NULL COMMENT '邮箱',
                                `address` varchar(256) DEFAULT NULL COMMENT '地址',
                                `bank_name` varchar(128) DEFAULT NULL COMMENT '开户行',
                                `bank_account` varchar(128) DEFAULT NULL COMMENT '银行账号',
                                `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-正常 1-禁用)',
                                `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                PRIMARY KEY (`id`),
                                UNIQUE KEY `uk_customer_code` (`customer_code`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='客户表';

-- ----------------------------
-- 供应商表
-- ----------------------------
DROP TABLE IF EXISTS `wms_supplier`;
CREATE TABLE `wms_supplier` (
                                `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '供应商ID',
                                `supplier_code` varchar(64) NOT NULL COMMENT '供应商编码',
                                `supplier_name` varchar(128) NOT NULL COMMENT '供应商名称',
                                `supplier_level` tinyint(4) NOT NULL COMMENT '供应商级别(0-普通 1-重要 2-战略)',
                                `contact` varchar(64) NOT NULL COMMENT '联系人',
                                `phone` varchar(32) NOT NULL COMMENT '联系电话',
                                `email` varchar(128) DEFAULT NULL COMMENT '邮箱',
                                `address` varchar(256) DEFAULT NULL COMMENT '地址',
                                `bank_name` varchar(128) DEFAULT NULL COMMENT '开户行',
                                `bank_account` varchar(128) DEFAULT NULL COMMENT '银行账号',
                                `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-正常 1-禁用)',
                                `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                PRIMARY KEY (`id`),
                                UNIQUE KEY `uk_supplier_code` (`supplier_code`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='供应商表';

-- ----------------------------
-- 仓库表
-- ----------------------------
DROP TABLE IF EXISTS `wms_warehouse`;
CREATE TABLE `wms_warehouse` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '仓库ID',
                                 `warehouse_code` varchar(64) NOT NULL COMMENT '仓库编码',
                                 `warehouse_name` varchar(128) NOT NULL COMMENT '仓库名称',
                                 `warehouse_type` tinyint(4) NOT NULL COMMENT '仓库类型(0-原材料 1-半成品 2-成品 3-退货)',
                                 `area` decimal(10,2) DEFAULT NULL COMMENT '面积(平方米)',
                                 `address` varchar(256) NOT NULL COMMENT '地址',
                                 `charge_person` varchar(64) NOT NULL COMMENT '负责人',
                                 `phone` varchar(32) NOT NULL COMMENT '联系电话',
                                 `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-正常 1-禁用)',
                                 `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                 `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                 `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                 `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                 `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                 `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                 PRIMARY KEY (`id`),
                                 UNIQUE KEY `uk_warehouse_code` (`warehouse_code`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='仓库表';

-- ----------------------------
-- 货区表
-- ----------------------------
DROP TABLE IF EXISTS `wms_area`;
CREATE TABLE `wms_area` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '货区ID',
                            `area_code` varchar(64) NOT NULL COMMENT '货区编码',
                            `area_name` varchar(128) NOT NULL COMMENT '货区名称',
                            `warehouse_id` bigint(20) NOT NULL COMMENT '所属仓库ID',
                            `area_type` tinyint(4) NOT NULL COMMENT '货区类型(0-存储区 1-暂存区 2-拣货区 3-出货区)',
                            `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-正常 1-禁用)',
                            `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                            `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                            `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                            `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                            `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                            `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `uk_area_code` (`area_code`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='货区表';

-- ----------------------------
-- 货架表
-- ----------------------------
DROP TABLE IF EXISTS `wms_rack`;
CREATE TABLE `wms_rack` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '货架ID',
                            `rack_code` varchar(64) NOT NULL COMMENT '货架编码',
                            `rack_name` varchar(128) NOT NULL COMMENT '货架名称',
                            `area_id` bigint(20) NOT NULL COMMENT '所属货区ID',
                            `rack_type` tinyint(4) NOT NULL COMMENT '货架类型(0-标准货架 1-重型货架 2-悬臂货架)',
                            `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-正常 1-禁用)',
                            `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                            `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                            `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                            `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                            `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                            `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `uk_rack_code` (`rack_code`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='货架表';

-- ----------------------------
-- 库位表
-- ----------------------------
DROP TABLE IF EXISTS `wms_location`;
CREATE TABLE `wms_location` (
                                `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '库位ID',
                                `location_code` varchar(64) NOT NULL COMMENT '库位编码',
                                `location_name` varchar(128) NOT NULL COMMENT '库位名称',
                                `rack_id` bigint(20) NOT NULL COMMENT '所属货架ID',
                                `location_type` tinyint(4) NOT NULL COMMENT '库位类型(0-普通 1-快检 2-退货)',
                                `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-空闲 1-占用 2-锁定 3-禁用)',
                                `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                PRIMARY KEY (`id`),
                                UNIQUE KEY `uk_location_code` (`location_code`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='库位表';

-- ----------------------------
-- 物料分类表
-- ----------------------------
DROP TABLE IF EXISTS `wms_item_category`;
CREATE TABLE `wms_item_category` (
                                     `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
                                     `category_code` varchar(64) NOT NULL COMMENT '分类编码',
                                     `category_name` varchar(128) NOT NULL COMMENT '分类名称',
                                     `parent_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '父分类ID',
                                     `sort` int(11) NOT NULL DEFAULT '0' COMMENT '显示顺序',
                                     `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-正常 1-禁用)',
                                     `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                     `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                     `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                     `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                     `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                     `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                     `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                     PRIMARY KEY (`id`),
                                     UNIQUE KEY `uk_category_code` (`category_code`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='物料分类表';

-- ----------------------------
-- 物料表
-- ----------------------------
DROP TABLE IF EXISTS `wms_item`;
CREATE TABLE `wms_item` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '物料ID',
                            `item_code` varchar(64) NOT NULL COMMENT '物料编码',
                            `item_name` varchar(128) NOT NULL COMMENT '物料名称',
                            `category_id` bigint(20) NOT NULL COMMENT '分类ID',
                            `item_type` tinyint(4) NOT NULL COMMENT '物料类型(0-原材料 1-半成品 2-成品 3-包装材料)',
                            `unit` varchar(32) NOT NULL COMMENT '单位',
                            `spec` varchar(256) DEFAULT NULL COMMENT '规格',
                            `price` decimal(10,2) DEFAULT '0.00' COMMENT '参考价格',
                            `safety_stock` int(11) DEFAULT '0' COMMENT '安全库存',
                            `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-正常 1-禁用)',
                            `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                            `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                            `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                            `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                            `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                            `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `uk_item_code` (`item_code`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='物料表';

-- ----------------------------
-- 2. WMS入库管理模块
-- ----------------------------

-- ----------------------------
-- 入库单表
-- ----------------------------
DROP TABLE IF EXISTS `wms_receipt_order`;
CREATE TABLE `wms_receipt_order` (
                                     `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '入库单ID',
                                     `receipt_order_no` varchar(64) NOT NULL COMMENT '入库单号',
                                     `receipt_type` tinyint(4) NOT NULL COMMENT '入库类型(0-采购入库 1-生产入库 2-退货入库 3-调拨入库)',
                                     `supplier_id` bigint(20) DEFAULT NULL COMMENT '供应商ID',
                                     `warehouse_id` bigint(20) NOT NULL COMMENT '仓库ID',
                                     `order_status` tinyint(4) NOT NULL COMMENT '单据状态(0-草稿 1-待审核 2-审核通过 3-审核拒绝)',
                                     `receipt_status` tinyint(4) NOT NULL COMMENT '入库状态(0-待入库 1-部分入库 2-已完成)',
                                     `expect_time` datetime DEFAULT NULL COMMENT '预计到货时间',
                                     `arrival_time` datetime DEFAULT NULL COMMENT '实际到货时间',
                                     `total_count` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
                                     `total_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品金额',
                                     `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                     `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                     `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                     `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                     `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                     `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                     `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                     PRIMARY KEY (`id`),
                                     UNIQUE KEY `uk_receipt_order_no` (`receipt_order_no`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='入库单表';

-- ----------------------------
-- 入库单明细表
-- ----------------------------
DROP TABLE IF EXISTS `wms_receipt_order_detail`;
CREATE TABLE `wms_receipt_order_detail` (
                                            `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '入库单明细ID',
                                            `receipt_order_id` bigint(20) NOT NULL COMMENT '入库单ID',
                                            `item_id` bigint(20) NOT NULL COMMENT '物料ID',
                                            `plan_count` int(11) NOT NULL COMMENT '计划数量',
                                            `real_count` int(11) NOT NULL DEFAULT '0' COMMENT '实际入库数量',
                                            `location_id` bigint(20) DEFAULT NULL COMMENT '入库库位ID',
                                            `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '入库单价',
                                            `quality_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '质检状态(0-未检验 1-已检验)',
                                            `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-未入库 1-部分入库 2-已入库)',
                                            `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                            `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                            `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                            `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                            `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                            `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                            `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='入库单明细表';

-- ----------------------------
-- 入库操作记录表
-- ----------------------------
DROP TABLE IF EXISTS `wms_receipt_record`;
CREATE TABLE `wms_receipt_record` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
                                      `receipt_order_id` bigint(20) NOT NULL COMMENT '入库单ID',
                                      `receipt_order_detail_id` bigint(20) NOT NULL COMMENT '入库单明细ID',
                                      `item_id` bigint(20) NOT NULL COMMENT '物料ID',
                                      `location_id` bigint(20) NOT NULL COMMENT '入库库位ID',
                                      `count` int(11) NOT NULL COMMENT '入库数量',
                                      `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                      `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                      `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                      `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                      `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                      `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                      `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='入库操作记录表';

-- ----------------------------
-- 3. WMS出库管理模块
-- ----------------------------

-- ----------------------------
-- 出库单表
-- ----------------------------
DROP TABLE IF EXISTS `wms_shipment_order`;
CREATE TABLE `wms_shipment_order` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '出库单ID',
                                      `shipment_order_no` varchar(64) NOT NULL COMMENT '出库单号',
                                      `shipment_type` tinyint(4) NOT NULL COMMENT '出库类型(0-销售出库 1-生产出库 2-调拨出库 3-其他出库)',
                                      `customer_id` bigint(20) DEFAULT NULL COMMENT '客户ID',
                                      `warehouse_id` bigint(20) NOT NULL COMMENT '仓库ID',
                                      `order_status` tinyint(4) NOT NULL COMMENT '单据状态(0-草稿 1-待审核 2-审核通过 3-审核拒绝)',
                                      `shipment_status` tinyint(4) NOT NULL COMMENT '出库状态(0-待出库 1-部分出库 2-已完成)',
                                      `expect_time` datetime DEFAULT NULL COMMENT '预计出库时间',
                                      `complete_time` datetime DEFAULT NULL COMMENT '实际完成时间',
                                      `total_count` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
                                      `total_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品金额',
                                      `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                      `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                      `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                      `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                      `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                      `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                      `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                      PRIMARY KEY (`id`),
                                      UNIQUE KEY `uk_shipment_order_no` (`shipment_order_no`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='出库单表';

-- ----------------------------
-- 出库单明细表
-- ----------------------------
DROP TABLE IF EXISTS `wms_shipment_order_detail`;
CREATE TABLE `wms_shipment_order_detail` (
                                             `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '出库单明细ID',
                                             `shipment_order_id` bigint(20) NOT NULL COMMENT '出库单ID',
                                             `item_id` bigint(20) NOT NULL COMMENT '物料ID',
                                             `plan_count` int(11) NOT NULL COMMENT '计划数量',
                                             `real_count` int(11) NOT NULL DEFAULT '0' COMMENT '实际出库数量',
                                             `location_id` bigint(20) DEFAULT NULL COMMENT '出库库位ID',
                                             `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '出库单价',
                                             `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-未出库 1-部分出库 2-已出库)',
                                             `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                             `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                             `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                             `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                             `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                             `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                             `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='出库单明细表';

-- ----------------------------
-- 出库操作记录表
-- ----------------------------
DROP TABLE IF EXISTS `wms_shipment_record`;
CREATE TABLE `wms_shipment_record` (
                                       `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
                                       `shipment_order_id` bigint(20) NOT NULL COMMENT '出库单ID',
                                       `shipment_order_detail_id` bigint(20) NOT NULL COMMENT '出库单明细ID',
                                       `item_id` bigint(20) NOT NULL COMMENT '物料ID',
                                       `location_id` bigint(20) NOT NULL COMMENT '出库库位ID',
                                       `count` int(11) NOT NULL COMMENT '出库数量',
                                       `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                       `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                       `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                       `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                       `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                       `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                       `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                       PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='出库操作记录表';

-- ----------------------------
-- 4. WMS库存管理模块
-- ----------------------------

-- ----------------------------
-- 库存表
-- ----------------------------
DROP TABLE IF EXISTS `wms_inventory`;
CREATE TABLE `wms_inventory` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '库存ID',
                                 `warehouse_id` bigint(20) NOT NULL COMMENT '仓库ID',
                                 `location_id` bigint(20) NOT NULL COMMENT '库位ID',
                                 `item_id` bigint(20) NOT NULL COMMENT '物料ID',
                                 `stock_count` int(11) NOT NULL DEFAULT '0' COMMENT '库存数量',
                                 `available_count` int(11) NOT NULL DEFAULT '0' COMMENT '可用数量',
                                 `locked_count` int(11) NOT NULL DEFAULT '0' COMMENT '锁定数量',
                                 `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-正常 1-禁用)',
                                 `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                 `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                 `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                 `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                 `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                 `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                 PRIMARY KEY (`id`),
                                 UNIQUE KEY `uk_warehouse_location_item` (`warehouse_id`,`location_id`,`item_id`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='库存表';

-- ----------------------------
-- 库存移动记录表
-- ----------------------------
DROP TABLE IF EXISTS `wms_inventory_movement`;
CREATE TABLE `wms_inventory_movement` (
                                          `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '移动ID',
                                          `movement_type` tinyint(4) NOT NULL COMMENT '移动类型(0-入库 1-出库 2-库存调整)',
                                          `movement_no` varchar(64) NOT NULL COMMENT '移动单号',
                                          `warehouse_id` bigint(20) NOT NULL COMMENT '仓库ID',
                                          `location_id` bigint(20) NOT NULL COMMENT '库位ID',
                                          `item_id` bigint(20) NOT NULL COMMENT '物料ID',
                                          `count` int(11) NOT NULL COMMENT '移动数量',
                                          `before_count` int(11) NOT NULL COMMENT '移动前数量',
                                          `after_count` int(11) NOT NULL COMMENT '移动后数量',
                                          `business_type` varchar(32) NOT NULL COMMENT '业务类型',
                                          `business_id` bigint(20) NOT NULL COMMENT '业务单ID',
                                          `business_detail_id` bigint(20) NOT NULL COMMENT '业务明细ID',
                                          `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                          `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                          `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                          `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                          `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                          `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                          `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                          PRIMARY KEY (`id`),
                                          UNIQUE KEY `uk_movement_no` (`movement_no`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='库存移动记录表';

-- ----------------------------
-- 库存盘点单表
-- ----------------------------
DROP TABLE IF EXISTS `wms_inventory_check`;
CREATE TABLE `wms_inventory_check` (
                                       `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '盘点单ID',
                                       `check_no` varchar(64) NOT NULL COMMENT '盘点单号',
                                       `warehouse_id` bigint(20) NOT NULL COMMENT '仓库ID',
                                       `check_type` tinyint(4) NOT NULL COMMENT '盘点类型(0-全部盘点 1-部分盘点)',
                                       `check_status` tinyint(4) NOT NULL COMMENT '盘点状态(0-新建 1-盘点中 2-已完成)',
                                       `total_count` int(11) NOT NULL DEFAULT '0' COMMENT '盘点总数',
                                       `checked_count` int(11) NOT NULL DEFAULT '0' COMMENT '已盘点数',
                                       `difference_count` int(11) NOT NULL DEFAULT '0' COMMENT '差异数',
                                       `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                       `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                       `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                       `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                       `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                       `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                       `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                       PRIMARY KEY (`id`),
                                       UNIQUE KEY `uk_check_no` (`check_no`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='库存盘点单表';

-- ----------------------------
-- 库存盘点明细表
-- ----------------------------
DROP TABLE IF EXISTS `wms_inventory_check_detail`;
CREATE TABLE `wms_inventory_check_detail` (
                                              `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '盘点明细ID',
                                              `check_id` bigint(20) NOT NULL COMMENT '盘点单ID',
                                              `item_id` bigint(20) NOT NULL COMMENT '物料ID',
                                              `location_id` bigint(20) NOT NULL COMMENT '库位ID',
                                              `book_count` int(11) NOT NULL COMMENT '账面数量',
                                              `check_count` int(11) DEFAULT NULL COMMENT '盘点数量',
                                              `difference_count` int(11) DEFAULT NULL COMMENT '差异数量',
                                              `check_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '盘点状态(0-未盘点 1-已盘点)',
                                              `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                              `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                              `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                              `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                              `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                              `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                              `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='库存盘点明细表';

-- ----------------------------
-- 5. WMS移库管理模块
-- ----------------------------

-- ----------------------------
-- 移库单表
-- ----------------------------
DROP TABLE IF EXISTS `wms_move_order`;
CREATE TABLE `wms_move_order` (
                                  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '移库单ID',
                                  `move_order_no` varchar(64) NOT NULL COMMENT '移库单号',
                                  `move_type` tinyint(4) NOT NULL COMMENT '移库类型(0-仓库间移库 1-库区间移库 2-库位间移库)',
                                  `from_warehouse_id` bigint(20) NOT NULL COMMENT '源仓库ID',
                                  `to_warehouse_id` bigint(20) NOT NULL COMMENT '目标仓库ID',
                                  `from_location_id` bigint(20) DEFAULT NULL COMMENT '源库位ID',
                                  `to_location_id` bigint(20) DEFAULT NULL COMMENT '目标库位ID',
                                  `order_status` tinyint(4) NOT NULL COMMENT '单据状态(0-草稿 1-待审核 2-审核通过 3-审核拒绝)',
                                  `move_status` tinyint(4) NOT NULL COMMENT '移库状态(0-待移库 1-部分移库 2-已完成)',
                                  `total_count` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
                                  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                  PRIMARY KEY (`id`),
                                  UNIQUE KEY `uk_move_order_no` (`move_order_no`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='移库单表';

-- ----------------------------
-- 移库单明细表
-- ----------------------------
DROP TABLE IF EXISTS `wms_move_order_detail`;
CREATE TABLE `wms_move_order_detail` (
                                         `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '移库单明细ID',
                                         `move_order_id` bigint(20) NOT NULL COMMENT '移库单ID',
                                         `item_id` bigint(20) NOT NULL COMMENT '物料ID',
                                         `plan_count` int(11) NOT NULL COMMENT '计划数量',
                                         `real_count` int(11) NOT NULL DEFAULT '0' COMMENT '实际移库数量',
                                         `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-未移库 1-部分移库 2-已移库)',
                                         `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                         `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                         `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                         `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                         `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                         `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                         `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='移库单明细表';

-- ----------------------------
-- 移库操作记录表
-- ----------------------------
DROP TABLE IF EXISTS `wms_move_record`;
CREATE TABLE `wms_move_record` (
                                   `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
                                   `move_order_id` bigint(20) NOT NULL COMMENT '移库单ID',
                                   `move_order_detail_id` bigint(20) NOT NULL COMMENT '移库单明细ID',
                                   `item_id` bigint(20) NOT NULL COMMENT '物料ID',
                                   `from_location_id` bigint(20) NOT NULL COMMENT '源库位ID',
                                   `to_location_id` bigint(20) NOT NULL COMMENT '目标库位ID',
                                   `count` int(11) NOT NULL COMMENT '移动数量',
                                   `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                   `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                   `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                   `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                   `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                   `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                   `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='移库操作记录表';

-- ----------------------------
-- 6. WMS字典数据
-- ----------------------------

-- ----------------------------
-- 创建WMS系统模块的字典类型
-- ----------------------------
INSERT INTO `system_dict_type` (`name`, `type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('客户级别', 'wms_customer_level', 0, '客户级别字典', 'admin', now(), 'admin', now(), b'0'),
    ('客户状态', 'wms_customer_status', 0, '客户状态字典', 'admin', now(), 'admin', now(), b'0'),
    ('供应商级别', 'wms_supplier_level', 0, '供应商级别字典', 'admin', now(), 'admin', now(), b'0'),
    ('供应商状态', 'wms_supplier_status', 0, '供应商状态字典', 'admin', now(), 'admin', now(), b'0'),
    ('仓库类型', 'wms_warehouse_type', 0, '仓库类型字典', 'admin', now(), 'admin', now(), b'0'),
    ('货区类型', 'wms_area_type', 0, '货区类型字典', 'admin', now(), 'admin', now(), b'0'),
    ('货架类型', 'wms_rack_type', 0, '货架类型字典', 'admin', now(), 'admin', now(), b'0'),
    ('库位类型', 'wms_location_type', 0, '库位类型字典', 'admin', now(), 'admin', now(), b'0'),
    ('库位状态', 'wms_location_status', 0, '库位状态字典', 'admin', now(), 'admin', now(), b'0'),
    ('物料类型', 'wms_item_type', 0, '物料类型字典', 'admin', now(), 'admin', now(), b'0'),
    ('入库类型', 'wms_receipt_type', 0, '入库类型字典', 'admin', now(), 'admin', now(), b'0'),
    ('出库类型', 'wms_shipment_type', 0, '出库类型字典', 'admin', now(), 'admin', now(), b'0'),
    ('质检状态', 'wms_quality_status', 0, '质检状态字典', 'admin', now(), 'admin', now(), b'0'),
    ('单据状态', 'wms_order_status', 0, '单据状态字典', 'admin', now(), 'admin', now(), b'0'),
    ('入库状态', 'wms_receipt_status', 0, '入库状态字典', 'admin', now(), 'admin', now(), b'0'),
    ('出库状态', 'wms_shipment_status', 0, '出库状态字典', 'admin', now(), 'admin', now(), b'0'),
    ('移库类型', 'wms_move_type', 0, '移库类型字典', 'admin', now(), 'admin', now(), b'0'),
    ('移库状态', 'wms_move_status', 0, '移库状态字典', 'admin', now(), 'admin', now(), b'0'),
    ('盘点类型', 'wms_check_type', 0, '盘点类型字典', 'admin', now(), 'admin', now(), b'0'),
    ('盘点状态', 'wms_check_status', 0, '盘点状态字典', 'admin', now(), 'admin', now(), b'0'),
    ('移动类型', 'wms_movement_type', 0, '移动类型字典', 'admin', now(), 'admin', now(), b'0');

-- ----------------------------
-- 创建WMS系统模块的字典数据
-- ----------------------------
-- 客户级别
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '普通客户', 0, 'wms_customer_level', 0, '普通客户', 'admin', now(), 'admin', now(), b'0'),
    (2, '重要客户', 1, 'wms_customer_level', 0, '重要客户', 'admin', now(), 'admin', now(), b'0'),
    (3, 'VIP客户', 2, 'wms_customer_level', 0, 'VIP客户', 'admin', now(), 'admin', now(), b'0');

-- 客户状态
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '正常', 0, 'wms_customer_status', 0, '正常状态', 'admin', now(), 'admin', now(), b'0'),
    (2, '禁用', 1, 'wms_customer_status', 0, '禁用状态', 'admin', now(), 'admin', now(), b'0');

-- 供应商级别
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '普通供应商', 0, 'wms_supplier_level', 0, '普通供应商', 'admin', now(), 'admin', now(), b'0'),
    (2, '重要供应商', 1, 'wms_supplier_level', 0, '重要供应商', 'admin', now(), 'admin', now(), b'0'),
    (3, '战略供应商', 2, 'wms_supplier_level', 0, '战略供应商', 'admin', now(), 'admin', now(), b'0');

-- 供应商状态
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '正常', 0, 'wms_supplier_status', 0, '正常状态', 'admin', now(), 'admin', now(), b'0'),
    (2, '禁用', 1, 'wms_supplier_status', 0, '禁用状态', 'admin', now(), 'admin', now(), b'0');

-- 仓库类型
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '原材料仓库', 0, 'wms_warehouse_type', 0, '原材料仓库', 'admin', now(), 'admin', now(), b'0'),
    (2, '半成品仓库', 1, 'wms_warehouse_type', 0, '半成品仓库', 'admin', now(), 'admin', now(), b'0'),
    (3, '成品仓库', 2, 'wms_warehouse_type', 0, '成品仓库', 'admin', now(), 'admin', now(), b'0'),
    (4, '退货仓库', 3, 'wms_warehouse_type', 0, '退货仓库', 'admin', now(), 'admin', now(), b'0');

-- 货区类型
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '存储区', 0, 'wms_area_type', 0, '存储区', 'admin', now(), 'admin', now(), b'0'),
    (2, '暂存区', 1, 'wms_area_type', 0, '暂存区', 'admin', now(), 'admin', now(), b'0'),
    (3, '拣货区', 2, 'wms_area_type', 0, '拣货区', 'admin', now(), 'admin', now(), b'0'),
    (4, '出货区', 3, 'wms_area_type', 0, '出货区', 'admin', now(), 'admin', now(), b'0');

-- 货架类型
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '标准货架', 0, 'wms_rack_type', 0, '标准货架', 'admin', now(), 'admin', now(), b'0'),
    (2, '重型货架', 1, 'wms_rack_type', 0, '重型货架', 'admin', now(), 'admin', now(), b'0'),
    (3, '悬臂货架', 2, 'wms_rack_type', 0, '悬臂货架', 'admin', now(), 'admin', now(), b'0');

-- 库位类型
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '普通库位', 0, 'wms_location_type', 0, '普通库位', 'admin', now(), 'admin', now(), b'0'),
    (2, '快检库位', 1, 'wms_location_type', 0, '快检库位', 'admin', now(), 'admin', now(), b'0'),
    (3, '退货库位', 2, 'wms_location_type', 0, '退货库位', 'admin', now(), 'admin', now(), b'0');

-- 库位状态
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '空闲', 0, 'wms_location_status', 0, '空闲', 'admin', now(), 'admin', now(), b'0'),
    (2, '占用', 1, 'wms_location_status', 0, '占用', 'admin', now(), 'admin', now(), b'0'),
    (3, '锁定', 2, 'wms_location_status', 0, '锁定', 'admin', now(), 'admin', now(), b'0'),
    (4, '禁用', 3, 'wms_location_status', 0, '禁用', 'admin', now(), 'admin', now(), b'0');

-- 物料类型
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '原材料', 0, 'wms_item_type', 0, '原材料', 'admin', now(), 'admin', now(), b'0'),
    (2, '半成品', 1, 'wms_item_type', 0, '半成品', 'admin', now(), 'admin', now(), b'0'),
    (3, '成品', 2, 'wms_item_type', 0, '成品', 'admin', now(), 'admin', now(), b'0'),
    (4, '包装材料', 3, 'wms_item_type', 0, '包装材料', 'admin', now(), 'admin', now(), b'0');

-- 入库类型
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '采购入库', 0, 'wms_receipt_type', 0, '采购入库', 'admin', now(), 'admin', now(), b'0'),
    (2, '生产入库', 1, 'wms_receipt_type', 0, '生产入库', 'admin', now(), 'admin', now(), b'0'),
    (3, '退货入库', 2, 'wms_receipt_type', 0, '退货入库', 'admin', now(), 'admin', now(), b'0'),
    (4, '调拨入库', 3, 'wms_receipt_type', 0, '调拨入库', 'admin', now(), 'admin', now(), b'0');

-- 出库类型
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '销售出库', 0, 'wms_shipment_type', 0, '销售出库', 'admin', now(), 'admin', now(), b'0'),
    (2, '生产出库', 1, 'wms_shipment_type', 0, '生产出库', 'admin', now(), 'admin', now(), b'0'),
    (3, '调拨出库', 2, 'wms_shipment_type', 0, '调拨出库', 'admin', now(), 'admin', now(), b'0'),
    (4, '其他出库', 3, 'wms_shipment_type', 0, '其他出库', 'admin', now(), 'admin', now(), b'0');

-- 质检状态
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '未检验', 0, 'wms_quality_status', 0, '未检验', 'admin', now(), 'admin', now(), b'0'),
    (2, '已检验', 1, 'wms_quality_status', 0, '已检验', 'admin', now(), 'admin', now(), b'0');

-- 单据状态
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '草稿', 0, 'wms_order_status', 0, '草稿', 'admin', now(), 'admin', now(), b'0'),
    (2, '待审核', 1, 'wms_order_status', 0, '待审核', 'admin', now(), 'admin', now(), b'0'),
    (3, '审核通过', 2, 'wms_order_status', 0, '审核通过', 'admin', now(), 'admin', now(), b'0'),
    (4, '审核拒绝', 3, 'wms_order_status', 0, '审核拒绝', 'admin', now(), 'admin', now(), b'0');

-- 入库状态
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '待入库', 0, 'wms_receipt_status', 0, '待入库', 'admin', now(), 'admin', now(), b'0'),
    (2, '部分入库', 1, 'wms_receipt_status', 0, '部分入库', 'admin', now(), 'admin', now(), b'0'),
    (3, '已完成', 2, 'wms_receipt_status', 0, '已完成', 'admin', now(), 'admin', now(), b'0');

-- 出库状态
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '待出库', 0, 'wms_shipment_status', 0, '待出库', 'admin', now(), 'admin', now(), b'0'),
    (2, '部分出库', 1, 'wms_shipment_status', 0, '部分出库', 'admin', now(), 'admin', now(), b'0'),
    (3, '已完成', 2, 'wms_shipment_status', 0, '已完成', 'admin', now(), 'admin', now(), b'0');

-- 移库类型
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '仓库间移库', 0, 'wms_move_type', 0, '仓库间移库', 'admin', now(), 'admin', now(), b'0'),
    (2, '库区间移库', 1, 'wms_move_type', 0, '库区间移库', 'admin', now(), 'admin', now(), b'0'),
    (3, '库位间移库', 2, 'wms_move_type', 0, '库位间移库', 'admin', now(), 'admin', now(), b'0');

-- 移库状态
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '待移库', 0, 'wms_move_status', 0, '待移库', 'admin', now(), 'admin', now(), b'0'),
    (2, '部分移库', 1, 'wms_move_status', 0, '部分移库', 'admin', now(), 'admin', now(), b'0'),
    (3, '已完成', 2, 'wms_move_status', 0, '已完成', 'admin', now(), 'admin', now(), b'0');

-- 盘点类型
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '全部盘点', 0, 'wms_check_type', 0, '全部盘点', 'admin', now(), 'admin', now(), b'0'),
    (2, '部分盘点', 1, 'wms_check_type', 0, '部分盘点', 'admin', now(), 'admin', now(), b'0');

-- 盘点状态
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '新建', 0, 'wms_check_status', 0, '新建', 'admin', now(), 'admin', now(), b'0'),
    (2, '盘点中', 1, 'wms_check_status', 0, '盘点中', 'admin', now(), 'admin', now(), b'0'),
    (3, '已完成', 2, 'wms_check_status', 0, '已完成', 'admin', now(), 'admin', now(), b'0');

-- 移动类型
INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '入库', 0, 'wms_movement_type', 0, '入库', 'admin', now(), 'admin', now(), b'0'),
    (2, '出库', 1, 'wms_movement_type', 0, '出库', 'admin', now(), 'admin', now(), b'0'),
    (3, '库存调整', 2, 'wms_movement_type', 0, '库存调整', 'admin', now(), 'admin', now(), b'0');

-- ----------------------------
-- 7. WMS菜单数据
-- ----------------------------

-- 一级菜单
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('仓储管理', '', 1, 10, 0, '/wms', 'ep:box', NULL, 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 获取仓储管理系统的菜单ID
SET @parentId = (SELECT `id` FROM `system_menu` WHERE `name` = '仓储管理' LIMIT 1);

-- 添加二级菜单：基础数据管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('基础数据管理', '', 1, 10, @parentId, 'base', 'ep:files', NULL, 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 获取基础数据管理的菜单ID
SET @baseId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @parentId AND `name` = '基础数据管理' LIMIT 1);

-- 基础数据管理下的菜单
-- 客户管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('客户管理', 'wms:customer:list', 2, 10, @baseId, 'customer', 'ep:user', 'wms/customer/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @customerId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @baseId AND `name` = '客户管理' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('客户查询', 'wms:customer:query', 3, 1, @customerId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('客户创建', 'wms:customer:create', 3, 2, @customerId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('客户更新', 'wms:customer:update', 3, 3, @customerId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('客户删除', 'wms:customer:delete', 3, 4, @customerId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('客户导出', 'wms:customer:export', 3, 5, @customerId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 供应商管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('供应商管理', 'wms:supplier:list', 2, 20, @baseId, 'supplier', 'ep:ship', 'wms/supplier/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @supplierId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @baseId AND `name` = '供应商管理' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('供应商查询', 'wms:supplier:query', 3, 1, @supplierId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('供应商创建', 'wms:supplier:create', 3, 2, @supplierId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('供应商更新', 'wms:supplier:update', 3, 3, @supplierId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('供应商删除', 'wms:supplier:delete', 3, 4, @supplierId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('供应商导出', 'wms:supplier:export', 3, 5, @supplierId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 物料管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('物料管理', 'wms:item:list', 2, 30, @baseId, 'item', 'ep:shopping', 'wms/item/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @itemId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @baseId AND `name` = '物料管理' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('物料查询', 'wms:item:query', 3, 1, @itemId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('物料创建', 'wms:item:create', 3, 2, @itemId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('物料更新', 'wms:item:update', 3, 3, @itemId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('物料删除', 'wms:item:delete', 3, 4, @itemId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('物料导出', 'wms:item:export', 3, 5, @itemId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 物料分类
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('物料分类', 'wms:item-category:list', 2, 40, @baseId, 'item-category', 'ep:fold', 'wms/item-category/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @itemCategoryId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @baseId AND `name` = '物料分类' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('物料分类查询', 'wms:item-category:query', 3, 1, @itemCategoryId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('物料分类创建', 'wms:item-category:create', 3, 2, @itemCategoryId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('物料分类更新', 'wms:item-category:update', 3, 3, @itemCategoryId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('物料分类删除', 'wms:item-category:delete', 3, 4, @itemCategoryId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('物料分类导出', 'wms:item-category:export', 3, 5, @itemCategoryId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 添加二级菜单：出库管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('出库管理', '', 1, 30, @parentId, 'shipment', 'ep:sell', NULL, 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 获取出库管理的菜单ID
SET @shipmentId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @parentId AND `name` = '出库管理' LIMIT 1);

-- 出库单管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('出库单管理', 'wms:shipment-order:list', 2, 10, @shipmentId, 'shipment-order', 'ep:document', 'wms/shipment-order/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @shipmentOrderId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @shipmentId AND `name` = '出库单管理' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('出库单查询', 'wms:shipment-order:query', 3, 1, @shipmentOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('出库单创建', 'wms:shipment-order:create', 3, 2, @shipmentOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('出库单更新', 'wms:shipment-order:update', 3, 3, @shipmentOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('出库单删除', 'wms:shipment-order:delete', 3, 4, @shipmentOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('出库单导出', 'wms:shipment-order:export', 3, 5, @shipmentOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('出库单审核', 'wms:shipment-order:approve', 3, 6, @shipmentOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('出库操作', 'wms:shipment-record:create', 3, 7, @shipmentOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 添加二级菜单：库存管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('库存管理', '', 1, 40, @parentId, 'inventory', 'ep:goods', NULL, 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 获取库存管理的菜单ID
SET @inventoryId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @parentId AND `name` = '库存管理' LIMIT 1);

-- 库存管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('库存查询', 'wms:inventory:list', 2, 10, @inventoryId, 'inventory-query', 'ep:search', 'wms/inventory/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @inventoryQueryId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @inventoryId AND `name` = '库存查询' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('库存查询', 'wms:inventory:query', 3, 1, @inventoryQueryId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('库存导出', 'wms:inventory:export', 3, 2, @inventoryQueryId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 库存移动记录
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('移动记录', 'wms:inventory-movement:list', 2, 20, @inventoryId, 'inventory-movement', 'ep:shopping-cart', 'wms/inventory-movement/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @inventoryMovementId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @inventoryId AND `name` = '移动记录' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('移动记录查询', 'wms:inventory-movement:query', 3, 1, @inventoryMovementId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('移动记录导出', 'wms:inventory-movement:export', 3, 2, @inventoryMovementId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 库存盘点
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('库存盘点', 'wms:inventory-check:list', 2, 30, @inventoryId, 'inventory-check', 'ep:list', 'wms/inventory-check/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @inventoryCheckId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @inventoryId AND `name` = '库存盘点' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('盘点单查询', 'wms:inventory-check:query', 3, 1, @inventoryCheckId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('盘点单创建', 'wms:inventory-check:create', 3, 2, @inventoryCheckId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('盘点单更新', 'wms:inventory-check:update', 3, 3, @inventoryCheckId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('盘点单删除', 'wms:inventory-check:delete', 3, 4, @inventoryCheckId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('盘点单导出', 'wms:inventory-check:export', 3, 5, @inventoryCheckId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('执行盘点', 'wms:inventory-check:execute', 3, 6, @inventoryCheckId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('完成盘点', 'wms:inventory-check:finish', 3, 7, @inventoryCheckId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 添加二级菜单：移库管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('移库管理', '', 1, 50, @parentId, 'move', 'ep:sort', NULL, 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 获取移库管理的菜单ID
SET @moveId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @parentId AND `name` = '移库管理' LIMIT 1);

-- 移库单管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('移库单管理', 'wms:move-order:list', 2, 10, @moveId, 'move-order', 'ep:set-up', 'wms/move-order/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @moveOrderId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @moveId AND `name` = '移库单管理' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('移库单查询', 'wms:move-order:query', 3, 1, @moveOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('移库单创建', 'wms:move-order:create', 3, 2, @moveOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('移库单更新', 'wms:move-order:update', 3, 3, @moveOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('移库单删除', 'wms:move-order:delete', 3, 4, @moveOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('移库单导出', 'wms:move-order:export', 3, 5, @moveOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('移库单审核', 'wms:move-order:approve', 3, 6, @moveOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('执行移库', 'wms:move-record:create', 3, 7, @moveOrderId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 添加二级菜单：报表统计
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('报表统计', '', 1, 60, @parentId, 'report', 'ep:data-analysis', NULL, 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 获取报表统计的菜单ID
SET @reportId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @parentId AND `name` = '报表统计' LIMIT 1);

-- 库存报表
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('库存报表', 'wms:report:inventory', 2, 10, @reportId, 'inventory-report', 'ep:trend-charts', 'wms/report/inventory-report', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 入库报表
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('入库报表', 'wms:report:receipt', 2, 20, @reportId, 'receipt-report', 'ep:data-line', 'wms/report/receipt-report', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 出库报表
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('出库报表', 'wms:report:shipment', 2, 30, @reportId, 'shipment-report', 'ep:pie-chart', 'wms/report/shipment-report', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 库存报警
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('库存报警', 'wms:report:alarm', 2, 40, @reportId, 'inventory-alarm', 'ep:warning', 'wms/report/inventory-alarm', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- ----------------------------
-- 8. WMS批次管理模块
-- ----------------------------

-- ----------------------------
-- 批次信息表
-- ----------------------------
DROP TABLE IF EXISTS `wms_batch`;
CREATE TABLE `wms_batch` (
                             `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '批次ID',
                             `batch_no` varchar(64) NOT NULL COMMENT '批次号',
                             `item_id` bigint(20) NOT NULL COMMENT '物料ID',
                             `warehouse_id` bigint(20) NOT NULL COMMENT '仓库ID',
                             `supplier_id` bigint(20) DEFAULT NULL COMMENT '供应商ID',
                             `production_date` date DEFAULT NULL COMMENT '生产日期',
                             `expiry_date` date DEFAULT NULL COMMENT '过期日期',
                             `batch_attr1` varchar(255) DEFAULT NULL COMMENT '批次属性1',
                             `batch_attr2` varchar(255) DEFAULT NULL COMMENT '批次属性2',
                             `batch_attr3` varchar(255) DEFAULT NULL COMMENT '批次属性3',
                             `batch_attr4` varchar(255) DEFAULT NULL COMMENT '批次属性4',
                             `total_count` int(11) NOT NULL DEFAULT '0' COMMENT '入库总数量',
                             `available_count` int(11) NOT NULL DEFAULT '0' COMMENT '可用数量',
                             `locked_count` int(11) NOT NULL DEFAULT '0' COMMENT '锁定数量',
                             `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-正常 1-冻结 2-禁用)',
                             `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                             `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                             `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                             `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                             `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                             `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                             `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                             PRIMARY KEY (`id`),
                             UNIQUE KEY `uk_batch_no` (`batch_no`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='批次信息表';

-- ----------------------------
-- 批次库存表
-- ----------------------------
DROP TABLE IF EXISTS `wms_batch_inventory`;
CREATE TABLE `wms_batch_inventory` (
                                       `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '批次库存ID',
                                       `batch_id` bigint(20) NOT NULL COMMENT '批次ID',
                                       `item_id` bigint(20) NOT NULL COMMENT '物料ID',
                                       `warehouse_id` bigint(20) NOT NULL COMMENT '仓库ID',
                                       `location_id` bigint(20) NOT NULL COMMENT '库位ID',
                                       `stock_count` int(11) NOT NULL DEFAULT '0' COMMENT '库存数量',
                                       `available_count` int(11) NOT NULL DEFAULT '0' COMMENT '可用数量',
                                       `locked_count` int(11) NOT NULL DEFAULT '0' COMMENT '锁定数量',
                                       `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0-正常 1-冻结)',
                                       `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                       `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                       `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                       `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                       `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                       `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                       `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                       PRIMARY KEY (`id`),
                                       UNIQUE KEY `uk_batch_location` (`batch_id`,`location_id`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='批次库存表';

-- ----------------------------
-- 批次操作记录表
-- ----------------------------
DROP TABLE IF EXISTS `wms_batch_record`;
CREATE TABLE `wms_batch_record` (
                                    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
                                    `batch_id` bigint(20) NOT NULL COMMENT '批次ID',
                                    `movement_type` tinyint(4) NOT NULL COMMENT '移动类型(0-入库 1-出库 2-库存调整)',
                                    `movement_id` bigint(20) NOT NULL COMMENT '移动记录ID',
                                    `count` int(11) NOT NULL COMMENT '操作数量',
                                    `before_count` int(11) NOT NULL COMMENT '操作前数量',
                                    `after_count` int(11) NOT NULL COMMENT '操作后数量',
                                    `remark` varchar(512) DEFAULT NULL COMMENT '备注',
                                    `creator` varchar(64) DEFAULT '' COMMENT '创建者',
                                    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                    `updater` varchar(64) DEFAULT '' COMMENT '更新者',
                                    `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                    `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
                                    `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='批次操作记录表';

-- ----------------------------
-- 修改入库单明细表，添加批次ID字段
-- ----------------------------
ALTER TABLE `wms_receipt_order_detail`
    ADD COLUMN `batch_id` bigint(20) DEFAULT NULL COMMENT '批次ID' AFTER `location_id`;

-- ----------------------------
-- 修改出库单明细表，添加批次ID字段
-- ----------------------------
ALTER TABLE `wms_shipment_order_detail`
    ADD COLUMN `batch_id` bigint(20) DEFAULT NULL COMMENT '批次ID' AFTER `location_id`;

-- ----------------------------
-- 修改入库操作记录表，添加批次ID字段
-- ----------------------------
ALTER TABLE `wms_receipt_record`
    ADD COLUMN `batch_id` bigint(20) DEFAULT NULL COMMENT '批次ID' AFTER `location_id`;

-- ----------------------------
-- 修改出库操作记录表，添加批次ID字段
-- ----------------------------
ALTER TABLE `wms_shipment_record`
    ADD COLUMN `batch_id` bigint(20) DEFAULT NULL COMMENT '批次ID' AFTER `location_id`;

-- ----------------------------
-- 修改移库明细表和记录表，添加批次ID字段
-- ----------------------------
ALTER TABLE `wms_move_order_detail`
    ADD COLUMN `batch_id` bigint(20) DEFAULT NULL COMMENT '批次ID' AFTER `item_id`;

ALTER TABLE `wms_move_record`
    ADD COLUMN `batch_id` bigint(20) DEFAULT NULL COMMENT '批次ID' AFTER `item_id`;

-- ----------------------------
-- 添加批次状态字典
-- ----------------------------
INSERT INTO `system_dict_type` (`name`, `type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('批次状态', 'wms_batch_status', 0, '批次状态字典', 'admin', now(), 'admin', now(), b'0');

INSERT INTO `system_dict_data` (`sort`, `label`, `value`, `dict_type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    (1, '正常', 0, 'wms_batch_status', 0, '正常状态', 'admin', now(), 'admin', now(), b'0'),
    (2, '冻结', 1, 'wms_batch_status', 0, '冻结状态', 'admin', now(), 'admin', now(), b'0'),
    (3, '禁用', 2, 'wms_batch_status', 0, '禁用状态', 'admin', now(), 'admin', now(), b'0');

-- ----------------------------
-- 添加批次管理菜单
-- ----------------------------
-- 添加二级菜单：批次管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('批次管理', '', 1, 35, @parentId, 'batch', 'ep:collection-tag', NULL, 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 获取批次管理的菜单ID
SET @batchId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @parentId AND `name` = '批次管理' LIMIT 1);

-- 批次管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('批次信息', 'wms:batch:list', 2, 10, @batchId, 'batch-info', 'ep:info-filled', 'wms/batch/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @batchInfoId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @batchId AND `name` = '批次信息' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('批次查询', 'wms:batch:query', 3, 1, @batchInfoId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('批次创建', 'wms:batch:create', 3, 2, @batchInfoId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('批次更新', 'wms:batch:update', 3, 3, @batchInfoId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('批次删除', 'wms:batch:delete', 3, 4, @batchInfoId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('批次导出', 'wms:batch:export', 3, 5, @batchInfoId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 批次库存
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('批次库存', 'wms:batch-inventory:list', 2, 20, @batchId, 'batch-inventory', 'ep:box', 'wms/batch-inventory/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @batchInventoryId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @batchId AND `name` = '批次库存' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('批次库存查询', 'wms:batch-inventory:query', 3, 1, @batchInventoryId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('批次库存调整', 'wms:batch-inventory:adjust', 3, 2, @batchInventoryId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('批次库存导出', 'wms:batch-inventory:export', 3, 3, @batchInventoryId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 批次操作记录
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('批次记录', 'wms:batch-record:list', 2, 30, @batchId, 'batch-record', 'ep:memo', 'wms/batch-record/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @batchRecordId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @batchId AND `name` = '批次记录' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('批次记录查询', 'wms:batch-record:query', 3, 1, @batchRecordId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('批次记录导出', 'wms:batch-record:export', 3, 2, @batchRecordId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 仓库管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('仓库管理', 'wms:warehouse:list', 2, 50, @baseId, 'warehouse', 'ep:house', 'wms/warehouse/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @warehouseId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @baseId AND `name` = '仓库管理' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('仓库查询', 'wms:warehouse:query', 3, 1, @warehouseId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('仓库创建', 'wms:warehouse:create', 3, 2, @warehouseId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('仓库更新', 'wms:warehouse:update', 3, 3, @warehouseId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('仓库删除', 'wms:warehouse:delete', 3, 4, @warehouseId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('仓库导出', 'wms:warehouse:export', 3, 5, @warehouseId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 货区管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('货区管理', 'wms:area:list', 2, 60, @baseId, 'area', 'ep:grid', 'wms/area/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @areaId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @baseId AND `name` = '货区管理' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('货区查询', 'wms:area:query', 3, 1, @areaId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('货区创建', 'wms:area:create', 3, 2, @areaId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('货区更新', 'wms:area:update', 3, 3, @areaId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('货区删除', 'wms:area:delete', 3, 4, @areaId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('货区导出', 'wms:area:export', 3, 5, @areaId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 货架管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('货架管理', 'wms:rack:list', 2, 70, @baseId, 'rack', 'ep:menu', 'wms/rack/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @rackId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @baseId AND `name` = '货架管理' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('货架查询', 'wms:rack:query', 3, 1, @rackId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('货架创建', 'wms:rack:create', 3, 2, @rackId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('货架更新', 'wms:rack:update', 3, 3, @rackId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('货架删除', 'wms:rack:delete', 3, 4, @rackId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('货架导出', 'wms:rack:export', 3, 5, @rackId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

-- 库位管理
INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES ('库位管理', 'wms:location:list', 2, 80, @baseId, 'location', 'ep:position', 'wms/location/index', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');

SET @locationId = (SELECT `id` FROM `system_menu` WHERE `parent_id` = @baseId AND `name` = '库位管理' LIMIT 1);

INSERT INTO `system_menu` (`name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`)
VALUES
    ('库位查询', 'wms:location:query', 3, 1, @locationId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('库位创建', 'wms:location:create', 3, 2, @locationId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('库位更新', 'wms:location:update', 3, 3, @locationId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('库位删除', 'wms:location:delete', 3, 4, @locationId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0'),
    ('库位导出', 'wms:location:export', 3, 5, @locationId, '', '', '', 0, b'1', b'1', 'admin', now(), 'admin', now(), b'0');