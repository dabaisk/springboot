/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50636
 Source Host           : localhost:3306
 Source Schema         : oams

 Target Server Type    : MySQL
 Target Server Version : 50636
 File Encoding         : 65001

 Date: 06/09/2018 18:13:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crm_cust
-- ----------------------------
DROP TABLE IF EXISTS `crm_cust`;
CREATE TABLE `crm_cust`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简称',
  `Pinyin` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TypeId` int(11) DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL,
  `Contact` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人',
  `Nickname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '称呼',
  `CateId` int(11) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `TradeId` int(11) DEFAULT NULL,
  `SourceId` int(11) DEFAULT NULL COMMENT '客户来源',
  `AreaId` int(11) DEFAULT NULL,
  `Address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `Tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `Email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `WeiXin` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `QQ` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Descn` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FK_CRM_Cust_CRM_CustCate`(`CateId`) USING BTREE,
  INDEX `FK_CRM_Cust_CRM_CustType`(`TypeId`) USING BTREE,
  INDEX `FK_CRM_Cust_CRM_CustTrade`(`TradeId`) USING BTREE,
  INDEX `FK_CRM_Cust_CRM_CustStatus`(`Status`) USING BTREE,
  INDEX `FK_CRM_Cust_CRM_CustSource`(`SourceId`) USING BTREE,
  CONSTRAINT `FK_CRM_Cust_CRM_CustCate` FOREIGN KEY (`CateId`) REFERENCES `crm_custcate` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_CRM_Cust_CRM_CustSource` FOREIGN KEY (`SourceId`) REFERENCES `crm_custsource` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_CRM_Cust_CRM_CustStatus` FOREIGN KEY (`Status`) REFERENCES `crm_custstatus` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_CRM_Cust_CRM_CustTrade` FOREIGN KEY (`TradeId`) REFERENCES `crm_custtrade` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_CRM_Cust_CRM_CustType` FOREIGN KEY (`TypeId`) REFERENCES `crm_custtype` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_cust
-- ----------------------------
INSERT INTO `crm_cust` VALUES (38, '111', '12131', '321321', '421312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `crm_cust` VALUES (39, '15555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `crm_cust` VALUES (40, '15555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `crm_cust` VALUES (41, '15555', '988', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `crm_cust` VALUES (42, '15555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for crm_custcate
-- ----------------------------
DROP TABLE IF EXISTS `crm_custcate`;
CREATE TABLE `crm_custcate`  (
  `Id` int(11) NOT NULL COMMENT '客户类别',
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL,
  `OrderId` int(11) DEFAULT NULL,
  `Path` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父目录路径如：,1,10, 包括自己Id',
  `IdPath` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Id路径如：,1,10, 包括父Id,自己Id',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for crm_custperson
-- ----------------------------
DROP TABLE IF EXISTS `crm_custperson`;
CREATE TABLE `crm_custperson`  (
  `Id` int(11) NOT NULL COMMENT '供应商联系人表Id',
  `BirthDate` datetime(0) DEFAULT NULL,
  `Homeland` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '籍贯',
  `Address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Nation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '民族',
  `Hobby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '爱好',
  `Nature` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性格特点',
  `Descn` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for crm_custsource
-- ----------------------------
DROP TABLE IF EXISTS `crm_custsource`;
CREATE TABLE `crm_custsource`  (
  `Id` int(11) NOT NULL COMMENT '客户来源 Id',
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_custsource
-- ----------------------------
INSERT INTO `crm_custsource` VALUES (1, '主动开拓', NULL);
INSERT INTO `crm_custsource` VALUES (2, '网络广告', NULL);
INSERT INTO `crm_custsource` VALUES (3, '媒体广告', NULL);
INSERT INTO `crm_custsource` VALUES (4, '客户介绍', NULL);
INSERT INTO `crm_custsource` VALUES (5, '朋友介绍', NULL);
INSERT INTO `crm_custsource` VALUES (6, '自己上门', NULL);
INSERT INTO `crm_custsource` VALUES (7, '不明来源', NULL);

-- ----------------------------
-- Table structure for crm_custstatus
-- ----------------------------
DROP TABLE IF EXISTS `crm_custstatus`;
CREATE TABLE `crm_custstatus`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_custstatus
-- ----------------------------
INSERT INTO `crm_custstatus` VALUES (1, '忠诚客户', NULL);
INSERT INTO `crm_custstatus` VALUES (2, '成交客户', NULL);
INSERT INTO `crm_custstatus` VALUES (3, '中断合作', NULL);
INSERT INTO `crm_custstatus` VALUES (4, '意向客户', NULL);
INSERT INTO `crm_custstatus` VALUES (5, '潜在客户', NULL);
INSERT INTO `crm_custstatus` VALUES (6, '无意向客户', NULL);
INSERT INTO `crm_custstatus` VALUES (9, '合作伙伴', NULL);
INSERT INTO `crm_custstatus` VALUES (10, '竞争对手', NULL);
INSERT INTO `crm_custstatus` VALUES (100, '黑名单', NULL);

-- ----------------------------
-- Table structure for crm_custtrade
-- ----------------------------
DROP TABLE IF EXISTS `crm_custtrade`;
CREATE TABLE `crm_custtrade`  (
  `Id` int(11) NOT NULL COMMENT '客户行业 Id',
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_custtrade
-- ----------------------------
INSERT INTO `crm_custtrade` VALUES (1, '政府部门', NULL);
INSERT INTO `crm_custtrade` VALUES (2, '制造业', NULL);
INSERT INTO `crm_custtrade` VALUES (3, 'IT行业', NULL);
INSERT INTO `crm_custtrade` VALUES (4, '贸易', NULL);

-- ----------------------------
-- Table structure for crm_custtype
-- ----------------------------
DROP TABLE IF EXISTS `crm_custtype`;
CREATE TABLE `crm_custtype`  (
  `Id` int(11) NOT NULL COMMENT '客户类别',
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_custtype
-- ----------------------------
INSERT INTO `crm_custtype` VALUES (1, '企业', NULL);
INSERT INTO `crm_custtype` VALUES (2, '个人', NULL);

-- ----------------------------
-- Table structure for inf_info
-- ----------------------------
DROP TABLE IF EXISTS `inf_info`;
CREATE TABLE `inf_info`  (
  `Id` int(11) NOT NULL,
  `Title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SubTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Summary` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ComId` int(11) DEFAULT NULL,
  `LinkUrl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ClickCount` int(11) DEFAULT NULL,
  `TypeId` int(11) DEFAULT NULL,
  `PicPath` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SPicPath` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `IsTop` tinyint(4) DEFAULT NULL,
  `IsColor` tinyint(4) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `FilePath` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `AddEmp` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `AddDate` datetime(0) DEFAULT NULL,
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FK_Inf_Info_Inf_Type`(`TypeId`) USING BTREE,
  INDEX `FK_Inf_Info_OA_Company`(`ComId`) USING BTREE,
  INDEX `FK_Inf_Info_Sys_DataStatus`(`Status`) USING BTREE,
  CONSTRAINT `FK_Inf_Info_Inf_Type` FOREIGN KEY (`TypeId`) REFERENCES `inf_type` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Inf_Info_OA_Company` FOREIGN KEY (`ComId`) REFERENCES `oa_company` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Inf_Info_Sys_DataStatus` FOREIGN KEY (`Status`) REFERENCES `sys_datastatus` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inf_info
