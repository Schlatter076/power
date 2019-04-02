/*
 Navicat Premium Data Transfer

 Source Server         : mySQL
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : km_pwr

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 15/03/2019 13:41:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for km017smt
-- ----------------------------
DROP TABLE IF EXISTS `km017smt`;
CREATE TABLE `km017smt`  (
  `pdxuhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testitem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `danwei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testresult` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km017smt
-- ----------------------------
INSERT INTO `km017smt` VALUES ('xuhao', 'Items', 'Upper', 'Lower', 'Value', 'Unit', 'Result');
INSERT INTO `km017smt` VALUES ('01', '产品供电前电压检测', '240', '210', '?', 'ACV', '?');
INSERT INTO `km017smt` VALUES ('02', 'CN1/pin6电压', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km017smt` VALUES ('03', 'CN1/pin6电流', '1.4', '1.18', '?', 'DCA', '?');
INSERT INTO `km017smt` VALUES ('04', 'DC0V电压检测(短路保护)', '1', '0', '?', 'DCV', '?');
INSERT INTO `km017smt` VALUES ('05', 'CN1/pin6电压', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km017smt` VALUES ('06', 'CN3/pin2电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km017smt` VALUES ('07', 'CN3/pin2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km017smt` VALUES ('08', 'CN4/pin1电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km017smt` VALUES ('09', 'CN4/pin1电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km017smt` VALUES ('10', 'CN4/pin1电流', '0.5', '0.3', '?', 'ACA', '?');
INSERT INTO `km017smt` VALUES ('11', 'SEATL-N电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km017smt` VALUES ('12', 'SEATL-N电压', '240', '210', '?', 'DCV', '?');
INSERT INTO `km017smt` VALUES ('13', 'SEATL-N电流', '0.3', '0.1', '?', 'DCA', '?');
INSERT INTO `km017smt` VALUES ('14', '产品放电', '30', '0', '?', 'mA', '?');

-- ----------------------------
-- Table structure for km017smt_recordtd
-- ----------------------------
DROP TABLE IF EXISTS `km017smt_recordtd`;
CREATE TABLE `km017smt_recordtd`  (
  `recordname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordsum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordok` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km017smt_recordtd
-- ----------------------------
INSERT INTO `km017smt_recordtd` VALUES ('km017smt', '63', '27', '36', '20', '2018-08-27');

-- ----------------------------
-- Table structure for km017smt_testdata
-- ----------------------------
DROP TABLE IF EXISTS `km017smt_testdata`;
CREATE TABLE `km017smt_testdata`  (
  `product_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `items` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km017unit
-- ----------------------------
DROP TABLE IF EXISTS `km017unit`;
CREATE TABLE `km017unit`  (
  `pdxuhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testitem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `danwei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testresult` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km017unit
-- ----------------------------
INSERT INTO `km017unit` VALUES ('xuhao', 'Items', 'Upper', 'Lower', 'Value', 'Unit', 'Result');
INSERT INTO `km017unit` VALUES ('01', '产品供电前电压检测', '240', '210', '?', 'ACV', '?');
INSERT INTO `km017unit` VALUES ('02', 'CN1/pin6电压', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km017unit` VALUES ('03', 'CN1/pin6电流', '1.4', '1.18', '?', 'DCA', '?');
INSERT INTO `km017unit` VALUES ('04', 'DC0V电压检测(短路保护)', '1', '0', '?', 'DCV', '?');
INSERT INTO `km017unit` VALUES ('05', 'CN1/pin6电压', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km017unit` VALUES ('06', 'CN3/pin2电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km017unit` VALUES ('07', 'CN3/pin2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km017unit` VALUES ('08', 'CN4/pin1电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km017unit` VALUES ('09', 'CN4/pin1电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km017unit` VALUES ('10', 'CN4/pin1电流', '0.5', '0.3', '?', 'ACA', '?');
INSERT INTO `km017unit` VALUES ('11', 'SEATL-N电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km017unit` VALUES ('12', 'SEATL-N电压', '240', '210', '?', 'DCV', '?');
INSERT INTO `km017unit` VALUES ('13', 'SEATL-N电流', '0.3', '0.1', '?', 'DCA', '?');
INSERT INTO `km017unit` VALUES ('14', '产品放电', '30', '0', '?', 'mA', '?');

-- ----------------------------
-- Table structure for km017unit_recordtd
-- ----------------------------
DROP TABLE IF EXISTS `km017unit_recordtd`;
CREATE TABLE `km017unit_recordtd`  (
  `recordname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordsum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordok` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km017unit_recordtd
-- ----------------------------
INSERT INTO `km017unit_recordtd` VALUES ('km017unit', '63', '27', '36', '20', '2018-08-27');

-- ----------------------------
-- Table structure for km017unit_testdata
-- ----------------------------
DROP TABLE IF EXISTS `km017unit_testdata`;
CREATE TABLE `km017unit_testdata`  (
  `product_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `items` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km033smt
-- ----------------------------
DROP TABLE IF EXISTS `km033smt`;
CREATE TABLE `km033smt`  (
  `pdxuhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testitem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `danwei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testresult` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km033smt
-- ----------------------------
INSERT INTO `km033smt` VALUES ('xuhao', 'Items', 'Upper', 'Lower', 'Value', 'Unit', 'Result');
INSERT INTO `km033smt` VALUES ('01', '产品供电前电压检测', '240', '210', '?', 'ACV', '?');
INSERT INTO `km033smt` VALUES ('02', 'CN1/pin6电压', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km033smt` VALUES ('03', 'CN1/pin6电流', '1.4', '1.18', '?', 'DCA', '?');
INSERT INTO `km033smt` VALUES ('04', 'CN2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km033smt` VALUES ('05', 'CN5电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km033smt` VALUES ('06', 'CN3/pin2电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km033smt` VALUES ('07', 'CN3/pin2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km033smt` VALUES ('08', 'CN4/pin1电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km033smt` VALUES ('09', 'CN4/pin1电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km033smt` VALUES ('10', 'SEATL-N电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km033smt` VALUES ('11', 'SEATL-N电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km033smt` VALUES ('12', 'DC0V电压检测(短路保护)', '1', '0', '?', 'DCV', '?');
INSERT INTO `km033smt` VALUES ('13', 'DC12V电压输出检测', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km033smt` VALUES ('14', '待机电流', '20', '0', '?', 'mA', '?');

-- ----------------------------
-- Table structure for km033smt_recordtd
-- ----------------------------
DROP TABLE IF EXISTS `km033smt_recordtd`;
CREATE TABLE `km033smt_recordtd`  (
  `recordname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordsum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordok` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km033smt_recordtd
-- ----------------------------
INSERT INTO `km033smt_recordtd` VALUES ('km033smt', '63', '27', '36', '20', '2018-08-27');

-- ----------------------------
-- Table structure for km033smt_testdata
-- ----------------------------
DROP TABLE IF EXISTS `km033smt_testdata`;
CREATE TABLE `km033smt_testdata`  (
  `product_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `items` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km033unit
-- ----------------------------
DROP TABLE IF EXISTS `km033unit`;
CREATE TABLE `km033unit`  (
  `pdxuhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testitem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `danwei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testresult` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km033unit
-- ----------------------------
INSERT INTO `km033unit` VALUES ('xuhao', 'Items', 'Upper', 'Lower', 'Value', 'Unit', 'Result');
INSERT INTO `km033unit` VALUES ('01', '产品供电前电压检测', '240', '210', '?', 'ACV', '?');
INSERT INTO `km033unit` VALUES ('02', 'CN1/pin6电压', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km033unit` VALUES ('03', 'CN1/pin6电流', '1.4', '1.18', '?', 'DCA', '?');
INSERT INTO `km033unit` VALUES ('04', 'CN2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km033unit` VALUES ('05', 'CN5电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km033unit` VALUES ('06', 'CN3/pin2电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km033unit` VALUES ('07', 'CN3/pin2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km033unit` VALUES ('08', 'CN4/pin1电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km033unit` VALUES ('09', 'CN4/pin1电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km033unit` VALUES ('10', 'SEATL-N电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km033unit` VALUES ('11', 'SEATL-N电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km033unit` VALUES ('12', 'DC0V电压检测(短路保护)', '1', '0', '?', 'DCV', '?');
INSERT INTO `km033unit` VALUES ('13', 'DC12V电压输出检测', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km033unit` VALUES ('14', '待机电流', '20', '0', '?', 'mA', '?');

-- ----------------------------
-- Table structure for km033unit_recordtd
-- ----------------------------
DROP TABLE IF EXISTS `km033unit_recordtd`;
CREATE TABLE `km033unit_recordtd`  (
  `recordname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordsum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordok` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km033unit_recordtd
-- ----------------------------
INSERT INTO `km033unit_recordtd` VALUES ('km033unit', '63', '27', '36', '20', '2018-08-27');

-- ----------------------------
-- Table structure for km033unit_testdata
-- ----------------------------
DROP TABLE IF EXISTS `km033unit_testdata`;
CREATE TABLE `km033unit_testdata`  (
  `product_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `items` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km073smthava
-- ----------------------------
DROP TABLE IF EXISTS `km073smthava`;
CREATE TABLE `km073smthava`  (
  `pdxuhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testitem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `danwei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testresult` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km073smthava
-- ----------------------------
INSERT INTO `km073smthava` VALUES ('xuhao', 'Items', 'Upper', 'Lower', 'Value', 'Unit', 'Result');
INSERT INTO `km073smthava` VALUES ('01', '产品供电前电压检测', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073smthava` VALUES ('02', 'CN1/pin6电压', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km073smthava` VALUES ('03', 'CN1/pin6电流', '1.4', '1.18', '?', 'DCA', '?');
INSERT INTO `km073smthava` VALUES ('04', 'CN1/pin7电压', '5.2', '4.5', '?', 'DCV', '?');
INSERT INTO `km073smthava` VALUES ('05', 'CN1/pin7电流', '1.8', '1.5', '?', 'DCA', '?');
INSERT INTO `km073smthava` VALUES ('06', 'CN6pin4电压', '2.5', '1.44', '?', 'DCV', '?');
INSERT INTO `km073smthava` VALUES ('07', 'CN6pin3脉冲输出', '3.4', '2.5', '?', 'DCV', '?');
INSERT INTO `km073smthava` VALUES ('08', 'CN5pin1/pin2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073smthava` VALUES ('09', 'CN3/pin2电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km073smthava` VALUES ('10', 'CN3/pin2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073smthava` VALUES ('11', 'CN4/pin1电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km073smthava` VALUES ('12', 'CN4/pin1电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073smthava` VALUES ('13', 'SEATL-N电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km073smthava` VALUES ('14', 'SEATL-N电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073smthava` VALUES ('15', 'CN1/pin6确认0V', '1', '0', '?', 'DCV', '?');
INSERT INTO `km073smthava` VALUES ('16', 'CN1/pin6确认12V', '12.2', '11.5', '?', 'DCV', '?');
INSERT INTO `km073smthava` VALUES ('17', 'CN1/pin7确认0V', '1', '0', '?', 'DCV', '?');
INSERT INTO `km073smthava` VALUES ('18', 'CN1/pin7确认5V', '5.2', '4.5', '?', 'DCV', '?');
INSERT INTO `km073smthava` VALUES ('19', '待机电流', '20', '0', '?', 'mA', '?');

-- ----------------------------
-- Table structure for km073smthava_recordtd
-- ----------------------------
DROP TABLE IF EXISTS `km073smthava_recordtd`;
CREATE TABLE `km073smthava_recordtd`  (
  `recordname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordsum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordok` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km073smthava_recordtd
-- ----------------------------
INSERT INTO `km073smthava_recordtd` VALUES ('km073smthave', '63', '27', '36', '20', '2018-08-27');

-- ----------------------------
-- Table structure for km073smthava_testdata
-- ----------------------------
DROP TABLE IF EXISTS `km073smthava_testdata`;
CREATE TABLE `km073smthava_testdata`  (
  `product_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `items` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km073smtno
-- ----------------------------
DROP TABLE IF EXISTS `km073smtno`;
CREATE TABLE `km073smtno`  (
  `pdxuhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testitem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `danwei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testresult` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km073smtno
-- ----------------------------
INSERT INTO `km073smtno` VALUES ('xuhao', 'Items', 'Upper', 'Lower', 'Value', 'Unit', 'Result');
INSERT INTO `km073smtno` VALUES ('01', '产品供电前电压检测', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073smtno` VALUES ('02', 'CN1/pin6电压', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km073smtno` VALUES ('03', 'CN1/pin6电流', '1.4', '1.18', '?', 'DCA', '?');
INSERT INTO `km073smtno` VALUES ('04', 'CN1/pin7电压', '5.2', '4.5', '?', 'DCV', '?');
INSERT INTO `km073smtno` VALUES ('05', 'CN1/pin7电流', '1.8', '1.5', '?', 'DCA', '?');
INSERT INTO `km073smtno` VALUES ('06', 'CN5pin1/pin2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073smtno` VALUES ('07', 'CN3/pin2电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km073smtno` VALUES ('08', 'CN3/pin2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073smtno` VALUES ('09', 'CN4/pin1电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km073smtno` VALUES ('10', 'CN4/pin1电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073smtno` VALUES ('11', 'SEATL-N电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km073smtno` VALUES ('12', 'SEATL-N电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073smtno` VALUES ('13', 'CN1/pin6确认0V', '1', '0', '?', 'DCV', '?');
INSERT INTO `km073smtno` VALUES ('14', 'CN1/pin6确认12V', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km073smtno` VALUES ('15', 'CN1/pin7确认0V', '1', '0', '?', 'DCV', '?');
INSERT INTO `km073smtno` VALUES ('16', 'CN1/pin7确认5V', '5.2', '4.5', '?', 'DCV', '?');
INSERT INTO `km073smtno` VALUES ('17', '待机电流', '20', '0', '?', 'mA', '?');

-- ----------------------------
-- Table structure for km073smtno_recordtd
-- ----------------------------
DROP TABLE IF EXISTS `km073smtno_recordtd`;
CREATE TABLE `km073smtno_recordtd`  (
  `recordname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordsum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordok` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km073smtno_recordtd
-- ----------------------------
INSERT INTO `km073smtno_recordtd` VALUES ('km073smtno', '63', '27', '36', '20', '2018-08-27');

-- ----------------------------
-- Table structure for km073smtno_testdata
-- ----------------------------
DROP TABLE IF EXISTS `km073smtno_testdata`;
CREATE TABLE `km073smtno_testdata`  (
  `product_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `items` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km073unithava
-- ----------------------------
DROP TABLE IF EXISTS `km073unithava`;
CREATE TABLE `km073unithava`  (
  `pdxuhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testitem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `danwei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testresult` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km073unithava
-- ----------------------------
INSERT INTO `km073unithava` VALUES ('xuhao', 'Items', 'Upper', 'Lower', 'Value', 'Unit', 'Result');
INSERT INTO `km073unithava` VALUES ('01', '产品供电前电压检测', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073unithava` VALUES ('02', 'CN1/pin6电压', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km073unithava` VALUES ('03', 'CN1/pin6电流', '1.4', '1.18', '?', 'DCA', '?');
INSERT INTO `km073unithava` VALUES ('04', 'CN1/pin7电压', '5.2', '4.5', '?', 'DCV', '?');
INSERT INTO `km073unithava` VALUES ('05', 'CN1/pin7电流', '1.8', '1.5', '?', 'DCA', '?');
INSERT INTO `km073unithava` VALUES ('06', 'CN6pin4电压', '2.5', '1.44', '?', 'DCV', '?');
INSERT INTO `km073unithava` VALUES ('07', 'CN6pin3脉冲输出', '3.4', '2.5', '?', 'DCV', '?');
INSERT INTO `km073unithava` VALUES ('08', 'CN5pin1/pin2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073unithava` VALUES ('09', 'CN3/pin2电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km073unithava` VALUES ('10', 'CN3/pin2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073unithava` VALUES ('11', 'CN4/pin1电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km073unithava` VALUES ('12', 'CN4/pin1电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073unithava` VALUES ('13', 'SEATL-N电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km073unithava` VALUES ('14', 'SEATL-N电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073unithava` VALUES ('15', 'CN1/pin6确认0V', '1', '0', '?', 'DCV', '?');
INSERT INTO `km073unithava` VALUES ('16', 'CN1/pin6确认12V', '12.2', '11.5', '?', 'DCV', '?');
INSERT INTO `km073unithava` VALUES ('17', 'CN1/pin7确认0V', '1', '0', '?', 'DCV', '?');
INSERT INTO `km073unithava` VALUES ('18', 'CN1/pin7确认5V', '5.2', '4.5', '?', 'DCV', '?');
INSERT INTO `km073unithava` VALUES ('19', '待机电流', '20', '0', '?', 'mA', '?');

-- ----------------------------
-- Table structure for km073unithave_recordtd
-- ----------------------------
DROP TABLE IF EXISTS `km073unithave_recordtd`;
CREATE TABLE `km073unithave_recordtd`  (
  `recordname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordsum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordok` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km073unithave_recordtd
-- ----------------------------
INSERT INTO `km073unithave_recordtd` VALUES ('km073unithave', '63', '27', '36', '20', '2018-08-27');

-- ----------------------------
-- Table structure for km073unithave_testdata
-- ----------------------------
DROP TABLE IF EXISTS `km073unithave_testdata`;
CREATE TABLE `km073unithave_testdata`  (
  `product_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `items` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km073unitno
-- ----------------------------
DROP TABLE IF EXISTS `km073unitno`;
CREATE TABLE `km073unitno`  (
  `pdxuhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testitem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `danwei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testresult` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km073unitno
-- ----------------------------
INSERT INTO `km073unitno` VALUES ('xuhao', 'Items', 'Upper', 'Lower', 'Value', 'Unit', 'Result');
INSERT INTO `km073unitno` VALUES ('01', '产品供电前电压检测', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073unitno` VALUES ('02', 'CN1/pin6电压', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km073unitno` VALUES ('03', 'CN1/pin6电流', '1.4', '1.18', '?', 'DCA', '?');
INSERT INTO `km073unitno` VALUES ('04', 'CN1/pin7电压', '5.2', '4.5', '?', 'DCV', '?');
INSERT INTO `km073unitno` VALUES ('05', 'CN1/pin7电流', '1.8', '1.5', '?', 'DCA', '?');
INSERT INTO `km073unitno` VALUES ('06', 'CN5pin1/pin2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073unitno` VALUES ('07', 'CN3/pin2电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km073unitno` VALUES ('08', 'CN3/pin2电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073unitno` VALUES ('09', 'CN4/pin1电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km073unitno` VALUES ('10', 'CN4/pin1电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073unitno` VALUES ('11', 'SEATL-N电压', '1', '0', '?', 'ACV', '?');
INSERT INTO `km073unitno` VALUES ('12', 'SEATL-N电压', '240', '210', '?', 'ACV', '?');
INSERT INTO `km073unitno` VALUES ('13', 'CN1/pin6确认0V', '1', '0', '?', 'DCV', '?');
INSERT INTO `km073unitno` VALUES ('14', 'CN1/pin6确认12V', '12.5', '11.5', '?', 'DCV', '?');
INSERT INTO `km073unitno` VALUES ('15', 'CN1/pin7确认0V', '1', '0', '?', 'DCV', '?');
INSERT INTO `km073unitno` VALUES ('16', 'CN1/pin7确认5V', '5.2', '4.5', '?', 'DCV', '?');
INSERT INTO `km073unitno` VALUES ('17', '待机电流', '20', '0', '?', 'mA', '?');

-- ----------------------------
-- Table structure for km073unitno_recordtd
-- ----------------------------
DROP TABLE IF EXISTS `km073unitno_recordtd`;
CREATE TABLE `km073unitno_recordtd`  (
  `recordname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordsum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordok` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km073unitno_recordtd
-- ----------------------------
INSERT INTO `km073unitno_recordtd` VALUES ('km073unitno', '63', '27', '36', '20', '2018-08-27');

-- ----------------------------
-- Table structure for km073unitno_testdata
-- ----------------------------
DROP TABLE IF EXISTS `km073unitno_testdata`;
CREATE TABLE `km073unitno_testdata`  (
  `product_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `items` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_type
-- ----------------------------
DROP TABLE IF EXISTS `product_type`;
CREATE TABLE `product_type`  (
  `num` int(11) NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_type
-- ----------------------------
INSERT INTO `product_type` VALUES (1, 'KM073PWR基板');
INSERT INTO `product_type` VALUES (2, 'KM073PWR基板(无CN6)');
INSERT INTO `product_type` VALUES (3, 'KM073PWR完成品');
INSERT INTO `product_type` VALUES (4, 'KM073PWR完成品(无CN6)');
INSERT INTO `product_type` VALUES (5, 'KM033PWR基板');
INSERT INTO `product_type` VALUES (6, 'KM033PWR完成品');
INSERT INTO `product_type` VALUES (7, 'KM017PWR基板');
INSERT INTO `product_type` VALUES (8, 'KM033PWR完成品');

-- ----------------------------
-- Table structure for serialports
-- ----------------------------
DROP TABLE IF EXISTS `serialports`;
CREATE TABLE `serialports`  (
  `xuhao` int(11) NULL DEFAULT NULL,
  `portname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `baudrate` int(11) NULL DEFAULT NULL,
  `databits` int(11) NULL DEFAULT NULL,
  `stopbits` int(11) NULL DEFAULT NULL,
  `parity` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of serialports
-- ----------------------------
INSERT INTO `serialports` VALUES (1, 'COM1', 9600, 8, 1, 0);
INSERT INTO `serialports` VALUES (2, 'COM2', 9600, 8, 1, 0);
INSERT INTO `serialports` VALUES (3, 'COM3', 9600, 8, 1, 0);
INSERT INTO `serialports` VALUES (4, 'COM4', 19200, 8, 1, 2);
INSERT INTO `serialports` VALUES (5, 'COM7', 9600, 8, 1, 2);
INSERT INTO `serialports` VALUES (6, 'COM8', 9600, 8, 1, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `limits` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'km2019', '1');
INSERT INTO `user` VALUES ('2', 'commom', 'commom', '2');
INSERT INTO `user` VALUES ('3', 'nayin', 'nayin0', '3');

SET FOREIGN_KEY_CHECKS = 1;
