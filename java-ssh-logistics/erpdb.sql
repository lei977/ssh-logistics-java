/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50548
Source Host           : localhost:3306
Source Database       : erpdb

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2018-05-06 11:22:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_dep
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dep`;
CREATE TABLE `tbl_dep` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `tele` varchar(30) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dep
-- ----------------------------
INSERT INTO `tbl_dep` VALUES ('1', '行政中心', '111');
INSERT INTO `tbl_dep` VALUES ('3', '业务部', '222');
INSERT INTO `tbl_dep` VALUES ('4', '运输中心', '333');
INSERT INTO `tbl_dep` VALUES ('5', '库管中心', '444');
INSERT INTO `tbl_dep` VALUES ('6', '人力资源部', '555');
INSERT INTO `tbl_dep` VALUES ('7', '财务部', '666');

-- ----------------------------
-- Table structure for tbl_emp
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(15) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `name` varchar(28) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tele` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` int(1) NOT NULL COMMENT '1-男；0-女',
  `birthday` bigint(20) NOT NULL,
  `depUuid` bigint(20) NOT NULL,
  `lastLoginTime` bigint(20) NOT NULL,
  `lastLoginIp` varchar(255) NOT NULL,
  `loginTimes` int(11) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------
INSERT INTO `tbl_emp` VALUES ('6', 'admin', '21232f297a57a5a743894a0e4a801fc3', '张磊', 'admin@admin.com', '123456789', '南阳市', '1', '1263830400000', '1', '1525481289972', '0:0:0:0:0:0:0:1', '333');
INSERT INTO `tbl_emp` VALUES ('7', 'hello', '202cb962ac59075b964b07152d234b70', '总裁', 'Qee', '12345', '南阳市', '0', '1420473600000', '1', '1522818258456', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbl_emp` VALUES ('8', 'hr', '202cb962ac59075b964b07152d234b70', 'hr主管', 'hr', '3232323', '南阳市', '0', '1421164800000', '6', '1525403259804', '0:0:0:0:0:0:0:1', '7');
INSERT INTO `tbl_emp` VALUES ('9', 'hr2', '202cb962ac59075b964b07152d234b70', 'hr专员', 'hr2', '3232323', '南阳市', '0', '1421683200000', '6', '1525403273383', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbl_emp` VALUES ('11', 'test', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', 'test', 'test', '1', '1421164800000', '1', '1525481464189', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbl_emp` VALUES ('12', 'tom', '202cb962ac59075b964b07152d234b70', '汤姆', 'tom@tom.com', '123456', '北京', '1', '1422547200000', '6', '1525403292185', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbl_emp` VALUES ('14', 'ha', '202cb962ac59075b964b07152d234b70', 'ha', 'aaa', '123', '南阳', '0', '1519833600000', '3', '1522818197946', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbl_emp` VALUES ('15', 'zz', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'ZZ', 'zz@123.com', '1234567890', '南阳', '0', '1525104000000', '3', '1525403173446', '0:0:0:0:0:0:0:1', '3');

-- ----------------------------
-- Table structure for tbl_emp_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp_role`;
CREATE TABLE `tbl_emp_role` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `empUuid` bigint(20) NOT NULL,
  `roleUuid` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_emp_role
-- ----------------------------
INSERT INTO `tbl_emp_role` VALUES ('50', '8', '8');
INSERT INTO `tbl_emp_role` VALUES ('51', '9', '9');
INSERT INTO `tbl_emp_role` VALUES ('52', '11', '7');
INSERT INTO `tbl_emp_role` VALUES ('90', '14', '4');
INSERT INTO `tbl_emp_role` VALUES ('91', '14', '2');
INSERT INTO `tbl_emp_role` VALUES ('92', '14', '3');
INSERT INTO `tbl_emp_role` VALUES ('93', '14', '5');
INSERT INTO `tbl_emp_role` VALUES ('94', '14', '6');
INSERT INTO `tbl_emp_role` VALUES ('95', '14', '7');
INSERT INTO `tbl_emp_role` VALUES ('96', '6', '8');
INSERT INTO `tbl_emp_role` VALUES ('97', '6', '1');
INSERT INTO `tbl_emp_role` VALUES ('98', '12', '2');
INSERT INTO `tbl_emp_role` VALUES ('99', '12', '7');
INSERT INTO `tbl_emp_role` VALUES ('100', '12', '1');
INSERT INTO `tbl_emp_role` VALUES ('101', '12', '4');
INSERT INTO `tbl_emp_role` VALUES ('102', '12', '8');
INSERT INTO `tbl_emp_role` VALUES ('103', '12', '6');
INSERT INTO `tbl_emp_role` VALUES ('104', '12', '5');
INSERT INTO `tbl_emp_role` VALUES ('105', '12', '9');
INSERT INTO `tbl_emp_role` VALUES ('106', '12', '3');
INSERT INTO `tbl_emp_role` VALUES ('125', '15', '5');
INSERT INTO `tbl_emp_role` VALUES ('126', '15', '6');
INSERT INTO `tbl_emp_role` VALUES ('127', '15', '8');
INSERT INTO `tbl_emp_role` VALUES ('128', '15', '2');
INSERT INTO `tbl_emp_role` VALUES ('129', '15', '9');
INSERT INTO `tbl_emp_role` VALUES ('130', '15', '4');
INSERT INTO `tbl_emp_role` VALUES ('131', '15', '3');
INSERT INTO `tbl_emp_role` VALUES ('132', '15', '1');
INSERT INTO `tbl_emp_role` VALUES ('133', '15', '7');

-- ----------------------------
-- Table structure for tbl_goods
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goods`;
CREATE TABLE `tbl_goods` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `origin` varchar(30) NOT NULL,
  `producer` varchar(30) NOT NULL,
  `unit` varchar(30) NOT NULL,
  `inPrice` double(10,2) NOT NULL,
  `outPrice` double(10,2) NOT NULL,
  `goodsTypeUuid` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goods
-- ----------------------------
INSERT INTO `tbl_goods` VALUES ('1', '西瓜一个', '河南', 'A市', '箱', '1.00', '11.00', '1');
INSERT INTO `tbl_goods` VALUES ('2', '西瓜一袋', '河南', 'A市', '袋', '2.00', '22.00', '1');
INSERT INTO `tbl_goods` VALUES ('3', '小白菜', '北京', '东城区', '箱', '3.00', '33.00', '8');
INSERT INTO `tbl_goods` VALUES ('4', '小麦（50kg）', '河南', '南阳市XX县', '袋', '4.00', '44.00', '4');
INSERT INTO `tbl_goods` VALUES ('5', '大豆（100kg）', '四川', '成都AAA厂家', '袋', '5.00', '55.00', '3');
INSERT INTO `tbl_goods` VALUES ('6', '香蕉', '海南', '三亚', '箱', '6.00', '66.00', '8');
INSERT INTO `tbl_goods` VALUES ('7', '罗技鼠标', '广东', '深圳华强数码', '个', '7.00', '77.00', '5');
INSERT INTO `tbl_goods` VALUES ('8', '散热器大', '广东', '广东电子元件厂', '个', '8.00', '88.00', '6');
INSERT INTO `tbl_goods` VALUES ('9', '散热器中', '广东', '深圳华强数码', '个', '9.00', '99.00', '6');

-- ----------------------------
-- Table structure for tbl_goodstype
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goodstype`;
CREATE TABLE `tbl_goodstype` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `supplierUuid` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goodstype
-- ----------------------------
INSERT INTO `tbl_goodstype` VALUES ('1', '西瓜', '1');
INSERT INTO `tbl_goodstype` VALUES ('2', '玉米', '1');
INSERT INTO `tbl_goodstype` VALUES ('3', '大豆', '1');
INSERT INTO `tbl_goodstype` VALUES ('4', '小麦', '1');
INSERT INTO `tbl_goodstype` VALUES ('5', '鼠标', '2');
INSERT INTO `tbl_goodstype` VALUES ('6', '散热器', '2');
INSERT INTO `tbl_goodstype` VALUES ('7', '键盘', '2');
INSERT INTO `tbl_goodstype` VALUES ('8', '蔬菜', '3');

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `url` varchar(255) NOT NULL,
  `puuid` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES ('1', '系统菜单', '-', '0');
INSERT INTO `tbl_menu` VALUES ('100', '货物管理', '-', '1');
INSERT INTO `tbl_menu` VALUES ('101', '供应商', 'supplier_list.action', '100');
INSERT INTO `tbl_menu` VALUES ('102', '货物类别', 'goodsType_list.action', '100');
INSERT INTO `tbl_menu` VALUES ('103', '货物详情', 'goods_list.action', '100');
INSERT INTO `tbl_menu` VALUES ('200', '业务受理', '-', '1');
INSERT INTO `tbl_menu` VALUES ('201', '订单管理', 'order_buyList.action', '200');
INSERT INTO `tbl_menu` VALUES ('202', '订单审核', 'order_buyCheckList.action', '200');
INSERT INTO `tbl_menu` VALUES ('300', '销售管理', '-', '1');
INSERT INTO `tbl_menu` VALUES ('400', '调度中心', '-', '1');
INSERT INTO `tbl_menu` VALUES ('401', '任务指派', 'transport_taskList.action', '400');
INSERT INTO `tbl_menu` VALUES ('402', '任务查询', 'transport_tasks.action', '400');
INSERT INTO `tbl_menu` VALUES ('500', '分拣中心', '-', '1');
INSERT INTO `tbl_menu` VALUES ('501', '库存查询', 'storeDetail_list.action', '500');
INSERT INTO `tbl_menu` VALUES ('502', '入库', 'order_inStoreList.action', '500');
INSERT INTO `tbl_menu` VALUES ('504', '仓库操作明细', 'operDetail_list.action', '500');
INSERT INTO `tbl_menu` VALUES ('600', '报表中心', '-', '1');
INSERT INTO `tbl_menu` VALUES ('601', '业务报表', 'bill_buyBillList.action', '600');
INSERT INTO `tbl_menu` VALUES ('700', '基础维护', '-', '1');
INSERT INTO `tbl_menu` VALUES ('701', '部门维护', 'dep_list.action', '700');
INSERT INTO `tbl_menu` VALUES ('702', '员工维护', 'emp_list.action', '700');
INSERT INTO `tbl_menu` VALUES ('703', '角色维护', 'role_list.action', '700');
INSERT INTO `tbl_menu` VALUES ('704', '资源维护', 'res_list.action', '700');
INSERT INTO `tbl_menu` VALUES ('705', '菜单维护', 'menu_list.action', '700');
INSERT INTO `tbl_menu` VALUES ('706', '仓库维护', 'store_list.action', '700');

-- ----------------------------
-- Table structure for tbl_operdetail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_operdetail`;
CREATE TABLE `tbl_operdetail` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `empUuid` bigint(20) NOT NULL,
  `operTime` bigint(20) NOT NULL,
  `type` int(1) NOT NULL,
  `goodsUuid` bigint(20) NOT NULL,
  `storeUuid` bigint(20) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_operdetail
-- ----------------------------
INSERT INTO `tbl_operdetail` VALUES ('3', '6', '1422866275700', '1', '6', '1', '10');
INSERT INTO `tbl_operdetail` VALUES ('4', '6', '1422866286419', '1', '6', '1', '5');
INSERT INTO `tbl_operdetail` VALUES ('5', '6', '1422866312331', '1', '6', '3', '15');
INSERT INTO `tbl_operdetail` VALUES ('6', '6', '1422866557169', '1', '6', '3', '1');
INSERT INTO `tbl_operdetail` VALUES ('7', '6', '1422866562699', '1', '6', '2', '20');
INSERT INTO `tbl_operdetail` VALUES ('8', '6', '1422866565578', '1', '6', '2', '9');
INSERT INTO `tbl_operdetail` VALUES ('9', '6', '1422866659498', '1', '4', '1', '11');
INSERT INTO `tbl_operdetail` VALUES ('10', '6', '1422866662443', '1', '4', '2', '22');
INSERT INTO `tbl_operdetail` VALUES ('11', '6', '1422866665416', '1', '4', '1', '7');
INSERT INTO `tbl_operdetail` VALUES ('12', '6', '1422866717019', '1', '1', '1', '9');
INSERT INTO `tbl_operdetail` VALUES ('13', '6', '1422866729350', '1', '2', '1', '20');
INSERT INTO `tbl_operdetail` VALUES ('14', '6', '1422866730517', '1', '3', '1', '30');
INSERT INTO `tbl_operdetail` VALUES ('15', '6', '1422866731719', '1', '5', '1', '50');
INSERT INTO `tbl_operdetail` VALUES ('16', '6', '1422866733506', '1', '1', '1', '1');
INSERT INTO `tbl_operdetail` VALUES ('17', '6', '1422866984562', '1', '8', '1', '10');
INSERT INTO `tbl_operdetail` VALUES ('18', '6', '1422866986220', '1', '9', '1', '10');
INSERT INTO `tbl_operdetail` VALUES ('19', '6', '1422866987843', '1', '7', '1', '10');
INSERT INTO `tbl_operdetail` VALUES ('20', '6', '1422867363860', '1', '8', '1', '10');
INSERT INTO `tbl_operdetail` VALUES ('21', '6', '1422867365146', '1', '9', '1', '10');
INSERT INTO `tbl_operdetail` VALUES ('22', '6', '1422867366359', '1', '7', '1', '10');
INSERT INTO `tbl_operdetail` VALUES ('23', '6', '1422867375121', '1', '6', '1', '60');
INSERT INTO `tbl_operdetail` VALUES ('24', '6', '1422867376618', '1', '4', '1', '40');
INSERT INTO `tbl_operdetail` VALUES ('25', '6', '1422867377750', '1', '1', '1', '10');
INSERT INTO `tbl_operdetail` VALUES ('26', '6', '1422867378917', '1', '5', '1', '50');
INSERT INTO `tbl_operdetail` VALUES ('27', '6', '1522730909844', '1', '3', '1', '20');

-- ----------------------------
-- Table structure for tbl_order
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(30) NOT NULL,
  `creater` bigint(20) NOT NULL,
  `createTime` bigint(20) NOT NULL,
  `checker` bigint(20) DEFAULT NULL,
  `checkTime` bigint(20) DEFAULT NULL,
  `completer` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `orderType` int(1) NOT NULL,
  `type` int(3) NOT NULL,
  `totalNum` int(11) NOT NULL,
  `totalPrice` double(10,2) NOT NULL,
  `supplierUuid` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('1', '37F4489A1', '6', '1422782442006', '6', '1422843573782', '7', null, '1', '131', '4', '10.00', '1');
INSERT INTO `tbl_order` VALUES ('2', '37F4489A2', '6', '1422782485205', '6', '1422842391025', '6', '1422867366361', '1', '199', '30', '240.00', '2');
INSERT INTO `tbl_order` VALUES ('3', '37F4489A3', '6', '1422782578170', '6', '1422843576079', '11', null, '1', '131', '4', '10.00', '1');
INSERT INTO `tbl_order` VALUES ('4', '37F4489A4', '6', '1422782748231', '6', '1525360860357', null, null, '1', '121', '3', '6.00', '1');
INSERT INTO `tbl_order` VALUES ('5', '37F4489A5', '6', '1422783740701', '6', '1422842081560', null, null, '1', '120', '3', '6.00', '1');
INSERT INTO `tbl_order` VALUES ('6', '37F4489A6', '6', '1422784607857', '6', '1422841477118', '6', null, '1', '141', '210', '910.00', '1');
INSERT INTO `tbl_order` VALUES ('7', '37F461041', '6', '1422848864081', '6', '1422848869769', '6', null, '1', '141', '1', '1.00', '1');
INSERT INTO `tbl_order` VALUES ('8', '3BE821CE1', '6', '1470879623028', '6', '1470879633283', '6', null, '1', '141', '80', '80.00', '1');
INSERT INTO `tbl_order` VALUES ('9', '433E1B861', '6', '1525360785242', null, null, null, null, '1', '111', '2', '2.00', '1');

-- ----------------------------
-- Table structure for tbl_orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_orderdetail`;
CREATE TABLE `tbl_orderdetail` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `goodsUuid` bigint(20) NOT NULL,
  `price` double(10,2) NOT NULL,
  `orderUuid` bigint(20) NOT NULL,
  `num` int(11) NOT NULL,
  `surplus` int(11) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_orderdetail
-- ----------------------------
INSERT INTO `tbl_orderdetail` VALUES ('1', '4', '4.00', '1', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('2', '2', '2.00', '1', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('3', '1', '1.00', '1', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('4', '3', '3.00', '1', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('5', '8', '8.00', '2', '10', '0');
INSERT INTO `tbl_orderdetail` VALUES ('6', '9', '9.00', '2', '10', '0');
INSERT INTO `tbl_orderdetail` VALUES ('7', '7', '7.00', '2', '10', '0');
INSERT INTO `tbl_orderdetail` VALUES ('8', '2', '2.00', '3', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('9', '3', '3.00', '3', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('10', '1', '1.00', '3', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('11', '4', '4.00', '3', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('12', '2', '2.00', '4', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('13', '3', '3.00', '4', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('14', '1', '1.00', '4', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('15', '1', '1.00', '5', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('16', '3', '3.00', '5', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('17', '2', '2.00', '5', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('18', '6', '6.00', '6', '60', '0');
INSERT INTO `tbl_orderdetail` VALUES ('19', '4', '4.00', '6', '40', '0');
INSERT INTO `tbl_orderdetail` VALUES ('20', '1', '1.00', '6', '10', '0');
INSERT INTO `tbl_orderdetail` VALUES ('21', '5', '5.00', '6', '50', '0');
INSERT INTO `tbl_orderdetail` VALUES ('22', '3', '3.00', '6', '30', '10');
INSERT INTO `tbl_orderdetail` VALUES ('23', '2', '2.00', '6', '20', '20');
INSERT INTO `tbl_orderdetail` VALUES ('24', '1', '1.00', '7', '1', '1');
INSERT INTO `tbl_orderdetail` VALUES ('25', '1', '1.00', '8', '80', '80');
INSERT INTO `tbl_orderdetail` VALUES ('26', '1', '1.00', '9', '2', '2');

-- ----------------------------
-- Table structure for tbl_res
-- ----------------------------
DROP TABLE IF EXISTS `tbl_res`;
CREATE TABLE `tbl_res` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_res
-- ----------------------------
INSERT INTO `tbl_res` VALUES ('1', '员工列表', 'action.EmpAction.list');
INSERT INTO `tbl_res` VALUES ('2', '操作添加/修改员工', 'action.EmpAction.input');
INSERT INTO `tbl_res` VALUES ('3', '添加/修改员工', 'action.EmpAction.save');
INSERT INTO `tbl_res` VALUES ('4', '删除员工', 'action.EmpAction.delete');

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES ('1', '系统管理员', 'admin');
INSERT INTO `tbl_role` VALUES ('2', '市场主管', 'buymgr');
INSERT INTO `tbl_role` VALUES ('3', '市场专员', 'buyer');
INSERT INTO `tbl_role` VALUES ('4', '业务主管', 'salemgr');
INSERT INTO `tbl_role` VALUES ('5', '业务专员', 'saler');
INSERT INTO `tbl_role` VALUES ('6', '跟单员', 'follower');
INSERT INTO `tbl_role` VALUES ('7', '仓库管理员', 'storemgr');
INSERT INTO `tbl_role` VALUES ('8', '人力资源总监', 'hrmgr');
INSERT INTO `tbl_role` VALUES ('9', '人力资源专员', 'hr');

-- ----------------------------
-- Table structure for tbl_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role_menu`;
CREATE TABLE `tbl_role_menu` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleUuid` bigint(20) NOT NULL,
  `menuUuid` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_role_menu
-- ----------------------------
INSERT INTO `tbl_role_menu` VALUES ('31', '8', '703');
INSERT INTO `tbl_role_menu` VALUES ('32', '8', '704');
INSERT INTO `tbl_role_menu` VALUES ('33', '8', '1');
INSERT INTO `tbl_role_menu` VALUES ('34', '8', '702');
INSERT INTO `tbl_role_menu` VALUES ('35', '8', '701');
INSERT INTO `tbl_role_menu` VALUES ('36', '8', '700');
INSERT INTO `tbl_role_menu` VALUES ('37', '9', '1');
INSERT INTO `tbl_role_menu` VALUES ('38', '9', '702');
INSERT INTO `tbl_role_menu` VALUES ('39', '9', '700');
INSERT INTO `tbl_role_menu` VALUES ('52', '7', '101');
INSERT INTO `tbl_role_menu` VALUES ('53', '7', '102');
INSERT INTO `tbl_role_menu` VALUES ('54', '7', '1');
INSERT INTO `tbl_role_menu` VALUES ('55', '7', '100');
INSERT INTO `tbl_role_menu` VALUES ('62', '1', '600');
INSERT INTO `tbl_role_menu` VALUES ('63', '1', '500');
INSERT INTO `tbl_role_menu` VALUES ('64', '1', '700');
INSERT INTO `tbl_role_menu` VALUES ('65', '1', '100');
INSERT INTO `tbl_role_menu` VALUES ('66', '1', '706');
INSERT INTO `tbl_role_menu` VALUES ('67', '1', '701');
INSERT INTO `tbl_role_menu` VALUES ('68', '1', '400');
INSERT INTO `tbl_role_menu` VALUES ('69', '1', '502');
INSERT INTO `tbl_role_menu` VALUES ('70', '1', '703');
INSERT INTO `tbl_role_menu` VALUES ('71', '1', '401');
INSERT INTO `tbl_role_menu` VALUES ('72', '1', '501');
INSERT INTO `tbl_role_menu` VALUES ('73', '1', '103');
INSERT INTO `tbl_role_menu` VALUES ('74', '1', '101');
INSERT INTO `tbl_role_menu` VALUES ('75', '1', '702');
INSERT INTO `tbl_role_menu` VALUES ('76', '1', '300');
INSERT INTO `tbl_role_menu` VALUES ('77', '1', '1');
INSERT INTO `tbl_role_menu` VALUES ('78', '1', '201');
INSERT INTO `tbl_role_menu` VALUES ('79', '1', '202');
INSERT INTO `tbl_role_menu` VALUES ('80', '1', '200');
INSERT INTO `tbl_role_menu` VALUES ('81', '1', '704');
INSERT INTO `tbl_role_menu` VALUES ('82', '1', '705');
INSERT INTO `tbl_role_menu` VALUES ('83', '1', '504');
INSERT INTO `tbl_role_menu` VALUES ('84', '1', '601');
INSERT INTO `tbl_role_menu` VALUES ('85', '1', '102');
INSERT INTO `tbl_role_menu` VALUES ('86', '1', '402');

-- ----------------------------
-- Table structure for tbl_role_res
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role_res`;
CREATE TABLE `tbl_role_res` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleUuid` bigint(20) NOT NULL,
  `resUuid` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_role_res
-- ----------------------------
INSERT INTO `tbl_role_res` VALUES ('17', '8', '1');
INSERT INTO `tbl_role_res` VALUES ('18', '8', '2');
INSERT INTO `tbl_role_res` VALUES ('19', '8', '3');
INSERT INTO `tbl_role_res` VALUES ('20', '9', '1');
INSERT INTO `tbl_role_res` VALUES ('21', '1', '2');
INSERT INTO `tbl_role_res` VALUES ('22', '1', '1');
INSERT INTO `tbl_role_res` VALUES ('23', '1', '4');
INSERT INTO `tbl_role_res` VALUES ('24', '1', '3');

-- ----------------------------
-- Table structure for tbl_store
-- ----------------------------
DROP TABLE IF EXISTS `tbl_store`;
CREATE TABLE `tbl_store` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `empUuid` bigint(20) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_store
-- ----------------------------
INSERT INTO `tbl_store` VALUES ('1', '1#农资仓库', '南阳市卧龙区', '6');
INSERT INTO `tbl_store` VALUES ('2', '2#设备仓库', '南阳市宛城区', '6');
INSERT INTO `tbl_store` VALUES ('3', '3#建材仓库', '地点A', '6');
INSERT INTO `tbl_store` VALUES ('4', '4#冷库', '地点B', '6');

-- ----------------------------
-- Table structure for tbl_storedetail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_storedetail`;
CREATE TABLE `tbl_storedetail` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `storeUuid` bigint(20) NOT NULL,
  `goodsUuid` bigint(20) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_storedetail
-- ----------------------------
INSERT INTO `tbl_storedetail` VALUES ('1', '1', '6', '75');
INSERT INTO `tbl_storedetail` VALUES ('2', '3', '6', '16');
INSERT INTO `tbl_storedetail` VALUES ('3', '2', '6', '29');
INSERT INTO `tbl_storedetail` VALUES ('4', '1', '4', '58');
INSERT INTO `tbl_storedetail` VALUES ('5', '2', '4', '22');
INSERT INTO `tbl_storedetail` VALUES ('6', '1', '1', '20');
INSERT INTO `tbl_storedetail` VALUES ('7', '1', '2', '20');
INSERT INTO `tbl_storedetail` VALUES ('8', '1', '3', '50');
INSERT INTO `tbl_storedetail` VALUES ('9', '1', '5', '100');
INSERT INTO `tbl_storedetail` VALUES ('10', '1', '8', '20');
INSERT INTO `tbl_storedetail` VALUES ('11', '1', '9', '20');
INSERT INTO `tbl_storedetail` VALUES ('12', '1', '7', '20');

-- ----------------------------
-- Table structure for tbl_supplier
-- ----------------------------
DROP TABLE IF EXISTS `tbl_supplier`;
CREATE TABLE `tbl_supplier` (
  `uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `tele` varchar(30) NOT NULL,
  `needs` int(1) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_supplier
-- ----------------------------
INSERT INTO `tbl_supplier` VALUES ('1', '顺丰速运', '北京', '张三', '11111111', '1');
INSERT INTO `tbl_supplier` VALUES ('2', '德邦物流', '上海', '刘四', '88888888', '0');
INSERT INTO `tbl_supplier` VALUES ('3', '申通快递', 'XX分公司', '赵五', '89898989', '1');
INSERT INTO `tbl_supplier` VALUES ('4', '中铁快运', '河南', '老王', '12345678', '1');