-- ----------------------------
INSERT INTO `inf_info` VALUES (63, '楊明綸受傷 週日(2011-9-18)坐騎易配', NULL, NULL, 1, NULL, NULL, 1, '/userfiles/uploads/info/img/slidebg.gif', '/userfiles/uploads/info/img/slidebg_s.gif', 0, 0, 1, NULL, NULL, '2011-09-16 00:00:00', '<p><img src=\"/userfiles/uploads/info/img/slidebg.gif\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;\r\n<p>&nbsp;</p>\r\n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>2011年9月16日</p>\r\n			</td>\r\n		</tr>\r\n		<tr><!--start col--><!--end col -->\r\n			<td>\r\n			<p>見習騎師楊明綸今晨參加在沙田馬場舉行的試閘期間，在第三組試閘開始前被坐騎「多多得」拋下。受薪董事小組現已接獲醫生證明，表示由於楊明綸的左邊臀部及左膝受傷，所以他不適宜履行九月十八日星期日沙田賽事的策騎聘約。</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>因此，小組批准以下馬匹更換騎師：</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>第一場：「航天之星」改由勞愛德策騎</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>第四場：「乘奔御風」改由蔡明紹策騎</p>\r\n\r\n			<p>第五場：「電訊超星」改由普萊西策騎</p>\r\n\r\n			<p>第六場：「愛睦善」改由湯智傑策騎</p>\r\n\r\n			<p>第八場：「幸運精彩」改由賴維銘策騎</p>\r\n\r\n			<p>第九場：「時代明星」改由見習騎師何澤堯策騎</p>\r\n\r\n			<p>第十場：「揚威寶」改由勞愛德策騎</p>\r\n\r\n			<p>醫生證明並表示，楊明綸亦不適宜在九月二十一日星期三的跑馬地賽事中策騎出賽。馬會將於相關時間再作公佈。</p>\r\n\r\n			<table align=\"center\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\" style=\"width:630px\">\r\n				<tbody>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellspacing=\"20\" style=\"width:100%\">\r\n				<tbody>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>轉錄自 香港賽馬會</p>\r\n');
INSERT INTO `inf_info` VALUES (113, '这里发布公告', '这里发布公告', NULL, 1, NULL, NULL, 1, '/userfiles/uploads/info/img/QQ图片20150325155210.gif', '/userfiles/uploads/info/img/QQ图片20150325155210_s.gif', 1, 0, 1, '/userfiles/uploads/info/file/2015年网络营销师2.2各模块总部直播开课计划（第1季度）.xlsx', NULL, '2015-04-14 11:35:43', '<p>在这里发布图文</p>\r\n\r\n<p><img src=\"/userfiles/uploads/info/img/QQ图片20150325155210.gif\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n');
INSERT INTO `inf_info` VALUES (115, '2222', '2222', NULL, 1, '2222', NULL, 2, NULL, NULL, 1, 0, 1, NULL, NULL, '2015-04-14 11:42:36', '<p>2222222222222222</p>\r\n');
INSERT INTO `inf_info` VALUES (122, '测试的内容', '测试的内容', NULL, 1, NULL, NULL, 1, '/userfiles/uploads/info/img/QQ图片20150323173855.gif', '/userfiles/uploads/info/img/QQ图片20150323173855_s.gif', 0, 0, 1, NULL, '李源波', '2015-04-15 21:24:11', '<p><img src=\"/userfiles/uploads/info/img/QQ图片20150323173855.gif\" />发布资料测试</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;\r\n<p>&nbsp;</p>\r\n</p>\r\n');

-- ----------------------------
-- Table structure for inf_type
-- ----------------------------
DROP TABLE IF EXISTS `inf_type`;
CREATE TABLE `inf_type`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inf_type
-- ----------------------------
INSERT INTO `inf_type` VALUES (1, '公告通知', 10);
INSERT INTO `inf_type` VALUES (2, '资料管理', 20);
INSERT INTO `inf_type` VALUES (3, '工作计划', 30);

-- ----------------------------
-- Table structure for inf_viewnote
-- ----------------------------
DROP TABLE IF EXISTS `inf_viewnote`;
CREATE TABLE `inf_viewnote`  (
  `Id` int(11) NOT NULL,
  `InfoId` int(11) NOT NULL,
  `EmpId` int(11) NOT NULL,
  `ViewDate` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FK_Inf_ViewNote_OA_Employee`(`EmpId`) USING BTREE,
  INDEX `FK_Inf_ViewNote_Inf_Info`(`InfoId`) USING BTREE,
  CONSTRAINT `FK_Inf_ViewNote_Inf_Info` FOREIGN KEY (`InfoId`) REFERENCES `inf_info` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Inf_ViewNote_OA_Employee` FOREIGN KEY (`EmpId`) REFERENCES `oa_employee` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inf_viewnote
-- ----------------------------
INSERT INTO `inf_viewnote` VALUES (1, 111, 32, '2015-04-15 18:09:45');
INSERT INTO `inf_viewnote` VALUES (22, 118, 32, '2015-04-17 09:54:08');
INSERT INTO `inf_viewnote` VALUES (23, 113, 32, '2016-02-17 15:15:31');
INSERT INTO `inf_viewnote` VALUES (24, 120, 32, '2015-04-15 17:40:54');
INSERT INTO `inf_viewnote` VALUES (25, 119, 32, '2015-04-15 21:17:06');
INSERT INTO `inf_viewnote` VALUES (26, 121, 32, '2015-04-15 21:21:54');
INSERT INTO `inf_viewnote` VALUES (27, 1, 32, '2015-04-26 18:21:27');
INSERT INTO `inf_viewnote` VALUES (28, 63, 32, '2015-05-03 11:32:21');
INSERT INTO `inf_viewnote` VALUES (29, 67, 32, '2015-04-26 18:24:29');
INSERT INTO `inf_viewnote` VALUES (30, 113, 1, '2016-07-26 10:15:09');
INSERT INTO `inf_viewnote` VALUES (31, 122, 1, '2016-07-26 10:14:57');
INSERT INTO `inf_viewnote` VALUES (32, 63, 1, '2016-07-26 10:15:24');
INSERT INTO `inf_viewnote` VALUES (33, 115, 32, '2015-04-30 23:06:27');
INSERT INTO `inf_viewnote` VALUES (34, 122, 32, '2015-05-03 11:32:12');
INSERT INTO `inf_viewnote` VALUES (35, 113, 51, '2015-05-12 09:28:46');
INSERT INTO `inf_viewnote` VALUES (36, 122, 51, '2015-04-29 09:37:31');
INSERT INTO `inf_viewnote` VALUES (37, 63, 51, '2015-04-29 09:37:52');
INSERT INTO `inf_viewnote` VALUES (38, 113, 45, '2015-04-30 08:44:36');
INSERT INTO `inf_viewnote` VALUES (39, 122, 45, '2015-04-30 08:45:18');
INSERT INTO `inf_viewnote` VALUES (40, 63, 45, '2015-04-30 08:45:21');

-- ----------------------------
-- Table structure for oa_account
-- ----------------------------
DROP TABLE IF EXISTS `oa_account`;
CREATE TABLE `oa_account`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LoginName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Url` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TypeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ComId` int(11) DEFAULT NULL,
  `DeptId` int(11) DEFAULT NULL,
  `Descn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EmpId` int(11) DEFAULT NULL,
  `AddDate` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FK_OA_Account_OA_Company`(`ComId`) USING BTREE,
  INDEX `FK_OA_Account_OA_Employee`(`EmpId`) USING BTREE,
  INDEX `FK_OA_Account_OA_Dept`(`DeptId`) USING BTREE,
  CONSTRAINT `FK_OA_Account_OA_Company` FOREIGN KEY (`ComId`) REFERENCES `oa_company` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_OA_Account_OA_Dept` FOREIGN KEY (`DeptId`) REFERENCES `oa_dept` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_OA_Account_OA_Employee` FOREIGN KEY (`EmpId`) REFERENCES `oa_employee` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_account
-- ----------------------------

-- ----------------------------
-- Table structure for oa_applicant
-- ----------------------------
DROP TABLE IF EXISTS `oa_applicant`;
CREATE TABLE `oa_applicant`  (
  `Id` int(11) NOT NULL COMMENT '应聘者Id',
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ApJob` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应聘职位',
  `ComId` int(11) DEFAULT NULL,
  `DeptId` int(11) DEFAULT NULL,
  `Sex` int(11) DEFAULT NULL,
  `Birthdate` datetime(0) DEFAULT NULL,
  `Married` tinyint(4) DEFAULT NULL COMMENT '婚否',
  `Phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `QQ` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Status` int(11) DEFAULT NULL COMMENT '状态，(可以试用=1，不予考虑=0，录用=2)',
  `Address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `HomeAddress` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Nation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '民族',
  `Homeland` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '籍贯',
  `Politics` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '政治面貌',
  `Degree` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最高学历',
  `ApDate` datetime(0) DEFAULT NULL COMMENT '最后面试日期',
  `ApEmp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '面试者',
  `Descn` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FK_OA_Applicant_OA_Dept`(`DeptId`) USING BTREE,
  INDEX `FK_OA_Applicant_OA_Company`(`ComId`) USING BTREE,
  CONSTRAINT `FK_OA_Applicant_OA_Company` FOREIGN KEY (`ComId`) REFERENCES `oa_company` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_OA_Applicant_OA_Dept` FOREIGN KEY (`DeptId`) REFERENCES `oa_dept` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oa_asset
-- ----------------------------
DROP TABLE IF EXISTS `oa_asset`;
CREATE TABLE `oa_asset`  (
  `Id` int(11) NOT NULL COMMENT '固定资产表',
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `No` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ComId` int(11) DEFAULT NULL,
  `DeptId` int(11) DEFAULT NULL,
  `Emp` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` decimal(18, 2) DEFAULT NULL,
  `Cost` decimal(18, 2) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `BuyDate` datetime(0) DEFAULT NULL,
  `PicPath` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SPicPath` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `AddDate` datetime(0) DEFAULT NULL,
  `AddEmp` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Descn` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FK_OA_Asset_OA_Dept`(`DeptId`) USING BTREE,
  INDEX `FK_OA_Asset_OA_Company`(`ComId`) USING BTREE,
  INDEX `FK_OA_Asset_OA_AssetStatus`(`Status`) USING BTREE,
  CONSTRAINT `FK_OA_Asset_OA_AssetStatus` FOREIGN KEY (`Status`) REFERENCES `oa_assetstatus` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_OA_Asset_OA_Company` FOREIGN KEY (`ComId`) REFERENCES `oa_company` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_OA_Asset_OA_Dept` FOREIGN KEY (`DeptId`) REFERENCES `oa_dept` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_asset
-- ----------------------------

-- ----------------------------
-- Table structure for oa_assetstatus
-- ----------------------------
DROP TABLE IF EXISTS `oa_assetstatus`;
CREATE TABLE `oa_assetstatus`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_assetstatus
-- ----------------------------
INSERT INTO `oa_assetstatus` VALUES (1, '正常');
INSERT INTO `oa_assetstatus` VALUES (2, '闲置');
INSERT INTO `oa_assetstatus` VALUES (3, '报废');

-- ----------------------------
-- Table structure for oa_comdept
-- ----------------------------
DROP TABLE IF EXISTS `oa_comdept`;
CREATE TABLE `oa_comdept`  (
  `ComId` int(11) NOT NULL,
  `DeptId` int(11) NOT NULL,
  PRIMARY KEY (`ComId`, `DeptId`) USING BTREE,
  INDEX `FK_OA_ComDept_OA_Dept`(`DeptId`) USING BTREE,
  CONSTRAINT `FK_OA_ComDept_OA_Company` FOREIGN KEY (`ComId`) REFERENCES `oa_company` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_OA_ComDept_OA_Dept` FOREIGN KEY (`DeptId`) REFERENCES `oa_dept` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_comdept
-- ----------------------------
INSERT INTO `oa_comdept` VALUES (1, 1);
INSERT INTO `oa_comdept` VALUES (2, 1);
INSERT INTO `oa_comdept` VALUES (1, 2);
INSERT INTO `oa_comdept` VALUES (2, 2);
INSERT INTO `oa_comdept` VALUES (1, 3);

-- ----------------------------
-- Table structure for oa_company
-- ----------------------------
DROP TABLE IF EXISTS `oa_company`;
CREATE TABLE `oa_company`  (
  `Id` int(11) NOT NULL COMMENT '系统使用公司',
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简称',
  `EName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OrderId` int(11) DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL COMMENT '父公司',
  `TypeId` int(11) DEFAULT NULL,
  `Address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Contacts` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人',
  `OfficePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MobilePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Status` int(11) DEFAULT NULL COMMENT '数据状态',
  `Email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Zip` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Descn` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FK_Sys_Company_Sys_ComType`(`TypeId`) USING BTREE,
  INDEX `FK_OA_Company_OA_Company`(`ParentId`) USING BTREE,
  INDEX `FK_OA_Company_Sys_DataStatus`(`Status`) USING BTREE,
  CONSTRAINT `FK_OA_Company_OA_Company` FOREIGN KEY (`ParentId`) REFERENCES `oa_company` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_OA_Company_Sys_DataStatus` FOREIGN KEY (`Status`) REFERENCES `sys_datastatus` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Sys_Company_Sys_ComType` FOREIGN KEY (`TypeId`) REFERENCES `oa_comtype` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_company
-- ----------------------------
INSERT INTO `oa_company` VALUES (1, '北大青鸟上饶云汉', '北大青鸟', 'srbdqn', 10, NULL, 1, '江西省上饶市', NULL, '0793-6188559', NULL, 1, NULL, NULL, NULL);
INSERT INTO `oa_company` VALUES (2, '上饶达内', '上饶达内', 'srdn', 20, NULL, 1, '江西省南昌市', NULL, '0793-8300023', NULL, 1, NULL, NULL, NULL);
INSERT INTO `oa_company` VALUES (4, '上饶云汉科技', 'aaaa', 'aaa', 33, 1, 2, 'aaaa', 'leon', NULL, NULL, 1, NULL, NULL, 'bbbb');

-- ----------------------------
-- Table structure for oa_comtype
-- ----------------------------
DROP TABLE IF EXISTS `oa_comtype`;
CREATE TABLE `oa_comtype`  (
  `Id` int(11) NOT NULL COMMENT '客户类别',
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_comtype
-- ----------------------------
INSERT INTO `oa_comtype` VALUES (1, '总公司', 10);
INSERT INTO `oa_comtype` VALUES (2, '分公司', 20);
INSERT INTO `oa_comtype` VALUES (3, '经销商', 30);

-- ----------------------------
-- Table structure for oa_dept
-- ----------------------------
DROP TABLE IF EXISTS `oa_dept`;
CREATE TABLE `oa_dept`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_dept
-- ----------------------------
INSERT INTO `oa_dept` VALUES (1, '行政部', 10);
INSERT INTO `oa_dept` VALUES (2, '市场部', 20);
INSERT INTO `oa_dept` VALUES (3, '教学部', 30);

-- ----------------------------
-- Table structure for oa_employee
-- ----------------------------
DROP TABLE IF EXISTS `oa_employee`;
CREATE TABLE `oa_employee`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LoginName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录系统名称',
  `No` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Pinyin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Sex` int(11) DEFAULT NULL,
  `Birthdate` datetime(0) DEFAULT NULL,
  `Married` tinyint(4) DEFAULT NULL COMMENT '婚否',
  `ComId` int(11) DEFAULT NULL,
  `DeptId` int(11) DEFAULT NULL,
  `Job` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职位',
  `IdCard` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Status` int(11) DEFAULT NULL COMMENT '状态，(试用，在职，辞职，离职)',
  `Address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Nation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '民族',
  `Homeland` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '籍贯',
  `Politics` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '政治面貌',
  `Degree` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最高学历',
  `Email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OfficePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MobilePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `FamilyPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `WeiXin` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `QQ` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Zip` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `IntoDate` datetime(0) DEFAULT NULL,
  `EnterDate` datetime(0) DEFAULT NULL,
  `AddDate` datetime(0) DEFAULT NULL,
  `AddUser` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `AttFile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '附件',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FK_OA_Employee_OA_Company`(`ComId`) USING BTREE,
  INDEX `FK_OA_Employee_OA_Dept`(`DeptId`) USING BTREE,
  INDEX `FK_OA_Employee_OA_EmpStatus`(`Status`) USING BTREE,
  CONSTRAINT `FK_OA_Employee_OA_Company` FOREIGN KEY (`ComId`) REFERENCES `oa_company` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_OA_Employee_OA_Dept` FOREIGN KEY (`DeptId`) REFERENCES `oa_dept` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_OA_Employee_OA_EmpStatus` FOREIGN KEY (`Status`) REFERENCES `oa_empstatus` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_employee
-- ----------------------------

-- ----------------------------
-- Table structure for oa_employeeinfo
-- ----------------------------
DROP TABLE IF EXISTS `oa_employeeinfo`;
CREATE TABLE `oa_employeeinfo`  (
  `EmpId` int(11) NOT NULL,
  `School` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `GradDate` datetime(0) DEFAULT NULL,
  `Major` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ForeignLang` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `FamilyAddress` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Education` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `JobHistory` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `PicPath` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SPicPath` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `AttachFile` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`EmpId`) USING BTREE,
  CONSTRAINT `FK_OA_EmployeeInfo_OA_Employee` FOREIGN KEY (`EmpId`) REFERENCES `oa_employee` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oa_empresign
-- ----------------------------
DROP TABLE IF EXISTS `oa_empresign`;
CREATE TABLE `oa_empresign`  (
  `EmpId` int(11) NOT NULL COMMENT '员工辞职表',
  `ResignDate` datetime(0) DEFAULT NULL COMMENT '辞职日期',
  `ResignReason` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '辞职原因',
  `LeaveDate` datetime(0) DEFAULT NULL COMMENT '离开日期',
  PRIMARY KEY (`EmpId`) USING BTREE,
  CONSTRAINT `FK_OA_EmpResign_OA_Employee` FOREIGN KEY (`EmpId`) REFERENCES `oa_employee` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oa_empstatus
-- ----------------------------
DROP TABLE IF EXISTS `oa_empstatus`;
CREATE TABLE `oa_empstatus`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_empstatus
-- ----------------------------
INSERT INTO `oa_empstatus` VALUES (1, '试用');
INSERT INTO `oa_empstatus` VALUES (2, '转正');
INSERT INTO `oa_empstatus` VALUES (3, '辞职');
INSERT INTO `oa_empstatus` VALUES (4, '离职');

-- ----------------------------
-- Table structure for sys_rolecom
-- ----------------------------
DROP TABLE IF EXISTS `sys_rolecom`;
CREATE TABLE `sys_rolecom`  (
  `RoleId` int(11) NOT NULL,
  `ComId` int(11) NOT NULL,
  PRIMARY KEY (`RoleId`, `ComId`) USING BTREE,
  INDEX `FK_Sys_RoleCom_OA_Company`(`ComId`) USING BTREE,
  CONSTRAINT `FK_Sys_RoleCom_OA_Company` FOREIGN KEY (`ComId`) REFERENCES `oa_company` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Sys_RoleCom_Sys_Roles` FOREIGN KEY (`RoleId`) REFERENCES `sys_roles` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_rolecom
-- ----------------------------
INSERT INTO `sys_rolecom` VALUES (17, 1);
INSERT INTO `sys_rolecom` VALUES (31, 1);
INSERT INTO `sys_rolecom` VALUES (17, 2);

-- ----------------------------
-- Table structure for sys_roleright
-- ----------------------------
DROP TABLE IF EXISTS `sys_roleright`;
CREATE TABLE `sys_roleright`  (
  `RoleId` int(11) NOT NULL,
  `NodeId` int(11) NOT NULL,
  `RightId` int(11) NOT NULL,
  PRIMARY KEY (`RoleId`, `NodeId`, `RightId`) USING BTREE,
  INDEX `FK_Sys_RoleRight_Sys_Right`(`RightId`) USING BTREE,
  INDEX `FK_Sys_RoleRight_Sys_Node`(`NodeId`) USING BTREE,
  CONSTRAINT `FK_Sys_RoleRight_Sys_Node` FOREIGN KEY (`NodeId`) REFERENCES `sys_node` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Sys_RoleRight_Sys_Right` FOREIGN KEY (`RightId`) REFERENCES `sys_right` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Sys_RoleRight_Sys_Roles` FOREIGN KEY (`RoleId`) REFERENCES `sys_roles` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roleright
-- ----------------------------
INSERT INTO `sys_roleright` VALUES (2, 1, 1);
INSERT INTO `sys_roleright` VALUES (2, 2, 1);
INSERT INTO `sys_roleright` VALUES (2, 11, 1);
INSERT INTO `sys_roleright` VALUES (2, 12, 1);
INSERT INTO `sys_roleright` VALUES (2, 21, 1);
INSERT INTO `sys_roleright` VALUES (2, 22, 1);
INSERT INTO `sys_roleright` VALUES (2, 23, 1);
INSERT INTO `sys_roleright` VALUES (2, 34, 1);
INSERT INTO `sys_roleright` VALUES (2, 35, 1);
INSERT INTO `sys_roleright` VALUES (2, 36, 1);
INSERT INTO `sys_roleright` VALUES (2, 38, 1);
INSERT INTO `sys_roleright` VALUES (2, 39, 1);
INSERT INTO `sys_roleright` VALUES (2, 40, 1);
INSERT INTO `sys_roleright` VALUES (2, 42, 1);
INSERT INTO `sys_roleright` VALUES (2, 43, 1);
INSERT INTO `sys_roleright` VALUES (2, 44, 1);
INSERT INTO `sys_roleright` VALUES (2, 45, 1);
INSERT INTO `sys_roleright` VALUES (2, 47, 1);
INSERT INTO `sys_roleright` VALUES (2, 49, 1);
INSERT INTO `sys_roleright` VALUES (2, 50, 1);
INSERT INTO `sys_roleright` VALUES (2, 51, 1);
INSERT INTO `sys_roleright` VALUES (2, 52, 1);
INSERT INTO `sys_roleright` VALUES (2, 53, 1);
INSERT INTO `sys_roleright` VALUES (2, 54, 1);
INSERT INTO `sys_roleright` VALUES (2, 55, 1);
INSERT INTO `sys_roleright` VALUES (2, 56, 1);
INSERT INTO `sys_roleright` VALUES (2, 57, 1);
INSERT INTO `sys_roleright` VALUES (2, 58, 1);
INSERT INTO `sys_roleright` VALUES (2, 59, 1);
INSERT INTO `sys_roleright` VALUES (2, 60, 1);
INSERT INTO `sys_roleright` VALUES (2, 61, 1);
INSERT INTO `sys_roleright` VALUES (2, 62, 1);
INSERT INTO `sys_roleright` VALUES (2, 63, 1);
INSERT INTO `sys_roleright` VALUES (2, 64, 1);
INSERT INTO `sys_roleright` VALUES (13, 1, 1);
INSERT INTO `sys_roleright` VALUES (13, 2, 1);
INSERT INTO `sys_roleright` VALUES (13, 11, 1);
INSERT INTO `sys_roleright` VALUES (13, 12, 1);
INSERT INTO `sys_roleright` VALUES (13, 15, 1);
INSERT INTO `sys_roleright` VALUES (13, 19, 1);
INSERT INTO `sys_roleright` VALUES (13, 21, 1);
INSERT INTO `sys_roleright` VALUES (13, 22, 1);
INSERT INTO `sys_roleright` VALUES (13, 23, 1);
INSERT INTO `sys_roleright` VALUES (13, 34, 1);
INSERT INTO `sys_roleright` VALUES (13, 35, 1);
INSERT INTO `sys_roleright` VALUES (13, 36, 1);
INSERT INTO `sys_roleright` VALUES (13, 38, 1);
INSERT INTO `sys_roleright` VALUES (13, 39, 1);
INSERT INTO `sys_roleright` VALUES (13, 40, 1);
INSERT INTO `sys_roleright` VALUES (13, 42, 1);
INSERT INTO `sys_roleright` VALUES (13, 43, 1);
INSERT INTO `sys_roleright` VALUES (13, 44, 1);
INSERT INTO `sys_roleright` VALUES (13, 45, 1);
INSERT INTO `sys_roleright` VALUES (13, 47, 1);
INSERT INTO `sys_roleright` VALUES (13, 49, 1);
INSERT INTO `sys_roleright` VALUES (13, 50, 1);
INSERT INTO `sys_roleright` VALUES (13, 51, 1);
INSERT INTO `sys_roleright` VALUES (13, 52, 1);
INSERT INTO `sys_roleright` VALUES (13, 53, 1);
INSERT INTO `sys_roleright` VALUES (13, 54, 1);
INSERT INTO `sys_roleright` VALUES (13, 55, 1);
INSERT INTO `sys_roleright` VALUES (13, 56, 1);
INSERT INTO `sys_roleright` VALUES (13, 57, 1);
INSERT INTO `sys_roleright` VALUES (13, 58, 1);
INSERT INTO `sys_roleright` VALUES (13, 59, 1);
INSERT INTO `sys_roleright` VALUES (13, 60, 1);
INSERT INTO `sys_roleright` VALUES (13, 61, 1);
INSERT INTO `sys_roleright` VALUES (13, 62, 1);
INSERT INTO `sys_roleright` VALUES (13, 63, 1);
INSERT INTO `sys_roleright` VALUES (13, 64, 1);
INSERT INTO `sys_roleright` VALUES (17, 1, 1);
INSERT INTO `sys_roleright` VALUES (17, 2, 1);
INSERT INTO `sys_roleright` VALUES (17, 11, 1);
INSERT INTO `sys_roleright` VALUES (17, 21, 1);
INSERT INTO `sys_roleright` VALUES (17, 22, 1);
INSERT INTO `sys_roleright` VALUES (17, 23, 1);
INSERT INTO `sys_roleright` VALUES (17, 34, 1);
INSERT INTO `sys_roleright` VALUES (17, 35, 1);
INSERT INTO `sys_roleright` VALUES (17, 36, 1);
INSERT INTO `sys_roleright` VALUES (17, 38, 1);
INSERT INTO `sys_roleright` VALUES (17, 39, 1);
INSERT INTO `sys_roleright` VALUES (17, 40, 1);
INSERT INTO `sys_roleright` VALUES (17, 42, 1);
INSERT INTO `sys_roleright` VALUES (17, 43, 1);
INSERT INTO `sys_roleright` VALUES (17, 44, 1);
INSERT INTO `sys_roleright` VALUES (17, 45, 1);
INSERT INTO `sys_roleright` VALUES (17, 47, 1);
INSERT INTO `sys_roleright` VALUES (17, 49, 1);
INSERT INTO `sys_roleright` VALUES (17, 50, 1);
INSERT INTO `sys_roleright` VALUES (17, 51, 1);
INSERT INTO `sys_roleright` VALUES (17, 52, 1);
INSERT INTO `sys_roleright` VALUES (17, 53, 1);
INSERT INTO `sys_roleright` VALUES (17, 54, 1);
INSERT INTO `sys_roleright` VALUES (17, 55, 1);
INSERT INTO `sys_roleright` VALUES (17, 56, 1);
INSERT INTO `sys_roleright` VALUES (17, 57, 1);
INSERT INTO `sys_roleright` VALUES (17, 58, 1);
INSERT INTO `sys_roleright` VALUES (17, 59, 1);
INSERT INTO `sys_roleright` VALUES (17, 60, 1);
INSERT INTO `sys_roleright` VALUES (17, 61, 1);
INSERT INTO `sys_roleright` VALUES (17, 62, 1);
INSERT INTO `sys_roleright` VALUES (17, 63, 1);
INSERT INTO `sys_roleright` VALUES (17, 64, 1);
INSERT INTO `sys_roleright` VALUES (24, 2, 1);
INSERT INTO `sys_roleright` VALUES (24, 21, 1);
INSERT INTO `sys_roleright` VALUES (24, 34, 1);
INSERT INTO `sys_roleright` VALUES (24, 35, 1);
INSERT INTO `sys_roleright` VALUES (24, 36, 1);
INSERT INTO `sys_roleright` VALUES (24, 38, 1);
INSERT INTO `sys_roleright` VALUES (24, 39, 1);
INSERT INTO `sys_roleright` VALUES (24, 40, 1);
INSERT INTO `sys_roleright` VALUES (24, 43, 1);
INSERT INTO `sys_roleright` VALUES (24, 47, 1);
INSERT INTO `sys_roleright` VALUES (24, 49, 1);
INSERT INTO `sys_roleright` VALUES (24, 52, 1);
INSERT INTO `sys_roleright` VALUES (24, 53, 1);
INSERT INTO `sys_roleright` VALUES (24, 55, 1);
INSERT INTO `sys_roleright` VALUES (24, 56, 1);
INSERT INTO `sys_roleright` VALUES (24, 57, 1);
INSERT INTO `sys_roleright` VALUES (24, 59, 1);
INSERT INTO `sys_roleright` VALUES (24, 60, 1);
INSERT INTO `sys_roleright` VALUES (24, 61, 1);
INSERT INTO `sys_roleright` VALUES (24, 62, 1);
INSERT INTO `sys_roleright` VALUES (24, 63, 1);
INSERT INTO `sys_roleright` VALUES (25, 1, 1);
INSERT INTO `sys_roleright` VALUES (25, 11, 1);
INSERT INTO `sys_roleright` VALUES (25, 12, 1);
INSERT INTO `sys_roleright` VALUES (25, 15, 1);
INSERT INTO `sys_roleright` VALUES (25, 19, 1);
INSERT INTO `sys_roleright` VALUES (25, 34, 1);
INSERT INTO `sys_roleright` VALUES (25, 35, 1);
INSERT INTO `sys_roleright` VALUES (25, 36, 1);
INSERT INTO `sys_roleright` VALUES (25, 38, 1);
INSERT INTO `sys_roleright` VALUES (25, 39, 1);
INSERT INTO `sys_roleright` VALUES (25, 40, 1);
INSERT INTO `sys_roleright` VALUES (25, 47, 1);
INSERT INTO `sys_roleright` VALUES (25, 49, 1);
INSERT INTO `sys_roleright` VALUES (25, 52, 1);
INSERT INTO `sys_roleright` VALUES (25, 53, 1);
INSERT INTO `sys_roleright` VALUES (25, 55, 1);
INSERT INTO `sys_roleright` VALUES (25, 57, 1);
INSERT INTO `sys_roleright` VALUES (25, 58, 1);
INSERT INTO `sys_roleright` VALUES (25, 59, 1);
INSERT INTO `sys_roleright` VALUES (25, 60, 1);
INSERT INTO `sys_roleright` VALUES (25, 61, 1);
INSERT INTO `sys_roleright` VALUES (25, 62, 1);
INSERT INTO `sys_roleright` VALUES (25, 63, 1);
INSERT INTO `sys_roleright` VALUES (30, 2, 1);
INSERT INTO `sys_roleright` VALUES (30, 23, 1);
INSERT INTO `sys_roleright` VALUES (30, 34, 1);
INSERT INTO `sys_roleright` VALUES (30, 35, 1);
INSERT INTO `sys_roleright` VALUES (30, 36, 1);
INSERT INTO `sys_roleright` VALUES (30, 38, 1);
INSERT INTO `sys_roleright` VALUES (30, 39, 1);
INSERT INTO `sys_roleright` VALUES (30, 40, 1);
INSERT INTO `sys_roleright` VALUES (30, 43, 1);
INSERT INTO `sys_roleright` VALUES (30, 47, 1);
INSERT INTO `sys_roleright` VALUES (30, 49, 1);
INSERT INTO `sys_roleright` VALUES (30, 52, 1);
INSERT INTO `sys_roleright` VALUES (30, 53, 1);
INSERT INTO `sys_roleright` VALUES (30, 55, 1);
INSERT INTO `sys_roleright` VALUES (30, 56, 1);
INSERT INTO `sys_roleright` VALUES (30, 57, 1);
INSERT INTO `sys_roleright` VALUES (30, 59, 1);
INSERT INTO `sys_roleright` VALUES (30, 60, 1);
INSERT INTO `sys_roleright` VALUES (30, 61, 1);
INSERT INTO `sys_roleright` VALUES (30, 62, 1);
INSERT INTO `sys_roleright` VALUES (30, 63, 1);
INSERT INTO `sys_roleright` VALUES (31, 1, 1);
INSERT INTO `sys_roleright` VALUES (31, 2, 1);
INSERT INTO `sys_roleright` VALUES (31, 21, 1);
INSERT INTO `sys_roleright` VALUES (31, 35, 1);
INSERT INTO `sys_roleright` VALUES (31, 47, 1);
INSERT INTO `sys_roleright` VALUES (31, 48, 1);
INSERT INTO `sys_roleright` VALUES (31, 57, 1);
INSERT INTO `sys_roleright` VALUES (32, 2, 1);
INSERT INTO `sys_roleright` VALUES (32, 21, 1);
INSERT INTO `sys_roleright` VALUES (32, 22, 1);
INSERT INTO `sys_roleright` VALUES (32, 23, 1);
INSERT INTO `sys_roleright` VALUES (32, 34, 1);
INSERT INTO `sys_roleright` VALUES (32, 35, 1);
INSERT INTO `sys_roleright` VALUES (32, 36, 1);
INSERT INTO `sys_roleright` VALUES (32, 38, 1);
INSERT INTO `sys_roleright` VALUES (32, 39, 1);
INSERT INTO `sys_roleright` VALUES (32, 40, 1);
INSERT INTO `sys_roleright` VALUES (32, 42, 1);
INSERT INTO `sys_roleright` VALUES (32, 43, 1);
INSERT INTO `sys_roleright` VALUES (32, 47, 1);
INSERT INTO `sys_roleright` VALUES (32, 49, 1);
INSERT INTO `sys_roleright` VALUES (32, 51, 1);
INSERT INTO `sys_roleright` VALUES (32, 52, 1);
INSERT INTO `sys_roleright` VALUES (32, 53, 1);
INSERT INTO `sys_roleright` VALUES (32, 55, 1);
INSERT INTO `sys_roleright` VALUES (32, 56, 1);
INSERT INTO `sys_roleright` VALUES (32, 57, 1);
INSERT INTO `sys_roleright` VALUES (32, 58, 1);
INSERT INTO `sys_roleright` VALUES (32, 59, 1);
INSERT INTO `sys_roleright` VALUES (32, 60, 1);
INSERT INTO `sys_roleright` VALUES (32, 61, 1);
INSERT INTO `sys_roleright` VALUES (32, 62, 1);
INSERT INTO `sys_roleright` VALUES (32, 63, 1);
INSERT INTO `sys_roleright` VALUES (2, 11, 2);
INSERT INTO `sys_roleright` VALUES (2, 12, 2);
INSERT INTO `sys_roleright` VALUES (2, 21, 2);
INSERT INTO `sys_roleright` VALUES (2, 22, 2);
INSERT INTO `sys_roleright` VALUES (2, 23, 2);
INSERT INTO `sys_roleright` VALUES (2, 35, 2);
INSERT INTO `sys_roleright` VALUES (2, 36, 2);
INSERT INTO `sys_roleright` VALUES (2, 38, 2);
INSERT INTO `sys_roleright` VALUES (2, 39, 2);
INSERT INTO `sys_roleright` VALUES (2, 40, 2);
INSERT INTO `sys_roleright` VALUES (2, 42, 2);
INSERT INTO `sys_roleright` VALUES (2, 43, 2);
INSERT INTO `sys_roleright` VALUES (2, 45, 2);
INSERT INTO `sys_roleright` VALUES (2, 49, 2);
INSERT INTO `sys_roleright` VALUES (2, 50, 2);
INSERT INTO `sys_roleright` VALUES (2, 51, 2);
INSERT INTO `sys_roleright` VALUES (2, 53, 2);
INSERT INTO `sys_roleright` VALUES (2, 54, 2);
INSERT INTO `sys_roleright` VALUES (2, 55, 2);
INSERT INTO `sys_roleright` VALUES (2, 56, 2);
INSERT INTO `sys_roleright` VALUES (2, 57, 2);
INSERT INTO `sys_roleright` VALUES (2, 58, 2);
INSERT INTO `sys_roleright` VALUES (2, 59, 2);
INSERT INTO `sys_roleright` VALUES (2, 60, 2);
INSERT INTO `sys_roleright` VALUES (2, 62, 2);
INSERT INTO `sys_roleright` VALUES (13, 21, 2);
INSERT INTO `sys_roleright` VALUES (13, 22, 2);
INSERT INTO `sys_roleright` VALUES (13, 45, 2);
INSERT INTO `sys_roleright` VALUES (13, 50, 2);
INSERT INTO `sys_roleright` VALUES (13, 54, 2);
INSERT INTO `sys_roleright` VALUES (13, 55, 2);
INSERT INTO `sys_roleright` VALUES (17, 21, 2);
INSERT INTO `sys_roleright` VALUES (17, 22, 2);
INSERT INTO `sys_roleright` VALUES (17, 35, 2);
INSERT INTO `sys_roleright` VALUES (17, 36, 2);
INSERT INTO `sys_roleright` VALUES (17, 38, 2);
INSERT INTO `sys_roleright` VALUES (17, 39, 2);
INSERT INTO `sys_roleright` VALUES (17, 40, 2);
INSERT INTO `sys_roleright` VALUES (17, 42, 2);
INSERT INTO `sys_roleright` VALUES (17, 45, 2);
INSERT INTO `sys_roleright` VALUES (17, 49, 2);
INSERT INTO `sys_roleright` VALUES (17, 50, 2);
INSERT INTO `sys_roleright` VALUES (17, 51, 2);
INSERT INTO `sys_roleright` VALUES (17, 53, 2);
INSERT INTO `sys_roleright` VALUES (17, 54, 2);
INSERT INTO `sys_roleright` VALUES (17, 55, 2);
INSERT INTO `sys_roleright` VALUES (17, 56, 2);
INSERT INTO `sys_roleright` VALUES (17, 57, 2);
INSERT INTO `sys_roleright` VALUES (17, 58, 2);
INSERT INTO `sys_roleright` VALUES (17, 59, 2);
INSERT INTO `sys_roleright` VALUES (17, 60, 2);
INSERT INTO `sys_roleright` VALUES (17, 62, 2);
INSERT INTO `sys_roleright` VALUES (17, 63, 2);
INSERT INTO `sys_roleright` VALUES (17, 64, 2);
INSERT INTO `sys_roleright` VALUES (24, 35, 2);
INSERT INTO `sys_roleright` VALUES (24, 36, 2);
INSERT INTO `sys_roleright` VALUES (24, 59, 2);
INSERT INTO `sys_roleright` VALUES (24, 60, 2);
INSERT INTO `sys_roleright` VALUES (25, 35, 2);
INSERT INTO `sys_roleright` VALUES (25, 36, 2);
INSERT INTO `sys_roleright` VALUES (25, 38, 2);
INSERT INTO `sys_roleright` VALUES (25, 39, 2);
INSERT INTO `sys_roleright` VALUES (25, 40, 2);
INSERT INTO `sys_roleright` VALUES (25, 49, 2);
INSERT INTO `sys_roleright` VALUES (25, 53, 2);
INSERT INTO `sys_roleright` VALUES (25, 57, 2);
INSERT INTO `sys_roleright` VALUES (25, 58, 2);
INSERT INTO `sys_roleright` VALUES (25, 59, 2);
INSERT INTO `sys_roleright` VALUES (25, 60, 2);
INSERT INTO `sys_roleright` VALUES (30, 35, 2);
INSERT INTO `sys_roleright` VALUES (30, 59, 2);
INSERT INTO `sys_roleright` VALUES (30, 60, 2);
INSERT INTO `sys_roleright` VALUES (31, 57, 2);
INSERT INTO `sys_roleright` VALUES (32, 35, 2);
INSERT INTO `sys_roleright` VALUES (32, 36, 2);
INSERT INTO `sys_roleright` VALUES (32, 38, 2);
INSERT INTO `sys_roleright` VALUES (32, 39, 2);
INSERT INTO `sys_roleright` VALUES (32, 40, 2);
INSERT INTO `sys_roleright` VALUES (32, 49, 2);
INSERT INTO `sys_roleright` VALUES (32, 53, 2);
INSERT INTO `sys_roleright` VALUES (32, 55, 2);
INSERT INTO `sys_roleright` VALUES (32, 56, 2);
INSERT INTO `sys_roleright` VALUES (32, 57, 2);
INSERT INTO `sys_roleright` VALUES (32, 58, 2);
INSERT INTO `sys_roleright` VALUES (32, 59, 2);
INSERT INTO `sys_roleright` VALUES (32, 60, 2);
INSERT INTO `sys_roleright` VALUES (32, 62, 2);
INSERT INTO `sys_roleright` VALUES (32, 63, 2);
INSERT INTO `sys_roleright` VALUES (2, 11, 3);
INSERT INTO `sys_roleright` VALUES (2, 12, 3);
INSERT INTO `sys_roleright` VALUES (2, 21, 3);
INSERT INTO `sys_roleright` VALUES (2, 22, 3);
INSERT INTO `sys_roleright` VALUES (2, 23, 3);
INSERT INTO `sys_roleright` VALUES (2, 35, 3);
INSERT INTO `sys_roleright` VALUES (2, 36, 3);
INSERT INTO `sys_roleright` VALUES (2, 38, 3);
INSERT INTO `sys_roleright` VALUES (2, 39, 3);
INSERT INTO `sys_roleright` VALUES (2, 40, 3);
INSERT INTO `sys_roleright` VALUES (2, 42, 3);
INSERT INTO `sys_roleright` VALUES (2, 43, 3);
INSERT INTO `sys_roleright` VALUES (2, 45, 3);
INSERT INTO `sys_roleright` VALUES (2, 49, 3);
INSERT INTO `sys_roleright` VALUES (2, 50, 3);
INSERT INTO `sys_roleright` VALUES (2, 51, 3);
INSERT INTO `sys_roleright` VALUES (2, 53, 3);
INSERT INTO `sys_roleright` VALUES (2, 54, 3);
INSERT INTO `sys_roleright` VALUES (2, 56, 3);
INSERT INTO `sys_roleright` VALUES (2, 57, 3);
INSERT INTO `sys_roleright` VALUES (2, 58, 3);
INSERT INTO `sys_roleright` VALUES (2, 59, 3);
INSERT INTO `sys_roleright` VALUES (2, 60, 3);
INSERT INTO `sys_roleright` VALUES (13, 21, 3);
INSERT INTO `sys_roleright` VALUES (13, 22, 3);
INSERT INTO `sys_roleright` VALUES (13, 45, 3);
INSERT INTO `sys_roleright` VALUES (13, 50, 3);
INSERT INTO `sys_roleright` VALUES (13, 54, 3);
INSERT INTO `sys_roleright` VALUES (13, 55, 3);
INSERT INTO `sys_roleright` VALUES (17, 21, 3);
INSERT INTO `sys_roleright` VALUES (17, 22, 3);
INSERT INTO `sys_roleright` VALUES (17, 35, 3);
INSERT INTO `sys_roleright` VALUES (17, 36, 3);
INSERT INTO `sys_roleright` VALUES (17, 38, 3);
INSERT INTO `sys_roleright` VALUES (17, 39, 3);
INSERT INTO `sys_roleright` VALUES (17, 40, 3);
INSERT INTO `sys_roleright` VALUES (17, 42, 3);
INSERT INTO `sys_roleright` VALUES (17, 45, 3);
INSERT INTO `sys_roleright` VALUES (17, 49, 3);
INSERT INTO `sys_roleright` VALUES (17, 50, 3);
INSERT INTO `sys_roleright` VALUES (17, 51, 3);
INSERT INTO `sys_roleright` VALUES (17, 53, 3);
INSERT INTO `sys_roleright` VALUES (17, 54, 3);
INSERT INTO `sys_roleright` VALUES (17, 55, 3);
INSERT INTO `sys_roleright` VALUES (17, 56, 3);
INSERT INTO `sys_roleright` VALUES (17, 57, 3);
INSERT INTO `sys_roleright` VALUES (17, 58, 3);
INSERT INTO `sys_roleright` VALUES (17, 59, 3);
INSERT INTO `sys_roleright` VALUES (17, 60, 3);
INSERT INTO `sys_roleright` VALUES (17, 62, 3);
INSERT INTO `sys_roleright` VALUES (17, 63, 3);
INSERT INTO `sys_roleright` VALUES (17, 64, 3);
INSERT INTO `sys_roleright` VALUES (24, 35, 3);
INSERT INTO `sys_roleright` VALUES (24, 36, 3);
INSERT INTO `sys_roleright` VALUES (24, 59, 3);
INSERT INTO `sys_roleright` VALUES (24, 60, 3);
INSERT INTO `sys_roleright` VALUES (25, 35, 3);
INSERT INTO `sys_roleright` VALUES (25, 36, 3);
INSERT INTO `sys_roleright` VALUES (25, 38, 3);
INSERT INTO `sys_roleright` VALUES (25, 39, 3);
INSERT INTO `sys_roleright` VALUES (25, 40, 3);
INSERT INTO `sys_roleright` VALUES (25, 49, 3);
INSERT INTO `sys_roleright` VALUES (25, 53, 3);
INSERT INTO `sys_roleright` VALUES (25, 57, 3);
INSERT INTO `sys_roleright` VALUES (25, 58, 3);
INSERT INTO `sys_roleright` VALUES (25, 59, 3);
INSERT INTO `sys_roleright` VALUES (25, 60, 3);
INSERT INTO `sys_roleright` VALUES (30, 35, 3);
INSERT INTO `sys_roleright` VALUES (30, 59, 3);
INSERT INTO `sys_roleright` VALUES (30, 60, 3);
INSERT INTO `sys_roleright` VALUES (31, 21, 3);
INSERT INTO `sys_roleright` VALUES (31, 57, 3);
INSERT INTO `sys_roleright` VALUES (32, 36, 3);
INSERT INTO `sys_roleright` VALUES (32, 38, 3);
INSERT INTO `sys_roleright` VALUES (32, 39, 3);
INSERT INTO `sys_roleright` VALUES (32, 40, 3);
INSERT INTO `sys_roleright` VALUES (32, 49, 3);
INSERT INTO `sys_roleright` VALUES (32, 53, 3);
INSERT INTO `sys_roleright` VALUES (32, 55, 3);
INSERT INTO `sys_roleright` VALUES (32, 56, 3);
INSERT INTO `sys_roleright` VALUES (32, 62, 3);
INSERT INTO `sys_roleright` VALUES (32, 63, 3);
INSERT INTO `sys_roleright` VALUES (2, 11, 4);
INSERT INTO `sys_roleright` VALUES (2, 12, 4);
INSERT INTO `sys_roleright` VALUES (2, 21, 4);
INSERT INTO `sys_roleright` VALUES (2, 35, 4);
INSERT INTO `sys_roleright` VALUES (2, 36, 4);
INSERT INTO `sys_roleright` VALUES (2, 38, 4);
INSERT INTO `sys_roleright` VALUES (2, 39, 4);
INSERT INTO `sys_roleright` VALUES (2, 40, 4);
INSERT INTO `sys_roleright` VALUES (2, 45, 4);
INSERT INTO `sys_roleright` VALUES (2, 49, 4);
INSERT INTO `sys_roleright` VALUES (2, 50, 4);
INSERT INTO `sys_roleright` VALUES (2, 57, 4);
INSERT INTO `sys_roleright` VALUES (2, 58, 4);
INSERT INTO `sys_roleright` VALUES (13, 45, 4);
INSERT INTO `sys_roleright` VALUES (13, 50, 4);
INSERT INTO `sys_roleright` VALUES (17, 21, 4);
INSERT INTO `sys_roleright` VALUES (17, 22, 4);
INSERT INTO `sys_roleright` VALUES (17, 35, 4);
INSERT INTO `sys_roleright` VALUES (17, 36, 4);
INSERT INTO `sys_roleright` VALUES (17, 38, 4);
INSERT INTO `sys_roleright` VALUES (17, 39, 4);
INSERT INTO `sys_roleright` VALUES (17, 40, 4);
INSERT INTO `sys_roleright` VALUES (17, 42, 4);
INSERT INTO `sys_roleright` VALUES (17, 45, 4);
INSERT INTO `sys_roleright` VALUES (17, 49, 4);
INSERT INTO `sys_roleright` VALUES (17, 50, 4);
INSERT INTO `sys_roleright` VALUES (17, 51, 4);
INSERT INTO `sys_roleright` VALUES (17, 53, 4);
INSERT INTO `sys_roleright` VALUES (17, 54, 4);
INSERT INTO `sys_roleright` VALUES (17, 55, 4);
INSERT INTO `sys_roleright` VALUES (17, 56, 4);
INSERT INTO `sys_roleright` VALUES (17, 57, 4);
INSERT INTO `sys_roleright` VALUES (17, 58, 4);
INSERT INTO `sys_roleright` VALUES (17, 59, 4);
INSERT INTO `sys_roleright` VALUES (17, 60, 4);
INSERT INTO `sys_roleright` VALUES (17, 62, 4);
INSERT INTO `sys_roleright` VALUES (17, 63, 4);
INSERT INTO `sys_roleright` VALUES (17, 64, 4);
INSERT INTO `sys_roleright` VALUES (24, 35, 4);
INSERT INTO `sys_roleright` VALUES (24, 60, 4);
INSERT INTO `sys_roleright` VALUES (25, 53, 4);
INSERT INTO `sys_roleright` VALUES (30, 35, 4);
INSERT INTO `sys_roleright` VALUES (30, 59, 4);
INSERT INTO `sys_roleright` VALUES (30, 60, 4);
INSERT INTO `sys_roleright` VALUES (31, 21, 4);
INSERT INTO `sys_roleright` VALUES (31, 57, 4);
INSERT INTO `sys_roleright` VALUES (32, 36, 4);
INSERT INTO `sys_roleright` VALUES (32, 38, 4);
INSERT INTO `sys_roleright` VALUES (32, 39, 4);
INSERT INTO `sys_roleright` VALUES (32, 40, 4);
INSERT INTO `sys_roleright` VALUES (32, 49, 4);
INSERT INTO `sys_roleright` VALUES (32, 53, 4);
INSERT INTO `sys_roleright` VALUES (32, 55, 4);
INSERT INTO `sys_roleright` VALUES (32, 56, 4);
INSERT INTO `sys_roleright` VALUES (32, 62, 4);
INSERT INTO `sys_roleright` VALUES (32, 63, 4);
INSERT INTO `sys_roleright` VALUES (2, 11, 5);
INSERT INTO `sys_roleright` VALUES (2, 12, 5);
INSERT INTO `sys_roleright` VALUES (2, 21, 5);
INSERT INTO `sys_roleright` VALUES (2, 35, 5);
INSERT INTO `sys_roleright` VALUES (2, 36, 5);
INSERT INTO `sys_roleright` VALUES (2, 59, 5);
INSERT INTO `sys_roleright` VALUES (2, 60, 5);
INSERT INTO `sys_roleright` VALUES (2, 62, 5);
INSERT INTO `sys_roleright` VALUES (13, 45, 5);
INSERT INTO `sys_roleright` VALUES (13, 50, 5);
INSERT INTO `sys_roleright` VALUES (17, 11, 5);
INSERT INTO `sys_roleright` VALUES (17, 21, 5);
INSERT INTO `sys_roleright` VALUES (17, 35, 5);
INSERT INTO `sys_roleright` VALUES (17, 36, 5);
INSERT INTO `sys_roleright` VALUES (17, 38, 5);
INSERT INTO `sys_roleright` VALUES (17, 39, 5);
INSERT INTO `sys_roleright` VALUES (17, 40, 5);
INSERT INTO `sys_roleright` VALUES (17, 45, 5);
INSERT INTO `sys_roleright` VALUES (17, 49, 5);
INSERT INTO `sys_roleright` VALUES (17, 50, 5);
INSERT INTO `sys_roleright` VALUES (17, 53, 5);
INSERT INTO `sys_roleright` VALUES (17, 55, 5);
INSERT INTO `sys_roleright` VALUES (17, 56, 5);
INSERT INTO `sys_roleright` VALUES (17, 62, 5);
INSERT INTO `sys_roleright` VALUES (17, 63, 5);
INSERT INTO `sys_roleright` VALUES (24, 35, 5);
INSERT INTO `sys_roleright` VALUES (24, 59, 5);
INSERT INTO `sys_roleright` VALUES (24, 60, 5);
INSERT INTO `sys_roleright` VALUES (25, 53, 5);
INSERT INTO `sys_roleright` VALUES (30, 35, 5);
INSERT INTO `sys_roleright` VALUES (30, 59, 5);
INSERT INTO `sys_roleright` VALUES (30, 60, 5);
INSERT INTO `sys_roleright` VALUES (32, 36, 5);
INSERT INTO `sys_roleright` VALUES (32, 38, 5);
INSERT INTO `sys_roleright` VALUES (32, 39, 5);
INSERT INTO `sys_roleright` VALUES (32, 40, 5);
INSERT INTO `sys_roleright` VALUES (32, 49, 5);
INSERT INTO `sys_roleright` VALUES (32, 53, 5);
INSERT INTO `sys_roleright` VALUES (32, 55, 5);
INSERT INTO `sys_roleright` VALUES (32, 56, 5);
INSERT INTO `sys_roleright` VALUES (32, 62, 5);
INSERT INTO `sys_roleright` VALUES (32, 63, 5);
INSERT INTO `sys_roleright` VALUES (2, 11, 6);
INSERT INTO `sys_roleright` VALUES (2, 12, 6);
INSERT INTO `sys_roleright` VALUES (2, 35, 6);
INSERT INTO `sys_roleright` VALUES (2, 36, 6);
INSERT INTO `sys_roleright` VALUES (13, 45, 6);
INSERT INTO `sys_roleright` VALUES (13, 50, 6);
INSERT INTO `sys_roleright` VALUES (17, 35, 6);
INSERT INTO `sys_roleright` VALUES (17, 36, 6);
INSERT INTO `sys_roleright` VALUES (17, 38, 6);
INSERT INTO `sys_roleright` VALUES (17, 39, 6);
INSERT INTO `sys_roleright` VALUES (17, 40, 6);
INSERT INTO `sys_roleright` VALUES (17, 45, 6);
INSERT INTO `sys_roleright` VALUES (17, 49, 6);
INSERT INTO `sys_roleright` VALUES (17, 50, 6);
INSERT INTO `sys_roleright` VALUES (17, 53, 6);
INSERT INTO `sys_roleright` VALUES (17, 55, 6);
INSERT INTO `sys_roleright` VALUES (17, 56, 6);
INSERT INTO `sys_roleright` VALUES (17, 62, 6);
INSERT INTO `sys_roleright` VALUES (17, 63, 6);
INSERT INTO `sys_roleright` VALUES (24, 35, 6);
INSERT INTO `sys_roleright` VALUES (24, 59, 6);
INSERT INTO `sys_roleright` VALUES (24, 60, 6);
INSERT INTO `sys_roleright` VALUES (25, 35, 6);
INSERT INTO `sys_roleright` VALUES (25, 53, 6);
INSERT INTO `sys_roleright` VALUES (25, 57, 6);
INSERT INTO `sys_roleright` VALUES (25, 58, 6);
INSERT INTO `sys_roleright` VALUES (25, 59, 6);
INSERT INTO `sys_roleright` VALUES (25, 60, 6);
INSERT INTO `sys_roleright` VALUES (30, 35, 6);
INSERT INTO `sys_roleright` VALUES (30, 59, 6);
INSERT INTO `sys_roleright` VALUES (30, 60, 6);
INSERT INTO `sys_roleright` VALUES (31, 21, 6);
INSERT INTO `sys_roleright` VALUES (32, 36, 6);
INSERT INTO `sys_roleright` VALUES (32, 38, 6);
INSERT INTO `sys_roleright` VALUES (32, 39, 6);
INSERT INTO `sys_roleright` VALUES (32, 40, 6);
INSERT INTO `sys_roleright` VALUES (32, 49, 6);
INSERT INTO `sys_roleright` VALUES (32, 53, 6);
INSERT INTO `sys_roleright` VALUES (32, 55, 6);
INSERT INTO `sys_roleright` VALUES (32, 56, 6);
INSERT INTO `sys_roleright` VALUES (32, 62, 6);
INSERT INTO `sys_roleright` VALUES (32, 63, 6);

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles`  (
  `Id` int(11) NOT NULL,
  `Tag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TypeId` int(11) DEFAULT NULL,
  `OrderId` int(11) DEFAULT NULL,
  `Descn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FK_Sys_Roles_Sys_RoleType`(`TypeId`) USING BTREE,
  CONSTRAINT `FK_Sys_Roles_Sys_RoleType` FOREIGN KEY (`TypeId`) REFERENCES `sys_roletype` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES (1, 'admin', '超级管理员', 1, 10, '拥有系统一切权限');
INSERT INTO `sys_roles` VALUES (2, 'com', '公司管理员', 4, 30, '只能管理所属企业的数据');
INSERT INTO `sys_roles` VALUES (13, 'system', '财务', 2, 20, '可以管理未限制权限的栏目的所有数据');
INSERT INTO `sys_roles` VALUES (17, '行政人员', '行政', 4, 110, '行政人员');
INSERT INTO `sys_roles` VALUES (24, 'zxs', '咨询师', 6, 120, NULL);
INSERT INTO `sys_roles` VALUES (25, 'jsgw', '技术顾问', 6, 130, NULL);
INSERT INTO `sys_roles` VALUES (30, 'markting', '市场专员', 6, 140, NULL);
INSERT INTO `sys_roles` VALUES (31, 'test', 'test', 3, 150, NULL);
INSERT INTO `sys_roles` VALUES (32, '班主任', '班主任', 6, 160, NULL);

-- ----------------------------
-- Table structure for sys_roletype
-- ----------------------------
DROP TABLE IF EXISTS `sys_roletype`;
CREATE TABLE `sys_roletype`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Descn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OrderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roletype
-- ----------------------------
INSERT INTO `sys_roletype` VALUES (1, '超级管理员', '拥有系统所有权限', 10);
INSERT INTO `sys_roletype` VALUES (2, '系统管理员', '管理未限制权限的栏目的数据,不限制公司和部门数据', 20);
INSERT INTO `sys_roletype` VALUES (3, '多企业管理员', '对于限制权限数据，只能管理一个或多个企业的数据', 30);
INSERT INTO `sys_roletype` VALUES (4, '企业管理员', '对于限制权限数据，只能管理自己所属企业的数据', 40);
INSERT INTO `sys_roletype` VALUES (5, '部门管理员', '对于限制权限数据，只能管理自己所属部门数据', 50);
INSERT INTO `sys_roletype` VALUES (6, '职员', '对于限制权限数据，只能管理自己的数据', 60);

-- ----------------------------
-- Table structure for sys_useract
-- ----------------------------
DROP TABLE IF EXISTS `sys_useract`;
CREATE TABLE `sys_useract`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_useract
-- ----------------------------
INSERT INTO `sys_useract` VALUES (1, '登录', 10);
INSERT INTO `sys_useract` VALUES (2, '新增', 20);
INSERT INTO `sys_useract` VALUES (3, '编辑', 30);
INSERT INTO `sys_useract` VALUES (4, '删除', 40);
INSERT INTO `sys_useract` VALUES (5, '导入', 60);
INSERT INTO `sys_useract` VALUES (6, '导出', 70);
INSERT INTO `sys_useract` VALUES (7, '其他', 80);

-- ----------------------------
-- Table structure for sys_userlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_userlog`;
CREATE TABLE `sys_userlog`  (
  `Id` int(11) NOT NULL COMMENT '用户操作日志',
  `EmpName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `ActId` int(11) DEFAULT NULL,
  `TableName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PKId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ActTime` datetime(0) DEFAULT NULL COMMENT '操作时间',
  `ComId` int(11) DEFAULT NULL,
  `Descn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作描述',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FK_Sys_UserLog_Sys_Users`(`UserId`) USING BTREE,
  INDEX `FK_Sys_UserLog_OA_Company`(`ComId`) USING BTREE,
  INDEX `FK_Sys_UserLog_Sys_UserAct`(`ActId`) USING BTREE,
  CONSTRAINT `FK_Sys_UserLog_OA_Company` FOREIGN KEY (`ComId`) REFERENCES `oa_company` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Sys_UserLog_Sys_UserAct` FOREIGN KEY (`ActId`) REFERENCES `sys_useract` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Sys_UserLog_Sys_Users` FOREIGN KEY (`UserId`) REFERENCES `sys_users` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
