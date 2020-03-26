/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云
 Source Server Type    : MySQL
 Source Server Version : 50642
 Source Host           : 123.207.171.15:3306
 Source Schema         : automall

 Target Server Type    : MySQL
 Target Server Version : 50642
 File Encoding         : 65001

 Date: 26/03/2020 12:20:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activepassivesafetydevice
-- ----------------------------
DROP TABLE IF EXISTS `activepassivesafetydevice`;
CREATE TABLE `activepassivesafetydevice`  (
  `APSDID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主被动安全装置ID',
  `APSDairbag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主副驾驶安全气囊',
  `APSDFrontrearairbags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前后排侧气囊',
  `APSDFrontrearheadairbag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前后排头部气囊',
  `APSDKneeAirbag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '膝部气囊',
  `APSDCopilotcushionairbag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副驾驶坐垫式气囊',
  `APSDBackwardbeltairbag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排安全带式气囊',
  `APSDBackseatantislideairbag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排座椅防下滑气囊',
  `APSDRearcentreairbag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排中央安全气囊',
  `APSDPassivepedestrianprotection` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被动行人保护',
  `APSDTirepressuremonitoringfunction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '胎压监测功能',
  `APSDZerotirepressuredriving` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '零胎压继续行驶',
  `APSDSafetybeltnotwornreminder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '安全带未戴提醒',
  `APSDISOFIXChildseatinterface` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ISOFIX儿童座椅接口',
  `APSDABS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ABS防抱死系统',
  `APSDBrakeforcedistribution` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '制动力分配',
  `APSDBrakeassist` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '刹车辅助',
  `APSDTractioncontrol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '牵引力控制',
  `APSDBodystabilitycontrol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车身稳定控制',
  `APSDDoublingassistance` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '并线辅助',
  `APSDLaneDepartureWarning` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车道偏离预警',
  `APSDLanekeepingassist` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车道保持系统',
  `APSDIdentificationroadtrafficsigns` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '道路交通标识识别系统',
  `APSDActivebrakesystem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主动刹车系统',
  `APSDNightvisionsystem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '夜视系统',
  `APSDFatiguedrivingtips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '疲劳驾驶提示',
  PRIMARY KEY (`APSDID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of activepassivesafetydevice
-- ----------------------------

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminId` int(10) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `adminName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员名字',
  `adminPassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  `adminSex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员性别',
  `adminPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员联系方式',
  `adminLevel` int(1) NULL DEFAULT NULL COMMENT '管理员等级',
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (10, '10', '10', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for airconditionedrefrigerator
-- ----------------------------
DROP TABLE IF EXISTS `airconditionedrefrigerator`;
CREATE TABLE `airconditionedrefrigerator`  (
  `ARID` int(11) NOT NULL AUTO_INCREMENT COMMENT '空调冰箱ID',
  `ARACTC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空调温度控制方式',
  `ARBRIAC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排独立空调',
  `ARRearOutlet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后座出风口',
  `ARTemperatureDivisionalControl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '温度分区控制',
  `ARVehicleAirPurifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车载空气净化器',
  `ARInsideVehiclePM2_5Filter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车内PM2.5过滤装置',
  `ARNIG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负离子发生器',
  `ARICFD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车内香氛装置',
  `ARVehicleRefrigerator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车载冰箱',
  PRIMARY KEY (`ARID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of airconditionedrefrigerator
-- ----------------------------

-- ----------------------------
-- Table structure for auxiliarycontrol
-- ----------------------------
DROP TABLE IF EXISTS `auxiliarycontrol`;
CREATE TABLE `auxiliarycontrol`  (
  `ACID` int(11) NOT NULL AUTO_INCREMENT COMMENT '辅助配置ID',
  `ACParkRadar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驻车雷达',
  `ACImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驾驶辅助影像',
  `ACAsternSideWarning` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '倒车车侧预警系统',
  `ACCruiseSystem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '巡航系统',
  `ACDrivingModeSwitch` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驾驶模式切换',
  `ACAtutoParking` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自动泊车入位',
  `ACEngineStartAndStop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发动机启停',
  `ACAutoBrake` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自动驻车',
  `ACUPhillAuxiliary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上坡辅助',
  `ACSlowDownTheSteepSlopes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '陡坡缓降',
  `ACVariableSuspension` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可变悬架功能',
  `ACAirSuspension` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空气悬架',
  `ACElectromagneticInductionSuspension` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电磁感应悬架',
  `ACVariableSteeringRatio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可变转速比',
  `ACCentralDifferentialLock` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中央差速锁',
  `ACActiveSteering` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '整体主动转向',
  `ACLimitedSlipDifferentialLock` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '限滑差速锁',
  `ACWadeInduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '涉水感应系统',
  PRIMARY KEY (`ACID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auxiliarycontrol
-- ----------------------------

-- ----------------------------
-- Table structure for body
-- ----------------------------
DROP TABLE IF EXISTS `body`;
CREATE TABLE `body`  (
  `CBID` double NOT NULL AUTO_INCREMENT COMMENT '车身ID',
  `CBLength` double NULL DEFAULT NULL COMMENT '车身长度',
  `CBWidth` double NULL DEFAULT NULL COMMENT '车身宽度',
  `CBheight` double NULL DEFAULT NULL COMMENT '车身高度',
  `CBWheelBase` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轴距',
  `CBFrontGauge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前轮距',
  `CBRearTrack` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后轮距',
  `CBMinClearanceFromGround` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最小离地间距',
  `CBBodywork` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车身结构',
  `CBDoorNumber` int(11) NULL DEFAULT NULL COMMENT '车门数',
  `CBSeating` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座位数',
  `CBFuelTankCapacity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '油箱容积',
  `CBBaggageVolume` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行李箱容积',
  `CBCurbWeight` double NULL DEFAULT NULL COMMENT '整备质量',
  PRIMARY KEY (`CBID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of body
-- ----------------------------

-- ----------------------------
-- Table structure for browserecord
-- ----------------------------
DROP TABLE IF EXISTS `browserecord`;
CREATE TABLE `browserecord`  (
  `BRFID` int(11) NOT NULL AUTO_INCREMENT COMMENT '浏览记录表',
  `userID` int(11) NULL DEFAULT NULL COMMENT '浏览用户',
  `BRFTime` datetime(0) NULL DEFAULT NULL COMMENT '浏览时间',
  `carID` int(11) NULL DEFAULT NULL COMMENT '浏览汽车ID',
  PRIMARY KEY (`BRFID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of browserecord
-- ----------------------------

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `carId` int(11) NOT NULL AUTO_INCREMENT COMMENT '车ID',
  `carName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车名字',
  `ARID` int(11) NULL DEFAULT NULL COMMENT '车内空调ID',
  `CBID` int(11) NULL DEFAULT NULL COMMENT '车身信息ID',
  `CSID` int(11) NULL DEFAULT NULL COMMENT '底盘转向ID',
  `ENID` int(11) NULL DEFAULT NULL COMMENT '发动机ID',
  `CEPID` int(11) NULL DEFAULT NULL COMMENT '基本参数ID',
  `GBID` int(11) NULL DEFAULT NULL COMMENT '变速箱ID',
  `PSID` int(11) NULL DEFAULT NULL COMMENT '选装包ID',
  `WBID` int(11) NULL DEFAULT NULL COMMENT '车轮制动ID',
  `ACID` int(11) NULL DEFAULT NULL COMMENT '辅助控制ID',
  `ESID` int(11) NULL DEFAULT NULL COMMENT '外部/防盗配置ID',
  `IID` int(11) NULL DEFAULT NULL COMMENT '内部配置ID',
  `SID` int(11) NULL DEFAULT NULL COMMENT '座椅配置ID',
  `EMID` int(11) NULL DEFAULT NULL COMMENT '电动机ID',
  `APSDID` int(11) NULL DEFAULT NULL COMMENT '主被动安全装置ID',
  `MCID` int(11) NULL DEFAULT NULL COMMENT '多媒体配置ID',
  `LCID` int(11) NULL DEFAULT NULL COMMENT '灯光配置ID',
  `GRMID` int(11) NULL DEFAULT NULL COMMENT '玻璃后视镜配置iD',
  PRIMARY KEY (`carId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, '宝马', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for chassissteering
-- ----------------------------
DROP TABLE IF EXISTS `chassissteering`;
CREATE TABLE `chassissteering`  (
  `CSID` int(11) NOT NULL AUTO_INCREMENT COMMENT '底盘转向ID',
  `CSDriveType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驱动方式',
  `CSFourDriveType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '四驱形式',
  `CSCentralDifferentialLockStructure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中央差速锁结构',
  `CSFrontSuspension` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前悬挂类型',
  `CSRearSuspension` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前悬挂类型',
  `CSAssistanceType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '助力结构',
  `CSCarBodyStructure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车体结构',
  PRIMARY KEY (`CSID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chassissteering
-- ----------------------------

-- ----------------------------
-- Table structure for collectionrecord
-- ----------------------------
DROP TABLE IF EXISTS `collectionrecord`;
CREATE TABLE `collectionrecord`  (
  `CRFID` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏记录表',
  `userID` int(11) NULL DEFAULT NULL COMMENT '收藏者ID',
  `CRFTime` datetime(0) NULL DEFAULT NULL COMMENT '收藏时间',
  `carID` int(11) NULL DEFAULT NULL COMMENT '收藏的车的ID',
  PRIMARY KEY (`CRFID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of collectionrecord
-- ----------------------------

-- ----------------------------
-- Table structure for constellation
-- ----------------------------
DROP TABLE IF EXISTS `constellation`;
CREATE TABLE `constellation`  (
  `conId` int(11) NOT NULL AUTO_INCREMENT COMMENT '星座ID',
  `conName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '星座名称',
  PRIMARY KEY (`conId`) USING BTREE,
  INDEX `conId`(`conId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of constellation
-- ----------------------------

-- ----------------------------
-- Table structure for district
-- ----------------------------
DROP TABLE IF EXISTS `district`;
CREATE TABLE `district`  (
  `id` int(11) NOT NULL DEFAULT 0 COMMENT '主键自增',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父类id',
  `district_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市的名字',
  `type` int(11) NULL DEFAULT NULL COMMENT '城市的类型，0是国，1是省，2是市，3是区',
  `hierarchy` int(11) NULL DEFAULT NULL COMMENT '地区所处的层级',
  `district_sqe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '层级序列',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `district_sqe`(`district_sqe`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of district
-- ----------------------------
INSERT INTO `district` VALUES (1, 0, '中国', 0, 1, '.1.');
INSERT INTO `district` VALUES (2, 1, '北京', 1, 2, '.1.2.');
INSERT INTO `district` VALUES (3, 1, '安徽', 1, 2, '.1.3.');
INSERT INTO `district` VALUES (4, 1, '福建', 1, 2, '.1.4.');
INSERT INTO `district` VALUES (5, 1, '甘肃', 1, 2, '.1.5.');
INSERT INTO `district` VALUES (6, 1, '广东', 1, 2, '.1.6.');
INSERT INTO `district` VALUES (7, 1, '广西', 1, 2, '.1.7.');
INSERT INTO `district` VALUES (8, 1, '贵州', 1, 2, '.1.8.');
INSERT INTO `district` VALUES (9, 1, '海南', 1, 2, '.1.9.');
INSERT INTO `district` VALUES (10, 1, '河北', 1, 2, '.1.10.');
INSERT INTO `district` VALUES (11, 1, '河南', 1, 2, '.1.11.');
INSERT INTO `district` VALUES (12, 1, '黑龙江', 1, 2, '.1.12.');
INSERT INTO `district` VALUES (13, 1, '湖北', 1, 2, '.1.13.');
INSERT INTO `district` VALUES (14, 1, '湖南', 1, 2, '.1.14.');
INSERT INTO `district` VALUES (15, 1, '吉林', 1, 2, '.1.15.');
INSERT INTO `district` VALUES (16, 1, '江苏', 1, 2, '.1.16.');
INSERT INTO `district` VALUES (17, 1, '江西', 1, 2, '.1.17.');
INSERT INTO `district` VALUES (18, 1, '辽宁', 1, 2, '.1.18.');
INSERT INTO `district` VALUES (19, 1, '内蒙古', 1, 2, '.1.19.');
INSERT INTO `district` VALUES (20, 1, '宁夏', 1, 2, '.1.20.');
INSERT INTO `district` VALUES (21, 1, '青海', 1, 2, '.1.21.');
INSERT INTO `district` VALUES (22, 1, '山东', 1, 2, '.1.22.');
INSERT INTO `district` VALUES (23, 1, '山西', 1, 2, '.1.23.');
INSERT INTO `district` VALUES (24, 1, '陕西', 1, 2, '.1.24.');
INSERT INTO `district` VALUES (25, 1, '上海', 1, 2, '.1.25.');
INSERT INTO `district` VALUES (26, 1, '四川', 1, 2, '.1.26.');
INSERT INTO `district` VALUES (27, 1, '天津', 1, 2, '.1.27.');
INSERT INTO `district` VALUES (28, 1, '西藏', 1, 2, '.1.28.');
INSERT INTO `district` VALUES (29, 1, '新疆', 1, 2, '.1.29.');
INSERT INTO `district` VALUES (30, 1, '云南', 1, 2, '.1.30.');
INSERT INTO `district` VALUES (31, 1, '浙江', 1, 2, '.1.31.');
INSERT INTO `district` VALUES (32, 1, '重庆', 1, 2, '.1.32.');
INSERT INTO `district` VALUES (33, 1, '香港', 1, 2, '.1.33.');
INSERT INTO `district` VALUES (34, 1, '澳门', 1, 2, '.1.34.');
INSERT INTO `district` VALUES (35, 1, '台湾', 1, 2, '.1.35.');
INSERT INTO `district` VALUES (36, 3, '安庆', 2, 3, '.1.3.36.');
INSERT INTO `district` VALUES (37, 3, '蚌埠', 2, 3, '.1.3.37.');
INSERT INTO `district` VALUES (38, 3, '巢湖', 2, 3, '.1.3.38.');
INSERT INTO `district` VALUES (39, 3, '池州', 2, 3, '.1.3.39.');
INSERT INTO `district` VALUES (40, 3, '滁州', 2, 3, '.1.3.40.');
INSERT INTO `district` VALUES (41, 3, '阜阳', 2, 3, '.1.3.41.');
INSERT INTO `district` VALUES (42, 3, '淮北', 2, 3, '.1.3.42.');
INSERT INTO `district` VALUES (43, 3, '淮南', 2, 3, '.1.3.43.');
INSERT INTO `district` VALUES (44, 3, '黄山', 2, 3, '.1.3.44.');
INSERT INTO `district` VALUES (45, 3, '六安', 2, 3, '.1.3.45.');
INSERT INTO `district` VALUES (46, 3, '马鞍山', 2, 3, '.1.3.46.');
INSERT INTO `district` VALUES (47, 3, '宿州', 2, 3, '.1.3.47.');
INSERT INTO `district` VALUES (48, 3, '铜陵', 2, 3, '.1.3.48.');
INSERT INTO `district` VALUES (49, 3, '芜湖', 2, 3, '.1.3.49.');
INSERT INTO `district` VALUES (50, 3, '宣城', 2, 3, '.1.3.50.');
INSERT INTO `district` VALUES (51, 3, '亳州', 2, 3, '.1.3.51.');
INSERT INTO `district` VALUES (52, 2, '市辖区', 2, 3, '.1.2.52.');
INSERT INTO `district` VALUES (53, 4, '福州', 2, 3, '.1.4.53.');
INSERT INTO `district` VALUES (54, 4, '龙岩', 2, 3, '.1.4.54.');
INSERT INTO `district` VALUES (55, 4, '南平', 2, 3, '.1.4.55.');
INSERT INTO `district` VALUES (56, 4, '宁德', 2, 3, '.1.4.56.');
INSERT INTO `district` VALUES (57, 4, '莆田', 2, 3, '.1.4.57.');
INSERT INTO `district` VALUES (58, 4, '泉州', 2, 3, '.1.4.58.');
INSERT INTO `district` VALUES (59, 4, '三明', 2, 3, '.1.4.59.');
INSERT INTO `district` VALUES (60, 4, '厦门', 2, 3, '.1.4.60.');
INSERT INTO `district` VALUES (61, 4, '漳州', 2, 3, '.1.4.61.');
INSERT INTO `district` VALUES (62, 5, '兰州', 2, 3, '.1.5.62.');
INSERT INTO `district` VALUES (63, 5, '白银', 2, 3, '.1.5.63.');
INSERT INTO `district` VALUES (64, 5, '定西', 2, 3, '.1.5.64.');
INSERT INTO `district` VALUES (65, 5, '甘南', 2, 3, '.1.5.65.');
INSERT INTO `district` VALUES (66, 5, '嘉峪关', 2, 3, '.1.5.66.');
INSERT INTO `district` VALUES (67, 5, '金昌', 2, 3, '.1.5.67.');
INSERT INTO `district` VALUES (68, 5, '酒泉', 2, 3, '.1.5.68.');
INSERT INTO `district` VALUES (69, 5, '临夏', 2, 3, '.1.5.69.');
INSERT INTO `district` VALUES (70, 5, '陇南', 2, 3, '.1.5.70.');
INSERT INTO `district` VALUES (71, 5, '平凉', 2, 3, '.1.5.71.');
INSERT INTO `district` VALUES (72, 5, '庆阳', 2, 3, '.1.5.72.');
INSERT INTO `district` VALUES (73, 5, '天水', 2, 3, '.1.5.73.');
INSERT INTO `district` VALUES (74, 5, '武威', 2, 3, '.1.5.74.');
INSERT INTO `district` VALUES (75, 5, '张掖', 2, 3, '.1.5.75.');
INSERT INTO `district` VALUES (76, 6, '广州', 2, 3, '.1.6.76.');
INSERT INTO `district` VALUES (77, 6, '深圳', 2, 3, '.1.6.77.');
INSERT INTO `district` VALUES (78, 6, '潮州', 2, 3, '.1.6.78.');
INSERT INTO `district` VALUES (79, 6, '东莞', 2, 3, '.1.6.79.');
INSERT INTO `district` VALUES (80, 6, '佛山', 2, 3, '.1.6.80.');
INSERT INTO `district` VALUES (81, 6, '河源', 2, 3, '.1.6.81.');
INSERT INTO `district` VALUES (82, 6, '惠州', 2, 3, '.1.6.82.');
INSERT INTO `district` VALUES (83, 6, '江门', 2, 3, '.1.6.83.');
INSERT INTO `district` VALUES (84, 6, '揭阳', 2, 3, '.1.6.84.');
INSERT INTO `district` VALUES (85, 6, '茂名', 2, 3, '.1.6.85.');
INSERT INTO `district` VALUES (86, 6, '梅州', 2, 3, '.1.6.86.');
INSERT INTO `district` VALUES (87, 6, '清远', 2, 3, '.1.6.87.');
INSERT INTO `district` VALUES (88, 6, '汕头', 2, 3, '.1.6.88.');
INSERT INTO `district` VALUES (89, 6, '汕尾', 2, 3, '.1.6.89.');
INSERT INTO `district` VALUES (90, 6, '韶关', 2, 3, '.1.6.90.');
INSERT INTO `district` VALUES (91, 6, '阳江', 2, 3, '.1.6.91.');
INSERT INTO `district` VALUES (92, 6, '云浮', 2, 3, '.1.6.92.');
INSERT INTO `district` VALUES (93, 6, '湛江', 2, 3, '.1.6.93.');
INSERT INTO `district` VALUES (94, 6, '肇庆', 2, 3, '.1.6.94.');
INSERT INTO `district` VALUES (95, 6, '中山', 2, 3, '.1.6.95.');
INSERT INTO `district` VALUES (96, 6, '珠海', 2, 3, '.1.6.96.');
INSERT INTO `district` VALUES (97, 7, '南宁', 2, 3, '.1.7.97.');
INSERT INTO `district` VALUES (98, 7, '桂林', 2, 3, '.1.7.98.');
INSERT INTO `district` VALUES (99, 7, '百色', 2, 3, '.1.7.99.');
INSERT INTO `district` VALUES (100, 7, '北海', 2, 3, '.1.7.100.');
INSERT INTO `district` VALUES (101, 7, '崇左', 2, 3, '.1.7.101.');
INSERT INTO `district` VALUES (102, 7, '防城港', 2, 3, '.1.7.102.');
INSERT INTO `district` VALUES (103, 7, '贵港', 2, 3, '.1.7.103.');
INSERT INTO `district` VALUES (104, 7, '河池', 2, 3, '.1.7.104.');
INSERT INTO `district` VALUES (105, 7, '贺州', 2, 3, '.1.7.105.');
INSERT INTO `district` VALUES (106, 7, '来宾', 2, 3, '.1.7.106.');
INSERT INTO `district` VALUES (107, 7, '柳州', 2, 3, '.1.7.107.');
INSERT INTO `district` VALUES (108, 7, '钦州', 2, 3, '.1.7.108.');
INSERT INTO `district` VALUES (109, 7, '梧州', 2, 3, '.1.7.109.');
INSERT INTO `district` VALUES (110, 7, '玉林', 2, 3, '.1.7.110.');
INSERT INTO `district` VALUES (111, 8, '贵阳', 2, 3, '.1.8.111.');
INSERT INTO `district` VALUES (112, 8, '安顺', 2, 3, '.1.8.112.');
INSERT INTO `district` VALUES (113, 8, '毕节', 2, 3, '.1.8.113.');
INSERT INTO `district` VALUES (114, 8, '六盘水', 2, 3, '.1.8.114.');
INSERT INTO `district` VALUES (115, 8, '黔东南', 2, 3, '.1.8.115.');
INSERT INTO `district` VALUES (116, 8, '黔南', 2, 3, '.1.8.116.');
INSERT INTO `district` VALUES (117, 8, '黔西南', 2, 3, '.1.8.117.');
INSERT INTO `district` VALUES (118, 8, '铜仁', 2, 3, '.1.8.118.');
INSERT INTO `district` VALUES (119, 8, '遵义', 2, 3, '.1.8.119.');
INSERT INTO `district` VALUES (120, 9, '海口', 2, 3, '.1.9.120.');
INSERT INTO `district` VALUES (121, 9, '三亚', 2, 3, '.1.9.121.');
INSERT INTO `district` VALUES (122, 9, '白沙', 2, 3, '.1.9.122.');
INSERT INTO `district` VALUES (123, 9, '保亭', 2, 3, '.1.9.123.');
INSERT INTO `district` VALUES (124, 9, '昌江', 2, 3, '.1.9.124.');
INSERT INTO `district` VALUES (125, 9, '澄迈县', 2, 3, '.1.9.125.');
INSERT INTO `district` VALUES (126, 9, '定安县', 2, 3, '.1.9.126.');
INSERT INTO `district` VALUES (127, 9, '东方', 2, 3, '.1.9.127.');
INSERT INTO `district` VALUES (128, 9, '乐东', 2, 3, '.1.9.128.');
INSERT INTO `district` VALUES (129, 9, '临高县', 2, 3, '.1.9.129.');
INSERT INTO `district` VALUES (130, 9, '陵水', 2, 3, '.1.9.130.');
INSERT INTO `district` VALUES (131, 9, '琼海', 2, 3, '.1.9.131.');
INSERT INTO `district` VALUES (132, 9, '琼中', 2, 3, '.1.9.132.');
INSERT INTO `district` VALUES (133, 9, '屯昌县', 2, 3, '.1.9.133.');
INSERT INTO `district` VALUES (134, 9, '万宁', 2, 3, '.1.9.134.');
INSERT INTO `district` VALUES (135, 9, '文昌', 2, 3, '.1.9.135.');
INSERT INTO `district` VALUES (136, 9, '五指山', 2, 3, '.1.9.136.');
INSERT INTO `district` VALUES (137, 9, '儋州', 2, 3, '.1.9.137.');
INSERT INTO `district` VALUES (138, 10, '石家庄', 2, 3, '.1.10.138.');
INSERT INTO `district` VALUES (139, 10, '保定', 2, 3, '.1.10.139.');
INSERT INTO `district` VALUES (140, 10, '沧州', 2, 3, '.1.10.140.');
INSERT INTO `district` VALUES (141, 10, '承德', 2, 3, '.1.10.141.');
INSERT INTO `district` VALUES (142, 10, '邯郸', 2, 3, '.1.10.142.');
INSERT INTO `district` VALUES (143, 10, '衡水', 2, 3, '.1.10.143.');
INSERT INTO `district` VALUES (144, 10, '廊坊', 2, 3, '.1.10.144.');
INSERT INTO `district` VALUES (145, 10, '秦皇岛', 2, 3, '.1.10.145.');
INSERT INTO `district` VALUES (146, 10, '唐山', 2, 3, '.1.10.146.');
INSERT INTO `district` VALUES (147, 10, '邢台', 2, 3, '.1.10.147.');
INSERT INTO `district` VALUES (148, 10, '张家口', 2, 3, '.1.10.148.');
INSERT INTO `district` VALUES (149, 11, '郑州', 2, 3, '.1.11.149.');
INSERT INTO `district` VALUES (150, 11, '洛阳', 2, 3, '.1.11.150.');
INSERT INTO `district` VALUES (151, 11, '开封', 2, 3, '.1.11.151.');
INSERT INTO `district` VALUES (152, 11, '安阳', 2, 3, '.1.11.152.');
INSERT INTO `district` VALUES (153, 11, '鹤壁', 2, 3, '.1.11.153.');
INSERT INTO `district` VALUES (154, 11, '济源', 2, 3, '.1.11.154.');
INSERT INTO `district` VALUES (155, 11, '焦作', 2, 3, '.1.11.155.');
INSERT INTO `district` VALUES (156, 11, '南阳', 2, 3, '.1.11.156.');
INSERT INTO `district` VALUES (157, 11, '平顶山', 2, 3, '.1.11.157.');
INSERT INTO `district` VALUES (158, 11, '三门峡', 2, 3, '.1.11.158.');
INSERT INTO `district` VALUES (159, 11, '商丘', 2, 3, '.1.11.159.');
INSERT INTO `district` VALUES (160, 11, '新乡', 2, 3, '.1.11.160.');
INSERT INTO `district` VALUES (161, 11, '信阳', 2, 3, '.1.11.161.');
INSERT INTO `district` VALUES (162, 11, '许昌', 2, 3, '.1.11.162.');
INSERT INTO `district` VALUES (163, 11, '周口', 2, 3, '.1.11.163.');
INSERT INTO `district` VALUES (164, 11, '驻马店', 2, 3, '.1.11.164.');
INSERT INTO `district` VALUES (165, 11, '漯河', 2, 3, '.1.11.165.');
INSERT INTO `district` VALUES (166, 11, '濮阳', 2, 3, '.1.11.166.');
INSERT INTO `district` VALUES (167, 12, '哈尔滨', 2, 3, '.1.12.167.');
INSERT INTO `district` VALUES (168, 12, '大庆', 2, 3, '.1.12.168.');
INSERT INTO `district` VALUES (169, 12, '大兴安岭', 2, 3, '.1.12.169.');
INSERT INTO `district` VALUES (170, 12, '鹤岗', 2, 3, '.1.12.170.');
INSERT INTO `district` VALUES (171, 12, '黑河', 2, 3, '.1.12.171.');
INSERT INTO `district` VALUES (172, 12, '鸡西', 2, 3, '.1.12.172.');
INSERT INTO `district` VALUES (173, 12, '佳木斯', 2, 3, '.1.12.173.');
INSERT INTO `district` VALUES (174, 12, '牡丹江', 2, 3, '.1.12.174.');
INSERT INTO `district` VALUES (175, 12, '七台河', 2, 3, '.1.12.175.');
INSERT INTO `district` VALUES (176, 12, '齐齐哈尔', 2, 3, '.1.12.176.');
INSERT INTO `district` VALUES (177, 12, '双鸭山', 2, 3, '.1.12.177.');
INSERT INTO `district` VALUES (178, 12, '绥化', 2, 3, '.1.12.178.');
INSERT INTO `district` VALUES (179, 12, '伊春', 2, 3, '.1.12.179.');
INSERT INTO `district` VALUES (180, 13, '武汉', 2, 3, '.1.13.180.');
INSERT INTO `district` VALUES (181, 13, '仙桃', 2, 3, '.1.13.181.');
INSERT INTO `district` VALUES (182, 13, '鄂州', 2, 3, '.1.13.182.');
INSERT INTO `district` VALUES (183, 13, '黄冈', 2, 3, '.1.13.183.');
INSERT INTO `district` VALUES (184, 13, '黄石', 2, 3, '.1.13.184.');
INSERT INTO `district` VALUES (185, 13, '荆门', 2, 3, '.1.13.185.');
INSERT INTO `district` VALUES (186, 13, '荆州', 2, 3, '.1.13.186.');
INSERT INTO `district` VALUES (187, 13, '潜江', 2, 3, '.1.13.187.');
INSERT INTO `district` VALUES (188, 13, '神农架林区', 2, 3, '.1.13.188.');
INSERT INTO `district` VALUES (189, 13, '十堰', 2, 3, '.1.13.189.');
INSERT INTO `district` VALUES (190, 13, '随州', 2, 3, '.1.13.190.');
INSERT INTO `district` VALUES (191, 13, '天门', 2, 3, '.1.13.191.');
INSERT INTO `district` VALUES (192, 13, '咸宁', 2, 3, '.1.13.192.');
INSERT INTO `district` VALUES (193, 13, '襄樊', 2, 3, '.1.13.193.');
INSERT INTO `district` VALUES (194, 13, '孝感', 2, 3, '.1.13.194.');
INSERT INTO `district` VALUES (195, 13, '宜昌', 2, 3, '.1.13.195.');
INSERT INTO `district` VALUES (196, 13, '恩施', 2, 3, '.1.13.196.');
INSERT INTO `district` VALUES (197, 14, '长沙', 2, 3, '.1.14.197.');
INSERT INTO `district` VALUES (198, 14, '张家界', 2, 3, '.1.14.198.');
INSERT INTO `district` VALUES (199, 14, '常德', 2, 3, '.1.14.199.');
INSERT INTO `district` VALUES (200, 14, '郴州', 2, 3, '.1.14.200.');
INSERT INTO `district` VALUES (201, 14, '衡阳', 2, 3, '.1.14.201.');
INSERT INTO `district` VALUES (202, 14, '怀化', 2, 3, '.1.14.202.');
INSERT INTO `district` VALUES (203, 14, '娄底', 2, 3, '.1.14.203.');
INSERT INTO `district` VALUES (204, 14, '邵阳', 2, 3, '.1.14.204.');
INSERT INTO `district` VALUES (205, 14, '湘潭', 2, 3, '.1.14.205.');
INSERT INTO `district` VALUES (206, 14, '湘西', 2, 3, '.1.14.206.');
INSERT INTO `district` VALUES (207, 14, '益阳', 2, 3, '.1.14.207.');
INSERT INTO `district` VALUES (208, 14, '永州', 2, 3, '.1.14.208.');
INSERT INTO `district` VALUES (209, 14, '岳阳', 2, 3, '.1.14.209.');
INSERT INTO `district` VALUES (210, 14, '株洲', 2, 3, '.1.14.210.');
INSERT INTO `district` VALUES (211, 15, '长春', 2, 3, '.1.15.211.');
INSERT INTO `district` VALUES (212, 15, '吉林', 2, 3, '.1.15.212.');
INSERT INTO `district` VALUES (213, 15, '白城', 2, 3, '.1.15.213.');
INSERT INTO `district` VALUES (214, 15, '白山', 2, 3, '.1.15.214.');
INSERT INTO `district` VALUES (215, 15, '辽源', 2, 3, '.1.15.215.');
INSERT INTO `district` VALUES (216, 15, '四平', 2, 3, '.1.15.216.');
INSERT INTO `district` VALUES (217, 15, '松原', 2, 3, '.1.15.217.');
INSERT INTO `district` VALUES (218, 15, '通化', 2, 3, '.1.15.218.');
INSERT INTO `district` VALUES (219, 15, '延边', 2, 3, '.1.15.219.');
INSERT INTO `district` VALUES (220, 16, '南京', 2, 3, '.1.16.220.');
INSERT INTO `district` VALUES (221, 16, '苏州', 2, 3, '.1.16.221.');
INSERT INTO `district` VALUES (222, 16, '无锡', 2, 3, '.1.16.222.');
INSERT INTO `district` VALUES (223, 16, '常州', 2, 3, '.1.16.223.');
INSERT INTO `district` VALUES (224, 16, '淮安', 2, 3, '.1.16.224.');
INSERT INTO `district` VALUES (225, 16, '连云港', 2, 3, '.1.16.225.');
INSERT INTO `district` VALUES (226, 16, '南通', 2, 3, '.1.16.226.');
INSERT INTO `district` VALUES (227, 16, '宿迁', 2, 3, '.1.16.227.');
INSERT INTO `district` VALUES (228, 16, '泰州', 2, 3, '.1.16.228.');
INSERT INTO `district` VALUES (229, 16, '徐州', 2, 3, '.1.16.229.');
INSERT INTO `district` VALUES (230, 16, '盐城', 2, 3, '.1.16.230.');
INSERT INTO `district` VALUES (231, 16, '扬州', 2, 3, '.1.16.231.');
INSERT INTO `district` VALUES (232, 16, '镇江', 2, 3, '.1.16.232.');
INSERT INTO `district` VALUES (233, 17, '南昌', 2, 3, '.1.17.233.');
INSERT INTO `district` VALUES (234, 17, '抚州', 2, 3, '.1.17.234.');
INSERT INTO `district` VALUES (235, 17, '赣州', 2, 3, '.1.17.235.');
INSERT INTO `district` VALUES (236, 17, '吉安', 2, 3, '.1.17.236.');
INSERT INTO `district` VALUES (237, 17, '景德镇', 2, 3, '.1.17.237.');
INSERT INTO `district` VALUES (238, 17, '九江', 2, 3, '.1.17.238.');
INSERT INTO `district` VALUES (239, 17, '萍乡', 2, 3, '.1.17.239.');
INSERT INTO `district` VALUES (240, 17, '上饶', 2, 3, '.1.17.240.');
INSERT INTO `district` VALUES (241, 17, '新余', 2, 3, '.1.17.241.');
INSERT INTO `district` VALUES (242, 17, '宜春', 2, 3, '.1.17.242.');
INSERT INTO `district` VALUES (243, 17, '鹰潭', 2, 3, '.1.17.243.');
INSERT INTO `district` VALUES (244, 18, '沈阳', 2, 3, '.1.18.244.');
INSERT INTO `district` VALUES (245, 18, '大连', 2, 3, '.1.18.245.');
INSERT INTO `district` VALUES (246, 18, '鞍山', 2, 3, '.1.18.246.');
INSERT INTO `district` VALUES (247, 18, '本溪', 2, 3, '.1.18.247.');
INSERT INTO `district` VALUES (248, 18, '朝阳', 2, 3, '.1.18.248.');
INSERT INTO `district` VALUES (249, 18, '丹东', 2, 3, '.1.18.249.');
INSERT INTO `district` VALUES (250, 18, '抚顺', 2, 3, '.1.18.250.');
INSERT INTO `district` VALUES (251, 18, '阜新', 2, 3, '.1.18.251.');
INSERT INTO `district` VALUES (252, 18, '葫芦岛', 2, 3, '.1.18.252.');
INSERT INTO `district` VALUES (253, 18, '锦州', 2, 3, '.1.18.253.');
INSERT INTO `district` VALUES (254, 18, '辽阳', 2, 3, '.1.18.254.');
INSERT INTO `district` VALUES (255, 18, '盘锦', 2, 3, '.1.18.255.');
INSERT INTO `district` VALUES (256, 18, '铁岭', 2, 3, '.1.18.256.');
INSERT INTO `district` VALUES (257, 18, '营口', 2, 3, '.1.18.257.');
INSERT INTO `district` VALUES (258, 19, '呼和浩特', 2, 3, '.1.19.258.');
INSERT INTO `district` VALUES (259, 19, '阿拉善盟', 2, 3, '.1.19.259.');
INSERT INTO `district` VALUES (260, 19, '巴彦淖尔盟', 2, 3, '.1.19.260.');
INSERT INTO `district` VALUES (261, 19, '包头', 2, 3, '.1.19.261.');
INSERT INTO `district` VALUES (262, 19, '赤峰', 2, 3, '.1.19.262.');
INSERT INTO `district` VALUES (263, 19, '鄂尔多斯', 2, 3, '.1.19.263.');
INSERT INTO `district` VALUES (264, 19, '呼伦贝尔', 2, 3, '.1.19.264.');
INSERT INTO `district` VALUES (265, 19, '通辽', 2, 3, '.1.19.265.');
INSERT INTO `district` VALUES (266, 19, '乌海', 2, 3, '.1.19.266.');
INSERT INTO `district` VALUES (267, 19, '乌兰察布市', 2, 3, '.1.19.267.');
INSERT INTO `district` VALUES (268, 19, '锡林郭勒盟', 2, 3, '.1.19.268.');
INSERT INTO `district` VALUES (269, 19, '兴安盟', 2, 3, '.1.19.269.');
INSERT INTO `district` VALUES (270, 20, '银川', 2, 3, '.1.20.270.');
INSERT INTO `district` VALUES (271, 20, '固原', 2, 3, '.1.20.271.');
INSERT INTO `district` VALUES (272, 20, '石嘴山', 2, 3, '.1.20.272.');
INSERT INTO `district` VALUES (273, 20, '吴忠', 2, 3, '.1.20.273.');
INSERT INTO `district` VALUES (274, 20, '中卫', 2, 3, '.1.20.274.');
INSERT INTO `district` VALUES (275, 21, '西宁', 2, 3, '.1.21.275.');
INSERT INTO `district` VALUES (276, 21, '果洛', 2, 3, '.1.21.276.');
INSERT INTO `district` VALUES (277, 21, '海北', 2, 3, '.1.21.277.');
INSERT INTO `district` VALUES (278, 21, '海东', 2, 3, '.1.21.278.');
INSERT INTO `district` VALUES (279, 21, '海南', 2, 3, '.1.21.279.');
INSERT INTO `district` VALUES (280, 21, '海西', 2, 3, '.1.21.280.');
INSERT INTO `district` VALUES (281, 21, '黄南', 2, 3, '.1.21.281.');
INSERT INTO `district` VALUES (282, 21, '玉树', 2, 3, '.1.21.282.');
INSERT INTO `district` VALUES (283, 22, '济南', 2, 3, '.1.22.283.');
INSERT INTO `district` VALUES (284, 22, '青岛', 2, 3, '.1.22.284.');
INSERT INTO `district` VALUES (285, 22, '滨州', 2, 3, '.1.22.285.');
INSERT INTO `district` VALUES (286, 22, '德州', 2, 3, '.1.22.286.');
INSERT INTO `district` VALUES (287, 22, '东营', 2, 3, '.1.22.287.');
INSERT INTO `district` VALUES (288, 22, '菏泽', 2, 3, '.1.22.288.');
INSERT INTO `district` VALUES (289, 22, '济宁', 2, 3, '.1.22.289.');
INSERT INTO `district` VALUES (290, 22, '莱芜', 2, 3, '.1.22.290.');
INSERT INTO `district` VALUES (291, 22, '聊城', 2, 3, '.1.22.291.');
INSERT INTO `district` VALUES (292, 22, '临沂', 2, 3, '.1.22.292.');
INSERT INTO `district` VALUES (293, 22, '日照', 2, 3, '.1.22.293.');
INSERT INTO `district` VALUES (294, 22, '泰安', 2, 3, '.1.22.294.');
INSERT INTO `district` VALUES (295, 22, '威海', 2, 3, '.1.22.295.');
INSERT INTO `district` VALUES (296, 22, '潍坊', 2, 3, '.1.22.296.');
INSERT INTO `district` VALUES (297, 22, '烟台', 2, 3, '.1.22.297.');
INSERT INTO `district` VALUES (298, 22, '枣庄', 2, 3, '.1.22.298.');
INSERT INTO `district` VALUES (299, 22, '淄博', 2, 3, '.1.22.299.');
INSERT INTO `district` VALUES (300, 23, '太原', 2, 3, '.1.23.300.');
INSERT INTO `district` VALUES (301, 23, '长治', 2, 3, '.1.23.301.');
INSERT INTO `district` VALUES (302, 23, '大同', 2, 3, '.1.23.302.');
INSERT INTO `district` VALUES (303, 23, '晋城', 2, 3, '.1.23.303.');
INSERT INTO `district` VALUES (304, 23, '晋中', 2, 3, '.1.23.304.');
INSERT INTO `district` VALUES (305, 23, '临汾', 2, 3, '.1.23.305.');
INSERT INTO `district` VALUES (306, 23, '吕梁', 2, 3, '.1.23.306.');
INSERT INTO `district` VALUES (307, 23, '朔州', 2, 3, '.1.23.307.');
INSERT INTO `district` VALUES (308, 23, '忻州', 2, 3, '.1.23.308.');
INSERT INTO `district` VALUES (309, 23, '阳泉', 2, 3, '.1.23.309.');
INSERT INTO `district` VALUES (310, 23, '运城', 2, 3, '.1.23.310.');
INSERT INTO `district` VALUES (311, 24, '西安', 2, 3, '.1.24.311.');
INSERT INTO `district` VALUES (312, 24, '安康', 2, 3, '.1.24.312.');
INSERT INTO `district` VALUES (313, 24, '宝鸡', 2, 3, '.1.24.313.');
INSERT INTO `district` VALUES (314, 24, '汉中', 2, 3, '.1.24.314.');
INSERT INTO `district` VALUES (315, 24, '商洛', 2, 3, '.1.24.315.');
INSERT INTO `district` VALUES (316, 24, '铜川', 2, 3, '.1.24.316.');
INSERT INTO `district` VALUES (317, 24, '渭南', 2, 3, '.1.24.317.');
INSERT INTO `district` VALUES (318, 24, '咸阳', 2, 3, '.1.24.318.');
INSERT INTO `district` VALUES (319, 24, '延安', 2, 3, '.1.24.319.');
INSERT INTO `district` VALUES (320, 24, '榆林', 2, 3, '.1.24.320.');
INSERT INTO `district` VALUES (321, 25, '上海', 2, 3, '.1.25.321.');
INSERT INTO `district` VALUES (322, 26, '成都', 2, 3, '.1.26.322.');
INSERT INTO `district` VALUES (323, 26, '绵阳', 2, 3, '.1.26.323.');
INSERT INTO `district` VALUES (324, 26, '阿坝', 2, 3, '.1.26.324.');
INSERT INTO `district` VALUES (325, 26, '巴中', 2, 3, '.1.26.325.');
INSERT INTO `district` VALUES (326, 26, '达州', 2, 3, '.1.26.326.');
INSERT INTO `district` VALUES (327, 26, '德阳', 2, 3, '.1.26.327.');
INSERT INTO `district` VALUES (328, 26, '甘孜', 2, 3, '.1.26.328.');
INSERT INTO `district` VALUES (329, 26, '广安', 2, 3, '.1.26.329.');
INSERT INTO `district` VALUES (330, 26, '广元', 2, 3, '.1.26.330.');
INSERT INTO `district` VALUES (331, 26, '乐山', 2, 3, '.1.26.331.');
INSERT INTO `district` VALUES (332, 26, '凉山', 2, 3, '.1.26.332.');
INSERT INTO `district` VALUES (333, 26, '眉山', 2, 3, '.1.26.333.');
INSERT INTO `district` VALUES (334, 26, '南充', 2, 3, '.1.26.334.');
INSERT INTO `district` VALUES (335, 26, '内江', 2, 3, '.1.26.335.');
INSERT INTO `district` VALUES (336, 26, '攀枝花', 2, 3, '.1.26.336.');
INSERT INTO `district` VALUES (337, 26, '遂宁', 2, 3, '.1.26.337.');
INSERT INTO `district` VALUES (338, 26, '雅安', 2, 3, '.1.26.338.');
INSERT INTO `district` VALUES (339, 26, '宜宾', 2, 3, '.1.26.339.');
INSERT INTO `district` VALUES (340, 26, '资阳', 2, 3, '.1.26.340.');
INSERT INTO `district` VALUES (341, 26, '自贡', 2, 3, '.1.26.341.');
INSERT INTO `district` VALUES (342, 26, '泸州', 2, 3, '.1.26.342.');
INSERT INTO `district` VALUES (343, 27, '天津', 2, 3, '.1.27.343.');
INSERT INTO `district` VALUES (344, 28, '拉萨', 2, 3, '.1.28.344.');
INSERT INTO `district` VALUES (345, 28, '阿里', 2, 3, '.1.28.345.');
INSERT INTO `district` VALUES (346, 28, '昌都', 2, 3, '.1.28.346.');
INSERT INTO `district` VALUES (347, 28, '林芝', 2, 3, '.1.28.347.');
INSERT INTO `district` VALUES (348, 28, '那曲', 2, 3, '.1.28.348.');
INSERT INTO `district` VALUES (349, 28, '日喀则', 2, 3, '.1.28.349.');
INSERT INTO `district` VALUES (350, 28, '山南', 2, 3, '.1.28.350.');
INSERT INTO `district` VALUES (351, 29, '乌鲁木齐', 2, 3, '.1.29.351.');
INSERT INTO `district` VALUES (352, 29, '阿克苏', 2, 3, '.1.29.352.');
INSERT INTO `district` VALUES (353, 29, '阿拉尔', 2, 3, '.1.29.353.');
INSERT INTO `district` VALUES (354, 29, '巴音郭楞', 2, 3, '.1.29.354.');
INSERT INTO `district` VALUES (355, 29, '博尔塔拉', 2, 3, '.1.29.355.');
INSERT INTO `district` VALUES (356, 29, '昌吉', 2, 3, '.1.29.356.');
INSERT INTO `district` VALUES (357, 29, '哈密', 2, 3, '.1.29.357.');
INSERT INTO `district` VALUES (358, 29, '和田', 2, 3, '.1.29.358.');
INSERT INTO `district` VALUES (359, 29, '喀什', 2, 3, '.1.29.359.');
INSERT INTO `district` VALUES (360, 29, '克拉玛依', 2, 3, '.1.29.360.');
INSERT INTO `district` VALUES (361, 29, '克孜勒苏', 2, 3, '.1.29.361.');
INSERT INTO `district` VALUES (362, 29, '石河子', 2, 3, '.1.29.362.');
INSERT INTO `district` VALUES (363, 29, '图木舒克', 2, 3, '.1.29.363.');
INSERT INTO `district` VALUES (364, 29, '吐鲁番', 2, 3, '.1.29.364.');
INSERT INTO `district` VALUES (365, 29, '五家渠', 2, 3, '.1.29.365.');
INSERT INTO `district` VALUES (366, 29, '伊犁', 2, 3, '.1.29.366.');
INSERT INTO `district` VALUES (367, 30, '昆明', 2, 3, '.1.30.367.');
INSERT INTO `district` VALUES (368, 30, '怒江', 2, 3, '.1.30.368.');
INSERT INTO `district` VALUES (369, 30, '普洱', 2, 3, '.1.30.369.');
INSERT INTO `district` VALUES (370, 30, '丽江', 2, 3, '.1.30.370.');
INSERT INTO `district` VALUES (371, 30, '保山', 2, 3, '.1.30.371.');
INSERT INTO `district` VALUES (372, 30, '楚雄', 2, 3, '.1.30.372.');
INSERT INTO `district` VALUES (373, 30, '大理', 2, 3, '.1.30.373.');
INSERT INTO `district` VALUES (374, 30, '德宏', 2, 3, '.1.30.374.');
INSERT INTO `district` VALUES (375, 30, '迪庆', 2, 3, '.1.30.375.');
INSERT INTO `district` VALUES (376, 30, '红河', 2, 3, '.1.30.376.');
INSERT INTO `district` VALUES (377, 30, '临沧', 2, 3, '.1.30.377.');
INSERT INTO `district` VALUES (378, 30, '曲靖', 2, 3, '.1.30.378.');
INSERT INTO `district` VALUES (379, 30, '文山', 2, 3, '.1.30.379.');
INSERT INTO `district` VALUES (380, 30, '西双版纳', 2, 3, '.1.30.380.');
INSERT INTO `district` VALUES (381, 30, '玉溪', 2, 3, '.1.30.381.');
INSERT INTO `district` VALUES (382, 30, '昭通', 2, 3, '.1.30.382.');
INSERT INTO `district` VALUES (383, 31, '杭州', 2, 3, '.1.31.383.');
INSERT INTO `district` VALUES (384, 31, '湖州', 2, 3, '.1.31.384.');
INSERT INTO `district` VALUES (385, 31, '嘉兴', 2, 3, '.1.31.385.');
INSERT INTO `district` VALUES (386, 31, '金华', 2, 3, '.1.31.386.');
INSERT INTO `district` VALUES (387, 31, '丽水', 2, 3, '.1.31.387.');
INSERT INTO `district` VALUES (388, 31, '宁波', 2, 3, '.1.31.388.');
INSERT INTO `district` VALUES (389, 31, '绍兴', 2, 3, '.1.31.389.');
INSERT INTO `district` VALUES (390, 31, '台州', 2, 3, '.1.31.390.');
INSERT INTO `district` VALUES (391, 31, '温州', 2, 3, '.1.31.391.');
INSERT INTO `district` VALUES (392, 31, '舟山', 2, 3, '.1.31.392.');
INSERT INTO `district` VALUES (393, 31, '衢州', 2, 3, '.1.31.393.');
INSERT INTO `district` VALUES (394, 32, '重庆', 2, 3, '.1.32.394.');
INSERT INTO `district` VALUES (395, 33, '香港', 2, 3, '.1.33.395.');
INSERT INTO `district` VALUES (396, 34, '澳门', 2, 3, '.1.34.396.');
INSERT INTO `district` VALUES (397, 35, '台湾', 2, 3, '.1.35.397.');
INSERT INTO `district` VALUES (398, 36, '迎江区', 3, 4, '.1.3.36.398.');
INSERT INTO `district` VALUES (399, 36, '大观区', 3, 4, '.1.3.36.399.');
INSERT INTO `district` VALUES (400, 36, '宜秀区', 3, 4, '.1.3.36.400.');
INSERT INTO `district` VALUES (401, 36, '桐城市', 3, 4, '.1.3.36.401.');
INSERT INTO `district` VALUES (402, 36, '怀宁县', 3, 4, '.1.3.36.402.');
INSERT INTO `district` VALUES (403, 36, '枞阳县', 3, 4, '.1.3.36.403.');
INSERT INTO `district` VALUES (404, 36, '潜山县', 3, 4, '.1.3.36.404.');
INSERT INTO `district` VALUES (405, 36, '太湖县', 3, 4, '.1.3.36.405.');
INSERT INTO `district` VALUES (406, 36, '宿松县', 3, 4, '.1.3.36.406.');
INSERT INTO `district` VALUES (407, 36, '望江县', 3, 4, '.1.3.36.407.');
INSERT INTO `district` VALUES (408, 36, '岳西县', 3, 4, '.1.3.36.408.');
INSERT INTO `district` VALUES (409, 37, '中市区', 3, 4, '.1.3.37.409.');
INSERT INTO `district` VALUES (410, 37, '东市区', 3, 4, '.1.3.37.410.');
INSERT INTO `district` VALUES (411, 37, '西市区', 3, 4, '.1.3.37.411.');
INSERT INTO `district` VALUES (412, 37, '郊区', 3, 4, '.1.3.37.412.');
INSERT INTO `district` VALUES (413, 37, '怀远县', 3, 4, '.1.3.37.413.');
INSERT INTO `district` VALUES (414, 37, '五河县', 3, 4, '.1.3.37.414.');
INSERT INTO `district` VALUES (415, 37, '固镇县', 3, 4, '.1.3.37.415.');
INSERT INTO `district` VALUES (416, 38, '居巢区', 3, 4, '.1.3.38.416.');
INSERT INTO `district` VALUES (417, 38, '庐江县', 3, 4, '.1.3.38.417.');
INSERT INTO `district` VALUES (418, 38, '无为县', 3, 4, '.1.3.38.418.');
INSERT INTO `district` VALUES (419, 38, '含山县', 3, 4, '.1.3.38.419.');
INSERT INTO `district` VALUES (420, 38, '和县', 3, 4, '.1.3.38.420.');
INSERT INTO `district` VALUES (421, 39, '贵池区', 3, 4, '.1.3.39.421.');
INSERT INTO `district` VALUES (422, 39, '东至县', 3, 4, '.1.3.39.422.');
INSERT INTO `district` VALUES (423, 39, '石台县', 3, 4, '.1.3.39.423.');
INSERT INTO `district` VALUES (424, 39, '青阳县', 3, 4, '.1.3.39.424.');
INSERT INTO `district` VALUES (425, 40, '琅琊区', 3, 4, '.1.3.40.425.');
INSERT INTO `district` VALUES (426, 40, '南谯区', 3, 4, '.1.3.40.426.');
INSERT INTO `district` VALUES (427, 40, '天长市', 3, 4, '.1.3.40.427.');
INSERT INTO `district` VALUES (428, 40, '明光市', 3, 4, '.1.3.40.428.');
INSERT INTO `district` VALUES (429, 40, '来安县', 3, 4, '.1.3.40.429.');
INSERT INTO `district` VALUES (430, 40, '全椒县', 3, 4, '.1.3.40.430.');
INSERT INTO `district` VALUES (431, 40, '定远县', 3, 4, '.1.3.40.431.');
INSERT INTO `district` VALUES (432, 40, '凤阳县', 3, 4, '.1.3.40.432.');
INSERT INTO `district` VALUES (433, 41, '蚌山区', 3, 4, '.1.3.41.433.');
INSERT INTO `district` VALUES (434, 41, '龙子湖区', 3, 4, '.1.3.41.434.');
INSERT INTO `district` VALUES (435, 41, '禹会区', 3, 4, '.1.3.41.435.');
INSERT INTO `district` VALUES (436, 41, '淮上区', 3, 4, '.1.3.41.436.');
INSERT INTO `district` VALUES (437, 41, '颍州区', 3, 4, '.1.3.41.437.');
INSERT INTO `district` VALUES (438, 41, '颍东区', 3, 4, '.1.3.41.438.');
INSERT INTO `district` VALUES (439, 41, '颍泉区', 3, 4, '.1.3.41.439.');
INSERT INTO `district` VALUES (440, 41, '界首市', 3, 4, '.1.3.41.440.');
INSERT INTO `district` VALUES (441, 41, '临泉县', 3, 4, '.1.3.41.441.');
INSERT INTO `district` VALUES (442, 41, '太和县', 3, 4, '.1.3.41.442.');
INSERT INTO `district` VALUES (443, 41, '阜南县', 3, 4, '.1.3.41.443.');
INSERT INTO `district` VALUES (444, 41, '颖上县', 3, 4, '.1.3.41.444.');
INSERT INTO `district` VALUES (445, 42, '相山区', 3, 4, '.1.3.42.445.');
INSERT INTO `district` VALUES (446, 42, '杜集区', 3, 4, '.1.3.42.446.');
INSERT INTO `district` VALUES (447, 42, '烈山区', 3, 4, '.1.3.42.447.');
INSERT INTO `district` VALUES (448, 42, '濉溪县', 3, 4, '.1.3.42.448.');
INSERT INTO `district` VALUES (449, 43, '田家庵区', 3, 4, '.1.3.43.449.');
INSERT INTO `district` VALUES (450, 43, '大通区', 3, 4, '.1.3.43.450.');
INSERT INTO `district` VALUES (451, 43, '谢家集区', 3, 4, '.1.3.43.451.');
INSERT INTO `district` VALUES (452, 43, '八公山区', 3, 4, '.1.3.43.452.');
INSERT INTO `district` VALUES (453, 43, '潘集区', 3, 4, '.1.3.43.453.');
INSERT INTO `district` VALUES (454, 43, '凤台县', 3, 4, '.1.3.43.454.');
INSERT INTO `district` VALUES (455, 44, '屯溪区', 3, 4, '.1.3.44.455.');
INSERT INTO `district` VALUES (456, 44, '黄山区', 3, 4, '.1.3.44.456.');
INSERT INTO `district` VALUES (457, 44, '徽州区', 3, 4, '.1.3.44.457.');
INSERT INTO `district` VALUES (458, 44, '歙县', 3, 4, '.1.3.44.458.');
INSERT INTO `district` VALUES (459, 44, '休宁县', 3, 4, '.1.3.44.459.');
INSERT INTO `district` VALUES (460, 44, '黟县', 3, 4, '.1.3.44.460.');
INSERT INTO `district` VALUES (461, 44, '祁门县', 3, 4, '.1.3.44.461.');
INSERT INTO `district` VALUES (462, 45, '金安区', 3, 4, '.1.3.45.462.');
INSERT INTO `district` VALUES (463, 45, '裕安区', 3, 4, '.1.3.45.463.');
INSERT INTO `district` VALUES (464, 45, '寿县', 3, 4, '.1.3.45.464.');
INSERT INTO `district` VALUES (465, 45, '霍邱县', 3, 4, '.1.3.45.465.');
INSERT INTO `district` VALUES (466, 45, '舒城县', 3, 4, '.1.3.45.466.');
INSERT INTO `district` VALUES (467, 45, '金寨县', 3, 4, '.1.3.45.467.');
INSERT INTO `district` VALUES (468, 45, '霍山县', 3, 4, '.1.3.45.468.');
INSERT INTO `district` VALUES (469, 46, '雨山区', 3, 4, '.1.3.46.469.');
INSERT INTO `district` VALUES (470, 46, '花山区', 3, 4, '.1.3.46.470.');
INSERT INTO `district` VALUES (471, 46, '金家庄区', 3, 4, '.1.3.46.471.');
INSERT INTO `district` VALUES (472, 46, '当涂县', 3, 4, '.1.3.46.472.');
INSERT INTO `district` VALUES (473, 47, '埇桥区', 3, 4, '.1.3.47.473.');
INSERT INTO `district` VALUES (474, 47, '砀山县', 3, 4, '.1.3.47.474.');
INSERT INTO `district` VALUES (475, 47, '萧县', 3, 4, '.1.3.47.475.');
INSERT INTO `district` VALUES (476, 47, '灵璧县', 3, 4, '.1.3.47.476.');
INSERT INTO `district` VALUES (477, 47, '泗县', 3, 4, '.1.3.47.477.');
INSERT INTO `district` VALUES (478, 48, '铜官山区', 3, 4, '.1.3.48.478.');
INSERT INTO `district` VALUES (479, 48, '狮子山区', 3, 4, '.1.3.48.479.');
INSERT INTO `district` VALUES (480, 48, '郊区', 3, 4, '.1.3.48.480.');
INSERT INTO `district` VALUES (481, 48, '铜陵县', 3, 4, '.1.3.48.481.');
INSERT INTO `district` VALUES (482, 49, '镜湖区', 3, 4, '.1.3.49.482.');
INSERT INTO `district` VALUES (483, 49, '弋江区', 3, 4, '.1.3.49.483.');
INSERT INTO `district` VALUES (484, 49, '鸠江区', 3, 4, '.1.3.49.484.');
INSERT INTO `district` VALUES (485, 49, '三山区', 3, 4, '.1.3.49.485.');
INSERT INTO `district` VALUES (486, 49, '芜湖县', 3, 4, '.1.3.49.486.');
INSERT INTO `district` VALUES (487, 49, '繁昌县', 3, 4, '.1.3.49.487.');
INSERT INTO `district` VALUES (488, 49, '南陵县', 3, 4, '.1.3.49.488.');
INSERT INTO `district` VALUES (489, 50, '宣州区', 3, 4, '.1.3.50.489.');
INSERT INTO `district` VALUES (490, 50, '宁国市', 3, 4, '.1.3.50.490.');
INSERT INTO `district` VALUES (491, 50, '郎溪县', 3, 4, '.1.3.50.491.');
INSERT INTO `district` VALUES (492, 50, '广德县', 3, 4, '.1.3.50.492.');
INSERT INTO `district` VALUES (493, 50, '泾县', 3, 4, '.1.3.50.493.');
INSERT INTO `district` VALUES (494, 50, '绩溪县', 3, 4, '.1.3.50.494.');
INSERT INTO `district` VALUES (495, 50, '旌德县', 3, 4, '.1.3.50.495.');
INSERT INTO `district` VALUES (496, 51, '涡阳县', 3, 4, '.1.3.51.496.');
INSERT INTO `district` VALUES (497, 51, '蒙城县', 3, 4, '.1.3.51.497.');
INSERT INTO `district` VALUES (498, 51, '利辛县', 3, 4, '.1.3.51.498.');
INSERT INTO `district` VALUES (499, 51, '谯城区', 3, 4, '.1.3.51.499.');
INSERT INTO `district` VALUES (500, 52, '东城区', 3, 4, '.1.2.52.500.');
INSERT INTO `district` VALUES (501, 52, '西城区', 3, 4, '.1.2.52.501.');
INSERT INTO `district` VALUES (502, 52, '海淀区', 3, 4, '.1.2.52.502.');
INSERT INTO `district` VALUES (503, 52, '朝阳区', 3, 4, '.1.2.52.503.');
INSERT INTO `district` VALUES (504, 52, '崇文区', 3, 4, '.1.2.52.504.');
INSERT INTO `district` VALUES (505, 52, '宣武区', 3, 4, '.1.2.52.505.');
INSERT INTO `district` VALUES (506, 52, '丰台区', 3, 4, '.1.2.52.506.');
INSERT INTO `district` VALUES (507, 52, '石景山区', 3, 4, '.1.2.52.507.');
INSERT INTO `district` VALUES (508, 52, '房山区', 3, 4, '.1.2.52.508.');
INSERT INTO `district` VALUES (509, 52, '门头沟区', 3, 4, '.1.2.52.509.');
INSERT INTO `district` VALUES (510, 52, '通州区', 3, 4, '.1.2.52.510.');
INSERT INTO `district` VALUES (511, 52, '顺义区', 3, 4, '.1.2.52.511.');
INSERT INTO `district` VALUES (512, 52, '昌平区', 3, 4, '.1.2.52.512.');
INSERT INTO `district` VALUES (513, 52, '怀柔区', 3, 4, '.1.2.52.513.');
INSERT INTO `district` VALUES (514, 52, '平谷区', 3, 4, '.1.2.52.514.');
INSERT INTO `district` VALUES (515, 52, '大兴区', 3, 4, '.1.2.52.515.');
INSERT INTO `district` VALUES (516, 52, '密云县', 3, 4, '.1.2.52.516.');
INSERT INTO `district` VALUES (517, 52, '延庆县', 3, 4, '.1.2.52.517.');
INSERT INTO `district` VALUES (518, 53, '鼓楼区', 3, 4, '.1.4.53.518.');
INSERT INTO `district` VALUES (519, 53, '台江区', 3, 4, '.1.4.53.519.');
INSERT INTO `district` VALUES (520, 53, '仓山区', 3, 4, '.1.4.53.520.');
INSERT INTO `district` VALUES (521, 53, '马尾区', 3, 4, '.1.4.53.521.');
INSERT INTO `district` VALUES (522, 53, '晋安区', 3, 4, '.1.4.53.522.');
INSERT INTO `district` VALUES (523, 53, '福清市', 3, 4, '.1.4.53.523.');
INSERT INTO `district` VALUES (524, 53, '长乐市', 3, 4, '.1.4.53.524.');
INSERT INTO `district` VALUES (525, 53, '闽侯县', 3, 4, '.1.4.53.525.');
INSERT INTO `district` VALUES (526, 53, '连江县', 3, 4, '.1.4.53.526.');
INSERT INTO `district` VALUES (527, 53, '罗源县', 3, 4, '.1.4.53.527.');
INSERT INTO `district` VALUES (528, 53, '闽清县', 3, 4, '.1.4.53.528.');
INSERT INTO `district` VALUES (529, 53, '永泰县', 3, 4, '.1.4.53.529.');
INSERT INTO `district` VALUES (530, 53, '平潭县', 3, 4, '.1.4.53.530.');
INSERT INTO `district` VALUES (531, 54, '新罗区', 3, 4, '.1.4.54.531.');
INSERT INTO `district` VALUES (532, 54, '漳平市', 3, 4, '.1.4.54.532.');
INSERT INTO `district` VALUES (533, 54, '长汀县', 3, 4, '.1.4.54.533.');
INSERT INTO `district` VALUES (534, 54, '永定县', 3, 4, '.1.4.54.534.');
INSERT INTO `district` VALUES (535, 54, '上杭县', 3, 4, '.1.4.54.535.');
INSERT INTO `district` VALUES (536, 54, '武平县', 3, 4, '.1.4.54.536.');
INSERT INTO `district` VALUES (537, 54, '连城县', 3, 4, '.1.4.54.537.');
INSERT INTO `district` VALUES (538, 55, '延平区', 3, 4, '.1.4.55.538.');
INSERT INTO `district` VALUES (539, 55, '邵武市', 3, 4, '.1.4.55.539.');
INSERT INTO `district` VALUES (540, 55, '武夷山市', 3, 4, '.1.4.55.540.');
INSERT INTO `district` VALUES (541, 55, '建瓯市', 3, 4, '.1.4.55.541.');
INSERT INTO `district` VALUES (542, 55, '建阳市', 3, 4, '.1.4.55.542.');
INSERT INTO `district` VALUES (543, 55, '顺昌县', 3, 4, '.1.4.55.543.');
INSERT INTO `district` VALUES (544, 55, '浦城县', 3, 4, '.1.4.55.544.');
INSERT INTO `district` VALUES (545, 55, '光泽县', 3, 4, '.1.4.55.545.');
INSERT INTO `district` VALUES (546, 55, '松溪县', 3, 4, '.1.4.55.546.');
INSERT INTO `district` VALUES (547, 55, '政和县', 3, 4, '.1.4.55.547.');
INSERT INTO `district` VALUES (548, 56, '蕉城区', 3, 4, '.1.4.56.548.');
INSERT INTO `district` VALUES (549, 56, '福安市', 3, 4, '.1.4.56.549.');
INSERT INTO `district` VALUES (550, 56, '福鼎市', 3, 4, '.1.4.56.550.');
INSERT INTO `district` VALUES (551, 56, '霞浦县', 3, 4, '.1.4.56.551.');
INSERT INTO `district` VALUES (552, 56, '古田县', 3, 4, '.1.4.56.552.');
INSERT INTO `district` VALUES (553, 56, '屏南县', 3, 4, '.1.4.56.553.');
INSERT INTO `district` VALUES (554, 56, '寿宁县', 3, 4, '.1.4.56.554.');
INSERT INTO `district` VALUES (555, 56, '周宁县', 3, 4, '.1.4.56.555.');
INSERT INTO `district` VALUES (556, 56, '柘荣县', 3, 4, '.1.4.56.556.');
INSERT INTO `district` VALUES (557, 57, '城厢区', 3, 4, '.1.4.57.557.');
INSERT INTO `district` VALUES (558, 57, '涵江区', 3, 4, '.1.4.57.558.');
INSERT INTO `district` VALUES (559, 57, '荔城区', 3, 4, '.1.4.57.559.');
INSERT INTO `district` VALUES (560, 57, '秀屿区', 3, 4, '.1.4.57.560.');
INSERT INTO `district` VALUES (561, 57, '仙游县', 3, 4, '.1.4.57.561.');
INSERT INTO `district` VALUES (562, 58, '鲤城区', 3, 4, '.1.4.58.562.');
INSERT INTO `district` VALUES (563, 58, '丰泽区', 3, 4, '.1.4.58.563.');
INSERT INTO `district` VALUES (564, 58, '洛江区', 3, 4, '.1.4.58.564.');
INSERT INTO `district` VALUES (565, 58, '清濛开发区', 3, 4, '.1.4.58.565.');
INSERT INTO `district` VALUES (566, 58, '泉港区', 3, 4, '.1.4.58.566.');
INSERT INTO `district` VALUES (567, 58, '石狮市', 3, 4, '.1.4.58.567.');
INSERT INTO `district` VALUES (568, 58, '晋江市', 3, 4, '.1.4.58.568.');
INSERT INTO `district` VALUES (569, 58, '南安市', 3, 4, '.1.4.58.569.');
INSERT INTO `district` VALUES (570, 58, '惠安县', 3, 4, '.1.4.58.570.');
INSERT INTO `district` VALUES (571, 58, '安溪县', 3, 4, '.1.4.58.571.');
INSERT INTO `district` VALUES (572, 58, '永春县', 3, 4, '.1.4.58.572.');
INSERT INTO `district` VALUES (573, 58, '德化县', 3, 4, '.1.4.58.573.');
INSERT INTO `district` VALUES (574, 58, '金门县', 3, 4, '.1.4.58.574.');
INSERT INTO `district` VALUES (575, 59, '梅列区', 3, 4, '.1.4.59.575.');
INSERT INTO `district` VALUES (576, 59, '三元区', 3, 4, '.1.4.59.576.');
INSERT INTO `district` VALUES (577, 59, '永安市', 3, 4, '.1.4.59.577.');
INSERT INTO `district` VALUES (578, 59, '明溪县', 3, 4, '.1.4.59.578.');
INSERT INTO `district` VALUES (579, 59, '清流县', 3, 4, '.1.4.59.579.');
INSERT INTO `district` VALUES (580, 59, '宁化县', 3, 4, '.1.4.59.580.');
INSERT INTO `district` VALUES (581, 59, '大田县', 3, 4, '.1.4.59.581.');
INSERT INTO `district` VALUES (582, 59, '尤溪县', 3, 4, '.1.4.59.582.');
INSERT INTO `district` VALUES (583, 59, '沙县', 3, 4, '.1.4.59.583.');
INSERT INTO `district` VALUES (584, 59, '将乐县', 3, 4, '.1.4.59.584.');
INSERT INTO `district` VALUES (585, 59, '泰宁县', 3, 4, '.1.4.59.585.');
INSERT INTO `district` VALUES (586, 59, '建宁县', 3, 4, '.1.4.59.586.');
INSERT INTO `district` VALUES (587, 60, '思明区', 3, 4, '.1.4.60.587.');
INSERT INTO `district` VALUES (588, 60, '海沧区', 3, 4, '.1.4.60.588.');
INSERT INTO `district` VALUES (589, 60, '湖里区', 3, 4, '.1.4.60.589.');
INSERT INTO `district` VALUES (590, 60, '集美区', 3, 4, '.1.4.60.590.');
INSERT INTO `district` VALUES (591, 60, '同安区', 3, 4, '.1.4.60.591.');
INSERT INTO `district` VALUES (592, 60, '翔安区', 3, 4, '.1.4.60.592.');
INSERT INTO `district` VALUES (593, 61, '芗城区', 3, 4, '.1.4.61.593.');
INSERT INTO `district` VALUES (594, 61, '龙文区', 3, 4, '.1.4.61.594.');
INSERT INTO `district` VALUES (595, 61, '龙海市', 3, 4, '.1.4.61.595.');
INSERT INTO `district` VALUES (596, 61, '云霄县', 3, 4, '.1.4.61.596.');
INSERT INTO `district` VALUES (597, 61, '漳浦县', 3, 4, '.1.4.61.597.');
INSERT INTO `district` VALUES (598, 61, '诏安县', 3, 4, '.1.4.61.598.');
INSERT INTO `district` VALUES (599, 61, '长泰县', 3, 4, '.1.4.61.599.');
INSERT INTO `district` VALUES (600, 61, '东山县', 3, 4, '.1.4.61.600.');
INSERT INTO `district` VALUES (601, 61, '南靖县', 3, 4, '.1.4.61.601.');
INSERT INTO `district` VALUES (602, 61, '平和县', 3, 4, '.1.4.61.602.');
INSERT INTO `district` VALUES (603, 61, '华安县', 3, 4, '.1.4.61.603.');
INSERT INTO `district` VALUES (604, 62, '皋兰县', 3, 4, '.1.5.62.604.');
INSERT INTO `district` VALUES (605, 62, '城关区', 3, 4, '.1.5.62.605.');
INSERT INTO `district` VALUES (606, 62, '七里河区', 3, 4, '.1.5.62.606.');
INSERT INTO `district` VALUES (607, 62, '西固区', 3, 4, '.1.5.62.607.');
INSERT INTO `district` VALUES (608, 62, '安宁区', 3, 4, '.1.5.62.608.');
INSERT INTO `district` VALUES (609, 62, '红古区', 3, 4, '.1.5.62.609.');
INSERT INTO `district` VALUES (610, 62, '永登县', 3, 4, '.1.5.62.610.');
INSERT INTO `district` VALUES (611, 62, '榆中县', 3, 4, '.1.5.62.611.');
INSERT INTO `district` VALUES (612, 63, '白银区', 3, 4, '.1.5.63.612.');
INSERT INTO `district` VALUES (613, 63, '平川区', 3, 4, '.1.5.63.613.');
INSERT INTO `district` VALUES (614, 63, '会宁县', 3, 4, '.1.5.63.614.');
INSERT INTO `district` VALUES (615, 63, '景泰县', 3, 4, '.1.5.63.615.');
INSERT INTO `district` VALUES (616, 63, '靖远县', 3, 4, '.1.5.63.616.');
INSERT INTO `district` VALUES (617, 64, '临洮县', 3, 4, '.1.5.64.617.');
INSERT INTO `district` VALUES (618, 64, '陇西县', 3, 4, '.1.5.64.618.');
INSERT INTO `district` VALUES (619, 64, '通渭县', 3, 4, '.1.5.64.619.');
INSERT INTO `district` VALUES (620, 64, '渭源县', 3, 4, '.1.5.64.620.');
INSERT INTO `district` VALUES (621, 64, '漳县', 3, 4, '.1.5.64.621.');
INSERT INTO `district` VALUES (622, 64, '岷县', 3, 4, '.1.5.64.622.');
INSERT INTO `district` VALUES (623, 64, '安定区', 3, 4, '.1.5.64.623.');
INSERT INTO `district` VALUES (624, 64, '安定区', 3, 4, '.1.5.64.624.');
INSERT INTO `district` VALUES (625, 65, '合作市', 3, 4, '.1.5.65.625.');
INSERT INTO `district` VALUES (626, 65, '临潭县', 3, 4, '.1.5.65.626.');
INSERT INTO `district` VALUES (627, 65, '卓尼县', 3, 4, '.1.5.65.627.');
INSERT INTO `district` VALUES (628, 65, '舟曲县', 3, 4, '.1.5.65.628.');
INSERT INTO `district` VALUES (629, 65, '迭部县', 3, 4, '.1.5.65.629.');
INSERT INTO `district` VALUES (630, 65, '玛曲县', 3, 4, '.1.5.65.630.');
INSERT INTO `district` VALUES (631, 65, '碌曲县', 3, 4, '.1.5.65.631.');
INSERT INTO `district` VALUES (632, 65, '夏河县', 3, 4, '.1.5.65.632.');
INSERT INTO `district` VALUES (633, 66, '嘉峪关市', 3, 4, '.1.5.66.633.');
INSERT INTO `district` VALUES (634, 67, '金川区', 3, 4, '.1.5.67.634.');
INSERT INTO `district` VALUES (635, 67, '永昌县', 3, 4, '.1.5.67.635.');
INSERT INTO `district` VALUES (636, 68, '肃州区', 3, 4, '.1.5.68.636.');
INSERT INTO `district` VALUES (637, 68, '玉门市', 3, 4, '.1.5.68.637.');
INSERT INTO `district` VALUES (638, 68, '敦煌市', 3, 4, '.1.5.68.638.');
INSERT INTO `district` VALUES (639, 68, '金塔县', 3, 4, '.1.5.68.639.');
INSERT INTO `district` VALUES (640, 68, '瓜州县', 3, 4, '.1.5.68.640.');
INSERT INTO `district` VALUES (641, 68, '肃北', 3, 4, '.1.5.68.641.');
INSERT INTO `district` VALUES (642, 68, '阿克塞', 3, 4, '.1.5.68.642.');
INSERT INTO `district` VALUES (643, 69, '临夏市', 3, 4, '.1.5.69.643.');
INSERT INTO `district` VALUES (644, 69, '临夏县', 3, 4, '.1.5.69.644.');
INSERT INTO `district` VALUES (645, 69, '康乐县', 3, 4, '.1.5.69.645.');
INSERT INTO `district` VALUES (646, 69, '永靖县', 3, 4, '.1.5.69.646.');
INSERT INTO `district` VALUES (647, 69, '广河县', 3, 4, '.1.5.69.647.');
INSERT INTO `district` VALUES (648, 69, '和政县', 3, 4, '.1.5.69.648.');
INSERT INTO `district` VALUES (649, 69, '东乡族自治县', 3, 4, '.1.5.69.649.');
INSERT INTO `district` VALUES (650, 69, '积石山', 3, 4, '.1.5.69.650.');
INSERT INTO `district` VALUES (651, 70, '成县', 3, 4, '.1.5.70.651.');
INSERT INTO `district` VALUES (652, 70, '徽县', 3, 4, '.1.5.70.652.');
INSERT INTO `district` VALUES (653, 70, '康县', 3, 4, '.1.5.70.653.');
INSERT INTO `district` VALUES (654, 70, '礼县', 3, 4, '.1.5.70.654.');
INSERT INTO `district` VALUES (655, 70, '两当县', 3, 4, '.1.5.70.655.');
INSERT INTO `district` VALUES (656, 70, '文县', 3, 4, '.1.5.70.656.');
INSERT INTO `district` VALUES (657, 70, '西和县', 3, 4, '.1.5.70.657.');
INSERT INTO `district` VALUES (658, 70, '宕昌县', 3, 4, '.1.5.70.658.');
INSERT INTO `district` VALUES (659, 70, '武都区', 3, 4, '.1.5.70.659.');
INSERT INTO `district` VALUES (660, 71, '崇信县', 3, 4, '.1.5.71.660.');
INSERT INTO `district` VALUES (661, 71, '华亭县', 3, 4, '.1.5.71.661.');
INSERT INTO `district` VALUES (662, 71, '静宁县', 3, 4, '.1.5.71.662.');
INSERT INTO `district` VALUES (663, 71, '灵台县', 3, 4, '.1.5.71.663.');
INSERT INTO `district` VALUES (664, 71, '崆峒区', 3, 4, '.1.5.71.664.');
INSERT INTO `district` VALUES (665, 71, '庄浪县', 3, 4, '.1.5.71.665.');
INSERT INTO `district` VALUES (666, 71, '泾川县', 3, 4, '.1.5.71.666.');
INSERT INTO `district` VALUES (667, 72, '合水县', 3, 4, '.1.5.72.667.');
INSERT INTO `district` VALUES (668, 72, '华池县', 3, 4, '.1.5.72.668.');
INSERT INTO `district` VALUES (669, 72, '环县', 3, 4, '.1.5.72.669.');
INSERT INTO `district` VALUES (670, 72, '宁县', 3, 4, '.1.5.72.670.');
INSERT INTO `district` VALUES (671, 72, '庆城县', 3, 4, '.1.5.72.671.');
INSERT INTO `district` VALUES (672, 72, '西峰区', 3, 4, '.1.5.72.672.');
INSERT INTO `district` VALUES (673, 72, '镇原县', 3, 4, '.1.5.72.673.');
INSERT INTO `district` VALUES (674, 72, '正宁县', 3, 4, '.1.5.72.674.');
INSERT INTO `district` VALUES (675, 73, '甘谷县', 3, 4, '.1.5.73.675.');
INSERT INTO `district` VALUES (676, 73, '秦安县', 3, 4, '.1.5.73.676.');
INSERT INTO `district` VALUES (677, 73, '清水县', 3, 4, '.1.5.73.677.');
INSERT INTO `district` VALUES (678, 73, '秦州区', 3, 4, '.1.5.73.678.');
INSERT INTO `district` VALUES (679, 73, '麦积区', 3, 4, '.1.5.73.679.');
INSERT INTO `district` VALUES (680, 73, '武山县', 3, 4, '.1.5.73.680.');
INSERT INTO `district` VALUES (681, 73, '张家川', 3, 4, '.1.5.73.681.');
INSERT INTO `district` VALUES (682, 74, '古浪县', 3, 4, '.1.5.74.682.');
INSERT INTO `district` VALUES (683, 74, '民勤县', 3, 4, '.1.5.74.683.');
INSERT INTO `district` VALUES (684, 74, '天祝', 3, 4, '.1.5.74.684.');
INSERT INTO `district` VALUES (685, 74, '凉州区', 3, 4, '.1.5.74.685.');
INSERT INTO `district` VALUES (686, 75, '高台县', 3, 4, '.1.5.75.686.');
INSERT INTO `district` VALUES (687, 75, '临泽县', 3, 4, '.1.5.75.687.');
INSERT INTO `district` VALUES (688, 75, '民乐县', 3, 4, '.1.5.75.688.');
INSERT INTO `district` VALUES (689, 75, '山丹县', 3, 4, '.1.5.75.689.');
INSERT INTO `district` VALUES (690, 75, '肃南', 3, 4, '.1.5.75.690.');
INSERT INTO `district` VALUES (691, 75, '甘州区', 3, 4, '.1.5.75.691.');
INSERT INTO `district` VALUES (692, 76, '从化市', 3, 4, '.1.6.76.692.');
INSERT INTO `district` VALUES (693, 76, '天河区', 3, 4, '.1.6.76.693.');
INSERT INTO `district` VALUES (694, 76, '东山区', 3, 4, '.1.6.76.694.');
INSERT INTO `district` VALUES (695, 76, '白云区', 3, 4, '.1.6.76.695.');
INSERT INTO `district` VALUES (696, 76, '海珠区', 3, 4, '.1.6.76.696.');
INSERT INTO `district` VALUES (697, 76, '荔湾区', 3, 4, '.1.6.76.697.');
INSERT INTO `district` VALUES (698, 76, '越秀区', 3, 4, '.1.6.76.698.');
INSERT INTO `district` VALUES (699, 76, '黄埔区', 3, 4, '.1.6.76.699.');
INSERT INTO `district` VALUES (700, 76, '番禺区', 3, 4, '.1.6.76.700.');
INSERT INTO `district` VALUES (701, 76, '花都区', 3, 4, '.1.6.76.701.');
INSERT INTO `district` VALUES (702, 76, '增城区', 3, 4, '.1.6.76.702.');
INSERT INTO `district` VALUES (703, 76, '从化区', 3, 4, '.1.6.76.703.');
INSERT INTO `district` VALUES (704, 76, '市郊', 3, 4, '.1.6.76.704.');
INSERT INTO `district` VALUES (705, 77, '福田区', 3, 4, '.1.6.77.705.');
INSERT INTO `district` VALUES (706, 77, '罗湖区', 3, 4, '.1.6.77.706.');
INSERT INTO `district` VALUES (707, 77, '南山区', 3, 4, '.1.6.77.707.');
INSERT INTO `district` VALUES (708, 77, '宝安区', 3, 4, '.1.6.77.708.');
INSERT INTO `district` VALUES (709, 77, '龙岗区', 3, 4, '.1.6.77.709.');
INSERT INTO `district` VALUES (710, 77, '盐田区', 3, 4, '.1.6.77.710.');
INSERT INTO `district` VALUES (711, 78, '湘桥区', 3, 4, '.1.6.78.711.');
INSERT INTO `district` VALUES (712, 78, '潮安县', 3, 4, '.1.6.78.712.');
INSERT INTO `district` VALUES (713, 78, '饶平县', 3, 4, '.1.6.78.713.');
INSERT INTO `district` VALUES (714, 79, '南城区', 3, 4, '.1.6.79.714.');
INSERT INTO `district` VALUES (715, 79, '东城区', 3, 4, '.1.6.79.715.');
INSERT INTO `district` VALUES (716, 79, '万江区', 3, 4, '.1.6.79.716.');
INSERT INTO `district` VALUES (717, 79, '莞城区', 3, 4, '.1.6.79.717.');
INSERT INTO `district` VALUES (718, 79, '石龙镇', 3, 4, '.1.6.79.718.');
INSERT INTO `district` VALUES (719, 79, '虎门镇', 3, 4, '.1.6.79.719.');
INSERT INTO `district` VALUES (720, 79, '麻涌镇', 3, 4, '.1.6.79.720.');
INSERT INTO `district` VALUES (721, 79, '道滘镇', 3, 4, '.1.6.79.721.');
INSERT INTO `district` VALUES (722, 79, '石碣镇', 3, 4, '.1.6.79.722.');
INSERT INTO `district` VALUES (723, 79, '沙田镇', 3, 4, '.1.6.79.723.');
INSERT INTO `district` VALUES (724, 79, '望牛墩镇', 3, 4, '.1.6.79.724.');
INSERT INTO `district` VALUES (725, 79, '洪梅镇', 3, 4, '.1.6.79.725.');
INSERT INTO `district` VALUES (726, 79, '茶山镇', 3, 4, '.1.6.79.726.');
INSERT INTO `district` VALUES (727, 79, '寮步镇', 3, 4, '.1.6.79.727.');
INSERT INTO `district` VALUES (728, 79, '大岭山镇', 3, 4, '.1.6.79.728.');
INSERT INTO `district` VALUES (729, 79, '大朗镇', 3, 4, '.1.6.79.729.');
INSERT INTO `district` VALUES (730, 79, '黄江镇', 3, 4, '.1.6.79.730.');
INSERT INTO `district` VALUES (731, 79, '樟木头', 3, 4, '.1.6.79.731.');
INSERT INTO `district` VALUES (732, 79, '凤岗镇', 3, 4, '.1.6.79.732.');
INSERT INTO `district` VALUES (733, 79, '塘厦镇', 3, 4, '.1.6.79.733.');
INSERT INTO `district` VALUES (734, 79, '谢岗镇', 3, 4, '.1.6.79.734.');
INSERT INTO `district` VALUES (735, 79, '厚街镇', 3, 4, '.1.6.79.735.');
INSERT INTO `district` VALUES (736, 79, '清溪镇', 3, 4, '.1.6.79.736.');
INSERT INTO `district` VALUES (737, 79, '常平镇', 3, 4, '.1.6.79.737.');
INSERT INTO `district` VALUES (738, 79, '桥头镇', 3, 4, '.1.6.79.738.');
INSERT INTO `district` VALUES (739, 79, '横沥镇', 3, 4, '.1.6.79.739.');
INSERT INTO `district` VALUES (740, 79, '东坑镇', 3, 4, '.1.6.79.740.');
INSERT INTO `district` VALUES (741, 79, '企石镇', 3, 4, '.1.6.79.741.');
INSERT INTO `district` VALUES (742, 79, '石排镇', 3, 4, '.1.6.79.742.');
INSERT INTO `district` VALUES (743, 79, '长安镇', 3, 4, '.1.6.79.743.');
INSERT INTO `district` VALUES (744, 79, '中堂镇', 3, 4, '.1.6.79.744.');
INSERT INTO `district` VALUES (745, 79, '高埗镇', 3, 4, '.1.6.79.745.');
INSERT INTO `district` VALUES (746, 80, '禅城区', 3, 4, '.1.6.80.746.');
INSERT INTO `district` VALUES (747, 80, '南海区', 3, 4, '.1.6.80.747.');
INSERT INTO `district` VALUES (748, 80, '顺德区', 3, 4, '.1.6.80.748.');
INSERT INTO `district` VALUES (749, 80, '三水区', 3, 4, '.1.6.80.749.');
INSERT INTO `district` VALUES (750, 80, '高明区', 3, 4, '.1.6.80.750.');
INSERT INTO `district` VALUES (751, 81, '东源县', 3, 4, '.1.6.81.751.');
INSERT INTO `district` VALUES (752, 81, '和平县', 3, 4, '.1.6.81.752.');
INSERT INTO `district` VALUES (753, 81, '源城区', 3, 4, '.1.6.81.753.');
INSERT INTO `district` VALUES (754, 81, '连平县', 3, 4, '.1.6.81.754.');
INSERT INTO `district` VALUES (755, 81, '龙川县', 3, 4, '.1.6.81.755.');
INSERT INTO `district` VALUES (756, 81, '紫金县', 3, 4, '.1.6.81.756.');
INSERT INTO `district` VALUES (757, 82, '惠阳区', 3, 4, '.1.6.82.757.');
INSERT INTO `district` VALUES (758, 82, '惠城区', 3, 4, '.1.6.82.758.');
INSERT INTO `district` VALUES (759, 82, '大亚湾', 3, 4, '.1.6.82.759.');
INSERT INTO `district` VALUES (760, 82, '博罗县', 3, 4, '.1.6.82.760.');
INSERT INTO `district` VALUES (761, 82, '惠东县', 3, 4, '.1.6.82.761.');
INSERT INTO `district` VALUES (762, 82, '龙门县', 3, 4, '.1.6.82.762.');
INSERT INTO `district` VALUES (763, 83, '江海区', 3, 4, '.1.6.83.763.');
INSERT INTO `district` VALUES (764, 83, '蓬江区', 3, 4, '.1.6.83.764.');
INSERT INTO `district` VALUES (765, 83, '新会区', 3, 4, '.1.6.83.765.');
INSERT INTO `district` VALUES (766, 83, '台山市', 3, 4, '.1.6.83.766.');
INSERT INTO `district` VALUES (767, 83, '开平市', 3, 4, '.1.6.83.767.');
INSERT INTO `district` VALUES (768, 83, '鹤山市', 3, 4, '.1.6.83.768.');
INSERT INTO `district` VALUES (769, 83, '恩平市', 3, 4, '.1.6.83.769.');
INSERT INTO `district` VALUES (770, 84, '榕城区', 3, 4, '.1.6.84.770.');
INSERT INTO `district` VALUES (771, 84, '普宁市', 3, 4, '.1.6.84.771.');
INSERT INTO `district` VALUES (772, 84, '揭东县', 3, 4, '.1.6.84.772.');
INSERT INTO `district` VALUES (773, 84, '揭西县', 3, 4, '.1.6.84.773.');
INSERT INTO `district` VALUES (774, 84, '惠来县', 3, 4, '.1.6.84.774.');
INSERT INTO `district` VALUES (775, 85, '茂南区', 3, 4, '.1.6.85.775.');
INSERT INTO `district` VALUES (776, 85, '茂港区', 3, 4, '.1.6.85.776.');
INSERT INTO `district` VALUES (777, 85, '高州市', 3, 4, '.1.6.85.777.');
INSERT INTO `district` VALUES (778, 85, '化州市', 3, 4, '.1.6.85.778.');
INSERT INTO `district` VALUES (779, 85, '信宜市', 3, 4, '.1.6.85.779.');
INSERT INTO `district` VALUES (780, 85, '电白县', 3, 4, '.1.6.85.780.');
INSERT INTO `district` VALUES (781, 86, '梅县', 3, 4, '.1.6.86.781.');
INSERT INTO `district` VALUES (782, 86, '梅江区', 3, 4, '.1.6.86.782.');
INSERT INTO `district` VALUES (783, 86, '兴宁市', 3, 4, '.1.6.86.783.');
INSERT INTO `district` VALUES (784, 86, '大埔县', 3, 4, '.1.6.86.784.');
INSERT INTO `district` VALUES (785, 86, '丰顺县', 3, 4, '.1.6.86.785.');
INSERT INTO `district` VALUES (786, 86, '五华县', 3, 4, '.1.6.86.786.');
INSERT INTO `district` VALUES (787, 86, '平远县', 3, 4, '.1.6.86.787.');
INSERT INTO `district` VALUES (788, 86, '蕉岭县', 3, 4, '.1.6.86.788.');
INSERT INTO `district` VALUES (789, 87, '清城区', 3, 4, '.1.6.87.789.');
INSERT INTO `district` VALUES (790, 87, '英德市', 3, 4, '.1.6.87.790.');
INSERT INTO `district` VALUES (791, 87, '连州市', 3, 4, '.1.6.87.791.');
INSERT INTO `district` VALUES (792, 87, '佛冈县', 3, 4, '.1.6.87.792.');
INSERT INTO `district` VALUES (793, 87, '阳山县', 3, 4, '.1.6.87.793.');
INSERT INTO `district` VALUES (794, 87, '清新县', 3, 4, '.1.6.87.794.');
INSERT INTO `district` VALUES (795, 87, '连山', 3, 4, '.1.6.87.795.');
INSERT INTO `district` VALUES (796, 87, '连南', 3, 4, '.1.6.87.796.');
INSERT INTO `district` VALUES (797, 88, '南澳县', 3, 4, '.1.6.88.797.');
INSERT INTO `district` VALUES (798, 88, '潮阳区', 3, 4, '.1.6.88.798.');
INSERT INTO `district` VALUES (799, 88, '澄海区', 3, 4, '.1.6.88.799.');
INSERT INTO `district` VALUES (800, 88, '龙湖区', 3, 4, '.1.6.88.800.');
INSERT INTO `district` VALUES (801, 88, '金平区', 3, 4, '.1.6.88.801.');
INSERT INTO `district` VALUES (802, 88, '濠江区', 3, 4, '.1.6.88.802.');
INSERT INTO `district` VALUES (803, 88, '潮南区', 3, 4, '.1.6.88.803.');
INSERT INTO `district` VALUES (804, 89, '城区', 3, 4, '.1.6.89.804.');
INSERT INTO `district` VALUES (805, 89, '陆丰市', 3, 4, '.1.6.89.805.');
INSERT INTO `district` VALUES (806, 89, '海丰县', 3, 4, '.1.6.89.806.');
INSERT INTO `district` VALUES (807, 89, '陆河县', 3, 4, '.1.6.89.807.');
INSERT INTO `district` VALUES (808, 90, '曲江县', 3, 4, '.1.6.90.808.');
INSERT INTO `district` VALUES (809, 90, '浈江区', 3, 4, '.1.6.90.809.');
INSERT INTO `district` VALUES (810, 90, '武江区', 3, 4, '.1.6.90.810.');
INSERT INTO `district` VALUES (811, 90, '曲江区', 3, 4, '.1.6.90.811.');
INSERT INTO `district` VALUES (812, 90, '乐昌市', 3, 4, '.1.6.90.812.');
INSERT INTO `district` VALUES (813, 90, '南雄市', 3, 4, '.1.6.90.813.');
INSERT INTO `district` VALUES (814, 90, '始兴县', 3, 4, '.1.6.90.814.');
INSERT INTO `district` VALUES (815, 90, '仁化县', 3, 4, '.1.6.90.815.');
INSERT INTO `district` VALUES (816, 90, '翁源县', 3, 4, '.1.6.90.816.');
INSERT INTO `district` VALUES (817, 90, '新丰县', 3, 4, '.1.6.90.817.');
INSERT INTO `district` VALUES (818, 90, '乳源', 3, 4, '.1.6.90.818.');
INSERT INTO `district` VALUES (819, 91, '江城区', 3, 4, '.1.6.91.819.');
INSERT INTO `district` VALUES (820, 91, '阳春市', 3, 4, '.1.6.91.820.');
INSERT INTO `district` VALUES (821, 91, '阳西县', 3, 4, '.1.6.91.821.');
INSERT INTO `district` VALUES (822, 91, '阳东县', 3, 4, '.1.6.91.822.');
INSERT INTO `district` VALUES (823, 92, '云城区', 3, 4, '.1.6.92.823.');
INSERT INTO `district` VALUES (824, 92, '罗定市', 3, 4, '.1.6.92.824.');
INSERT INTO `district` VALUES (825, 92, '新兴县', 3, 4, '.1.6.92.825.');
INSERT INTO `district` VALUES (826, 92, '郁南县', 3, 4, '.1.6.92.826.');
INSERT INTO `district` VALUES (827, 92, '云安县', 3, 4, '.1.6.92.827.');
INSERT INTO `district` VALUES (828, 93, '赤坎区', 3, 4, '.1.6.93.828.');
INSERT INTO `district` VALUES (829, 93, '霞山区', 3, 4, '.1.6.93.829.');
INSERT INTO `district` VALUES (830, 93, '坡头区', 3, 4, '.1.6.93.830.');
INSERT INTO `district` VALUES (831, 93, '麻章区', 3, 4, '.1.6.93.831.');
INSERT INTO `district` VALUES (832, 93, '廉江市', 3, 4, '.1.6.93.832.');
INSERT INTO `district` VALUES (833, 93, '雷州市', 3, 4, '.1.6.93.833.');
INSERT INTO `district` VALUES (834, 93, '吴川市', 3, 4, '.1.6.93.834.');
INSERT INTO `district` VALUES (835, 93, '遂溪县', 3, 4, '.1.6.93.835.');
INSERT INTO `district` VALUES (836, 93, '徐闻县', 3, 4, '.1.6.93.836.');
INSERT INTO `district` VALUES (837, 94, '肇庆市', 3, 4, '.1.6.94.837.');
INSERT INTO `district` VALUES (838, 94, '高要市', 3, 4, '.1.6.94.838.');
INSERT INTO `district` VALUES (839, 94, '四会市', 3, 4, '.1.6.94.839.');
INSERT INTO `district` VALUES (840, 94, '广宁县', 3, 4, '.1.6.94.840.');
INSERT INTO `district` VALUES (841, 94, '怀集县', 3, 4, '.1.6.94.841.');
INSERT INTO `district` VALUES (842, 94, '封开县', 3, 4, '.1.6.94.842.');
INSERT INTO `district` VALUES (843, 94, '德庆县', 3, 4, '.1.6.94.843.');
INSERT INTO `district` VALUES (844, 95, '石岐街道', 3, 4, '.1.6.95.844.');
INSERT INTO `district` VALUES (845, 95, '东区街道', 3, 4, '.1.6.95.845.');
INSERT INTO `district` VALUES (846, 95, '西区街道', 3, 4, '.1.6.95.846.');
INSERT INTO `district` VALUES (847, 95, '环城街道', 3, 4, '.1.6.95.847.');
INSERT INTO `district` VALUES (848, 95, '中山港街道', 3, 4, '.1.6.95.848.');
INSERT INTO `district` VALUES (849, 95, '五桂山街道', 3, 4, '.1.6.95.849.');
INSERT INTO `district` VALUES (850, 96, '香洲区', 3, 4, '.1.6.96.850.');
INSERT INTO `district` VALUES (851, 96, '斗门区', 3, 4, '.1.6.96.851.');
INSERT INTO `district` VALUES (852, 96, '金湾区', 3, 4, '.1.6.96.852.');
INSERT INTO `district` VALUES (853, 97, '邕宁区', 3, 4, '.1.7.97.853.');
INSERT INTO `district` VALUES (854, 97, '青秀区', 3, 4, '.1.7.97.854.');
INSERT INTO `district` VALUES (855, 97, '兴宁区', 3, 4, '.1.7.97.855.');
INSERT INTO `district` VALUES (856, 97, '良庆区', 3, 4, '.1.7.97.856.');
INSERT INTO `district` VALUES (857, 97, '西乡塘区', 3, 4, '.1.7.97.857.');
INSERT INTO `district` VALUES (858, 97, '江南区', 3, 4, '.1.7.97.858.');
INSERT INTO `district` VALUES (859, 97, '武鸣县', 3, 4, '.1.7.97.859.');
INSERT INTO `district` VALUES (860, 97, '隆安县', 3, 4, '.1.7.97.860.');
INSERT INTO `district` VALUES (861, 97, '马山县', 3, 4, '.1.7.97.861.');
INSERT INTO `district` VALUES (862, 97, '上林县', 3, 4, '.1.7.97.862.');
INSERT INTO `district` VALUES (863, 97, '宾阳县', 3, 4, '.1.7.97.863.');
INSERT INTO `district` VALUES (864, 97, '横县', 3, 4, '.1.7.97.864.');
INSERT INTO `district` VALUES (865, 98, '秀峰区', 3, 4, '.1.7.98.865.');
INSERT INTO `district` VALUES (866, 98, '叠彩区', 3, 4, '.1.7.98.866.');
INSERT INTO `district` VALUES (867, 98, '象山区', 3, 4, '.1.7.98.867.');
INSERT INTO `district` VALUES (868, 98, '七星区', 3, 4, '.1.7.98.868.');
INSERT INTO `district` VALUES (869, 98, '雁山区', 3, 4, '.1.7.98.869.');
INSERT INTO `district` VALUES (870, 98, '阳朔县', 3, 4, '.1.7.98.870.');
INSERT INTO `district` VALUES (871, 98, '临桂县', 3, 4, '.1.7.98.871.');
INSERT INTO `district` VALUES (872, 98, '灵川县', 3, 4, '.1.7.98.872.');
INSERT INTO `district` VALUES (873, 98, '全州县', 3, 4, '.1.7.98.873.');
INSERT INTO `district` VALUES (874, 98, '平乐县', 3, 4, '.1.7.98.874.');
INSERT INTO `district` VALUES (875, 98, '兴安县', 3, 4, '.1.7.98.875.');
INSERT INTO `district` VALUES (876, 98, '灌阳县', 3, 4, '.1.7.98.876.');
INSERT INTO `district` VALUES (877, 98, '荔浦县', 3, 4, '.1.7.98.877.');
INSERT INTO `district` VALUES (878, 98, '资源县', 3, 4, '.1.7.98.878.');
INSERT INTO `district` VALUES (879, 98, '永福县', 3, 4, '.1.7.98.879.');
INSERT INTO `district` VALUES (880, 98, '龙胜', 3, 4, '.1.7.98.880.');
INSERT INTO `district` VALUES (881, 98, '恭城', 3, 4, '.1.7.98.881.');
INSERT INTO `district` VALUES (882, 99, '右江区', 3, 4, '.1.7.99.882.');
INSERT INTO `district` VALUES (883, 99, '凌云县', 3, 4, '.1.7.99.883.');
INSERT INTO `district` VALUES (884, 99, '平果县', 3, 4, '.1.7.99.884.');
INSERT INTO `district` VALUES (885, 99, '西林县', 3, 4, '.1.7.99.885.');
INSERT INTO `district` VALUES (886, 99, '乐业县', 3, 4, '.1.7.99.886.');
INSERT INTO `district` VALUES (887, 99, '德保县', 3, 4, '.1.7.99.887.');
INSERT INTO `district` VALUES (888, 99, '田林县', 3, 4, '.1.7.99.888.');
INSERT INTO `district` VALUES (889, 99, '田阳县', 3, 4, '.1.7.99.889.');
INSERT INTO `district` VALUES (890, 99, '靖西县', 3, 4, '.1.7.99.890.');
INSERT INTO `district` VALUES (891, 99, '田东县', 3, 4, '.1.7.99.891.');
INSERT INTO `district` VALUES (892, 99, '那坡县', 3, 4, '.1.7.99.892.');
INSERT INTO `district` VALUES (893, 99, '隆林', 3, 4, '.1.7.99.893.');
INSERT INTO `district` VALUES (894, 100, '海城区', 3, 4, '.1.7.100.894.');
INSERT INTO `district` VALUES (895, 100, '银海区', 3, 4, '.1.7.100.895.');
INSERT INTO `district` VALUES (896, 100, '铁山港区', 3, 4, '.1.7.100.896.');
INSERT INTO `district` VALUES (897, 100, '合浦县', 3, 4, '.1.7.100.897.');
INSERT INTO `district` VALUES (898, 101, '江州区', 3, 4, '.1.7.101.898.');
INSERT INTO `district` VALUES (899, 101, '凭祥市', 3, 4, '.1.7.101.899.');
INSERT INTO `district` VALUES (900, 101, '宁明县', 3, 4, '.1.7.101.900.');
INSERT INTO `district` VALUES (901, 101, '扶绥县', 3, 4, '.1.7.101.901.');
INSERT INTO `district` VALUES (902, 101, '龙州县', 3, 4, '.1.7.101.902.');
INSERT INTO `district` VALUES (903, 101, '大新县', 3, 4, '.1.7.101.903.');
INSERT INTO `district` VALUES (904, 101, '天等县', 3, 4, '.1.7.101.904.');
INSERT INTO `district` VALUES (905, 102, '港口区', 3, 4, '.1.7.102.905.');
INSERT INTO `district` VALUES (906, 102, '防城区', 3, 4, '.1.7.102.906.');
INSERT INTO `district` VALUES (907, 102, '东兴市', 3, 4, '.1.7.102.907.');
INSERT INTO `district` VALUES (908, 102, '上思县', 3, 4, '.1.7.102.908.');
INSERT INTO `district` VALUES (909, 103, '港北区', 3, 4, '.1.7.103.909.');
INSERT INTO `district` VALUES (910, 103, '港南区', 3, 4, '.1.7.103.910.');
INSERT INTO `district` VALUES (911, 103, '覃塘区', 3, 4, '.1.7.103.911.');
INSERT INTO `district` VALUES (912, 103, '桂平市', 3, 4, '.1.7.103.912.');
INSERT INTO `district` VALUES (913, 103, '平南县', 3, 4, '.1.7.103.913.');
INSERT INTO `district` VALUES (914, 104, '金城江区', 3, 4, '.1.7.104.914.');
INSERT INTO `district` VALUES (915, 104, '宜州市', 3, 4, '.1.7.104.915.');
INSERT INTO `district` VALUES (916, 104, '天峨县', 3, 4, '.1.7.104.916.');
INSERT INTO `district` VALUES (917, 104, '凤山县', 3, 4, '.1.7.104.917.');
INSERT INTO `district` VALUES (918, 104, '南丹县', 3, 4, '.1.7.104.918.');
INSERT INTO `district` VALUES (919, 104, '东兰县', 3, 4, '.1.7.104.919.');
INSERT INTO `district` VALUES (920, 104, '都安', 3, 4, '.1.7.104.920.');
INSERT INTO `district` VALUES (921, 104, '罗城', 3, 4, '.1.7.104.921.');
INSERT INTO `district` VALUES (922, 104, '巴马', 3, 4, '.1.7.104.922.');
INSERT INTO `district` VALUES (923, 104, '环江', 3, 4, '.1.7.104.923.');
INSERT INTO `district` VALUES (924, 104, '大化', 3, 4, '.1.7.104.924.');
INSERT INTO `district` VALUES (925, 105, '八步区', 3, 4, '.1.7.105.925.');
INSERT INTO `district` VALUES (926, 105, '钟山县', 3, 4, '.1.7.105.926.');
INSERT INTO `district` VALUES (927, 105, '昭平县', 3, 4, '.1.7.105.927.');
INSERT INTO `district` VALUES (928, 105, '富川', 3, 4, '.1.7.105.928.');
INSERT INTO `district` VALUES (929, 106, '兴宾区', 3, 4, '.1.7.106.929.');
INSERT INTO `district` VALUES (930, 106, '合山市', 3, 4, '.1.7.106.930.');
INSERT INTO `district` VALUES (931, 106, '象州县', 3, 4, '.1.7.106.931.');
INSERT INTO `district` VALUES (932, 106, '武宣县', 3, 4, '.1.7.106.932.');
INSERT INTO `district` VALUES (933, 106, '忻城县', 3, 4, '.1.7.106.933.');
INSERT INTO `district` VALUES (934, 106, '金秀', 3, 4, '.1.7.106.934.');
INSERT INTO `district` VALUES (935, 107, '城中区', 3, 4, '.1.7.107.935.');
INSERT INTO `district` VALUES (936, 107, '鱼峰区', 3, 4, '.1.7.107.936.');
INSERT INTO `district` VALUES (937, 107, '柳北区', 3, 4, '.1.7.107.937.');
INSERT INTO `district` VALUES (938, 107, '柳南区', 3, 4, '.1.7.107.938.');
INSERT INTO `district` VALUES (939, 107, '柳江县', 3, 4, '.1.7.107.939.');
INSERT INTO `district` VALUES (940, 107, '柳城县', 3, 4, '.1.7.107.940.');
INSERT INTO `district` VALUES (941, 107, '鹿寨县', 3, 4, '.1.7.107.941.');
INSERT INTO `district` VALUES (942, 107, '融安县', 3, 4, '.1.7.107.942.');
INSERT INTO `district` VALUES (943, 107, '融水', 3, 4, '.1.7.107.943.');
INSERT INTO `district` VALUES (944, 107, '三江', 3, 4, '.1.7.107.944.');
INSERT INTO `district` VALUES (945, 108, '钦南区', 3, 4, '.1.7.108.945.');
INSERT INTO `district` VALUES (946, 108, '钦北区', 3, 4, '.1.7.108.946.');
INSERT INTO `district` VALUES (947, 108, '灵山县', 3, 4, '.1.7.108.947.');
INSERT INTO `district` VALUES (948, 108, '浦北县', 3, 4, '.1.7.108.948.');
INSERT INTO `district` VALUES (949, 109, '万秀区', 3, 4, '.1.7.109.949.');
INSERT INTO `district` VALUES (950, 109, '蝶山区', 3, 4, '.1.7.109.950.');
INSERT INTO `district` VALUES (951, 109, '长洲区', 3, 4, '.1.7.109.951.');
INSERT INTO `district` VALUES (952, 109, '岑溪市', 3, 4, '.1.7.109.952.');
INSERT INTO `district` VALUES (953, 109, '苍梧县', 3, 4, '.1.7.109.953.');
INSERT INTO `district` VALUES (954, 109, '藤县', 3, 4, '.1.7.109.954.');
INSERT INTO `district` VALUES (955, 109, '蒙山县', 3, 4, '.1.7.109.955.');
INSERT INTO `district` VALUES (956, 110, '玉州区', 3, 4, '.1.7.110.956.');
INSERT INTO `district` VALUES (957, 110, '北流市', 3, 4, '.1.7.110.957.');
INSERT INTO `district` VALUES (958, 110, '容县', 3, 4, '.1.7.110.958.');
INSERT INTO `district` VALUES (959, 110, '陆川县', 3, 4, '.1.7.110.959.');
INSERT INTO `district` VALUES (960, 110, '博白县', 3, 4, '.1.7.110.960.');
INSERT INTO `district` VALUES (961, 110, '兴业县', 3, 4, '.1.7.110.961.');
INSERT INTO `district` VALUES (962, 111, '南明区', 3, 4, '.1.8.111.962.');
INSERT INTO `district` VALUES (963, 111, '云岩区', 3, 4, '.1.8.111.963.');
INSERT INTO `district` VALUES (964, 111, '花溪区', 3, 4, '.1.8.111.964.');
INSERT INTO `district` VALUES (965, 111, '乌当区', 3, 4, '.1.8.111.965.');
INSERT INTO `district` VALUES (966, 111, '白云区', 3, 4, '.1.8.111.966.');
INSERT INTO `district` VALUES (967, 111, '小河区', 3, 4, '.1.8.111.967.');
INSERT INTO `district` VALUES (968, 111, '金阳新区', 3, 4, '.1.8.111.968.');
INSERT INTO `district` VALUES (969, 111, '新天园区', 3, 4, '.1.8.111.969.');
INSERT INTO `district` VALUES (970, 111, '清镇市', 3, 4, '.1.8.111.970.');
INSERT INTO `district` VALUES (971, 111, '开阳县', 3, 4, '.1.8.111.971.');
INSERT INTO `district` VALUES (972, 111, '修文县', 3, 4, '.1.8.111.972.');
INSERT INTO `district` VALUES (973, 111, '息烽县', 3, 4, '.1.8.111.973.');
INSERT INTO `district` VALUES (974, 112, '西秀区', 3, 4, '.1.8.112.974.');
INSERT INTO `district` VALUES (975, 112, '关岭', 3, 4, '.1.8.112.975.');
INSERT INTO `district` VALUES (976, 112, '镇宁', 3, 4, '.1.8.112.976.');
INSERT INTO `district` VALUES (977, 112, '紫云', 3, 4, '.1.8.112.977.');
INSERT INTO `district` VALUES (978, 112, '平坝县', 3, 4, '.1.8.112.978.');
INSERT INTO `district` VALUES (979, 112, '普定县', 3, 4, '.1.8.112.979.');
INSERT INTO `district` VALUES (980, 113, '毕节市', 3, 4, '.1.8.113.980.');
INSERT INTO `district` VALUES (981, 113, '大方县', 3, 4, '.1.8.113.981.');
INSERT INTO `district` VALUES (982, 113, '黔西县', 3, 4, '.1.8.113.982.');
INSERT INTO `district` VALUES (983, 113, '金沙县', 3, 4, '.1.8.113.983.');
INSERT INTO `district` VALUES (984, 113, '织金县', 3, 4, '.1.8.113.984.');
INSERT INTO `district` VALUES (985, 113, '纳雍县', 3, 4, '.1.8.113.985.');
INSERT INTO `district` VALUES (986, 113, '赫章县', 3, 4, '.1.8.113.986.');
INSERT INTO `district` VALUES (987, 113, '威宁', 3, 4, '.1.8.113.987.');
INSERT INTO `district` VALUES (988, 114, '钟山区', 3, 4, '.1.8.114.988.');
INSERT INTO `district` VALUES (989, 114, '六枝特区', 3, 4, '.1.8.114.989.');
INSERT INTO `district` VALUES (990, 114, '水城县', 3, 4, '.1.8.114.990.');
INSERT INTO `district` VALUES (991, 114, '盘县', 3, 4, '.1.8.114.991.');
INSERT INTO `district` VALUES (992, 115, '凯里市', 3, 4, '.1.8.115.992.');
INSERT INTO `district` VALUES (993, 115, '黄平县', 3, 4, '.1.8.115.993.');
INSERT INTO `district` VALUES (994, 115, '施秉县', 3, 4, '.1.8.115.994.');
INSERT INTO `district` VALUES (995, 115, '三穗县', 3, 4, '.1.8.115.995.');
INSERT INTO `district` VALUES (996, 115, '镇远县', 3, 4, '.1.8.115.996.');
INSERT INTO `district` VALUES (997, 115, '岑巩县', 3, 4, '.1.8.115.997.');
INSERT INTO `district` VALUES (998, 115, '天柱县', 3, 4, '.1.8.115.998.');
INSERT INTO `district` VALUES (999, 115, '锦屏县', 3, 4, '.1.8.115.999.');
INSERT INTO `district` VALUES (1000, 115, '剑河县', 3, 4, '.1.8.115.1000.');
INSERT INTO `district` VALUES (1001, 115, '台江县', 3, 4, '.1.8.115.1001.');
INSERT INTO `district` VALUES (1002, 115, '黎平县', 3, 4, '.1.8.115.1002.');
INSERT INTO `district` VALUES (1003, 115, '榕江县', 3, 4, '.1.8.115.1003.');
INSERT INTO `district` VALUES (1004, 115, '从江县', 3, 4, '.1.8.115.1004.');
INSERT INTO `district` VALUES (1005, 115, '雷山县', 3, 4, '.1.8.115.1005.');
INSERT INTO `district` VALUES (1006, 115, '麻江县', 3, 4, '.1.8.115.1006.');
INSERT INTO `district` VALUES (1007, 115, '丹寨县', 3, 4, '.1.8.115.1007.');
INSERT INTO `district` VALUES (1008, 116, '都匀市', 3, 4, '.1.8.116.1008.');
INSERT INTO `district` VALUES (1009, 116, '福泉市', 3, 4, '.1.8.116.1009.');
INSERT INTO `district` VALUES (1010, 116, '荔波县', 3, 4, '.1.8.116.1010.');
INSERT INTO `district` VALUES (1011, 116, '贵定县', 3, 4, '.1.8.116.1011.');
INSERT INTO `district` VALUES (1012, 116, '瓮安县', 3, 4, '.1.8.116.1012.');
INSERT INTO `district` VALUES (1013, 116, '独山县', 3, 4, '.1.8.116.1013.');
INSERT INTO `district` VALUES (1014, 116, '平塘县', 3, 4, '.1.8.116.1014.');
INSERT INTO `district` VALUES (1015, 116, '罗甸县', 3, 4, '.1.8.116.1015.');
INSERT INTO `district` VALUES (1016, 116, '长顺县', 3, 4, '.1.8.116.1016.');
INSERT INTO `district` VALUES (1017, 116, '龙里县', 3, 4, '.1.8.116.1017.');
INSERT INTO `district` VALUES (1018, 116, '惠水县', 3, 4, '.1.8.116.1018.');
INSERT INTO `district` VALUES (1019, 116, '三都', 3, 4, '.1.8.116.1019.');
INSERT INTO `district` VALUES (1020, 117, '兴义市', 3, 4, '.1.8.117.1020.');
INSERT INTO `district` VALUES (1021, 117, '兴仁县', 3, 4, '.1.8.117.1021.');
INSERT INTO `district` VALUES (1022, 117, '普安县', 3, 4, '.1.8.117.1022.');
INSERT INTO `district` VALUES (1023, 117, '晴隆县', 3, 4, '.1.8.117.1023.');
INSERT INTO `district` VALUES (1024, 117, '贞丰县', 3, 4, '.1.8.117.1024.');
INSERT INTO `district` VALUES (1025, 117, '望谟县', 3, 4, '.1.8.117.1025.');
INSERT INTO `district` VALUES (1026, 117, '册亨县', 3, 4, '.1.8.117.1026.');
INSERT INTO `district` VALUES (1027, 117, '安龙县', 3, 4, '.1.8.117.1027.');
INSERT INTO `district` VALUES (1028, 118, '铜仁市', 3, 4, '.1.8.118.1028.');
INSERT INTO `district` VALUES (1029, 118, '江口县', 3, 4, '.1.8.118.1029.');
INSERT INTO `district` VALUES (1030, 118, '石阡县', 3, 4, '.1.8.118.1030.');
INSERT INTO `district` VALUES (1031, 118, '思南县', 3, 4, '.1.8.118.1031.');
INSERT INTO `district` VALUES (1032, 118, '德江县', 3, 4, '.1.8.118.1032.');
INSERT INTO `district` VALUES (1033, 118, '玉屏', 3, 4, '.1.8.118.1033.');
INSERT INTO `district` VALUES (1034, 118, '印江', 3, 4, '.1.8.118.1034.');
INSERT INTO `district` VALUES (1035, 118, '沿河', 3, 4, '.1.8.118.1035.');
INSERT INTO `district` VALUES (1036, 118, '松桃', 3, 4, '.1.8.118.1036.');
INSERT INTO `district` VALUES (1037, 118, '万山特区', 3, 4, '.1.8.118.1037.');
INSERT INTO `district` VALUES (1038, 119, '红花岗区', 3, 4, '.1.8.119.1038.');
INSERT INTO `district` VALUES (1039, 119, '务川县', 3, 4, '.1.8.119.1039.');
INSERT INTO `district` VALUES (1040, 119, '道真县', 3, 4, '.1.8.119.1040.');
INSERT INTO `district` VALUES (1041, 119, '汇川区', 3, 4, '.1.8.119.1041.');
INSERT INTO `district` VALUES (1042, 119, '赤水市', 3, 4, '.1.8.119.1042.');
INSERT INTO `district` VALUES (1043, 119, '仁怀市', 3, 4, '.1.8.119.1043.');
INSERT INTO `district` VALUES (1044, 119, '遵义县', 3, 4, '.1.8.119.1044.');
INSERT INTO `district` VALUES (1045, 119, '桐梓县', 3, 4, '.1.8.119.1045.');
INSERT INTO `district` VALUES (1046, 119, '绥阳县', 3, 4, '.1.8.119.1046.');
INSERT INTO `district` VALUES (1047, 119, '正安县', 3, 4, '.1.8.119.1047.');
INSERT INTO `district` VALUES (1048, 119, '凤冈县', 3, 4, '.1.8.119.1048.');
INSERT INTO `district` VALUES (1049, 119, '湄潭县', 3, 4, '.1.8.119.1049.');
INSERT INTO `district` VALUES (1050, 119, '余庆县', 3, 4, '.1.8.119.1050.');
INSERT INTO `district` VALUES (1051, 119, '习水县', 3, 4, '.1.8.119.1051.');
INSERT INTO `district` VALUES (1052, 119, '道真', 3, 4, '.1.8.119.1052.');
INSERT INTO `district` VALUES (1053, 119, '务川', 3, 4, '.1.8.119.1053.');
INSERT INTO `district` VALUES (1054, 120, '秀英区', 3, 4, '.1.9.120.1054.');
INSERT INTO `district` VALUES (1055, 120, '龙华区', 3, 4, '.1.9.120.1055.');
INSERT INTO `district` VALUES (1056, 120, '琼山区', 3, 4, '.1.9.120.1056.');
INSERT INTO `district` VALUES (1057, 120, '美兰区', 3, 4, '.1.9.120.1057.');
INSERT INTO `district` VALUES (1058, 137, '市区', 3, 4, '.1.9.137.1058.');
INSERT INTO `district` VALUES (1059, 137, '洋浦开发区', 3, 4, '.1.9.137.1059.');
INSERT INTO `district` VALUES (1060, 137, '那大镇', 3, 4, '.1.9.137.1060.');
INSERT INTO `district` VALUES (1061, 137, '王五镇', 3, 4, '.1.9.137.1061.');
INSERT INTO `district` VALUES (1062, 137, '雅星镇', 3, 4, '.1.9.137.1062.');
INSERT INTO `district` VALUES (1063, 137, '大成镇', 3, 4, '.1.9.137.1063.');
INSERT INTO `district` VALUES (1064, 137, '中和镇', 3, 4, '.1.9.137.1064.');
INSERT INTO `district` VALUES (1065, 137, '峨蔓镇', 3, 4, '.1.9.137.1065.');
INSERT INTO `district` VALUES (1066, 137, '南丰镇', 3, 4, '.1.9.137.1066.');
INSERT INTO `district` VALUES (1067, 137, '白马井镇', 3, 4, '.1.9.137.1067.');
INSERT INTO `district` VALUES (1068, 137, '兰洋镇', 3, 4, '.1.9.137.1068.');
INSERT INTO `district` VALUES (1069, 137, '和庆镇', 3, 4, '.1.9.137.1069.');
INSERT INTO `district` VALUES (1070, 137, '海头镇', 3, 4, '.1.9.137.1070.');
INSERT INTO `district` VALUES (1071, 137, '排浦镇', 3, 4, '.1.9.137.1071.');
INSERT INTO `district` VALUES (1072, 137, '东成镇', 3, 4, '.1.9.137.1072.');
INSERT INTO `district` VALUES (1073, 137, '光村镇', 3, 4, '.1.9.137.1073.');
INSERT INTO `district` VALUES (1074, 137, '木棠镇', 3, 4, '.1.9.137.1074.');
INSERT INTO `district` VALUES (1075, 137, '新州镇', 3, 4, '.1.9.137.1075.');
INSERT INTO `district` VALUES (1076, 137, '三都镇', 3, 4, '.1.9.137.1076.');
INSERT INTO `district` VALUES (1077, 137, '其他', 3, 4, '.1.9.137.1077.');
INSERT INTO `district` VALUES (1078, 138, '长安区', 3, 4, '.1.10.138.1078.');
INSERT INTO `district` VALUES (1079, 138, '桥东区', 3, 4, '.1.10.138.1079.');
INSERT INTO `district` VALUES (1080, 138, '桥西区', 3, 4, '.1.10.138.1080.');
INSERT INTO `district` VALUES (1081, 138, '新华区', 3, 4, '.1.10.138.1081.');
INSERT INTO `district` VALUES (1082, 138, '裕华区', 3, 4, '.1.10.138.1082.');
INSERT INTO `district` VALUES (1083, 138, '井陉矿区', 3, 4, '.1.10.138.1083.');
INSERT INTO `district` VALUES (1084, 138, '高新区', 3, 4, '.1.10.138.1084.');
INSERT INTO `district` VALUES (1085, 138, '辛集市', 3, 4, '.1.10.138.1085.');
INSERT INTO `district` VALUES (1086, 138, '藁城市', 3, 4, '.1.10.138.1086.');
INSERT INTO `district` VALUES (1087, 138, '晋州市', 3, 4, '.1.10.138.1087.');
INSERT INTO `district` VALUES (1088, 138, '新乐市', 3, 4, '.1.10.138.1088.');
INSERT INTO `district` VALUES (1089, 138, '鹿泉市', 3, 4, '.1.10.138.1089.');
INSERT INTO `district` VALUES (1090, 138, '井陉县', 3, 4, '.1.10.138.1090.');
INSERT INTO `district` VALUES (1091, 138, '正定县', 3, 4, '.1.10.138.1091.');
INSERT INTO `district` VALUES (1092, 138, '栾城县', 3, 4, '.1.10.138.1092.');
INSERT INTO `district` VALUES (1093, 138, '行唐县', 3, 4, '.1.10.138.1093.');
INSERT INTO `district` VALUES (1094, 138, '灵寿县', 3, 4, '.1.10.138.1094.');
INSERT INTO `district` VALUES (1095, 138, '高邑县', 3, 4, '.1.10.138.1095.');
INSERT INTO `district` VALUES (1096, 138, '深泽县', 3, 4, '.1.10.138.1096.');
INSERT INTO `district` VALUES (1097, 138, '赞皇县', 3, 4, '.1.10.138.1097.');
INSERT INTO `district` VALUES (1098, 138, '无极县', 3, 4, '.1.10.138.1098.');
INSERT INTO `district` VALUES (1099, 138, '平山县', 3, 4, '.1.10.138.1099.');
INSERT INTO `district` VALUES (1100, 138, '元氏县', 3, 4, '.1.10.138.1100.');
INSERT INTO `district` VALUES (1101, 138, '赵县', 3, 4, '.1.10.138.1101.');
INSERT INTO `district` VALUES (1102, 139, '新市区', 3, 4, '.1.10.139.1102.');
INSERT INTO `district` VALUES (1103, 139, '南市区', 3, 4, '.1.10.139.1103.');
INSERT INTO `district` VALUES (1104, 139, '北市区', 3, 4, '.1.10.139.1104.');
INSERT INTO `district` VALUES (1105, 139, '涿州市', 3, 4, '.1.10.139.1105.');
INSERT INTO `district` VALUES (1106, 139, '定州市', 3, 4, '.1.10.139.1106.');
INSERT INTO `district` VALUES (1107, 139, '安国市', 3, 4, '.1.10.139.1107.');
INSERT INTO `district` VALUES (1108, 139, '高碑店市', 3, 4, '.1.10.139.1108.');
INSERT INTO `district` VALUES (1109, 139, '满城县', 3, 4, '.1.10.139.1109.');
INSERT INTO `district` VALUES (1110, 139, '清苑县', 3, 4, '.1.10.139.1110.');
INSERT INTO `district` VALUES (1111, 139, '涞水县', 3, 4, '.1.10.139.1111.');
INSERT INTO `district` VALUES (1112, 139, '阜平县', 3, 4, '.1.10.139.1112.');
INSERT INTO `district` VALUES (1113, 139, '徐水县', 3, 4, '.1.10.139.1113.');
INSERT INTO `district` VALUES (1114, 139, '定兴县', 3, 4, '.1.10.139.1114.');
INSERT INTO `district` VALUES (1115, 139, '唐县', 3, 4, '.1.10.139.1115.');
INSERT INTO `district` VALUES (1116, 139, '高阳县', 3, 4, '.1.10.139.1116.');
INSERT INTO `district` VALUES (1117, 139, '容城县', 3, 4, '.1.10.139.1117.');
INSERT INTO `district` VALUES (1118, 139, '涞源县', 3, 4, '.1.10.139.1118.');
INSERT INTO `district` VALUES (1119, 139, '望都县', 3, 4, '.1.10.139.1119.');
INSERT INTO `district` VALUES (1120, 139, '安新县', 3, 4, '.1.10.139.1120.');
INSERT INTO `district` VALUES (1121, 139, '易县', 3, 4, '.1.10.139.1121.');
INSERT INTO `district` VALUES (1122, 139, '曲阳县', 3, 4, '.1.10.139.1122.');
INSERT INTO `district` VALUES (1123, 139, '蠡县', 3, 4, '.1.10.139.1123.');
INSERT INTO `district` VALUES (1124, 139, '顺平县', 3, 4, '.1.10.139.1124.');
INSERT INTO `district` VALUES (1125, 139, '博野县', 3, 4, '.1.10.139.1125.');
INSERT INTO `district` VALUES (1126, 139, '雄县', 3, 4, '.1.10.139.1126.');
INSERT INTO `district` VALUES (1127, 140, '运河区', 3, 4, '.1.10.140.1127.');
INSERT INTO `district` VALUES (1128, 140, '新华区', 3, 4, '.1.10.140.1128.');
INSERT INTO `district` VALUES (1129, 140, '泊头市', 3, 4, '.1.10.140.1129.');
INSERT INTO `district` VALUES (1130, 140, '任丘市', 3, 4, '.1.10.140.1130.');
INSERT INTO `district` VALUES (1131, 140, '黄骅市', 3, 4, '.1.10.140.1131.');
INSERT INTO `district` VALUES (1132, 140, '河间市', 3, 4, '.1.10.140.1132.');
INSERT INTO `district` VALUES (1133, 140, '沧县', 3, 4, '.1.10.140.1133.');
INSERT INTO `district` VALUES (1134, 140, '青县', 3, 4, '.1.10.140.1134.');
INSERT INTO `district` VALUES (1135, 140, '东光县', 3, 4, '.1.10.140.1135.');
INSERT INTO `district` VALUES (1136, 140, '海兴县', 3, 4, '.1.10.140.1136.');
INSERT INTO `district` VALUES (1137, 140, '盐山县', 3, 4, '.1.10.140.1137.');
INSERT INTO `district` VALUES (1138, 140, '肃宁县', 3, 4, '.1.10.140.1138.');
INSERT INTO `district` VALUES (1139, 140, '南皮县', 3, 4, '.1.10.140.1139.');
INSERT INTO `district` VALUES (1140, 140, '吴桥县', 3, 4, '.1.10.140.1140.');
INSERT INTO `district` VALUES (1141, 140, '献县', 3, 4, '.1.10.140.1141.');
INSERT INTO `district` VALUES (1142, 140, '孟村', 3, 4, '.1.10.140.1142.');
INSERT INTO `district` VALUES (1143, 141, '双桥区', 3, 4, '.1.10.141.1143.');
INSERT INTO `district` VALUES (1144, 141, '双滦区', 3, 4, '.1.10.141.1144.');
INSERT INTO `district` VALUES (1145, 141, '鹰手营子矿区', 3, 4, '.1.10.141.1145.');
INSERT INTO `district` VALUES (1146, 141, '承德县', 3, 4, '.1.10.141.1146.');
INSERT INTO `district` VALUES (1147, 141, '兴隆县', 3, 4, '.1.10.141.1147.');
INSERT INTO `district` VALUES (1148, 141, '平泉县', 3, 4, '.1.10.141.1148.');
INSERT INTO `district` VALUES (1149, 141, '滦平县', 3, 4, '.1.10.141.1149.');
INSERT INTO `district` VALUES (1150, 141, '隆化县', 3, 4, '.1.10.141.1150.');
INSERT INTO `district` VALUES (1151, 141, '丰宁', 3, 4, '.1.10.141.1151.');
INSERT INTO `district` VALUES (1152, 141, '宽城', 3, 4, '.1.10.141.1152.');
INSERT INTO `district` VALUES (1153, 141, '围场', 3, 4, '.1.10.141.1153.');
INSERT INTO `district` VALUES (1154, 142, '从台区', 3, 4, '.1.10.142.1154.');
INSERT INTO `district` VALUES (1155, 142, '复兴区', 3, 4, '.1.10.142.1155.');
INSERT INTO `district` VALUES (1156, 142, '邯山区', 3, 4, '.1.10.142.1156.');
INSERT INTO `district` VALUES (1157, 142, '峰峰矿区', 3, 4, '.1.10.142.1157.');
INSERT INTO `district` VALUES (1158, 142, '武安市', 3, 4, '.1.10.142.1158.');
INSERT INTO `district` VALUES (1159, 142, '邯郸县', 3, 4, '.1.10.142.1159.');
INSERT INTO `district` VALUES (1160, 142, '临漳县', 3, 4, '.1.10.142.1160.');
INSERT INTO `district` VALUES (1161, 142, '成安县', 3, 4, '.1.10.142.1161.');
INSERT INTO `district` VALUES (1162, 142, '大名县', 3, 4, '.1.10.142.1162.');
INSERT INTO `district` VALUES (1163, 142, '涉县', 3, 4, '.1.10.142.1163.');
INSERT INTO `district` VALUES (1164, 142, '磁县', 3, 4, '.1.10.142.1164.');
INSERT INTO `district` VALUES (1165, 142, '肥乡县', 3, 4, '.1.10.142.1165.');
INSERT INTO `district` VALUES (1166, 142, '永年县', 3, 4, '.1.10.142.1166.');
INSERT INTO `district` VALUES (1167, 142, '邱县', 3, 4, '.1.10.142.1167.');
INSERT INTO `district` VALUES (1168, 142, '鸡泽县', 3, 4, '.1.10.142.1168.');
INSERT INTO `district` VALUES (1169, 142, '广平县', 3, 4, '.1.10.142.1169.');
INSERT INTO `district` VALUES (1170, 142, '馆陶县', 3, 4, '.1.10.142.1170.');
INSERT INTO `district` VALUES (1171, 142, '魏县', 3, 4, '.1.10.142.1171.');
INSERT INTO `district` VALUES (1172, 142, '曲周县', 3, 4, '.1.10.142.1172.');
INSERT INTO `district` VALUES (1173, 143, '桃城区', 3, 4, '.1.10.143.1173.');
INSERT INTO `district` VALUES (1174, 143, '冀州市', 3, 4, '.1.10.143.1174.');
INSERT INTO `district` VALUES (1175, 143, '深州市', 3, 4, '.1.10.143.1175.');
INSERT INTO `district` VALUES (1176, 143, '枣强县', 3, 4, '.1.10.143.1176.');
INSERT INTO `district` VALUES (1177, 143, '武邑县', 3, 4, '.1.10.143.1177.');
INSERT INTO `district` VALUES (1178, 143, '武强县', 3, 4, '.1.10.143.1178.');
INSERT INTO `district` VALUES (1179, 143, '饶阳县', 3, 4, '.1.10.143.1179.');
INSERT INTO `district` VALUES (1180, 143, '安平县', 3, 4, '.1.10.143.1180.');
INSERT INTO `district` VALUES (1181, 143, '故城县', 3, 4, '.1.10.143.1181.');
INSERT INTO `district` VALUES (1182, 143, '景县', 3, 4, '.1.10.143.1182.');
INSERT INTO `district` VALUES (1183, 143, '阜城县', 3, 4, '.1.10.143.1183.');
INSERT INTO `district` VALUES (1184, 144, '安次区', 3, 4, '.1.10.144.1184.');
INSERT INTO `district` VALUES (1185, 144, '广阳区', 3, 4, '.1.10.144.1185.');
INSERT INTO `district` VALUES (1186, 144, '霸州市', 3, 4, '.1.10.144.1186.');
INSERT INTO `district` VALUES (1187, 144, '三河市', 3, 4, '.1.10.144.1187.');
INSERT INTO `district` VALUES (1188, 144, '固安县', 3, 4, '.1.10.144.1188.');
INSERT INTO `district` VALUES (1189, 144, '永清县', 3, 4, '.1.10.144.1189.');
INSERT INTO `district` VALUES (1190, 144, '香河县', 3, 4, '.1.10.144.1190.');
INSERT INTO `district` VALUES (1191, 144, '大城县', 3, 4, '.1.10.144.1191.');
INSERT INTO `district` VALUES (1192, 144, '文安县', 3, 4, '.1.10.144.1192.');
INSERT INTO `district` VALUES (1193, 144, '大厂', 3, 4, '.1.10.144.1193.');
INSERT INTO `district` VALUES (1194, 145, '海港区', 3, 4, '.1.10.145.1194.');
INSERT INTO `district` VALUES (1195, 145, '山海关区', 3, 4, '.1.10.145.1195.');
INSERT INTO `district` VALUES (1196, 145, '北戴河区', 3, 4, '.1.10.145.1196.');
INSERT INTO `district` VALUES (1197, 145, '昌黎县', 3, 4, '.1.10.145.1197.');
INSERT INTO `district` VALUES (1198, 145, '抚宁县', 3, 4, '.1.10.145.1198.');
INSERT INTO `district` VALUES (1199, 145, '卢龙县', 3, 4, '.1.10.145.1199.');
INSERT INTO `district` VALUES (1200, 145, '青龙', 3, 4, '.1.10.145.1200.');
INSERT INTO `district` VALUES (1201, 146, '路北区', 3, 4, '.1.10.146.1201.');
INSERT INTO `district` VALUES (1202, 146, '路南区', 3, 4, '.1.10.146.1202.');
INSERT INTO `district` VALUES (1203, 146, '古冶区', 3, 4, '.1.10.146.1203.');
INSERT INTO `district` VALUES (1204, 146, '开平区', 3, 4, '.1.10.146.1204.');
INSERT INTO `district` VALUES (1205, 146, '丰南区', 3, 4, '.1.10.146.1205.');
INSERT INTO `district` VALUES (1206, 146, '丰润区', 3, 4, '.1.10.146.1206.');
INSERT INTO `district` VALUES (1207, 146, '遵化市', 3, 4, '.1.10.146.1207.');
INSERT INTO `district` VALUES (1208, 146, '迁安市', 3, 4, '.1.10.146.1208.');
INSERT INTO `district` VALUES (1209, 146, '滦县', 3, 4, '.1.10.146.1209.');
INSERT INTO `district` VALUES (1210, 146, '滦南县', 3, 4, '.1.10.146.1210.');
INSERT INTO `district` VALUES (1211, 146, '乐亭县', 3, 4, '.1.10.146.1211.');
INSERT INTO `district` VALUES (1212, 146, '迁西县', 3, 4, '.1.10.146.1212.');
INSERT INTO `district` VALUES (1213, 146, '玉田县', 3, 4, '.1.10.146.1213.');
INSERT INTO `district` VALUES (1214, 146, '唐海县', 3, 4, '.1.10.146.1214.');
INSERT INTO `district` VALUES (1215, 147, '桥东区', 3, 4, '.1.10.147.1215.');
INSERT INTO `district` VALUES (1216, 147, '桥西区', 3, 4, '.1.10.147.1216.');
INSERT INTO `district` VALUES (1217, 147, '南宫市', 3, 4, '.1.10.147.1217.');
INSERT INTO `district` VALUES (1218, 147, '沙河市', 3, 4, '.1.10.147.1218.');
INSERT INTO `district` VALUES (1219, 147, '邢台县', 3, 4, '.1.10.147.1219.');
INSERT INTO `district` VALUES (1220, 147, '临城县', 3, 4, '.1.10.147.1220.');
INSERT INTO `district` VALUES (1221, 147, '内丘县', 3, 4, '.1.10.147.1221.');
INSERT INTO `district` VALUES (1222, 147, '柏乡县', 3, 4, '.1.10.147.1222.');
INSERT INTO `district` VALUES (1223, 147, '隆尧县', 3, 4, '.1.10.147.1223.');
INSERT INTO `district` VALUES (1224, 147, '任县', 3, 4, '.1.10.147.1224.');
INSERT INTO `district` VALUES (1225, 147, '南和县', 3, 4, '.1.10.147.1225.');
INSERT INTO `district` VALUES (1226, 147, '宁晋县', 3, 4, '.1.10.147.1226.');
INSERT INTO `district` VALUES (1227, 147, '巨鹿县', 3, 4, '.1.10.147.1227.');
INSERT INTO `district` VALUES (1228, 147, '新河县', 3, 4, '.1.10.147.1228.');
INSERT INTO `district` VALUES (1229, 147, '广宗县', 3, 4, '.1.10.147.1229.');
INSERT INTO `district` VALUES (1230, 147, '平乡县', 3, 4, '.1.10.147.1230.');
INSERT INTO `district` VALUES (1231, 147, '威县', 3, 4, '.1.10.147.1231.');
INSERT INTO `district` VALUES (1232, 147, '清河县', 3, 4, '.1.10.147.1232.');
INSERT INTO `district` VALUES (1233, 147, '临西县', 3, 4, '.1.10.147.1233.');
INSERT INTO `district` VALUES (1234, 148, '桥西区', 3, 4, '.1.10.148.1234.');
INSERT INTO `district` VALUES (1235, 148, '桥东区', 3, 4, '.1.10.148.1235.');
INSERT INTO `district` VALUES (1236, 148, '宣化区', 3, 4, '.1.10.148.1236.');
INSERT INTO `district` VALUES (1237, 148, '下花园区', 3, 4, '.1.10.148.1237.');
INSERT INTO `district` VALUES (1238, 148, '宣化县', 3, 4, '.1.10.148.1238.');
INSERT INTO `district` VALUES (1239, 148, '张北县', 3, 4, '.1.10.148.1239.');
INSERT INTO `district` VALUES (1240, 148, '康保县', 3, 4, '.1.10.148.1240.');
INSERT INTO `district` VALUES (1241, 148, '沽源县', 3, 4, '.1.10.148.1241.');
INSERT INTO `district` VALUES (1242, 148, '尚义县', 3, 4, '.1.10.148.1242.');
INSERT INTO `district` VALUES (1243, 148, '蔚县', 3, 4, '.1.10.148.1243.');
INSERT INTO `district` VALUES (1244, 148, '阳原县', 3, 4, '.1.10.148.1244.');
INSERT INTO `district` VALUES (1245, 148, '怀安县', 3, 4, '.1.10.148.1245.');
INSERT INTO `district` VALUES (1246, 148, '万全县', 3, 4, '.1.10.148.1246.');
INSERT INTO `district` VALUES (1247, 148, '怀来县', 3, 4, '.1.10.148.1247.');
INSERT INTO `district` VALUES (1248, 148, '涿鹿县', 3, 4, '.1.10.148.1248.');
INSERT INTO `district` VALUES (1249, 148, '赤城县', 3, 4, '.1.10.148.1249.');
INSERT INTO `district` VALUES (1250, 148, '崇礼县', 3, 4, '.1.10.148.1250.');
INSERT INTO `district` VALUES (1251, 149, '金水区', 3, 4, '.1.11.149.1251.');
INSERT INTO `district` VALUES (1252, 149, '邙山区', 3, 4, '.1.11.149.1252.');
INSERT INTO `district` VALUES (1253, 149, '二七区', 3, 4, '.1.11.149.1253.');
INSERT INTO `district` VALUES (1254, 149, '管城区', 3, 4, '.1.11.149.1254.');
INSERT INTO `district` VALUES (1255, 149, '中原区', 3, 4, '.1.11.149.1255.');
INSERT INTO `district` VALUES (1256, 149, '上街区', 3, 4, '.1.11.149.1256.');
INSERT INTO `district` VALUES (1257, 149, '惠济区', 3, 4, '.1.11.149.1257.');
INSERT INTO `district` VALUES (1258, 149, '郑东新区', 3, 4, '.1.11.149.1258.');
INSERT INTO `district` VALUES (1259, 149, '经济技术开发区', 3, 4, '.1.11.149.1259.');
INSERT INTO `district` VALUES (1260, 149, '高新开发区', 3, 4, '.1.11.149.1260.');
INSERT INTO `district` VALUES (1261, 149, '出口加工区', 3, 4, '.1.11.149.1261.');
INSERT INTO `district` VALUES (1262, 149, '巩义市', 3, 4, '.1.11.149.1262.');
INSERT INTO `district` VALUES (1263, 149, '荥阳市', 3, 4, '.1.11.149.1263.');
INSERT INTO `district` VALUES (1264, 149, '新密市', 3, 4, '.1.11.149.1264.');
INSERT INTO `district` VALUES (1265, 149, '新郑市', 3, 4, '.1.11.149.1265.');
INSERT INTO `district` VALUES (1266, 149, '登封市', 3, 4, '.1.11.149.1266.');
INSERT INTO `district` VALUES (1267, 149, '中牟县', 3, 4, '.1.11.149.1267.');
INSERT INTO `district` VALUES (1268, 150, '西工区', 3, 4, '.1.11.150.1268.');
INSERT INTO `district` VALUES (1269, 150, '老城区', 3, 4, '.1.11.150.1269.');
INSERT INTO `district` VALUES (1270, 150, '涧西区', 3, 4, '.1.11.150.1270.');
INSERT INTO `district` VALUES (1271, 150, '瀍河回族区', 3, 4, '.1.11.150.1271.');
INSERT INTO `district` VALUES (1272, 150, '洛龙区', 3, 4, '.1.11.150.1272.');
INSERT INTO `district` VALUES (1273, 150, '吉利区', 3, 4, '.1.11.150.1273.');
INSERT INTO `district` VALUES (1274, 150, '偃师市', 3, 4, '.1.11.150.1274.');
INSERT INTO `district` VALUES (1275, 150, '孟津县', 3, 4, '.1.11.150.1275.');
INSERT INTO `district` VALUES (1276, 150, '新安县', 3, 4, '.1.11.150.1276.');
INSERT INTO `district` VALUES (1277, 150, '栾川县', 3, 4, '.1.11.150.1277.');
INSERT INTO `district` VALUES (1278, 150, '嵩县', 3, 4, '.1.11.150.1278.');
INSERT INTO `district` VALUES (1279, 150, '汝阳县', 3, 4, '.1.11.150.1279.');
INSERT INTO `district` VALUES (1280, 150, '宜阳县', 3, 4, '.1.11.150.1280.');
INSERT INTO `district` VALUES (1281, 150, '洛宁县', 3, 4, '.1.11.150.1281.');
INSERT INTO `district` VALUES (1282, 150, '伊川县', 3, 4, '.1.11.150.1282.');
INSERT INTO `district` VALUES (1283, 151, '鼓楼区', 3, 4, '.1.11.151.1283.');
INSERT INTO `district` VALUES (1284, 151, '龙亭区', 3, 4, '.1.11.151.1284.');
INSERT INTO `district` VALUES (1285, 151, '顺河回族区', 3, 4, '.1.11.151.1285.');
INSERT INTO `district` VALUES (1286, 151, '金明区', 3, 4, '.1.11.151.1286.');
INSERT INTO `district` VALUES (1287, 151, '禹王台区', 3, 4, '.1.11.151.1287.');
INSERT INTO `district` VALUES (1288, 151, '杞县', 3, 4, '.1.11.151.1288.');
INSERT INTO `district` VALUES (1289, 151, '通许县', 3, 4, '.1.11.151.1289.');
INSERT INTO `district` VALUES (1290, 151, '尉氏县', 3, 4, '.1.11.151.1290.');
INSERT INTO `district` VALUES (1291, 151, '开封县', 3, 4, '.1.11.151.1291.');
INSERT INTO `district` VALUES (1292, 151, '兰考县', 3, 4, '.1.11.151.1292.');
INSERT INTO `district` VALUES (1293, 152, '北关区', 3, 4, '.1.11.152.1293.');
INSERT INTO `district` VALUES (1294, 152, '文峰区', 3, 4, '.1.11.152.1294.');
INSERT INTO `district` VALUES (1295, 152, '殷都区', 3, 4, '.1.11.152.1295.');
INSERT INTO `district` VALUES (1296, 152, '龙安区', 3, 4, '.1.11.152.1296.');
INSERT INTO `district` VALUES (1297, 152, '林州市', 3, 4, '.1.11.152.1297.');
INSERT INTO `district` VALUES (1298, 152, '安阳县', 3, 4, '.1.11.152.1298.');
INSERT INTO `district` VALUES (1299, 152, '汤阴县', 3, 4, '.1.11.152.1299.');
INSERT INTO `district` VALUES (1300, 152, '滑县', 3, 4, '.1.11.152.1300.');
INSERT INTO `district` VALUES (1301, 152, '内黄县', 3, 4, '.1.11.152.1301.');
INSERT INTO `district` VALUES (1302, 153, '淇滨区', 3, 4, '.1.11.153.1302.');
INSERT INTO `district` VALUES (1303, 153, '山城区', 3, 4, '.1.11.153.1303.');
INSERT INTO `district` VALUES (1304, 153, '鹤山区', 3, 4, '.1.11.153.1304.');
INSERT INTO `district` VALUES (1305, 153, '浚县', 3, 4, '.1.11.153.1305.');
INSERT INTO `district` VALUES (1306, 153, '淇县', 3, 4, '.1.11.153.1306.');
INSERT INTO `district` VALUES (1307, 154, '济源市', 3, 4, '.1.11.154.1307.');
INSERT INTO `district` VALUES (1308, 155, '解放区', 3, 4, '.1.11.155.1308.');
INSERT INTO `district` VALUES (1309, 155, '中站区', 3, 4, '.1.11.155.1309.');
INSERT INTO `district` VALUES (1310, 155, '马村区', 3, 4, '.1.11.155.1310.');
INSERT INTO `district` VALUES (1311, 155, '山阳区', 3, 4, '.1.11.155.1311.');
INSERT INTO `district` VALUES (1312, 155, '沁阳市', 3, 4, '.1.11.155.1312.');
INSERT INTO `district` VALUES (1313, 155, '孟州市', 3, 4, '.1.11.155.1313.');
INSERT INTO `district` VALUES (1314, 155, '修武县', 3, 4, '.1.11.155.1314.');
INSERT INTO `district` VALUES (1315, 155, '博爱县', 3, 4, '.1.11.155.1315.');
INSERT INTO `district` VALUES (1316, 155, '武陟县', 3, 4, '.1.11.155.1316.');
INSERT INTO `district` VALUES (1317, 155, '温县', 3, 4, '.1.11.155.1317.');
INSERT INTO `district` VALUES (1318, 156, '卧龙区', 3, 4, '.1.11.156.1318.');
INSERT INTO `district` VALUES (1319, 156, '宛城区', 3, 4, '.1.11.156.1319.');
INSERT INTO `district` VALUES (1320, 156, '邓州市', 3, 4, '.1.11.156.1320.');
INSERT INTO `district` VALUES (1321, 156, '南召县', 3, 4, '.1.11.156.1321.');
INSERT INTO `district` VALUES (1322, 156, '方城县', 3, 4, '.1.11.156.1322.');
INSERT INTO `district` VALUES (1323, 156, '西峡县', 3, 4, '.1.11.156.1323.');
INSERT INTO `district` VALUES (1324, 156, '镇平县', 3, 4, '.1.11.156.1324.');
INSERT INTO `district` VALUES (1325, 156, '内乡县', 3, 4, '.1.11.156.1325.');
INSERT INTO `district` VALUES (1326, 156, '淅川县', 3, 4, '.1.11.156.1326.');
INSERT INTO `district` VALUES (1327, 156, '社旗县', 3, 4, '.1.11.156.1327.');
INSERT INTO `district` VALUES (1328, 156, '唐河县', 3, 4, '.1.11.156.1328.');
INSERT INTO `district` VALUES (1329, 156, '新野县', 3, 4, '.1.11.156.1329.');
INSERT INTO `district` VALUES (1330, 156, '桐柏县', 3, 4, '.1.11.156.1330.');
INSERT INTO `district` VALUES (1331, 157, '新华区', 3, 4, '.1.11.157.1331.');
INSERT INTO `district` VALUES (1332, 157, '卫东区', 3, 4, '.1.11.157.1332.');
INSERT INTO `district` VALUES (1333, 157, '湛河区', 3, 4, '.1.11.157.1333.');
INSERT INTO `district` VALUES (1334, 157, '石龙区', 3, 4, '.1.11.157.1334.');
INSERT INTO `district` VALUES (1335, 157, '舞钢市', 3, 4, '.1.11.157.1335.');
INSERT INTO `district` VALUES (1336, 157, '汝州市', 3, 4, '.1.11.157.1336.');
INSERT INTO `district` VALUES (1337, 157, '宝丰县', 3, 4, '.1.11.157.1337.');
INSERT INTO `district` VALUES (1338, 157, '叶县', 3, 4, '.1.11.157.1338.');
INSERT INTO `district` VALUES (1339, 157, '鲁山县', 3, 4, '.1.11.157.1339.');
INSERT INTO `district` VALUES (1340, 157, '郏县', 3, 4, '.1.11.157.1340.');
INSERT INTO `district` VALUES (1341, 158, '湖滨区', 3, 4, '.1.11.158.1341.');
INSERT INTO `district` VALUES (1342, 158, '义马市', 3, 4, '.1.11.158.1342.');
INSERT INTO `district` VALUES (1343, 158, '灵宝市', 3, 4, '.1.11.158.1343.');
INSERT INTO `district` VALUES (1344, 158, '渑池县', 3, 4, '.1.11.158.1344.');
INSERT INTO `district` VALUES (1345, 158, '陕县', 3, 4, '.1.11.158.1345.');
INSERT INTO `district` VALUES (1346, 158, '卢氏县', 3, 4, '.1.11.158.1346.');
INSERT INTO `district` VALUES (1347, 159, '梁园区', 3, 4, '.1.11.159.1347.');
INSERT INTO `district` VALUES (1348, 159, '睢阳区', 3, 4, '.1.11.159.1348.');
INSERT INTO `district` VALUES (1349, 159, '永城市', 3, 4, '.1.11.159.1349.');
INSERT INTO `district` VALUES (1350, 159, '民权县', 3, 4, '.1.11.159.1350.');
INSERT INTO `district` VALUES (1351, 159, '睢县', 3, 4, '.1.11.159.1351.');
INSERT INTO `district` VALUES (1352, 159, '宁陵县', 3, 4, '.1.11.159.1352.');
INSERT INTO `district` VALUES (1353, 159, '虞城县', 3, 4, '.1.11.159.1353.');
INSERT INTO `district` VALUES (1354, 159, '柘城县', 3, 4, '.1.11.159.1354.');
INSERT INTO `district` VALUES (1355, 159, '夏邑县', 3, 4, '.1.11.159.1355.');
INSERT INTO `district` VALUES (1356, 160, '卫滨区', 3, 4, '.1.11.160.1356.');
INSERT INTO `district` VALUES (1357, 160, '红旗区', 3, 4, '.1.11.160.1357.');
INSERT INTO `district` VALUES (1358, 160, '凤泉区', 3, 4, '.1.11.160.1358.');
INSERT INTO `district` VALUES (1359, 160, '牧野区', 3, 4, '.1.11.160.1359.');
INSERT INTO `district` VALUES (1360, 160, '卫辉市', 3, 4, '.1.11.160.1360.');
INSERT INTO `district` VALUES (1361, 160, '辉县市', 3, 4, '.1.11.160.1361.');
INSERT INTO `district` VALUES (1362, 160, '新乡县', 3, 4, '.1.11.160.1362.');
INSERT INTO `district` VALUES (1363, 160, '获嘉县', 3, 4, '.1.11.160.1363.');
INSERT INTO `district` VALUES (1364, 160, '原阳县', 3, 4, '.1.11.160.1364.');
INSERT INTO `district` VALUES (1365, 160, '延津县', 3, 4, '.1.11.160.1365.');
INSERT INTO `district` VALUES (1366, 160, '封丘县', 3, 4, '.1.11.160.1366.');
INSERT INTO `district` VALUES (1367, 160, '长垣县', 3, 4, '.1.11.160.1367.');
INSERT INTO `district` VALUES (1368, 161, '浉河区', 3, 4, '.1.11.161.1368.');
INSERT INTO `district` VALUES (1369, 161, '平桥区', 3, 4, '.1.11.161.1369.');
INSERT INTO `district` VALUES (1370, 161, '罗山县', 3, 4, '.1.11.161.1370.');
INSERT INTO `district` VALUES (1371, 161, '光山县', 3, 4, '.1.11.161.1371.');
INSERT INTO `district` VALUES (1372, 161, '新县', 3, 4, '.1.11.161.1372.');
INSERT INTO `district` VALUES (1373, 161, '商城县', 3, 4, '.1.11.161.1373.');
INSERT INTO `district` VALUES (1374, 161, '固始县', 3, 4, '.1.11.161.1374.');
INSERT INTO `district` VALUES (1375, 161, '潢川县', 3, 4, '.1.11.161.1375.');
INSERT INTO `district` VALUES (1376, 161, '淮滨县', 3, 4, '.1.11.161.1376.');
INSERT INTO `district` VALUES (1377, 161, '息县', 3, 4, '.1.11.161.1377.');
INSERT INTO `district` VALUES (1378, 162, '魏都区', 3, 4, '.1.11.162.1378.');
INSERT INTO `district` VALUES (1379, 162, '禹州市', 3, 4, '.1.11.162.1379.');
INSERT INTO `district` VALUES (1380, 162, '长葛市', 3, 4, '.1.11.162.1380.');
INSERT INTO `district` VALUES (1381, 162, '许昌县', 3, 4, '.1.11.162.1381.');
INSERT INTO `district` VALUES (1382, 162, '鄢陵县', 3, 4, '.1.11.162.1382.');
INSERT INTO `district` VALUES (1383, 162, '襄城县', 3, 4, '.1.11.162.1383.');
INSERT INTO `district` VALUES (1384, 163, '川汇区', 3, 4, '.1.11.163.1384.');
INSERT INTO `district` VALUES (1385, 163, '项城市', 3, 4, '.1.11.163.1385.');
INSERT INTO `district` VALUES (1386, 163, '扶沟县', 3, 4, '.1.11.163.1386.');
INSERT INTO `district` VALUES (1387, 163, '西华县', 3, 4, '.1.11.163.1387.');
INSERT INTO `district` VALUES (1388, 163, '商水县', 3, 4, '.1.11.163.1388.');
INSERT INTO `district` VALUES (1389, 163, '沈丘县', 3, 4, '.1.11.163.1389.');
INSERT INTO `district` VALUES (1390, 163, '郸城县', 3, 4, '.1.11.163.1390.');
INSERT INTO `district` VALUES (1391, 163, '淮阳县', 3, 4, '.1.11.163.1391.');
INSERT INTO `district` VALUES (1392, 163, '太康县', 3, 4, '.1.11.163.1392.');
INSERT INTO `district` VALUES (1393, 163, '鹿邑县', 3, 4, '.1.11.163.1393.');
INSERT INTO `district` VALUES (1394, 164, '驿城区', 3, 4, '.1.11.164.1394.');
INSERT INTO `district` VALUES (1395, 164, '西平县', 3, 4, '.1.11.164.1395.');
INSERT INTO `district` VALUES (1396, 164, '上蔡县', 3, 4, '.1.11.164.1396.');
INSERT INTO `district` VALUES (1397, 164, '平舆县', 3, 4, '.1.11.164.1397.');
INSERT INTO `district` VALUES (1398, 164, '正阳县', 3, 4, '.1.11.164.1398.');
INSERT INTO `district` VALUES (1399, 164, '确山县', 3, 4, '.1.11.164.1399.');
INSERT INTO `district` VALUES (1400, 164, '泌阳县', 3, 4, '.1.11.164.1400.');
INSERT INTO `district` VALUES (1401, 164, '汝南县', 3, 4, '.1.11.164.1401.');
INSERT INTO `district` VALUES (1402, 164, '遂平县', 3, 4, '.1.11.164.1402.');
INSERT INTO `district` VALUES (1403, 164, '新蔡县', 3, 4, '.1.11.164.1403.');
INSERT INTO `district` VALUES (1404, 165, '郾城区', 3, 4, '.1.11.165.1404.');
INSERT INTO `district` VALUES (1405, 165, '源汇区', 3, 4, '.1.11.165.1405.');
INSERT INTO `district` VALUES (1406, 165, '召陵区', 3, 4, '.1.11.165.1406.');
INSERT INTO `district` VALUES (1407, 165, '舞阳县', 3, 4, '.1.11.165.1407.');
INSERT INTO `district` VALUES (1408, 165, '临颍县', 3, 4, '.1.11.165.1408.');
INSERT INTO `district` VALUES (1409, 166, '华龙区', 3, 4, '.1.11.166.1409.');
INSERT INTO `district` VALUES (1410, 166, '清丰县', 3, 4, '.1.11.166.1410.');
INSERT INTO `district` VALUES (1411, 166, '南乐县', 3, 4, '.1.11.166.1411.');
INSERT INTO `district` VALUES (1412, 166, '范县', 3, 4, '.1.11.166.1412.');
INSERT INTO `district` VALUES (1413, 166, '台前县', 3, 4, '.1.11.166.1413.');
INSERT INTO `district` VALUES (1414, 166, '濮阳县', 3, 4, '.1.11.166.1414.');
INSERT INTO `district` VALUES (1415, 167, '道里区', 3, 4, '.1.12.167.1415.');
INSERT INTO `district` VALUES (1416, 167, '南岗区', 3, 4, '.1.12.167.1416.');
INSERT INTO `district` VALUES (1417, 167, '动力区', 3, 4, '.1.12.167.1417.');
INSERT INTO `district` VALUES (1418, 167, '平房区', 3, 4, '.1.12.167.1418.');
INSERT INTO `district` VALUES (1419, 167, '香坊区', 3, 4, '.1.12.167.1419.');
INSERT INTO `district` VALUES (1420, 167, '太平区', 3, 4, '.1.12.167.1420.');
INSERT INTO `district` VALUES (1421, 167, '道外区', 3, 4, '.1.12.167.1421.');
INSERT INTO `district` VALUES (1422, 167, '阿城区', 3, 4, '.1.12.167.1422.');
INSERT INTO `district` VALUES (1423, 167, '呼兰区', 3, 4, '.1.12.167.1423.');
INSERT INTO `district` VALUES (1424, 167, '松北区', 3, 4, '.1.12.167.1424.');
INSERT INTO `district` VALUES (1425, 167, '尚志市', 3, 4, '.1.12.167.1425.');
INSERT INTO `district` VALUES (1426, 167, '双城市', 3, 4, '.1.12.167.1426.');
INSERT INTO `district` VALUES (1427, 167, '五常市', 3, 4, '.1.12.167.1427.');
INSERT INTO `district` VALUES (1428, 167, '方正县', 3, 4, '.1.12.167.1428.');
INSERT INTO `district` VALUES (1429, 167, '宾县', 3, 4, '.1.12.167.1429.');
INSERT INTO `district` VALUES (1430, 167, '依兰县', 3, 4, '.1.12.167.1430.');
INSERT INTO `district` VALUES (1431, 167, '巴彦县', 3, 4, '.1.12.167.1431.');
INSERT INTO `district` VALUES (1432, 167, '通河县', 3, 4, '.1.12.167.1432.');
INSERT INTO `district` VALUES (1433, 167, '木兰县', 3, 4, '.1.12.167.1433.');
INSERT INTO `district` VALUES (1434, 167, '延寿县', 3, 4, '.1.12.167.1434.');
INSERT INTO `district` VALUES (1435, 168, '萨尔图区', 3, 4, '.1.12.168.1435.');
INSERT INTO `district` VALUES (1436, 168, '红岗区', 3, 4, '.1.12.168.1436.');
INSERT INTO `district` VALUES (1437, 168, '龙凤区', 3, 4, '.1.12.168.1437.');
INSERT INTO `district` VALUES (1438, 168, '让胡路区', 3, 4, '.1.12.168.1438.');
INSERT INTO `district` VALUES (1439, 168, '大同区', 3, 4, '.1.12.168.1439.');
INSERT INTO `district` VALUES (1440, 168, '肇州县', 3, 4, '.1.12.168.1440.');
INSERT INTO `district` VALUES (1441, 168, '肇源县', 3, 4, '.1.12.168.1441.');
INSERT INTO `district` VALUES (1442, 168, '林甸县', 3, 4, '.1.12.168.1442.');
INSERT INTO `district` VALUES (1443, 168, '杜尔伯特', 3, 4, '.1.12.168.1443.');
INSERT INTO `district` VALUES (1444, 169, '呼玛县', 3, 4, '.1.12.169.1444.');
INSERT INTO `district` VALUES (1445, 169, '漠河县', 3, 4, '.1.12.169.1445.');
INSERT INTO `district` VALUES (1446, 169, '塔河县', 3, 4, '.1.12.169.1446.');
INSERT INTO `district` VALUES (1447, 170, '兴山区', 3, 4, '.1.12.170.1447.');
INSERT INTO `district` VALUES (1448, 170, '工农区', 3, 4, '.1.12.170.1448.');
INSERT INTO `district` VALUES (1449, 170, '南山区', 3, 4, '.1.12.170.1449.');
INSERT INTO `district` VALUES (1450, 170, '兴安区', 3, 4, '.1.12.170.1450.');
INSERT INTO `district` VALUES (1451, 170, '向阳区', 3, 4, '.1.12.170.1451.');
INSERT INTO `district` VALUES (1452, 170, '东山区', 3, 4, '.1.12.170.1452.');
INSERT INTO `district` VALUES (1453, 170, '萝北县', 3, 4, '.1.12.170.1453.');
INSERT INTO `district` VALUES (1454, 170, '绥滨县', 3, 4, '.1.12.170.1454.');
INSERT INTO `district` VALUES (1455, 171, '爱辉区', 3, 4, '.1.12.171.1455.');
INSERT INTO `district` VALUES (1456, 171, '五大连池市', 3, 4, '.1.12.171.1456.');
INSERT INTO `district` VALUES (1457, 171, '北安市', 3, 4, '.1.12.171.1457.');
INSERT INTO `district` VALUES (1458, 171, '嫩江县', 3, 4, '.1.12.171.1458.');
INSERT INTO `district` VALUES (1459, 171, '逊克县', 3, 4, '.1.12.171.1459.');
INSERT INTO `district` VALUES (1460, 171, '孙吴县', 3, 4, '.1.12.171.1460.');
INSERT INTO `district` VALUES (1461, 172, '鸡冠区', 3, 4, '.1.12.172.1461.');
INSERT INTO `district` VALUES (1462, 172, '恒山区', 3, 4, '.1.12.172.1462.');
INSERT INTO `district` VALUES (1463, 172, '城子河区', 3, 4, '.1.12.172.1463.');
INSERT INTO `district` VALUES (1464, 172, '滴道区', 3, 4, '.1.12.172.1464.');
INSERT INTO `district` VALUES (1465, 172, '梨树区', 3, 4, '.1.12.172.1465.');
INSERT INTO `district` VALUES (1466, 172, '虎林市', 3, 4, '.1.12.172.1466.');
INSERT INTO `district` VALUES (1467, 172, '密山市', 3, 4, '.1.12.172.1467.');
INSERT INTO `district` VALUES (1468, 172, '鸡东县', 3, 4, '.1.12.172.1468.');
INSERT INTO `district` VALUES (1469, 173, '前进区', 3, 4, '.1.12.173.1469.');
INSERT INTO `district` VALUES (1470, 173, '郊区', 3, 4, '.1.12.173.1470.');
INSERT INTO `district` VALUES (1471, 173, '向阳区', 3, 4, '.1.12.173.1471.');
INSERT INTO `district` VALUES (1472, 173, '东风区', 3, 4, '.1.12.173.1472.');
INSERT INTO `district` VALUES (1473, 173, '同江市', 3, 4, '.1.12.173.1473.');
INSERT INTO `district` VALUES (1474, 173, '富锦市', 3, 4, '.1.12.173.1474.');
INSERT INTO `district` VALUES (1475, 173, '桦南县', 3, 4, '.1.12.173.1475.');
INSERT INTO `district` VALUES (1476, 173, '桦川县', 3, 4, '.1.12.173.1476.');
INSERT INTO `district` VALUES (1477, 173, '汤原县', 3, 4, '.1.12.173.1477.');
INSERT INTO `district` VALUES (1478, 173, '抚远县', 3, 4, '.1.12.173.1478.');
INSERT INTO `district` VALUES (1479, 174, '爱民区', 3, 4, '.1.12.174.1479.');
INSERT INTO `district` VALUES (1480, 174, '东安区', 3, 4, '.1.12.174.1480.');
INSERT INTO `district` VALUES (1481, 174, '阳明区', 3, 4, '.1.12.174.1481.');
INSERT INTO `district` VALUES (1482, 174, '西安区', 3, 4, '.1.12.174.1482.');
INSERT INTO `district` VALUES (1483, 174, '绥芬河市', 3, 4, '.1.12.174.1483.');
INSERT INTO `district` VALUES (1484, 174, '海林市', 3, 4, '.1.12.174.1484.');
INSERT INTO `district` VALUES (1485, 174, '宁安市', 3, 4, '.1.12.174.1485.');
INSERT INTO `district` VALUES (1486, 174, '穆棱市', 3, 4, '.1.12.174.1486.');
INSERT INTO `district` VALUES (1487, 174, '东宁县', 3, 4, '.1.12.174.1487.');
INSERT INTO `district` VALUES (1488, 174, '林口县', 3, 4, '.1.12.174.1488.');
INSERT INTO `district` VALUES (1489, 175, '桃山区', 3, 4, '.1.12.175.1489.');
INSERT INTO `district` VALUES (1490, 175, '新兴区', 3, 4, '.1.12.175.1490.');
INSERT INTO `district` VALUES (1491, 175, '茄子河区', 3, 4, '.1.12.175.1491.');
INSERT INTO `district` VALUES (1492, 175, '勃利县', 3, 4, '.1.12.175.1492.');
INSERT INTO `district` VALUES (1493, 176, '龙沙区', 3, 4, '.1.12.176.1493.');
INSERT INTO `district` VALUES (1494, 176, '昂昂溪区', 3, 4, '.1.12.176.1494.');
INSERT INTO `district` VALUES (1495, 176, '铁峰区', 3, 4, '.1.12.176.1495.');
INSERT INTO `district` VALUES (1496, 176, '建华区', 3, 4, '.1.12.176.1496.');
INSERT INTO `district` VALUES (1497, 176, '富拉尔基区', 3, 4, '.1.12.176.1497.');
INSERT INTO `district` VALUES (1498, 176, '碾子山区', 3, 4, '.1.12.176.1498.');
INSERT INTO `district` VALUES (1499, 176, '梅里斯达斡尔区', 3, 4, '.1.12.176.1499.');
INSERT INTO `district` VALUES (1500, 176, '讷河市', 3, 4, '.1.12.176.1500.');
INSERT INTO `district` VALUES (1501, 176, '龙江县', 3, 4, '.1.12.176.1501.');
INSERT INTO `district` VALUES (1502, 176, '依安县', 3, 4, '.1.12.176.1502.');
INSERT INTO `district` VALUES (1503, 176, '泰来县', 3, 4, '.1.12.176.1503.');
INSERT INTO `district` VALUES (1504, 176, '甘南县', 3, 4, '.1.12.176.1504.');
INSERT INTO `district` VALUES (1505, 176, '富裕县', 3, 4, '.1.12.176.1505.');
INSERT INTO `district` VALUES (1506, 176, '克山县', 3, 4, '.1.12.176.1506.');
INSERT INTO `district` VALUES (1507, 176, '克东县', 3, 4, '.1.12.176.1507.');
INSERT INTO `district` VALUES (1508, 176, '拜泉县', 3, 4, '.1.12.176.1508.');
INSERT INTO `district` VALUES (1509, 177, '尖山区', 3, 4, '.1.12.177.1509.');
INSERT INTO `district` VALUES (1510, 177, '岭东区', 3, 4, '.1.12.177.1510.');
INSERT INTO `district` VALUES (1511, 177, '四方台区', 3, 4, '.1.12.177.1511.');
INSERT INTO `district` VALUES (1512, 177, '宝山区', 3, 4, '.1.12.177.1512.');
INSERT INTO `district` VALUES (1513, 177, '集贤县', 3, 4, '.1.12.177.1513.');
INSERT INTO `district` VALUES (1514, 177, '友谊县', 3, 4, '.1.12.177.1514.');
INSERT INTO `district` VALUES (1515, 177, '宝清县', 3, 4, '.1.12.177.1515.');
INSERT INTO `district` VALUES (1516, 177, '饶河县', 3, 4, '.1.12.177.1516.');
INSERT INTO `district` VALUES (1517, 178, '北林区', 3, 4, '.1.12.178.1517.');
INSERT INTO `district` VALUES (1518, 178, '安达市', 3, 4, '.1.12.178.1518.');
INSERT INTO `district` VALUES (1519, 178, '肇东市', 3, 4, '.1.12.178.1519.');
INSERT INTO `district` VALUES (1520, 178, '海伦市', 3, 4, '.1.12.178.1520.');
INSERT INTO `district` VALUES (1521, 178, '望奎县', 3, 4, '.1.12.178.1521.');
INSERT INTO `district` VALUES (1522, 178, '兰西县', 3, 4, '.1.12.178.1522.');
INSERT INTO `district` VALUES (1523, 178, '青冈县', 3, 4, '.1.12.178.1523.');
INSERT INTO `district` VALUES (1524, 178, '庆安县', 3, 4, '.1.12.178.1524.');
INSERT INTO `district` VALUES (1525, 178, '明水县', 3, 4, '.1.12.178.1525.');
INSERT INTO `district` VALUES (1526, 178, '绥棱县', 3, 4, '.1.12.178.1526.');
INSERT INTO `district` VALUES (1527, 179, '伊春区', 3, 4, '.1.12.179.1527.');
INSERT INTO `district` VALUES (1528, 179, '带岭区', 3, 4, '.1.12.179.1528.');
INSERT INTO `district` VALUES (1529, 179, '南岔区', 3, 4, '.1.12.179.1529.');
INSERT INTO `district` VALUES (1530, 179, '金山屯区', 3, 4, '.1.12.179.1530.');
INSERT INTO `district` VALUES (1531, 179, '西林区', 3, 4, '.1.12.179.1531.');
INSERT INTO `district` VALUES (1532, 179, '美溪区', 3, 4, '.1.12.179.1532.');
INSERT INTO `district` VALUES (1533, 179, '乌马河区', 3, 4, '.1.12.179.1533.');
INSERT INTO `district` VALUES (1534, 179, '翠峦区', 3, 4, '.1.12.179.1534.');
INSERT INTO `district` VALUES (1535, 179, '友好区', 3, 4, '.1.12.179.1535.');
INSERT INTO `district` VALUES (1536, 179, '上甘岭区', 3, 4, '.1.12.179.1536.');
INSERT INTO `district` VALUES (1537, 179, '五营区', 3, 4, '.1.12.179.1537.');
INSERT INTO `district` VALUES (1538, 179, '红星区', 3, 4, '.1.12.179.1538.');
INSERT INTO `district` VALUES (1539, 179, '新青区', 3, 4, '.1.12.179.1539.');
INSERT INTO `district` VALUES (1540, 179, '汤旺河区', 3, 4, '.1.12.179.1540.');
INSERT INTO `district` VALUES (1541, 179, '乌伊岭区', 3, 4, '.1.12.179.1541.');
INSERT INTO `district` VALUES (1542, 179, '铁力市', 3, 4, '.1.12.179.1542.');
INSERT INTO `district` VALUES (1543, 179, '嘉荫县', 3, 4, '.1.12.179.1543.');
INSERT INTO `district` VALUES (1544, 180, '江岸区', 3, 4, '.1.13.180.1544.');
INSERT INTO `district` VALUES (1545, 180, '武昌区', 3, 4, '.1.13.180.1545.');
INSERT INTO `district` VALUES (1546, 180, '江汉区', 3, 4, '.1.13.180.1546.');
INSERT INTO `district` VALUES (1547, 180, '硚口区', 3, 4, '.1.13.180.1547.');
INSERT INTO `district` VALUES (1548, 180, '汉阳区', 3, 4, '.1.13.180.1548.');
INSERT INTO `district` VALUES (1549, 180, '青山区', 3, 4, '.1.13.180.1549.');
INSERT INTO `district` VALUES (1550, 180, '洪山区', 3, 4, '.1.13.180.1550.');
INSERT INTO `district` VALUES (1551, 180, '东西湖区', 3, 4, '.1.13.180.1551.');
INSERT INTO `district` VALUES (1552, 180, '汉南区', 3, 4, '.1.13.180.1552.');
INSERT INTO `district` VALUES (1553, 180, '蔡甸区', 3, 4, '.1.13.180.1553.');
INSERT INTO `district` VALUES (1554, 180, '江夏区', 3, 4, '.1.13.180.1554.');
INSERT INTO `district` VALUES (1555, 180, '黄陂区', 3, 4, '.1.13.180.1555.');
INSERT INTO `district` VALUES (1556, 180, '新洲区', 3, 4, '.1.13.180.1556.');
INSERT INTO `district` VALUES (1557, 180, '经济开发区', 3, 4, '.1.13.180.1557.');
INSERT INTO `district` VALUES (1558, 181, '仙桃市', 3, 4, '.1.13.181.1558.');
INSERT INTO `district` VALUES (1559, 182, '鄂城区', 3, 4, '.1.13.182.1559.');
INSERT INTO `district` VALUES (1560, 182, '华容区', 3, 4, '.1.13.182.1560.');
INSERT INTO `district` VALUES (1561, 182, '梁子湖区', 3, 4, '.1.13.182.1561.');
INSERT INTO `district` VALUES (1562, 183, '黄州区', 3, 4, '.1.13.183.1562.');
INSERT INTO `district` VALUES (1563, 183, '麻城市', 3, 4, '.1.13.183.1563.');
INSERT INTO `district` VALUES (1564, 183, '武穴市', 3, 4, '.1.13.183.1564.');
INSERT INTO `district` VALUES (1565, 183, '团风县', 3, 4, '.1.13.183.1565.');
INSERT INTO `district` VALUES (1566, 183, '红安县', 3, 4, '.1.13.183.1566.');
INSERT INTO `district` VALUES (1567, 183, '罗田县', 3, 4, '.1.13.183.1567.');
INSERT INTO `district` VALUES (1568, 183, '英山县', 3, 4, '.1.13.183.1568.');
INSERT INTO `district` VALUES (1569, 183, '浠水县', 3, 4, '.1.13.183.1569.');
INSERT INTO `district` VALUES (1570, 183, '蕲春县', 3, 4, '.1.13.183.1570.');
INSERT INTO `district` VALUES (1571, 183, '黄梅县', 3, 4, '.1.13.183.1571.');
INSERT INTO `district` VALUES (1572, 184, '黄石港区', 3, 4, '.1.13.184.1572.');
INSERT INTO `district` VALUES (1573, 184, '西塞山区', 3, 4, '.1.13.184.1573.');
INSERT INTO `district` VALUES (1574, 184, '下陆区', 3, 4, '.1.13.184.1574.');
INSERT INTO `district` VALUES (1575, 184, '铁山区', 3, 4, '.1.13.184.1575.');
INSERT INTO `district` VALUES (1576, 184, '大冶市', 3, 4, '.1.13.184.1576.');
INSERT INTO `district` VALUES (1577, 184, '阳新县', 3, 4, '.1.13.184.1577.');
INSERT INTO `district` VALUES (1578, 185, '东宝区', 3, 4, '.1.13.185.1578.');
INSERT INTO `district` VALUES (1579, 185, '掇刀区', 3, 4, '.1.13.185.1579.');
INSERT INTO `district` VALUES (1580, 185, '钟祥市', 3, 4, '.1.13.185.1580.');
INSERT INTO `district` VALUES (1581, 185, '京山县', 3, 4, '.1.13.185.1581.');
INSERT INTO `district` VALUES (1582, 185, '沙洋县', 3, 4, '.1.13.185.1582.');
INSERT INTO `district` VALUES (1583, 186, '沙市区', 3, 4, '.1.13.186.1583.');
INSERT INTO `district` VALUES (1584, 186, '荆州区', 3, 4, '.1.13.186.1584.');
INSERT INTO `district` VALUES (1585, 186, '石首市', 3, 4, '.1.13.186.1585.');
INSERT INTO `district` VALUES (1586, 186, '洪湖市', 3, 4, '.1.13.186.1586.');
INSERT INTO `district` VALUES (1587, 186, '松滋市', 3, 4, '.1.13.186.1587.');
INSERT INTO `district` VALUES (1588, 186, '公安县', 3, 4, '.1.13.186.1588.');
INSERT INTO `district` VALUES (1589, 186, '监利县', 3, 4, '.1.13.186.1589.');
INSERT INTO `district` VALUES (1590, 186, '江陵县', 3, 4, '.1.13.186.1590.');
INSERT INTO `district` VALUES (1591, 187, '潜江市', 3, 4, '.1.13.187.1591.');
INSERT INTO `district` VALUES (1592, 188, '神农架林区', 3, 4, '.1.13.188.1592.');
INSERT INTO `district` VALUES (1593, 189, '张湾区', 3, 4, '.1.13.189.1593.');
INSERT INTO `district` VALUES (1594, 189, '茅箭区', 3, 4, '.1.13.189.1594.');
INSERT INTO `district` VALUES (1595, 189, '丹江口市', 3, 4, '.1.13.189.1595.');
INSERT INTO `district` VALUES (1596, 189, '郧县', 3, 4, '.1.13.189.1596.');
INSERT INTO `district` VALUES (1597, 189, '郧西县', 3, 4, '.1.13.189.1597.');
INSERT INTO `district` VALUES (1598, 189, '竹山县', 3, 4, '.1.13.189.1598.');
INSERT INTO `district` VALUES (1599, 189, '竹溪县', 3, 4, '.1.13.189.1599.');
INSERT INTO `district` VALUES (1600, 189, '房县', 3, 4, '.1.13.189.1600.');
INSERT INTO `district` VALUES (1601, 190, '曾都区', 3, 4, '.1.13.190.1601.');
INSERT INTO `district` VALUES (1602, 190, '广水市', 3, 4, '.1.13.190.1602.');
INSERT INTO `district` VALUES (1603, 191, '天门市', 3, 4, '.1.13.191.1603.');
INSERT INTO `district` VALUES (1604, 192, '咸安区', 3, 4, '.1.13.192.1604.');
INSERT INTO `district` VALUES (1605, 192, '赤壁市', 3, 4, '.1.13.192.1605.');
INSERT INTO `district` VALUES (1606, 192, '嘉鱼县', 3, 4, '.1.13.192.1606.');
INSERT INTO `district` VALUES (1607, 192, '通城县', 3, 4, '.1.13.192.1607.');
INSERT INTO `district` VALUES (1608, 192, '崇阳县', 3, 4, '.1.13.192.1608.');
INSERT INTO `district` VALUES (1609, 192, '通山县', 3, 4, '.1.13.192.1609.');
INSERT INTO `district` VALUES (1610, 193, '襄城区', 3, 4, '.1.13.193.1610.');
INSERT INTO `district` VALUES (1611, 193, '樊城区', 3, 4, '.1.13.193.1611.');
INSERT INTO `district` VALUES (1612, 193, '襄阳区', 3, 4, '.1.13.193.1612.');
INSERT INTO `district` VALUES (1613, 193, '老河口市', 3, 4, '.1.13.193.1613.');
INSERT INTO `district` VALUES (1614, 193, '枣阳市', 3, 4, '.1.13.193.1614.');
INSERT INTO `district` VALUES (1615, 193, '宜城市', 3, 4, '.1.13.193.1615.');
INSERT INTO `district` VALUES (1616, 193, '南漳县', 3, 4, '.1.13.193.1616.');
INSERT INTO `district` VALUES (1617, 193, '谷城县', 3, 4, '.1.13.193.1617.');
INSERT INTO `district` VALUES (1618, 193, '保康县', 3, 4, '.1.13.193.1618.');
INSERT INTO `district` VALUES (1619, 194, '孝南区', 3, 4, '.1.13.194.1619.');
INSERT INTO `district` VALUES (1620, 194, '应城市', 3, 4, '.1.13.194.1620.');
INSERT INTO `district` VALUES (1621, 194, '安陆市', 3, 4, '.1.13.194.1621.');
INSERT INTO `district` VALUES (1622, 194, '汉川市', 3, 4, '.1.13.194.1622.');
INSERT INTO `district` VALUES (1623, 194, '孝昌县', 3, 4, '.1.13.194.1623.');
INSERT INTO `district` VALUES (1624, 194, '大悟县', 3, 4, '.1.13.194.1624.');
INSERT INTO `district` VALUES (1625, 194, '云梦县', 3, 4, '.1.13.194.1625.');
INSERT INTO `district` VALUES (1626, 195, '长阳', 3, 4, '.1.13.195.1626.');
INSERT INTO `district` VALUES (1627, 195, '五峰', 3, 4, '.1.13.195.1627.');
INSERT INTO `district` VALUES (1628, 195, '西陵区', 3, 4, '.1.13.195.1628.');
INSERT INTO `district` VALUES (1629, 195, '伍家岗区', 3, 4, '.1.13.195.1629.');
INSERT INTO `district` VALUES (1630, 195, '点军区', 3, 4, '.1.13.195.1630.');
INSERT INTO `district` VALUES (1631, 195, '猇亭区', 3, 4, '.1.13.195.1631.');
INSERT INTO `district` VALUES (1632, 195, '夷陵区', 3, 4, '.1.13.195.1632.');
INSERT INTO `district` VALUES (1633, 195, '宜都市', 3, 4, '.1.13.195.1633.');
INSERT INTO `district` VALUES (1634, 195, '当阳市', 3, 4, '.1.13.195.1634.');
INSERT INTO `district` VALUES (1635, 195, '枝江市', 3, 4, '.1.13.195.1635.');
INSERT INTO `district` VALUES (1636, 195, '远安县', 3, 4, '.1.13.195.1636.');
INSERT INTO `district` VALUES (1637, 195, '兴山县', 3, 4, '.1.13.195.1637.');
INSERT INTO `district` VALUES (1638, 195, '秭归县', 3, 4, '.1.13.195.1638.');
INSERT INTO `district` VALUES (1639, 196, '恩施市', 3, 4, '.1.13.196.1639.');
INSERT INTO `district` VALUES (1640, 196, '利川市', 3, 4, '.1.13.196.1640.');
INSERT INTO `district` VALUES (1641, 196, '建始县', 3, 4, '.1.13.196.1641.');
INSERT INTO `district` VALUES (1642, 196, '巴东县', 3, 4, '.1.13.196.1642.');
INSERT INTO `district` VALUES (1643, 196, '宣恩县', 3, 4, '.1.13.196.1643.');
INSERT INTO `district` VALUES (1644, 196, '咸丰县', 3, 4, '.1.13.196.1644.');
INSERT INTO `district` VALUES (1645, 196, '来凤县', 3, 4, '.1.13.196.1645.');
INSERT INTO `district` VALUES (1646, 196, '鹤峰县', 3, 4, '.1.13.196.1646.');
INSERT INTO `district` VALUES (1647, 197, '岳麓区', 3, 4, '.1.14.197.1647.');
INSERT INTO `district` VALUES (1648, 197, '芙蓉区', 3, 4, '.1.14.197.1648.');
INSERT INTO `district` VALUES (1649, 197, '天心区', 3, 4, '.1.14.197.1649.');
INSERT INTO `district` VALUES (1650, 197, '开福区', 3, 4, '.1.14.197.1650.');
INSERT INTO `district` VALUES (1651, 197, '雨花区', 3, 4, '.1.14.197.1651.');
INSERT INTO `district` VALUES (1652, 197, '开发区', 3, 4, '.1.14.197.1652.');
INSERT INTO `district` VALUES (1653, 197, '浏阳市', 3, 4, '.1.14.197.1653.');
INSERT INTO `district` VALUES (1654, 197, '长沙县', 3, 4, '.1.14.197.1654.');
INSERT INTO `district` VALUES (1655, 197, '望城县', 3, 4, '.1.14.197.1655.');
INSERT INTO `district` VALUES (1656, 197, '宁乡县', 3, 4, '.1.14.197.1656.');
INSERT INTO `district` VALUES (1657, 198, '永定区', 3, 4, '.1.14.198.1657.');
INSERT INTO `district` VALUES (1658, 198, '武陵源区', 3, 4, '.1.14.198.1658.');
INSERT INTO `district` VALUES (1659, 198, '慈利县', 3, 4, '.1.14.198.1659.');
INSERT INTO `district` VALUES (1660, 198, '桑植县', 3, 4, '.1.14.198.1660.');
INSERT INTO `district` VALUES (1661, 199, '武陵区', 3, 4, '.1.14.199.1661.');
INSERT INTO `district` VALUES (1662, 199, '鼎城区', 3, 4, '.1.14.199.1662.');
INSERT INTO `district` VALUES (1663, 199, '津市市', 3, 4, '.1.14.199.1663.');
INSERT INTO `district` VALUES (1664, 199, '安乡县', 3, 4, '.1.14.199.1664.');
INSERT INTO `district` VALUES (1665, 199, '汉寿县', 3, 4, '.1.14.199.1665.');
INSERT INTO `district` VALUES (1666, 199, '澧县', 3, 4, '.1.14.199.1666.');
INSERT INTO `district` VALUES (1667, 199, '临澧县', 3, 4, '.1.14.199.1667.');
INSERT INTO `district` VALUES (1668, 199, '桃源县', 3, 4, '.1.14.199.1668.');
INSERT INTO `district` VALUES (1669, 199, '石门县', 3, 4, '.1.14.199.1669.');
INSERT INTO `district` VALUES (1670, 200, '北湖区', 3, 4, '.1.14.200.1670.');
INSERT INTO `district` VALUES (1671, 200, '苏仙区', 3, 4, '.1.14.200.1671.');
INSERT INTO `district` VALUES (1672, 200, '资兴市', 3, 4, '.1.14.200.1672.');
INSERT INTO `district` VALUES (1673, 200, '桂阳县', 3, 4, '.1.14.200.1673.');
INSERT INTO `district` VALUES (1674, 200, '宜章县', 3, 4, '.1.14.200.1674.');
INSERT INTO `district` VALUES (1675, 200, '永兴县', 3, 4, '.1.14.200.1675.');
INSERT INTO `district` VALUES (1676, 200, '嘉禾县', 3, 4, '.1.14.200.1676.');
INSERT INTO `district` VALUES (1677, 200, '临武县', 3, 4, '.1.14.200.1677.');
INSERT INTO `district` VALUES (1678, 200, '汝城县', 3, 4, '.1.14.200.1678.');
INSERT INTO `district` VALUES (1679, 200, '桂东县', 3, 4, '.1.14.200.1679.');
INSERT INTO `district` VALUES (1680, 200, '安仁县', 3, 4, '.1.14.200.1680.');
INSERT INTO `district` VALUES (1681, 201, '雁峰区', 3, 4, '.1.14.201.1681.');
INSERT INTO `district` VALUES (1682, 201, '珠晖区', 3, 4, '.1.14.201.1682.');
INSERT INTO `district` VALUES (1683, 201, '石鼓区', 3, 4, '.1.14.201.1683.');
INSERT INTO `district` VALUES (1684, 201, '蒸湘区', 3, 4, '.1.14.201.1684.');
INSERT INTO `district` VALUES (1685, 201, '南岳区', 3, 4, '.1.14.201.1685.');
INSERT INTO `district` VALUES (1686, 201, '耒阳市', 3, 4, '.1.14.201.1686.');
INSERT INTO `district` VALUES (1687, 201, '常宁市', 3, 4, '.1.14.201.1687.');
INSERT INTO `district` VALUES (1688, 201, '衡阳县', 3, 4, '.1.14.201.1688.');
INSERT INTO `district` VALUES (1689, 201, '衡南县', 3, 4, '.1.14.201.1689.');
INSERT INTO `district` VALUES (1690, 201, '衡山县', 3, 4, '.1.14.201.1690.');
INSERT INTO `district` VALUES (1691, 201, '衡东县', 3, 4, '.1.14.201.1691.');
INSERT INTO `district` VALUES (1692, 201, '祁东县', 3, 4, '.1.14.201.1692.');
INSERT INTO `district` VALUES (1693, 202, '鹤城区', 3, 4, '.1.14.202.1693.');
INSERT INTO `district` VALUES (1694, 202, '靖州', 3, 4, '.1.14.202.1694.');
INSERT INTO `district` VALUES (1695, 202, '麻阳', 3, 4, '.1.14.202.1695.');
INSERT INTO `district` VALUES (1696, 202, '通道', 3, 4, '.1.14.202.1696.');
INSERT INTO `district` VALUES (1697, 202, '新晃', 3, 4, '.1.14.202.1697.');
INSERT INTO `district` VALUES (1698, 202, '芷江', 3, 4, '.1.14.202.1698.');
INSERT INTO `district` VALUES (1699, 202, '沅陵县', 3, 4, '.1.14.202.1699.');
INSERT INTO `district` VALUES (1700, 202, '辰溪县', 3, 4, '.1.14.202.1700.');
INSERT INTO `district` VALUES (1701, 202, '溆浦县', 3, 4, '.1.14.202.1701.');
INSERT INTO `district` VALUES (1702, 202, '中方县', 3, 4, '.1.14.202.1702.');
INSERT INTO `district` VALUES (1703, 202, '会同县', 3, 4, '.1.14.202.1703.');
INSERT INTO `district` VALUES (1704, 202, '洪江市', 3, 4, '.1.14.202.1704.');
INSERT INTO `district` VALUES (1705, 203, '娄星区', 3, 4, '.1.14.203.1705.');
INSERT INTO `district` VALUES (1706, 203, '冷水江市', 3, 4, '.1.14.203.1706.');
INSERT INTO `district` VALUES (1707, 203, '涟源市', 3, 4, '.1.14.203.1707.');
INSERT INTO `district` VALUES (1708, 203, '双峰县', 3, 4, '.1.14.203.1708.');
INSERT INTO `district` VALUES (1709, 203, '新化县', 3, 4, '.1.14.203.1709.');
INSERT INTO `district` VALUES (1710, 204, '城步', 3, 4, '.1.14.204.1710.');
INSERT INTO `district` VALUES (1711, 204, '双清区', 3, 4, '.1.14.204.1711.');
INSERT INTO `district` VALUES (1712, 204, '大祥区', 3, 4, '.1.14.204.1712.');
INSERT INTO `district` VALUES (1713, 204, '北塔区', 3, 4, '.1.14.204.1713.');
INSERT INTO `district` VALUES (1714, 204, '武冈市', 3, 4, '.1.14.204.1714.');
INSERT INTO `district` VALUES (1715, 204, '邵东县', 3, 4, '.1.14.204.1715.');
INSERT INTO `district` VALUES (1716, 204, '新邵县', 3, 4, '.1.14.204.1716.');
INSERT INTO `district` VALUES (1717, 204, '邵阳县', 3, 4, '.1.14.204.1717.');
INSERT INTO `district` VALUES (1718, 204, '隆回县', 3, 4, '.1.14.204.1718.');
INSERT INTO `district` VALUES (1719, 204, '洞口县', 3, 4, '.1.14.204.1719.');
INSERT INTO `district` VALUES (1720, 204, '绥宁县', 3, 4, '.1.14.204.1720.');
INSERT INTO `district` VALUES (1721, 204, '新宁县', 3, 4, '.1.14.204.1721.');
INSERT INTO `district` VALUES (1722, 205, '岳塘区', 3, 4, '.1.14.205.1722.');
INSERT INTO `district` VALUES (1723, 205, '雨湖区', 3, 4, '.1.14.205.1723.');
INSERT INTO `district` VALUES (1724, 205, '湘乡市', 3, 4, '.1.14.205.1724.');
INSERT INTO `district` VALUES (1725, 205, '韶山市', 3, 4, '.1.14.205.1725.');
INSERT INTO `district` VALUES (1726, 205, '湘潭县', 3, 4, '.1.14.205.1726.');
INSERT INTO `district` VALUES (1727, 206, '吉首市', 3, 4, '.1.14.206.1727.');
INSERT INTO `district` VALUES (1728, 206, '泸溪县', 3, 4, '.1.14.206.1728.');
INSERT INTO `district` VALUES (1729, 206, '凤凰县', 3, 4, '.1.14.206.1729.');
INSERT INTO `district` VALUES (1730, 206, '花垣县', 3, 4, '.1.14.206.1730.');
INSERT INTO `district` VALUES (1731, 206, '保靖县', 3, 4, '.1.14.206.1731.');
INSERT INTO `district` VALUES (1732, 206, '古丈县', 3, 4, '.1.14.206.1732.');
INSERT INTO `district` VALUES (1733, 206, '永顺县', 3, 4, '.1.14.206.1733.');
INSERT INTO `district` VALUES (1734, 206, '龙山县', 3, 4, '.1.14.206.1734.');
INSERT INTO `district` VALUES (1735, 207, '赫山区', 3, 4, '.1.14.207.1735.');
INSERT INTO `district` VALUES (1736, 207, '资阳区', 3, 4, '.1.14.207.1736.');
INSERT INTO `district` VALUES (1737, 207, '沅江市', 3, 4, '.1.14.207.1737.');
INSERT INTO `district` VALUES (1738, 207, '南县', 3, 4, '.1.14.207.1738.');
INSERT INTO `district` VALUES (1739, 207, '桃江县', 3, 4, '.1.14.207.1739.');
INSERT INTO `district` VALUES (1740, 207, '安化县', 3, 4, '.1.14.207.1740.');
INSERT INTO `district` VALUES (1741, 208, '江华', 3, 4, '.1.14.208.1741.');
INSERT INTO `district` VALUES (1742, 208, '冷水滩区', 3, 4, '.1.14.208.1742.');
INSERT INTO `district` VALUES (1743, 208, '零陵区', 3, 4, '.1.14.208.1743.');
INSERT INTO `district` VALUES (1744, 208, '祁阳县', 3, 4, '.1.14.208.1744.');
INSERT INTO `district` VALUES (1745, 208, '东安县', 3, 4, '.1.14.208.1745.');
INSERT INTO `district` VALUES (1746, 208, '双牌县', 3, 4, '.1.14.208.1746.');
INSERT INTO `district` VALUES (1747, 208, '道县', 3, 4, '.1.14.208.1747.');
INSERT INTO `district` VALUES (1748, 208, '江永县', 3, 4, '.1.14.208.1748.');
INSERT INTO `district` VALUES (1749, 208, '宁远县', 3, 4, '.1.14.208.1749.');
INSERT INTO `district` VALUES (1750, 208, '蓝山县', 3, 4, '.1.14.208.1750.');
INSERT INTO `district` VALUES (1751, 208, '新田县', 3, 4, '.1.14.208.1751.');
INSERT INTO `district` VALUES (1752, 209, '岳阳楼区', 3, 4, '.1.14.209.1752.');
INSERT INTO `district` VALUES (1753, 209, '君山区', 3, 4, '.1.14.209.1753.');
INSERT INTO `district` VALUES (1754, 209, '云溪区', 3, 4, '.1.14.209.1754.');
INSERT INTO `district` VALUES (1755, 209, '汨罗市', 3, 4, '.1.14.209.1755.');
INSERT INTO `district` VALUES (1756, 209, '临湘市', 3, 4, '.1.14.209.1756.');
INSERT INTO `district` VALUES (1757, 209, '岳阳县', 3, 4, '.1.14.209.1757.');
INSERT INTO `district` VALUES (1758, 209, '华容县', 3, 4, '.1.14.209.1758.');
INSERT INTO `district` VALUES (1759, 209, '湘阴县', 3, 4, '.1.14.209.1759.');
INSERT INTO `district` VALUES (1760, 209, '平江县', 3, 4, '.1.14.209.1760.');
INSERT INTO `district` VALUES (1761, 210, '天元区', 3, 4, '.1.14.210.1761.');
INSERT INTO `district` VALUES (1762, 210, '荷塘区', 3, 4, '.1.14.210.1762.');
INSERT INTO `district` VALUES (1763, 210, '芦淞区', 3, 4, '.1.14.210.1763.');
INSERT INTO `district` VALUES (1764, 210, '石峰区', 3, 4, '.1.14.210.1764.');
INSERT INTO `district` VALUES (1765, 210, '醴陵市', 3, 4, '.1.14.210.1765.');
INSERT INTO `district` VALUES (1766, 210, '株洲县', 3, 4, '.1.14.210.1766.');
INSERT INTO `district` VALUES (1767, 210, '攸县', 3, 4, '.1.14.210.1767.');
INSERT INTO `district` VALUES (1768, 210, '茶陵县', 3, 4, '.1.14.210.1768.');
INSERT INTO `district` VALUES (1769, 210, '炎陵县', 3, 4, '.1.14.210.1769.');
INSERT INTO `district` VALUES (1770, 211, '朝阳区', 3, 4, '.1.15.211.1770.');
INSERT INTO `district` VALUES (1771, 211, '宽城区', 3, 4, '.1.15.211.1771.');
INSERT INTO `district` VALUES (1772, 211, '二道区', 3, 4, '.1.15.211.1772.');
INSERT INTO `district` VALUES (1773, 211, '南关区', 3, 4, '.1.15.211.1773.');
INSERT INTO `district` VALUES (1774, 211, '绿园区', 3, 4, '.1.15.211.1774.');
INSERT INTO `district` VALUES (1775, 211, '双阳区', 3, 4, '.1.15.211.1775.');
INSERT INTO `district` VALUES (1776, 211, '净月潭开发区', 3, 4, '.1.15.211.1776.');
INSERT INTO `district` VALUES (1777, 211, '高新技术开发区', 3, 4, '.1.15.211.1777.');
INSERT INTO `district` VALUES (1778, 211, '经济技术开发区', 3, 4, '.1.15.211.1778.');
INSERT INTO `district` VALUES (1779, 211, '汽车产业开发区', 3, 4, '.1.15.211.1779.');
INSERT INTO `district` VALUES (1780, 211, '德惠市', 3, 4, '.1.15.211.1780.');
INSERT INTO `district` VALUES (1781, 211, '九台市', 3, 4, '.1.15.211.1781.');
INSERT INTO `district` VALUES (1782, 211, '榆树市', 3, 4, '.1.15.211.1782.');
INSERT INTO `district` VALUES (1783, 211, '农安县', 3, 4, '.1.15.211.1783.');
INSERT INTO `district` VALUES (1784, 212, '船营区', 3, 4, '.1.15.212.1784.');
INSERT INTO `district` VALUES (1785, 212, '昌邑区', 3, 4, '.1.15.212.1785.');
INSERT INTO `district` VALUES (1786, 212, '龙潭区', 3, 4, '.1.15.212.1786.');
INSERT INTO `district` VALUES (1787, 212, '丰满区', 3, 4, '.1.15.212.1787.');
INSERT INTO `district` VALUES (1788, 212, '蛟河市', 3, 4, '.1.15.212.1788.');
INSERT INTO `district` VALUES (1789, 212, '桦甸市', 3, 4, '.1.15.212.1789.');
INSERT INTO `district` VALUES (1790, 212, '舒兰市', 3, 4, '.1.15.212.1790.');
INSERT INTO `district` VALUES (1791, 212, '磐石市', 3, 4, '.1.15.212.1791.');
INSERT INTO `district` VALUES (1792, 212, '永吉县', 3, 4, '.1.15.212.1792.');
INSERT INTO `district` VALUES (1793, 213, '洮北区', 3, 4, '.1.15.213.1793.');
INSERT INTO `district` VALUES (1794, 213, '洮南市', 3, 4, '.1.15.213.1794.');
INSERT INTO `district` VALUES (1795, 213, '大安市', 3, 4, '.1.15.213.1795.');
INSERT INTO `district` VALUES (1796, 213, '镇赉县', 3, 4, '.1.15.213.1796.');
INSERT INTO `district` VALUES (1797, 213, '通榆县', 3, 4, '.1.15.213.1797.');
INSERT INTO `district` VALUES (1798, 214, '江源区', 3, 4, '.1.15.214.1798.');
INSERT INTO `district` VALUES (1799, 214, '八道江区', 3, 4, '.1.15.214.1799.');
INSERT INTO `district` VALUES (1800, 214, '长白', 3, 4, '.1.15.214.1800.');
INSERT INTO `district` VALUES (1801, 214, '临江市', 3, 4, '.1.15.214.1801.');
INSERT INTO `district` VALUES (1802, 214, '抚松县', 3, 4, '.1.15.214.1802.');
INSERT INTO `district` VALUES (1803, 214, '靖宇县', 3, 4, '.1.15.214.1803.');
INSERT INTO `district` VALUES (1804, 215, '龙山区', 3, 4, '.1.15.215.1804.');
INSERT INTO `district` VALUES (1805, 215, '西安区', 3, 4, '.1.15.215.1805.');
INSERT INTO `district` VALUES (1806, 215, '东丰县', 3, 4, '.1.15.215.1806.');
INSERT INTO `district` VALUES (1807, 215, '东辽县', 3, 4, '.1.15.215.1807.');
INSERT INTO `district` VALUES (1808, 216, '铁西区', 3, 4, '.1.15.216.1808.');
INSERT INTO `district` VALUES (1809, 216, '铁东区', 3, 4, '.1.15.216.1809.');
INSERT INTO `district` VALUES (1810, 216, '伊通', 3, 4, '.1.15.216.1810.');
INSERT INTO `district` VALUES (1811, 216, '公主岭市', 3, 4, '.1.15.216.1811.');
INSERT INTO `district` VALUES (1812, 216, '双辽市', 3, 4, '.1.15.216.1812.');
INSERT INTO `district` VALUES (1813, 216, '梨树县', 3, 4, '.1.15.216.1813.');
INSERT INTO `district` VALUES (1814, 217, '前郭尔罗斯', 3, 4, '.1.15.217.1814.');
INSERT INTO `district` VALUES (1815, 217, '宁江区', 3, 4, '.1.15.217.1815.');
INSERT INTO `district` VALUES (1816, 217, '长岭县', 3, 4, '.1.15.217.1816.');
INSERT INTO `district` VALUES (1817, 217, '乾安县', 3, 4, '.1.15.217.1817.');
INSERT INTO `district` VALUES (1818, 217, '扶余县', 3, 4, '.1.15.217.1818.');
INSERT INTO `district` VALUES (1819, 218, '东昌区', 3, 4, '.1.15.218.1819.');
INSERT INTO `district` VALUES (1820, 218, '二道江区', 3, 4, '.1.15.218.1820.');
INSERT INTO `district` VALUES (1821, 218, '梅河口市', 3, 4, '.1.15.218.1821.');
INSERT INTO `district` VALUES (1822, 218, '集安市', 3, 4, '.1.15.218.1822.');
INSERT INTO `district` VALUES (1823, 218, '通化县', 3, 4, '.1.15.218.1823.');
INSERT INTO `district` VALUES (1824, 218, '辉南县', 3, 4, '.1.15.218.1824.');
INSERT INTO `district` VALUES (1825, 218, '柳河县', 3, 4, '.1.15.218.1825.');
INSERT INTO `district` VALUES (1826, 219, '延吉市', 3, 4, '.1.15.219.1826.');
INSERT INTO `district` VALUES (1827, 219, '图们市', 3, 4, '.1.15.219.1827.');
INSERT INTO `district` VALUES (1828, 219, '敦化市', 3, 4, '.1.15.219.1828.');
INSERT INTO `district` VALUES (1829, 219, '珲春市', 3, 4, '.1.15.219.1829.');
INSERT INTO `district` VALUES (1830, 219, '龙井市', 3, 4, '.1.15.219.1830.');
INSERT INTO `district` VALUES (1831, 219, '和龙市', 3, 4, '.1.15.219.1831.');
INSERT INTO `district` VALUES (1832, 219, '安图县', 3, 4, '.1.15.219.1832.');
INSERT INTO `district` VALUES (1833, 219, '汪清县', 3, 4, '.1.15.219.1833.');
INSERT INTO `district` VALUES (1834, 220, '玄武区', 3, 4, '.1.16.220.1834.');
INSERT INTO `district` VALUES (1835, 220, '鼓楼区', 3, 4, '.1.16.220.1835.');
INSERT INTO `district` VALUES (1836, 220, '白下区', 3, 4, '.1.16.220.1836.');
INSERT INTO `district` VALUES (1837, 220, '建邺区', 3, 4, '.1.16.220.1837.');
INSERT INTO `district` VALUES (1838, 220, '秦淮区', 3, 4, '.1.16.220.1838.');
INSERT INTO `district` VALUES (1839, 220, '雨花台区', 3, 4, '.1.16.220.1839.');
INSERT INTO `district` VALUES (1840, 220, '下关区', 3, 4, '.1.16.220.1840.');
INSERT INTO `district` VALUES (1841, 220, '栖霞区', 3, 4, '.1.16.220.1841.');
INSERT INTO `district` VALUES (1842, 220, '浦口区', 3, 4, '.1.16.220.1842.');
INSERT INTO `district` VALUES (1843, 220, '江宁区', 3, 4, '.1.16.220.1843.');
INSERT INTO `district` VALUES (1844, 220, '六合区', 3, 4, '.1.16.220.1844.');
INSERT INTO `district` VALUES (1845, 220, '溧水县', 3, 4, '.1.16.220.1845.');
INSERT INTO `district` VALUES (1846, 220, '高淳县', 3, 4, '.1.16.220.1846.');
INSERT INTO `district` VALUES (1847, 221, '沧浪区', 3, 4, '.1.16.221.1847.');
INSERT INTO `district` VALUES (1848, 221, '金阊区', 3, 4, '.1.16.221.1848.');
INSERT INTO `district` VALUES (1849, 221, '平江区', 3, 4, '.1.16.221.1849.');
INSERT INTO `district` VALUES (1850, 221, '虎丘区', 3, 4, '.1.16.221.1850.');
INSERT INTO `district` VALUES (1851, 221, '吴中区', 3, 4, '.1.16.221.1851.');
INSERT INTO `district` VALUES (1852, 221, '相城区', 3, 4, '.1.16.221.1852.');
INSERT INTO `district` VALUES (1853, 221, '园区', 3, 4, '.1.16.221.1853.');
INSERT INTO `district` VALUES (1854, 221, '新区', 3, 4, '.1.16.221.1854.');
INSERT INTO `district` VALUES (1855, 221, '常熟市', 3, 4, '.1.16.221.1855.');
INSERT INTO `district` VALUES (1856, 221, '张家港市', 3, 4, '.1.16.221.1856.');
INSERT INTO `district` VALUES (1857, 221, '玉山镇', 3, 4, '.1.16.221.1857.');
INSERT INTO `district` VALUES (1858, 221, '巴城镇', 3, 4, '.1.16.221.1858.');
INSERT INTO `district` VALUES (1859, 221, '周市镇', 3, 4, '.1.16.221.1859.');
INSERT INTO `district` VALUES (1860, 221, '陆家镇', 3, 4, '.1.16.221.1860.');
INSERT INTO `district` VALUES (1861, 221, '花桥镇', 3, 4, '.1.16.221.1861.');
INSERT INTO `district` VALUES (1862, 221, '淀山湖镇', 3, 4, '.1.16.221.1862.');
INSERT INTO `district` VALUES (1863, 221, '张浦镇', 3, 4, '.1.16.221.1863.');
INSERT INTO `district` VALUES (1864, 221, '周庄镇', 3, 4, '.1.16.221.1864.');
INSERT INTO `district` VALUES (1865, 221, '千灯镇', 3, 4, '.1.16.221.1865.');
INSERT INTO `district` VALUES (1866, 221, '锦溪镇', 3, 4, '.1.16.221.1866.');
INSERT INTO `district` VALUES (1867, 221, '开发区', 3, 4, '.1.16.221.1867.');
INSERT INTO `district` VALUES (1868, 221, '吴江市', 3, 4, '.1.16.221.1868.');
INSERT INTO `district` VALUES (1869, 221, '太仓市', 3, 4, '.1.16.221.1869.');
INSERT INTO `district` VALUES (1870, 222, '崇安区', 3, 4, '.1.16.222.1870.');
INSERT INTO `district` VALUES (1871, 222, '北塘区', 3, 4, '.1.16.222.1871.');
INSERT INTO `district` VALUES (1872, 222, '南长区', 3, 4, '.1.16.222.1872.');
INSERT INTO `district` VALUES (1873, 222, '锡山区', 3, 4, '.1.16.222.1873.');
INSERT INTO `district` VALUES (1874, 222, '惠山区', 3, 4, '.1.16.222.1874.');
INSERT INTO `district` VALUES (1875, 222, '滨湖区', 3, 4, '.1.16.222.1875.');
INSERT INTO `district` VALUES (1876, 222, '新区', 3, 4, '.1.16.222.1876.');
INSERT INTO `district` VALUES (1877, 222, '江阴市', 3, 4, '.1.16.222.1877.');
INSERT INTO `district` VALUES (1878, 222, '宜兴市', 3, 4, '.1.16.222.1878.');
INSERT INTO `district` VALUES (1879, 223, '天宁区', 3, 4, '.1.16.223.1879.');
INSERT INTO `district` VALUES (1880, 223, '钟楼区', 3, 4, '.1.16.223.1880.');
INSERT INTO `district` VALUES (1881, 223, '戚墅堰区', 3, 4, '.1.16.223.1881.');
INSERT INTO `district` VALUES (1882, 223, '郊区', 3, 4, '.1.16.223.1882.');
INSERT INTO `district` VALUES (1883, 223, '新北区', 3, 4, '.1.16.223.1883.');
INSERT INTO `district` VALUES (1884, 223, '武进区', 3, 4, '.1.16.223.1884.');
INSERT INTO `district` VALUES (1885, 223, '溧阳市', 3, 4, '.1.16.223.1885.');
INSERT INTO `district` VALUES (1886, 223, '金坛市', 3, 4, '.1.16.223.1886.');
INSERT INTO `district` VALUES (1887, 224, '清河区', 3, 4, '.1.16.224.1887.');
INSERT INTO `district` VALUES (1888, 224, '清浦区', 3, 4, '.1.16.224.1888.');
INSERT INTO `district` VALUES (1889, 224, '楚州区', 3, 4, '.1.16.224.1889.');
INSERT INTO `district` VALUES (1890, 224, '淮阴区', 3, 4, '.1.16.224.1890.');
INSERT INTO `district` VALUES (1891, 224, '涟水县', 3, 4, '.1.16.224.1891.');
INSERT INTO `district` VALUES (1892, 224, '洪泽县', 3, 4, '.1.16.224.1892.');
INSERT INTO `district` VALUES (1893, 224, '盱眙县', 3, 4, '.1.16.224.1893.');
INSERT INTO `district` VALUES (1894, 224, '金湖县', 3, 4, '.1.16.224.1894.');
INSERT INTO `district` VALUES (1895, 225, '新浦区', 3, 4, '.1.16.225.1895.');
INSERT INTO `district` VALUES (1896, 225, '连云区', 3, 4, '.1.16.225.1896.');
INSERT INTO `district` VALUES (1897, 225, '海州区', 3, 4, '.1.16.225.1897.');
INSERT INTO `district` VALUES (1898, 225, '赣榆县', 3, 4, '.1.16.225.1898.');
INSERT INTO `district` VALUES (1899, 225, '东海县', 3, 4, '.1.16.225.1899.');
INSERT INTO `district` VALUES (1900, 225, '灌云县', 3, 4, '.1.16.225.1900.');
INSERT INTO `district` VALUES (1901, 225, '灌南县', 3, 4, '.1.16.225.1901.');
INSERT INTO `district` VALUES (1902, 226, '崇川区', 3, 4, '.1.16.226.1902.');
INSERT INTO `district` VALUES (1903, 226, '港闸区', 3, 4, '.1.16.226.1903.');
INSERT INTO `district` VALUES (1904, 226, '经济开发区', 3, 4, '.1.16.226.1904.');
INSERT INTO `district` VALUES (1905, 226, '启东市', 3, 4, '.1.16.226.1905.');
INSERT INTO `district` VALUES (1906, 226, '如皋市', 3, 4, '.1.16.226.1906.');
INSERT INTO `district` VALUES (1907, 226, '通州市', 3, 4, '.1.16.226.1907.');
INSERT INTO `district` VALUES (1908, 226, '海门市', 3, 4, '.1.16.226.1908.');
INSERT INTO `district` VALUES (1909, 226, '海安县', 3, 4, '.1.16.226.1909.');
INSERT INTO `district` VALUES (1910, 226, '如东县', 3, 4, '.1.16.226.1910.');
INSERT INTO `district` VALUES (1911, 227, '宿城区', 3, 4, '.1.16.227.1911.');
INSERT INTO `district` VALUES (1912, 227, '宿豫区', 3, 4, '.1.16.227.1912.');
INSERT INTO `district` VALUES (1913, 227, '宿豫县', 3, 4, '.1.16.227.1913.');
INSERT INTO `district` VALUES (1914, 227, '沭阳县', 3, 4, '.1.16.227.1914.');
INSERT INTO `district` VALUES (1915, 227, '泗阳县', 3, 4, '.1.16.227.1915.');
INSERT INTO `district` VALUES (1916, 227, '泗洪县', 3, 4, '.1.16.227.1916.');
INSERT INTO `district` VALUES (1917, 228, '海陵区', 3, 4, '.1.16.228.1917.');
INSERT INTO `district` VALUES (1918, 228, '高港区', 3, 4, '.1.16.228.1918.');
INSERT INTO `district` VALUES (1919, 228, '兴化市', 3, 4, '.1.16.228.1919.');
INSERT INTO `district` VALUES (1920, 228, '靖江市', 3, 4, '.1.16.228.1920.');
INSERT INTO `district` VALUES (1921, 228, '泰兴市', 3, 4, '.1.16.228.1921.');
INSERT INTO `district` VALUES (1922, 228, '姜堰市', 3, 4, '.1.16.228.1922.');
INSERT INTO `district` VALUES (1923, 229, '云龙区', 3, 4, '.1.16.229.1923.');
INSERT INTO `district` VALUES (1924, 229, '鼓楼区', 3, 4, '.1.16.229.1924.');
INSERT INTO `district` VALUES (1925, 229, '九里区', 3, 4, '.1.16.229.1925.');
INSERT INTO `district` VALUES (1926, 229, '贾汪区', 3, 4, '.1.16.229.1926.');
INSERT INTO `district` VALUES (1927, 229, '泉山区', 3, 4, '.1.16.229.1927.');
INSERT INTO `district` VALUES (1928, 229, '新沂市', 3, 4, '.1.16.229.1928.');
INSERT INTO `district` VALUES (1929, 229, '邳州市', 3, 4, '.1.16.229.1929.');
INSERT INTO `district` VALUES (1930, 229, '丰县', 3, 4, '.1.16.229.1930.');
INSERT INTO `district` VALUES (1931, 229, '沛县', 3, 4, '.1.16.229.1931.');
INSERT INTO `district` VALUES (1932, 229, '铜山县', 3, 4, '.1.16.229.1932.');
INSERT INTO `district` VALUES (1933, 229, '睢宁县', 3, 4, '.1.16.229.1933.');
INSERT INTO `district` VALUES (1934, 230, '城区', 3, 4, '.1.16.230.1934.');
INSERT INTO `district` VALUES (1935, 230, '亭湖区', 3, 4, '.1.16.230.1935.');
INSERT INTO `district` VALUES (1936, 230, '盐都区', 3, 4, '.1.16.230.1936.');
INSERT INTO `district` VALUES (1937, 230, '盐都县', 3, 4, '.1.16.230.1937.');
INSERT INTO `district` VALUES (1938, 230, '东台市', 3, 4, '.1.16.230.1938.');
INSERT INTO `district` VALUES (1939, 230, '大丰市', 3, 4, '.1.16.230.1939.');
INSERT INTO `district` VALUES (1940, 230, '响水县', 3, 4, '.1.16.230.1940.');
INSERT INTO `district` VALUES (1941, 230, '滨海县', 3, 4, '.1.16.230.1941.');
INSERT INTO `district` VALUES (1942, 230, '阜宁县', 3, 4, '.1.16.230.1942.');
INSERT INTO `district` VALUES (1943, 230, '射阳县', 3, 4, '.1.16.230.1943.');
INSERT INTO `district` VALUES (1944, 230, '建湖县', 3, 4, '.1.16.230.1944.');
INSERT INTO `district` VALUES (1945, 231, '广陵区', 3, 4, '.1.16.231.1945.');
INSERT INTO `district` VALUES (1946, 231, '维扬区', 3, 4, '.1.16.231.1946.');
INSERT INTO `district` VALUES (1947, 231, '邗江区', 3, 4, '.1.16.231.1947.');
INSERT INTO `district` VALUES (1948, 231, '仪征市', 3, 4, '.1.16.231.1948.');
INSERT INTO `district` VALUES (1949, 231, '高邮市', 3, 4, '.1.16.231.1949.');
INSERT INTO `district` VALUES (1950, 231, '江都市', 3, 4, '.1.16.231.1950.');
INSERT INTO `district` VALUES (1951, 231, '宝应县', 3, 4, '.1.16.231.1951.');
INSERT INTO `district` VALUES (1952, 232, '京口区', 3, 4, '.1.16.232.1952.');
INSERT INTO `district` VALUES (1953, 232, '润州区', 3, 4, '.1.16.232.1953.');
INSERT INTO `district` VALUES (1954, 232, '丹徒区', 3, 4, '.1.16.232.1954.');
INSERT INTO `district` VALUES (1955, 232, '丹阳市', 3, 4, '.1.16.232.1955.');
INSERT INTO `district` VALUES (1956, 232, '扬中市', 3, 4, '.1.16.232.1956.');
INSERT INTO `district` VALUES (1957, 232, '句容市', 3, 4, '.1.16.232.1957.');
INSERT INTO `district` VALUES (1958, 233, '东湖区', 3, 4, '.1.17.233.1958.');
INSERT INTO `district` VALUES (1959, 233, '西湖区', 3, 4, '.1.17.233.1959.');
INSERT INTO `district` VALUES (1960, 233, '青云谱区', 3, 4, '.1.17.233.1960.');
INSERT INTO `district` VALUES (1961, 233, '湾里区', 3, 4, '.1.17.233.1961.');
INSERT INTO `district` VALUES (1962, 233, '青山湖区', 3, 4, '.1.17.233.1962.');
INSERT INTO `district` VALUES (1963, 233, '红谷滩新区', 3, 4, '.1.17.233.1963.');
INSERT INTO `district` VALUES (1964, 233, '昌北区', 3, 4, '.1.17.233.1964.');
INSERT INTO `district` VALUES (1965, 233, '高新区', 3, 4, '.1.17.233.1965.');
INSERT INTO `district` VALUES (1966, 233, '南昌县', 3, 4, '.1.17.233.1966.');
INSERT INTO `district` VALUES (1967, 233, '新建县', 3, 4, '.1.17.233.1967.');
INSERT INTO `district` VALUES (1968, 233, '安义县', 3, 4, '.1.17.233.1968.');
INSERT INTO `district` VALUES (1969, 233, '进贤县', 3, 4, '.1.17.233.1969.');
INSERT INTO `district` VALUES (1970, 234, '临川区', 3, 4, '.1.17.234.1970.');
INSERT INTO `district` VALUES (1971, 234, '南城县', 3, 4, '.1.17.234.1971.');
INSERT INTO `district` VALUES (1972, 234, '黎川县', 3, 4, '.1.17.234.1972.');
INSERT INTO `district` VALUES (1973, 234, '南丰县', 3, 4, '.1.17.234.1973.');
INSERT INTO `district` VALUES (1974, 234, '崇仁县', 3, 4, '.1.17.234.1974.');
INSERT INTO `district` VALUES (1975, 234, '乐安县', 3, 4, '.1.17.234.1975.');
INSERT INTO `district` VALUES (1976, 234, '宜黄县', 3, 4, '.1.17.234.1976.');
INSERT INTO `district` VALUES (1977, 234, '金溪县', 3, 4, '.1.17.234.1977.');
INSERT INTO `district` VALUES (1978, 234, '资溪县', 3, 4, '.1.17.234.1978.');
INSERT INTO `district` VALUES (1979, 234, '东乡县', 3, 4, '.1.17.234.1979.');
INSERT INTO `district` VALUES (1980, 234, '广昌县', 3, 4, '.1.17.234.1980.');
INSERT INTO `district` VALUES (1981, 235, '章贡区', 3, 4, '.1.17.235.1981.');
INSERT INTO `district` VALUES (1982, 235, '于都县', 3, 4, '.1.17.235.1982.');
INSERT INTO `district` VALUES (1983, 235, '瑞金市', 3, 4, '.1.17.235.1983.');
INSERT INTO `district` VALUES (1984, 235, '南康市', 3, 4, '.1.17.235.1984.');
INSERT INTO `district` VALUES (1985, 235, '赣县', 3, 4, '.1.17.235.1985.');
INSERT INTO `district` VALUES (1986, 235, '信丰县', 3, 4, '.1.17.235.1986.');
INSERT INTO `district` VALUES (1987, 235, '大余县', 3, 4, '.1.17.235.1987.');
INSERT INTO `district` VALUES (1988, 235, '上犹县', 3, 4, '.1.17.235.1988.');
INSERT INTO `district` VALUES (1989, 235, '崇义县', 3, 4, '.1.17.235.1989.');
INSERT INTO `district` VALUES (1990, 235, '安远县', 3, 4, '.1.17.235.1990.');
INSERT INTO `district` VALUES (1991, 235, '龙南县', 3, 4, '.1.17.235.1991.');
INSERT INTO `district` VALUES (1992, 235, '定南县', 3, 4, '.1.17.235.1992.');
INSERT INTO `district` VALUES (1993, 235, '全南县', 3, 4, '.1.17.235.1993.');
INSERT INTO `district` VALUES (1994, 235, '宁都县', 3, 4, '.1.17.235.1994.');
INSERT INTO `district` VALUES (1995, 235, '兴国县', 3, 4, '.1.17.235.1995.');
INSERT INTO `district` VALUES (1996, 235, '会昌县', 3, 4, '.1.17.235.1996.');
INSERT INTO `district` VALUES (1997, 235, '寻乌县', 3, 4, '.1.17.235.1997.');
INSERT INTO `district` VALUES (1998, 235, '石城县', 3, 4, '.1.17.235.1998.');
INSERT INTO `district` VALUES (1999, 236, '安福县', 3, 4, '.1.17.236.1999.');
INSERT INTO `district` VALUES (2000, 236, '吉州区', 3, 4, '.1.17.236.2000.');
INSERT INTO `district` VALUES (2001, 236, '青原区', 3, 4, '.1.17.236.2001.');
INSERT INTO `district` VALUES (2002, 236, '井冈山市', 3, 4, '.1.17.236.2002.');
INSERT INTO `district` VALUES (2003, 236, '吉安县', 3, 4, '.1.17.236.2003.');
INSERT INTO `district` VALUES (2004, 236, '吉水县', 3, 4, '.1.17.236.2004.');
INSERT INTO `district` VALUES (2005, 236, '峡江县', 3, 4, '.1.17.236.2005.');
INSERT INTO `district` VALUES (2006, 236, '新干县', 3, 4, '.1.17.236.2006.');
INSERT INTO `district` VALUES (2007, 236, '永丰县', 3, 4, '.1.17.236.2007.');
INSERT INTO `district` VALUES (2008, 236, '泰和县', 3, 4, '.1.17.236.2008.');
INSERT INTO `district` VALUES (2009, 236, '遂川县', 3, 4, '.1.17.236.2009.');
INSERT INTO `district` VALUES (2010, 236, '万安县', 3, 4, '.1.17.236.2010.');
INSERT INTO `district` VALUES (2011, 236, '永新县', 3, 4, '.1.17.236.2011.');
INSERT INTO `district` VALUES (2012, 237, '珠山区', 3, 4, '.1.17.237.2012.');
INSERT INTO `district` VALUES (2013, 237, '昌江区', 3, 4, '.1.17.237.2013.');
INSERT INTO `district` VALUES (2014, 237, '乐平市', 3, 4, '.1.17.237.2014.');
INSERT INTO `district` VALUES (2015, 237, '浮梁县', 3, 4, '.1.17.237.2015.');
INSERT INTO `district` VALUES (2016, 238, '浔阳区', 3, 4, '.1.17.238.2016.');
INSERT INTO `district` VALUES (2017, 238, '庐山区', 3, 4, '.1.17.238.2017.');
INSERT INTO `district` VALUES (2018, 238, '瑞昌市', 3, 4, '.1.17.238.2018.');
INSERT INTO `district` VALUES (2019, 238, '九江县', 3, 4, '.1.17.238.2019.');
INSERT INTO `district` VALUES (2020, 238, '武宁县', 3, 4, '.1.17.238.2020.');
INSERT INTO `district` VALUES (2021, 238, '修水县', 3, 4, '.1.17.238.2021.');
INSERT INTO `district` VALUES (2022, 238, '永修县', 3, 4, '.1.17.238.2022.');
INSERT INTO `district` VALUES (2023, 238, '德安县', 3, 4, '.1.17.238.2023.');
INSERT INTO `district` VALUES (2024, 238, '星子县', 3, 4, '.1.17.238.2024.');
INSERT INTO `district` VALUES (2025, 238, '都昌县', 3, 4, '.1.17.238.2025.');
INSERT INTO `district` VALUES (2026, 238, '湖口县', 3, 4, '.1.17.238.2026.');
INSERT INTO `district` VALUES (2027, 238, '彭泽县', 3, 4, '.1.17.238.2027.');
INSERT INTO `district` VALUES (2028, 239, '安源区', 3, 4, '.1.17.239.2028.');
INSERT INTO `district` VALUES (2029, 239, '湘东区', 3, 4, '.1.17.239.2029.');
INSERT INTO `district` VALUES (2030, 239, '莲花县', 3, 4, '.1.17.239.2030.');
INSERT INTO `district` VALUES (2031, 239, '芦溪县', 3, 4, '.1.17.239.2031.');
INSERT INTO `district` VALUES (2032, 239, '上栗县', 3, 4, '.1.17.239.2032.');
INSERT INTO `district` VALUES (2033, 240, '信州区', 3, 4, '.1.17.240.2033.');
INSERT INTO `district` VALUES (2034, 240, '德兴市', 3, 4, '.1.17.240.2034.');
INSERT INTO `district` VALUES (2035, 240, '上饶县', 3, 4, '.1.17.240.2035.');
INSERT INTO `district` VALUES (2036, 240, '广丰县', 3, 4, '.1.17.240.2036.');
INSERT INTO `district` VALUES (2037, 240, '玉山县', 3, 4, '.1.17.240.2037.');
INSERT INTO `district` VALUES (2038, 240, '铅山县', 3, 4, '.1.17.240.2038.');
INSERT INTO `district` VALUES (2039, 240, '横峰县', 3, 4, '.1.17.240.2039.');
INSERT INTO `district` VALUES (2040, 240, '弋阳县', 3, 4, '.1.17.240.2040.');
INSERT INTO `district` VALUES (2041, 240, '余干县', 3, 4, '.1.17.240.2041.');
INSERT INTO `district` VALUES (2042, 240, '波阳县', 3, 4, '.1.17.240.2042.');
INSERT INTO `district` VALUES (2043, 240, '万年县', 3, 4, '.1.17.240.2043.');
INSERT INTO `district` VALUES (2044, 240, '婺源县', 3, 4, '.1.17.240.2044.');
INSERT INTO `district` VALUES (2045, 241, '渝水区', 3, 4, '.1.17.241.2045.');
INSERT INTO `district` VALUES (2046, 241, '分宜县', 3, 4, '.1.17.241.2046.');
INSERT INTO `district` VALUES (2047, 242, '袁州区', 3, 4, '.1.17.242.2047.');
INSERT INTO `district` VALUES (2048, 242, '丰城市', 3, 4, '.1.17.242.2048.');
INSERT INTO `district` VALUES (2049, 242, '樟树市', 3, 4, '.1.17.242.2049.');
INSERT INTO `district` VALUES (2050, 242, '高安市', 3, 4, '.1.17.242.2050.');
INSERT INTO `district` VALUES (2051, 242, '奉新县', 3, 4, '.1.17.242.2051.');
INSERT INTO `district` VALUES (2052, 242, '万载县', 3, 4, '.1.17.242.2052.');
INSERT INTO `district` VALUES (2053, 242, '上高县', 3, 4, '.1.17.242.2053.');
INSERT INTO `district` VALUES (2054, 242, '宜丰县', 3, 4, '.1.17.242.2054.');
INSERT INTO `district` VALUES (2055, 242, '靖安县', 3, 4, '.1.17.242.2055.');
INSERT INTO `district` VALUES (2056, 242, '铜鼓县', 3, 4, '.1.17.242.2056.');
INSERT INTO `district` VALUES (2057, 243, '月湖区', 3, 4, '.1.17.243.2057.');
INSERT INTO `district` VALUES (2058, 243, '贵溪市', 3, 4, '.1.17.243.2058.');
INSERT INTO `district` VALUES (2059, 243, '余江县', 3, 4, '.1.17.243.2059.');
INSERT INTO `district` VALUES (2060, 244, '沈河区', 3, 4, '.1.18.244.2060.');
INSERT INTO `district` VALUES (2061, 244, '皇姑区', 3, 4, '.1.18.244.2061.');
INSERT INTO `district` VALUES (2062, 244, '和平区', 3, 4, '.1.18.244.2062.');
INSERT INTO `district` VALUES (2063, 244, '大东区', 3, 4, '.1.18.244.2063.');
INSERT INTO `district` VALUES (2064, 244, '铁西区', 3, 4, '.1.18.244.2064.');
INSERT INTO `district` VALUES (2065, 244, '苏家屯区', 3, 4, '.1.18.244.2065.');
INSERT INTO `district` VALUES (2066, 244, '东陵区', 3, 4, '.1.18.244.2066.');
INSERT INTO `district` VALUES (2067, 244, '沈北新区', 3, 4, '.1.18.244.2067.');
INSERT INTO `district` VALUES (2068, 244, '于洪区', 3, 4, '.1.18.244.2068.');
INSERT INTO `district` VALUES (2069, 244, '浑南新区', 3, 4, '.1.18.244.2069.');
INSERT INTO `district` VALUES (2070, 244, '新民市', 3, 4, '.1.18.244.2070.');
INSERT INTO `district` VALUES (2071, 244, '辽中县', 3, 4, '.1.18.244.2071.');
INSERT INTO `district` VALUES (2072, 244, '康平县', 3, 4, '.1.18.244.2072.');
INSERT INTO `district` VALUES (2073, 244, '法库县', 3, 4, '.1.18.244.2073.');
INSERT INTO `district` VALUES (2074, 245, '西岗区', 3, 4, '.1.18.245.2074.');
INSERT INTO `district` VALUES (2075, 245, '中山区', 3, 4, '.1.18.245.2075.');
INSERT INTO `district` VALUES (2076, 245, '沙河口区', 3, 4, '.1.18.245.2076.');
INSERT INTO `district` VALUES (2077, 245, '甘井子区', 3, 4, '.1.18.245.2077.');
INSERT INTO `district` VALUES (2078, 245, '旅顺口区', 3, 4, '.1.18.245.2078.');
INSERT INTO `district` VALUES (2079, 245, '金州区', 3, 4, '.1.18.245.2079.');
INSERT INTO `district` VALUES (2080, 245, '开发区', 3, 4, '.1.18.245.2080.');
INSERT INTO `district` VALUES (2081, 245, '瓦房店市', 3, 4, '.1.18.245.2081.');
INSERT INTO `district` VALUES (2082, 245, '普兰店市', 3, 4, '.1.18.245.2082.');
INSERT INTO `district` VALUES (2083, 245, '庄河市', 3, 4, '.1.18.245.2083.');
INSERT INTO `district` VALUES (2084, 245, '长海县', 3, 4, '.1.18.245.2084.');
INSERT INTO `district` VALUES (2085, 246, '铁东区', 3, 4, '.1.18.246.2085.');
INSERT INTO `district` VALUES (2086, 246, '铁西区', 3, 4, '.1.18.246.2086.');
INSERT INTO `district` VALUES (2087, 246, '立山区', 3, 4, '.1.18.246.2087.');
INSERT INTO `district` VALUES (2088, 246, '千山区', 3, 4, '.1.18.246.2088.');
INSERT INTO `district` VALUES (2089, 246, '岫岩', 3, 4, '.1.18.246.2089.');
INSERT INTO `district` VALUES (2090, 246, '海城市', 3, 4, '.1.18.246.2090.');
INSERT INTO `district` VALUES (2091, 246, '台安县', 3, 4, '.1.18.246.2091.');
INSERT INTO `district` VALUES (2092, 247, '本溪', 3, 4, '.1.18.247.2092.');
INSERT INTO `district` VALUES (2093, 247, '平山区', 3, 4, '.1.18.247.2093.');
INSERT INTO `district` VALUES (2094, 247, '明山区', 3, 4, '.1.18.247.2094.');
INSERT INTO `district` VALUES (2095, 247, '溪湖区', 3, 4, '.1.18.247.2095.');
INSERT INTO `district` VALUES (2096, 247, '南芬区', 3, 4, '.1.18.247.2096.');
INSERT INTO `district` VALUES (2097, 247, '桓仁', 3, 4, '.1.18.247.2097.');
INSERT INTO `district` VALUES (2098, 248, '双塔区', 3, 4, '.1.18.248.2098.');
INSERT INTO `district` VALUES (2099, 248, '龙城区', 3, 4, '.1.18.248.2099.');
INSERT INTO `district` VALUES (2100, 248, '喀喇沁左翼蒙古族自治县', 3, 4, '.1.18.248.2100.');
INSERT INTO `district` VALUES (2101, 248, '北票市', 3, 4, '.1.18.248.2101.');
INSERT INTO `district` VALUES (2102, 248, '凌源市', 3, 4, '.1.18.248.2102.');
INSERT INTO `district` VALUES (2103, 248, '朝阳县', 3, 4, '.1.18.248.2103.');
INSERT INTO `district` VALUES (2104, 248, '建平县', 3, 4, '.1.18.248.2104.');
INSERT INTO `district` VALUES (2105, 249, '振兴区', 3, 4, '.1.18.249.2105.');
INSERT INTO `district` VALUES (2106, 249, '元宝区', 3, 4, '.1.18.249.2106.');
INSERT INTO `district` VALUES (2107, 249, '振安区', 3, 4, '.1.18.249.2107.');
INSERT INTO `district` VALUES (2108, 249, '宽甸', 3, 4, '.1.18.249.2108.');
INSERT INTO `district` VALUES (2109, 249, '东港市', 3, 4, '.1.18.249.2109.');
INSERT INTO `district` VALUES (2110, 249, '凤城市', 3, 4, '.1.18.249.2110.');
INSERT INTO `district` VALUES (2111, 250, '顺城区', 3, 4, '.1.18.250.2111.');
INSERT INTO `district` VALUES (2112, 250, '新抚区', 3, 4, '.1.18.250.2112.');
INSERT INTO `district` VALUES (2113, 250, '东洲区', 3, 4, '.1.18.250.2113.');
INSERT INTO `district` VALUES (2114, 250, '望花区', 3, 4, '.1.18.250.2114.');
INSERT INTO `district` VALUES (2115, 250, '清原', 3, 4, '.1.18.250.2115.');
INSERT INTO `district` VALUES (2116, 250, '新宾', 3, 4, '.1.18.250.2116.');
INSERT INTO `district` VALUES (2117, 250, '抚顺县', 3, 4, '.1.18.250.2117.');
INSERT INTO `district` VALUES (2118, 251, '阜新', 3, 4, '.1.18.251.2118.');
INSERT INTO `district` VALUES (2119, 251, '海州区', 3, 4, '.1.18.251.2119.');
INSERT INTO `district` VALUES (2120, 251, '新邱区', 3, 4, '.1.18.251.2120.');
INSERT INTO `district` VALUES (2121, 251, '太平区', 3, 4, '.1.18.251.2121.');
INSERT INTO `district` VALUES (2122, 251, '清河门区', 3, 4, '.1.18.251.2122.');
INSERT INTO `district` VALUES (2123, 251, '细河区', 3, 4, '.1.18.251.2123.');
INSERT INTO `district` VALUES (2124, 251, '彰武县', 3, 4, '.1.18.251.2124.');
INSERT INTO `district` VALUES (2125, 252, '龙港区', 3, 4, '.1.18.252.2125.');
INSERT INTO `district` VALUES (2126, 252, '南票区', 3, 4, '.1.18.252.2126.');
INSERT INTO `district` VALUES (2127, 252, '连山区', 3, 4, '.1.18.252.2127.');
INSERT INTO `district` VALUES (2128, 252, '兴城市', 3, 4, '.1.18.252.2128.');
INSERT INTO `district` VALUES (2129, 252, '绥中县', 3, 4, '.1.18.252.2129.');
INSERT INTO `district` VALUES (2130, 252, '建昌县', 3, 4, '.1.18.252.2130.');
INSERT INTO `district` VALUES (2131, 253, '太和区', 3, 4, '.1.18.253.2131.');
INSERT INTO `district` VALUES (2132, 253, '古塔区', 3, 4, '.1.18.253.2132.');
INSERT INTO `district` VALUES (2133, 253, '凌河区', 3, 4, '.1.18.253.2133.');
INSERT INTO `district` VALUES (2134, 253, '凌海市', 3, 4, '.1.18.253.2134.');
INSERT INTO `district` VALUES (2135, 253, '北镇市', 3, 4, '.1.18.253.2135.');
INSERT INTO `district` VALUES (2136, 253, '黑山县', 3, 4, '.1.18.253.2136.');
INSERT INTO `district` VALUES (2137, 253, '义县', 3, 4, '.1.18.253.2137.');
INSERT INTO `district` VALUES (2138, 254, '白塔区', 3, 4, '.1.18.254.2138.');
INSERT INTO `district` VALUES (2139, 254, '文圣区', 3, 4, '.1.18.254.2139.');
INSERT INTO `district` VALUES (2140, 254, '宏伟区', 3, 4, '.1.18.254.2140.');
INSERT INTO `district` VALUES (2141, 254, '太子河区', 3, 4, '.1.18.254.2141.');
INSERT INTO `district` VALUES (2142, 254, '弓长岭区', 3, 4, '.1.18.254.2142.');
INSERT INTO `district` VALUES (2143, 254, '灯塔市', 3, 4, '.1.18.254.2143.');
INSERT INTO `district` VALUES (2144, 254, '辽阳县', 3, 4, '.1.18.254.2144.');
INSERT INTO `district` VALUES (2145, 255, '双台子区', 3, 4, '.1.18.255.2145.');
INSERT INTO `district` VALUES (2146, 255, '兴隆台区', 3, 4, '.1.18.255.2146.');
INSERT INTO `district` VALUES (2147, 255, '大洼县', 3, 4, '.1.18.255.2147.');
INSERT INTO `district` VALUES (2148, 255, '盘山县', 3, 4, '.1.18.255.2148.');
INSERT INTO `district` VALUES (2149, 256, '银州区', 3, 4, '.1.18.256.2149.');
INSERT INTO `district` VALUES (2150, 256, '清河区', 3, 4, '.1.18.256.2150.');
INSERT INTO `district` VALUES (2151, 256, '调兵山市', 3, 4, '.1.18.256.2151.');
INSERT INTO `district` VALUES (2152, 256, '开原市', 3, 4, '.1.18.256.2152.');
INSERT INTO `district` VALUES (2153, 256, '铁岭县', 3, 4, '.1.18.256.2153.');
INSERT INTO `district` VALUES (2154, 256, '西丰县', 3, 4, '.1.18.256.2154.');
INSERT INTO `district` VALUES (2155, 256, '昌图县', 3, 4, '.1.18.256.2155.');
INSERT INTO `district` VALUES (2156, 257, '站前区', 3, 4, '.1.18.257.2156.');
INSERT INTO `district` VALUES (2157, 257, '西市区', 3, 4, '.1.18.257.2157.');
INSERT INTO `district` VALUES (2158, 257, '鲅鱼圈区', 3, 4, '.1.18.257.2158.');
INSERT INTO `district` VALUES (2159, 257, '老边区', 3, 4, '.1.18.257.2159.');
INSERT INTO `district` VALUES (2160, 257, '盖州市', 3, 4, '.1.18.257.2160.');
INSERT INTO `district` VALUES (2161, 257, '大石桥市', 3, 4, '.1.18.257.2161.');
INSERT INTO `district` VALUES (2162, 258, '回民区', 3, 4, '.1.19.258.2162.');
INSERT INTO `district` VALUES (2163, 258, '玉泉区', 3, 4, '.1.19.258.2163.');
INSERT INTO `district` VALUES (2164, 258, '新城区', 3, 4, '.1.19.258.2164.');
INSERT INTO `district` VALUES (2165, 258, '赛罕区', 3, 4, '.1.19.258.2165.');
INSERT INTO `district` VALUES (2166, 258, '清水河县', 3, 4, '.1.19.258.2166.');
INSERT INTO `district` VALUES (2167, 258, '土默特左旗', 3, 4, '.1.19.258.2167.');
INSERT INTO `district` VALUES (2168, 258, '托克托县', 3, 4, '.1.19.258.2168.');
INSERT INTO `district` VALUES (2169, 258, '和林格尔县', 3, 4, '.1.19.258.2169.');
INSERT INTO `district` VALUES (2170, 258, '武川县', 3, 4, '.1.19.258.2170.');
INSERT INTO `district` VALUES (2171, 259, '阿拉善左旗', 3, 4, '.1.19.259.2171.');
INSERT INTO `district` VALUES (2172, 259, '阿拉善右旗', 3, 4, '.1.19.259.2172.');
INSERT INTO `district` VALUES (2173, 259, '额济纳旗', 3, 4, '.1.19.259.2173.');
INSERT INTO `district` VALUES (2174, 260, '临河区', 3, 4, '.1.19.260.2174.');
INSERT INTO `district` VALUES (2175, 260, '五原县', 3, 4, '.1.19.260.2175.');
INSERT INTO `district` VALUES (2176, 260, '磴口县', 3, 4, '.1.19.260.2176.');
INSERT INTO `district` VALUES (2177, 260, '乌拉特前旗', 3, 4, '.1.19.260.2177.');
INSERT INTO `district` VALUES (2178, 260, '乌拉特中旗', 3, 4, '.1.19.260.2178.');
INSERT INTO `district` VALUES (2179, 260, '乌拉特后旗', 3, 4, '.1.19.260.2179.');
INSERT INTO `district` VALUES (2180, 260, '杭锦后旗', 3, 4, '.1.19.260.2180.');
INSERT INTO `district` VALUES (2181, 261, '昆都仑区', 3, 4, '.1.19.261.2181.');
INSERT INTO `district` VALUES (2182, 261, '青山区', 3, 4, '.1.19.261.2182.');
INSERT INTO `district` VALUES (2183, 261, '东河区', 3, 4, '.1.19.261.2183.');
INSERT INTO `district` VALUES (2184, 261, '九原区', 3, 4, '.1.19.261.2184.');
INSERT INTO `district` VALUES (2185, 261, '石拐区', 3, 4, '.1.19.261.2185.');
INSERT INTO `district` VALUES (2186, 261, '白云矿区', 3, 4, '.1.19.261.2186.');
INSERT INTO `district` VALUES (2187, 261, '土默特右旗', 3, 4, '.1.19.261.2187.');
INSERT INTO `district` VALUES (2188, 261, '固阳县', 3, 4, '.1.19.261.2188.');
INSERT INTO `district` VALUES (2189, 261, '达尔罕茂明安联合旗', 3, 4, '.1.19.261.2189.');
INSERT INTO `district` VALUES (2190, 262, '红山区', 3, 4, '.1.19.262.2190.');
INSERT INTO `district` VALUES (2191, 262, '元宝山区', 3, 4, '.1.19.262.2191.');
INSERT INTO `district` VALUES (2192, 262, '松山区', 3, 4, '.1.19.262.2192.');
INSERT INTO `district` VALUES (2193, 262, '阿鲁科尔沁旗', 3, 4, '.1.19.262.2193.');
INSERT INTO `district` VALUES (2194, 262, '巴林左旗', 3, 4, '.1.19.262.2194.');
INSERT INTO `district` VALUES (2195, 262, '巴林右旗', 3, 4, '.1.19.262.2195.');
INSERT INTO `district` VALUES (2196, 262, '林西县', 3, 4, '.1.19.262.2196.');
INSERT INTO `district` VALUES (2197, 262, '克什克腾旗', 3, 4, '.1.19.262.2197.');
INSERT INTO `district` VALUES (2198, 262, '翁牛特旗', 3, 4, '.1.19.262.2198.');
INSERT INTO `district` VALUES (2199, 262, '喀喇沁旗', 3, 4, '.1.19.262.2199.');
INSERT INTO `district` VALUES (2200, 262, '宁城县', 3, 4, '.1.19.262.2200.');
INSERT INTO `district` VALUES (2201, 262, '敖汉旗', 3, 4, '.1.19.262.2201.');
INSERT INTO `district` VALUES (2202, 263, '东胜区', 3, 4, '.1.19.263.2202.');
INSERT INTO `district` VALUES (2203, 263, '达拉特旗', 3, 4, '.1.19.263.2203.');
INSERT INTO `district` VALUES (2204, 263, '准格尔旗', 3, 4, '.1.19.263.2204.');
INSERT INTO `district` VALUES (2205, 263, '鄂托克前旗', 3, 4, '.1.19.263.2205.');
INSERT INTO `district` VALUES (2206, 263, '鄂托克旗', 3, 4, '.1.19.263.2206.');
INSERT INTO `district` VALUES (2207, 263, '杭锦旗', 3, 4, '.1.19.263.2207.');
INSERT INTO `district` VALUES (2208, 263, '乌审旗', 3, 4, '.1.19.263.2208.');
INSERT INTO `district` VALUES (2209, 263, '伊金霍洛旗', 3, 4, '.1.19.263.2209.');
INSERT INTO `district` VALUES (2210, 264, '海拉尔区', 3, 4, '.1.19.264.2210.');
INSERT INTO `district` VALUES (2211, 264, '莫力达瓦', 3, 4, '.1.19.264.2211.');
INSERT INTO `district` VALUES (2212, 264, '满洲里市', 3, 4, '.1.19.264.2212.');
INSERT INTO `district` VALUES (2213, 264, '牙克石市', 3, 4, '.1.19.264.2213.');
INSERT INTO `district` VALUES (2214, 264, '扎兰屯市', 3, 4, '.1.19.264.2214.');
INSERT INTO `district` VALUES (2215, 264, '额尔古纳市', 3, 4, '.1.19.264.2215.');
INSERT INTO `district` VALUES (2216, 264, '根河市', 3, 4, '.1.19.264.2216.');
INSERT INTO `district` VALUES (2217, 264, '阿荣旗', 3, 4, '.1.19.264.2217.');
INSERT INTO `district` VALUES (2218, 264, '鄂伦春自治旗', 3, 4, '.1.19.264.2218.');
INSERT INTO `district` VALUES (2219, 264, '鄂温克族自治旗', 3, 4, '.1.19.264.2219.');
INSERT INTO `district` VALUES (2220, 264, '陈巴尔虎旗', 3, 4, '.1.19.264.2220.');
INSERT INTO `district` VALUES (2221, 264, '新巴尔虎左旗', 3, 4, '.1.19.264.2221.');
INSERT INTO `district` VALUES (2222, 264, '新巴尔虎右旗', 3, 4, '.1.19.264.2222.');
INSERT INTO `district` VALUES (2223, 265, '科尔沁区', 3, 4, '.1.19.265.2223.');
INSERT INTO `district` VALUES (2224, 265, '霍林郭勒市', 3, 4, '.1.19.265.2224.');
INSERT INTO `district` VALUES (2225, 265, '科尔沁左翼中旗', 3, 4, '.1.19.265.2225.');
INSERT INTO `district` VALUES (2226, 265, '科尔沁左翼后旗', 3, 4, '.1.19.265.2226.');
INSERT INTO `district` VALUES (2227, 265, '开鲁县', 3, 4, '.1.19.265.2227.');
INSERT INTO `district` VALUES (2228, 265, '库伦旗', 3, 4, '.1.19.265.2228.');
INSERT INTO `district` VALUES (2229, 265, '奈曼旗', 3, 4, '.1.19.265.2229.');
INSERT INTO `district` VALUES (2230, 265, '扎鲁特旗', 3, 4, '.1.19.265.2230.');
INSERT INTO `district` VALUES (2231, 266, '海勃湾区', 3, 4, '.1.19.266.2231.');
INSERT INTO `district` VALUES (2232, 266, '乌达区', 3, 4, '.1.19.266.2232.');
INSERT INTO `district` VALUES (2233, 266, '海南区', 3, 4, '.1.19.266.2233.');
INSERT INTO `district` VALUES (2234, 267, '化德县', 3, 4, '.1.19.267.2234.');
INSERT INTO `district` VALUES (2235, 267, '集宁区', 3, 4, '.1.19.267.2235.');
INSERT INTO `district` VALUES (2236, 267, '丰镇市', 3, 4, '.1.19.267.2236.');
INSERT INTO `district` VALUES (2237, 267, '卓资县', 3, 4, '.1.19.267.2237.');
INSERT INTO `district` VALUES (2238, 267, '商都县', 3, 4, '.1.19.267.2238.');
INSERT INTO `district` VALUES (2239, 267, '兴和县', 3, 4, '.1.19.267.2239.');
INSERT INTO `district` VALUES (2240, 267, '凉城县', 3, 4, '.1.19.267.2240.');
INSERT INTO `district` VALUES (2241, 267, '察哈尔右翼前旗', 3, 4, '.1.19.267.2241.');
INSERT INTO `district` VALUES (2242, 267, '察哈尔右翼中旗', 3, 4, '.1.19.267.2242.');
INSERT INTO `district` VALUES (2243, 267, '察哈尔右翼后旗', 3, 4, '.1.19.267.2243.');
INSERT INTO `district` VALUES (2244, 267, '四子王旗', 3, 4, '.1.19.267.2244.');
INSERT INTO `district` VALUES (2245, 268, '二连浩特市', 3, 4, '.1.19.268.2245.');
INSERT INTO `district` VALUES (2246, 268, '锡林浩特市', 3, 4, '.1.19.268.2246.');
INSERT INTO `district` VALUES (2247, 268, '阿巴嘎旗', 3, 4, '.1.19.268.2247.');
INSERT INTO `district` VALUES (2248, 268, '苏尼特左旗', 3, 4, '.1.19.268.2248.');
INSERT INTO `district` VALUES (2249, 268, '苏尼特右旗', 3, 4, '.1.19.268.2249.');
INSERT INTO `district` VALUES (2250, 268, '东乌珠穆沁旗', 3, 4, '.1.19.268.2250.');
INSERT INTO `district` VALUES (2251, 268, '西乌珠穆沁旗', 3, 4, '.1.19.268.2251.');
INSERT INTO `district` VALUES (2252, 268, '太仆寺旗', 3, 4, '.1.19.268.2252.');
INSERT INTO `district` VALUES (2253, 268, '镶黄旗', 3, 4, '.1.19.268.2253.');
INSERT INTO `district` VALUES (2254, 268, '正镶白旗', 3, 4, '.1.19.268.2254.');
INSERT INTO `district` VALUES (2255, 268, '正蓝旗', 3, 4, '.1.19.268.2255.');
INSERT INTO `district` VALUES (2256, 268, '多伦县', 3, 4, '.1.19.268.2256.');
INSERT INTO `district` VALUES (2257, 269, '乌兰浩特市', 3, 4, '.1.19.269.2257.');
INSERT INTO `district` VALUES (2258, 269, '阿尔山市', 3, 4, '.1.19.269.2258.');
INSERT INTO `district` VALUES (2259, 269, '科尔沁右翼前旗', 3, 4, '.1.19.269.2259.');
INSERT INTO `district` VALUES (2260, 269, '科尔沁右翼中旗', 3, 4, '.1.19.269.2260.');
INSERT INTO `district` VALUES (2261, 269, '扎赉特旗', 3, 4, '.1.19.269.2261.');
INSERT INTO `district` VALUES (2262, 269, '突泉县', 3, 4, '.1.19.269.2262.');
INSERT INTO `district` VALUES (2263, 270, '西夏区', 3, 4, '.1.20.270.2263.');
INSERT INTO `district` VALUES (2264, 270, '金凤区', 3, 4, '.1.20.270.2264.');
INSERT INTO `district` VALUES (2265, 270, '兴庆区', 3, 4, '.1.20.270.2265.');
INSERT INTO `district` VALUES (2266, 270, '灵武市', 3, 4, '.1.20.270.2266.');
INSERT INTO `district` VALUES (2267, 270, '永宁县', 3, 4, '.1.20.270.2267.');
INSERT INTO `district` VALUES (2268, 270, '贺兰县', 3, 4, '.1.20.270.2268.');
INSERT INTO `district` VALUES (2269, 271, '原州区', 3, 4, '.1.20.271.2269.');
INSERT INTO `district` VALUES (2270, 271, '海原县', 3, 4, '.1.20.271.2270.');
INSERT INTO `district` VALUES (2271, 271, '西吉县', 3, 4, '.1.20.271.2271.');
INSERT INTO `district` VALUES (2272, 271, '隆德县', 3, 4, '.1.20.271.2272.');
INSERT INTO `district` VALUES (2273, 271, '泾源县', 3, 4, '.1.20.271.2273.');
INSERT INTO `district` VALUES (2274, 271, '彭阳县', 3, 4, '.1.20.271.2274.');
INSERT INTO `district` VALUES (2275, 272, '惠农县', 3, 4, '.1.20.272.2275.');
INSERT INTO `district` VALUES (2276, 272, '大武口区', 3, 4, '.1.20.272.2276.');
INSERT INTO `district` VALUES (2277, 272, '惠农区', 3, 4, '.1.20.272.2277.');
INSERT INTO `district` VALUES (2278, 272, '陶乐县', 3, 4, '.1.20.272.2278.');
INSERT INTO `district` VALUES (2279, 272, '平罗县', 3, 4, '.1.20.272.2279.');
INSERT INTO `district` VALUES (2280, 273, '利通区', 3, 4, '.1.20.273.2280.');
INSERT INTO `district` VALUES (2281, 273, '中卫县', 3, 4, '.1.20.273.2281.');
INSERT INTO `district` VALUES (2282, 273, '青铜峡市', 3, 4, '.1.20.273.2282.');
INSERT INTO `district` VALUES (2283, 273, '中宁县', 3, 4, '.1.20.273.2283.');
INSERT INTO `district` VALUES (2284, 273, '盐池县', 3, 4, '.1.20.273.2284.');
INSERT INTO `district` VALUES (2285, 273, '同心县', 3, 4, '.1.20.273.2285.');
INSERT INTO `district` VALUES (2286, 274, '沙坡头区', 3, 4, '.1.20.274.2286.');
INSERT INTO `district` VALUES (2287, 274, '海原县', 3, 4, '.1.20.274.2287.');
INSERT INTO `district` VALUES (2288, 274, '中宁县', 3, 4, '.1.20.274.2288.');
INSERT INTO `district` VALUES (2289, 275, '城中区', 3, 4, '.1.21.275.2289.');
INSERT INTO `district` VALUES (2290, 275, '城东区', 3, 4, '.1.21.275.2290.');
INSERT INTO `district` VALUES (2291, 275, '城西区', 3, 4, '.1.21.275.2291.');
INSERT INTO `district` VALUES (2292, 275, '城北区', 3, 4, '.1.21.275.2292.');
INSERT INTO `district` VALUES (2293, 275, '湟中县', 3, 4, '.1.21.275.2293.');
INSERT INTO `district` VALUES (2294, 275, '湟源县', 3, 4, '.1.21.275.2294.');
INSERT INTO `district` VALUES (2295, 275, '大通', 3, 4, '.1.21.275.2295.');
INSERT INTO `district` VALUES (2296, 276, '玛沁县', 3, 4, '.1.21.276.2296.');
INSERT INTO `district` VALUES (2297, 276, '班玛县', 3, 4, '.1.21.276.2297.');
INSERT INTO `district` VALUES (2298, 276, '甘德县', 3, 4, '.1.21.276.2298.');
INSERT INTO `district` VALUES (2299, 276, '达日县', 3, 4, '.1.21.276.2299.');
INSERT INTO `district` VALUES (2300, 276, '久治县', 3, 4, '.1.21.276.2300.');
INSERT INTO `district` VALUES (2301, 276, '玛多县', 3, 4, '.1.21.276.2301.');
INSERT INTO `district` VALUES (2302, 277, '海晏县', 3, 4, '.1.21.277.2302.');
INSERT INTO `district` VALUES (2303, 277, '祁连县', 3, 4, '.1.21.277.2303.');
INSERT INTO `district` VALUES (2304, 277, '刚察县', 3, 4, '.1.21.277.2304.');
INSERT INTO `district` VALUES (2305, 277, '门源', 3, 4, '.1.21.277.2305.');
INSERT INTO `district` VALUES (2306, 278, '平安县', 3, 4, '.1.21.278.2306.');
INSERT INTO `district` VALUES (2307, 278, '乐都县', 3, 4, '.1.21.278.2307.');
INSERT INTO `district` VALUES (2308, 278, '民和', 3, 4, '.1.21.278.2308.');
INSERT INTO `district` VALUES (2309, 278, '互助', 3, 4, '.1.21.278.2309.');
INSERT INTO `district` VALUES (2310, 278, '化隆', 3, 4, '.1.21.278.2310.');
INSERT INTO `district` VALUES (2311, 278, '循化', 3, 4, '.1.21.278.2311.');
INSERT INTO `district` VALUES (2312, 279, '共和县', 3, 4, '.1.21.279.2312.');
INSERT INTO `district` VALUES (2313, 279, '同德县', 3, 4, '.1.21.279.2313.');
INSERT INTO `district` VALUES (2314, 279, '贵德县', 3, 4, '.1.21.279.2314.');
INSERT INTO `district` VALUES (2315, 279, '兴海县', 3, 4, '.1.21.279.2315.');
INSERT INTO `district` VALUES (2316, 279, '贵南县', 3, 4, '.1.21.279.2316.');
INSERT INTO `district` VALUES (2317, 280, '德令哈市', 3, 4, '.1.21.280.2317.');
INSERT INTO `district` VALUES (2318, 280, '格尔木市', 3, 4, '.1.21.280.2318.');
INSERT INTO `district` VALUES (2319, 280, '乌兰县', 3, 4, '.1.21.280.2319.');
INSERT INTO `district` VALUES (2320, 280, '都兰县', 3, 4, '.1.21.280.2320.');
INSERT INTO `district` VALUES (2321, 280, '天峻县', 3, 4, '.1.21.280.2321.');
INSERT INTO `district` VALUES (2322, 281, '同仁县', 3, 4, '.1.21.281.2322.');
INSERT INTO `district` VALUES (2323, 281, '尖扎县', 3, 4, '.1.21.281.2323.');
INSERT INTO `district` VALUES (2324, 281, '泽库县', 3, 4, '.1.21.281.2324.');
INSERT INTO `district` VALUES (2325, 281, '河南蒙古族自治县', 3, 4, '.1.21.281.2325.');
INSERT INTO `district` VALUES (2326, 282, '玉树县', 3, 4, '.1.21.282.2326.');
INSERT INTO `district` VALUES (2327, 282, '杂多县', 3, 4, '.1.21.282.2327.');
INSERT INTO `district` VALUES (2328, 282, '称多县', 3, 4, '.1.21.282.2328.');
INSERT INTO `district` VALUES (2329, 282, '治多县', 3, 4, '.1.21.282.2329.');
INSERT INTO `district` VALUES (2330, 282, '囊谦县', 3, 4, '.1.21.282.2330.');
INSERT INTO `district` VALUES (2331, 282, '曲麻莱县', 3, 4, '.1.21.282.2331.');
INSERT INTO `district` VALUES (2332, 283, '市中区', 3, 4, '.1.22.283.2332.');
INSERT INTO `district` VALUES (2333, 283, '历下区', 3, 4, '.1.22.283.2333.');
INSERT INTO `district` VALUES (2334, 283, '天桥区', 3, 4, '.1.22.283.2334.');
INSERT INTO `district` VALUES (2335, 283, '槐荫区', 3, 4, '.1.22.283.2335.');
INSERT INTO `district` VALUES (2336, 283, '历城区', 3, 4, '.1.22.283.2336.');
INSERT INTO `district` VALUES (2337, 283, '长清区', 3, 4, '.1.22.283.2337.');
INSERT INTO `district` VALUES (2338, 283, '章丘市', 3, 4, '.1.22.283.2338.');
INSERT INTO `district` VALUES (2339, 283, '平阴县', 3, 4, '.1.22.283.2339.');
INSERT INTO `district` VALUES (2340, 283, '济阳县', 3, 4, '.1.22.283.2340.');
INSERT INTO `district` VALUES (2341, 283, '商河县', 3, 4, '.1.22.283.2341.');
INSERT INTO `district` VALUES (2342, 284, '市南区', 3, 4, '.1.22.284.2342.');
INSERT INTO `district` VALUES (2343, 284, '市北区', 3, 4, '.1.22.284.2343.');
INSERT INTO `district` VALUES (2344, 284, '城阳区', 3, 4, '.1.22.284.2344.');
INSERT INTO `district` VALUES (2345, 284, '四方区', 3, 4, '.1.22.284.2345.');
INSERT INTO `district` VALUES (2346, 284, '李沧区', 3, 4, '.1.22.284.2346.');
INSERT INTO `district` VALUES (2347, 284, '黄岛区', 3, 4, '.1.22.284.2347.');
INSERT INTO `district` VALUES (2348, 284, '崂山区', 3, 4, '.1.22.284.2348.');
INSERT INTO `district` VALUES (2349, 284, '胶州市', 3, 4, '.1.22.284.2349.');
INSERT INTO `district` VALUES (2350, 284, '即墨市', 3, 4, '.1.22.284.2350.');
INSERT INTO `district` VALUES (2351, 284, '平度市', 3, 4, '.1.22.284.2351.');
INSERT INTO `district` VALUES (2352, 284, '胶南市', 3, 4, '.1.22.284.2352.');
INSERT INTO `district` VALUES (2353, 284, '莱西市', 3, 4, '.1.22.284.2353.');
INSERT INTO `district` VALUES (2354, 285, '滨城区', 3, 4, '.1.22.285.2354.');
INSERT INTO `district` VALUES (2355, 285, '惠民县', 3, 4, '.1.22.285.2355.');
INSERT INTO `district` VALUES (2356, 285, '阳信县', 3, 4, '.1.22.285.2356.');
INSERT INTO `district` VALUES (2357, 285, '无棣县', 3, 4, '.1.22.285.2357.');
INSERT INTO `district` VALUES (2358, 285, '沾化县', 3, 4, '.1.22.285.2358.');
INSERT INTO `district` VALUES (2359, 285, '博兴县', 3, 4, '.1.22.285.2359.');
INSERT INTO `district` VALUES (2360, 285, '邹平县', 3, 4, '.1.22.285.2360.');
INSERT INTO `district` VALUES (2361, 286, '德城区', 3, 4, '.1.22.286.2361.');
INSERT INTO `district` VALUES (2362, 286, '陵县', 3, 4, '.1.22.286.2362.');
INSERT INTO `district` VALUES (2363, 286, '乐陵市', 3, 4, '.1.22.286.2363.');
INSERT INTO `district` VALUES (2364, 286, '禹城市', 3, 4, '.1.22.286.2364.');
INSERT INTO `district` VALUES (2365, 286, '宁津县', 3, 4, '.1.22.286.2365.');
INSERT INTO `district` VALUES (2366, 286, '庆云县', 3, 4, '.1.22.286.2366.');
INSERT INTO `district` VALUES (2367, 286, '临邑县', 3, 4, '.1.22.286.2367.');
INSERT INTO `district` VALUES (2368, 286, '齐河县', 3, 4, '.1.22.286.2368.');
INSERT INTO `district` VALUES (2369, 286, '平原县', 3, 4, '.1.22.286.2369.');
INSERT INTO `district` VALUES (2370, 286, '夏津县', 3, 4, '.1.22.286.2370.');
INSERT INTO `district` VALUES (2371, 286, '武城县', 3, 4, '.1.22.286.2371.');
INSERT INTO `district` VALUES (2372, 287, '东营区', 3, 4, '.1.22.287.2372.');
INSERT INTO `district` VALUES (2373, 287, '河口区', 3, 4, '.1.22.287.2373.');
INSERT INTO `district` VALUES (2374, 287, '垦利县', 3, 4, '.1.22.287.2374.');
INSERT INTO `district` VALUES (2375, 287, '利津县', 3, 4, '.1.22.287.2375.');
INSERT INTO `district` VALUES (2376, 287, '广饶县', 3, 4, '.1.22.287.2376.');
INSERT INTO `district` VALUES (2377, 288, '牡丹区', 3, 4, '.1.22.288.2377.');
INSERT INTO `district` VALUES (2378, 288, '曹县', 3, 4, '.1.22.288.2378.');
INSERT INTO `district` VALUES (2379, 288, '单县', 3, 4, '.1.22.288.2379.');
INSERT INTO `district` VALUES (2380, 288, '成武县', 3, 4, '.1.22.288.2380.');
INSERT INTO `district` VALUES (2381, 288, '巨野县', 3, 4, '.1.22.288.2381.');
INSERT INTO `district` VALUES (2382, 288, '郓城县', 3, 4, '.1.22.288.2382.');
INSERT INTO `district` VALUES (2383, 288, '鄄城县', 3, 4, '.1.22.288.2383.');
INSERT INTO `district` VALUES (2384, 288, '定陶县', 3, 4, '.1.22.288.2384.');
INSERT INTO `district` VALUES (2385, 288, '东明县', 3, 4, '.1.22.288.2385.');
INSERT INTO `district` VALUES (2386, 289, '市中区', 3, 4, '.1.22.289.2386.');
INSERT INTO `district` VALUES (2387, 289, '任城区', 3, 4, '.1.22.289.2387.');
INSERT INTO `district` VALUES (2388, 289, '曲阜市', 3, 4, '.1.22.289.2388.');
INSERT INTO `district` VALUES (2389, 289, '兖州市', 3, 4, '.1.22.289.2389.');
INSERT INTO `district` VALUES (2390, 289, '邹城市', 3, 4, '.1.22.289.2390.');
INSERT INTO `district` VALUES (2391, 289, '微山县', 3, 4, '.1.22.289.2391.');
INSERT INTO `district` VALUES (2392, 289, '鱼台县', 3, 4, '.1.22.289.2392.');
INSERT INTO `district` VALUES (2393, 289, '金乡县', 3, 4, '.1.22.289.2393.');
INSERT INTO `district` VALUES (2394, 289, '嘉祥县', 3, 4, '.1.22.289.2394.');
INSERT INTO `district` VALUES (2395, 289, '汶上县', 3, 4, '.1.22.289.2395.');
INSERT INTO `district` VALUES (2396, 289, '泗水县', 3, 4, '.1.22.289.2396.');
INSERT INTO `district` VALUES (2397, 289, '梁山县', 3, 4, '.1.22.289.2397.');
INSERT INTO `district` VALUES (2398, 290, '莱城区', 3, 4, '.1.22.290.2398.');
INSERT INTO `district` VALUES (2399, 290, '钢城区', 3, 4, '.1.22.290.2399.');
INSERT INTO `district` VALUES (2400, 291, '东昌府区', 3, 4, '.1.22.291.2400.');
INSERT INTO `district` VALUES (2401, 291, '临清市', 3, 4, '.1.22.291.2401.');
INSERT INTO `district` VALUES (2402, 291, '阳谷县', 3, 4, '.1.22.291.2402.');
INSERT INTO `district` VALUES (2403, 291, '莘县', 3, 4, '.1.22.291.2403.');
INSERT INTO `district` VALUES (2404, 291, '茌平县', 3, 4, '.1.22.291.2404.');
INSERT INTO `district` VALUES (2405, 291, '东阿县', 3, 4, '.1.22.291.2405.');
INSERT INTO `district` VALUES (2406, 291, '冠县', 3, 4, '.1.22.291.2406.');
INSERT INTO `district` VALUES (2407, 291, '高唐县', 3, 4, '.1.22.291.2407.');
INSERT INTO `district` VALUES (2408, 292, '兰山区', 3, 4, '.1.22.292.2408.');
INSERT INTO `district` VALUES (2409, 292, '罗庄区', 3, 4, '.1.22.292.2409.');
INSERT INTO `district` VALUES (2410, 292, '河东区', 3, 4, '.1.22.292.2410.');
INSERT INTO `district` VALUES (2411, 292, '沂南县', 3, 4, '.1.22.292.2411.');
INSERT INTO `district` VALUES (2412, 292, '郯城县', 3, 4, '.1.22.292.2412.');
INSERT INTO `district` VALUES (2413, 292, '沂水县', 3, 4, '.1.22.292.2413.');
INSERT INTO `district` VALUES (2414, 292, '苍山县', 3, 4, '.1.22.292.2414.');
INSERT INTO `district` VALUES (2415, 292, '费县', 3, 4, '.1.22.292.2415.');
INSERT INTO `district` VALUES (2416, 292, '平邑县', 3, 4, '.1.22.292.2416.');
INSERT INTO `district` VALUES (2417, 292, '莒南县', 3, 4, '.1.22.292.2417.');
INSERT INTO `district` VALUES (2418, 292, '蒙阴县', 3, 4, '.1.22.292.2418.');
INSERT INTO `district` VALUES (2419, 292, '临沭县', 3, 4, '.1.22.292.2419.');
INSERT INTO `district` VALUES (2420, 293, '东港区', 3, 4, '.1.22.293.2420.');
INSERT INTO `district` VALUES (2421, 293, '岚山区', 3, 4, '.1.22.293.2421.');
INSERT INTO `district` VALUES (2422, 293, '五莲县', 3, 4, '.1.22.293.2422.');
INSERT INTO `district` VALUES (2423, 293, '莒县', 3, 4, '.1.22.293.2423.');
INSERT INTO `district` VALUES (2424, 294, '泰山区', 3, 4, '.1.22.294.2424.');
INSERT INTO `district` VALUES (2425, 294, '岱岳区', 3, 4, '.1.22.294.2425.');
INSERT INTO `district` VALUES (2426, 294, '新泰市', 3, 4, '.1.22.294.2426.');
INSERT INTO `district` VALUES (2427, 294, '肥城市', 3, 4, '.1.22.294.2427.');
INSERT INTO `district` VALUES (2428, 294, '宁阳县', 3, 4, '.1.22.294.2428.');
INSERT INTO `district` VALUES (2429, 294, '东平县', 3, 4, '.1.22.294.2429.');
INSERT INTO `district` VALUES (2430, 295, '荣成市', 3, 4, '.1.22.295.2430.');
INSERT INTO `district` VALUES (2431, 295, '乳山市', 3, 4, '.1.22.295.2431.');
INSERT INTO `district` VALUES (2432, 295, '环翠区', 3, 4, '.1.22.295.2432.');
INSERT INTO `district` VALUES (2433, 295, '文登市', 3, 4, '.1.22.295.2433.');
INSERT INTO `district` VALUES (2434, 296, '潍城区', 3, 4, '.1.22.296.2434.');
INSERT INTO `district` VALUES (2435, 296, '寒亭区', 3, 4, '.1.22.296.2435.');
INSERT INTO `district` VALUES (2436, 296, '坊子区', 3, 4, '.1.22.296.2436.');
INSERT INTO `district` VALUES (2437, 296, '奎文区', 3, 4, '.1.22.296.2437.');
INSERT INTO `district` VALUES (2438, 296, '青州市', 3, 4, '.1.22.296.2438.');
INSERT INTO `district` VALUES (2439, 296, '诸城市', 3, 4, '.1.22.296.2439.');
INSERT INTO `district` VALUES (2440, 296, '寿光市', 3, 4, '.1.22.296.2440.');
INSERT INTO `district` VALUES (2441, 296, '安丘市', 3, 4, '.1.22.296.2441.');
INSERT INTO `district` VALUES (2442, 296, '高密市', 3, 4, '.1.22.296.2442.');
INSERT INTO `district` VALUES (2443, 296, '昌邑市', 3, 4, '.1.22.296.2443.');
INSERT INTO `district` VALUES (2444, 296, '临朐县', 3, 4, '.1.22.296.2444.');
INSERT INTO `district` VALUES (2445, 296, '昌乐县', 3, 4, '.1.22.296.2445.');
INSERT INTO `district` VALUES (2446, 297, '芝罘区', 3, 4, '.1.22.297.2446.');
INSERT INTO `district` VALUES (2447, 297, '福山区', 3, 4, '.1.22.297.2447.');
INSERT INTO `district` VALUES (2448, 297, '牟平区', 3, 4, '.1.22.297.2448.');
INSERT INTO `district` VALUES (2449, 297, '莱山区', 3, 4, '.1.22.297.2449.');
INSERT INTO `district` VALUES (2450, 297, '开发区', 3, 4, '.1.22.297.2450.');
INSERT INTO `district` VALUES (2451, 297, '龙口市', 3, 4, '.1.22.297.2451.');
INSERT INTO `district` VALUES (2452, 297, '莱阳市', 3, 4, '.1.22.297.2452.');
INSERT INTO `district` VALUES (2453, 297, '莱州市', 3, 4, '.1.22.297.2453.');
INSERT INTO `district` VALUES (2454, 297, '蓬莱市', 3, 4, '.1.22.297.2454.');
INSERT INTO `district` VALUES (2455, 297, '招远市', 3, 4, '.1.22.297.2455.');
INSERT INTO `district` VALUES (2456, 297, '栖霞市', 3, 4, '.1.22.297.2456.');
INSERT INTO `district` VALUES (2457, 297, '海阳市', 3, 4, '.1.22.297.2457.');
INSERT INTO `district` VALUES (2458, 297, '长岛县', 3, 4, '.1.22.297.2458.');
INSERT INTO `district` VALUES (2459, 298, '市中区', 3, 4, '.1.22.298.2459.');
INSERT INTO `district` VALUES (2460, 298, '山亭区', 3, 4, '.1.22.298.2460.');
INSERT INTO `district` VALUES (2461, 298, '峄城区', 3, 4, '.1.22.298.2461.');
INSERT INTO `district` VALUES (2462, 298, '台儿庄区', 3, 4, '.1.22.298.2462.');
INSERT INTO `district` VALUES (2463, 298, '薛城区', 3, 4, '.1.22.298.2463.');
INSERT INTO `district` VALUES (2464, 298, '滕州市', 3, 4, '.1.22.298.2464.');
INSERT INTO `district` VALUES (2465, 299, '张店区', 3, 4, '.1.22.299.2465.');
INSERT INTO `district` VALUES (2466, 299, '临淄区', 3, 4, '.1.22.299.2466.');
INSERT INTO `district` VALUES (2467, 299, '淄川区', 3, 4, '.1.22.299.2467.');
INSERT INTO `district` VALUES (2468, 299, '博山区', 3, 4, '.1.22.299.2468.');
INSERT INTO `district` VALUES (2469, 299, '周村区', 3, 4, '.1.22.299.2469.');
INSERT INTO `district` VALUES (2470, 299, '桓台县', 3, 4, '.1.22.299.2470.');
INSERT INTO `district` VALUES (2471, 299, '高青县', 3, 4, '.1.22.299.2471.');
INSERT INTO `district` VALUES (2472, 299, '沂源县', 3, 4, '.1.22.299.2472.');
INSERT INTO `district` VALUES (2473, 300, '杏花岭区', 3, 4, '.1.23.300.2473.');
INSERT INTO `district` VALUES (2474, 300, '小店区', 3, 4, '.1.23.300.2474.');
INSERT INTO `district` VALUES (2475, 300, '迎泽区', 3, 4, '.1.23.300.2475.');
INSERT INTO `district` VALUES (2476, 300, '尖草坪区', 3, 4, '.1.23.300.2476.');
INSERT INTO `district` VALUES (2477, 300, '万柏林区', 3, 4, '.1.23.300.2477.');
INSERT INTO `district` VALUES (2478, 300, '晋源区', 3, 4, '.1.23.300.2478.');
INSERT INTO `district` VALUES (2479, 300, '高新开发区', 3, 4, '.1.23.300.2479.');
INSERT INTO `district` VALUES (2480, 300, '民营经济开发区', 3, 4, '.1.23.300.2480.');
INSERT INTO `district` VALUES (2481, 300, '经济技术开发区', 3, 4, '.1.23.300.2481.');
INSERT INTO `district` VALUES (2482, 300, '清徐县', 3, 4, '.1.23.300.2482.');
INSERT INTO `district` VALUES (2483, 300, '阳曲县', 3, 4, '.1.23.300.2483.');
INSERT INTO `district` VALUES (2484, 300, '娄烦县', 3, 4, '.1.23.300.2484.');
INSERT INTO `district` VALUES (2485, 300, '古交市', 3, 4, '.1.23.300.2485.');
INSERT INTO `district` VALUES (2486, 301, '城区', 3, 4, '.1.23.301.2486.');
INSERT INTO `district` VALUES (2487, 301, '郊区', 3, 4, '.1.23.301.2487.');
INSERT INTO `district` VALUES (2488, 301, '沁县', 3, 4, '.1.23.301.2488.');
INSERT INTO `district` VALUES (2489, 301, '潞城市', 3, 4, '.1.23.301.2489.');
INSERT INTO `district` VALUES (2490, 301, '长治县', 3, 4, '.1.23.301.2490.');
INSERT INTO `district` VALUES (2491, 301, '襄垣县', 3, 4, '.1.23.301.2491.');
INSERT INTO `district` VALUES (2492, 301, '屯留县', 3, 4, '.1.23.301.2492.');
INSERT INTO `district` VALUES (2493, 301, '平顺县', 3, 4, '.1.23.301.2493.');
INSERT INTO `district` VALUES (2494, 301, '黎城县', 3, 4, '.1.23.301.2494.');
INSERT INTO `district` VALUES (2495, 301, '壶关县', 3, 4, '.1.23.301.2495.');
INSERT INTO `district` VALUES (2496, 301, '长子县', 3, 4, '.1.23.301.2496.');
INSERT INTO `district` VALUES (2497, 301, '武乡县', 3, 4, '.1.23.301.2497.');
INSERT INTO `district` VALUES (2498, 301, '沁源县', 3, 4, '.1.23.301.2498.');
INSERT INTO `district` VALUES (2499, 302, '城区', 3, 4, '.1.23.302.2499.');
INSERT INTO `district` VALUES (2500, 302, '矿区', 3, 4, '.1.23.302.2500.');
INSERT INTO `district` VALUES (2501, 302, '南郊区', 3, 4, '.1.23.302.2501.');
INSERT INTO `district` VALUES (2502, 302, '新荣区', 3, 4, '.1.23.302.2502.');
INSERT INTO `district` VALUES (2503, 302, '阳高县', 3, 4, '.1.23.302.2503.');
INSERT INTO `district` VALUES (2504, 302, '天镇县', 3, 4, '.1.23.302.2504.');
INSERT INTO `district` VALUES (2505, 302, '广灵县', 3, 4, '.1.23.302.2505.');
INSERT INTO `district` VALUES (2506, 302, '灵丘县', 3, 4, '.1.23.302.2506.');
INSERT INTO `district` VALUES (2507, 302, '浑源县', 3, 4, '.1.23.302.2507.');
INSERT INTO `district` VALUES (2508, 302, '左云县', 3, 4, '.1.23.302.2508.');
INSERT INTO `district` VALUES (2509, 302, '大同县', 3, 4, '.1.23.302.2509.');
INSERT INTO `district` VALUES (2510, 303, '城区', 3, 4, '.1.23.303.2510.');
INSERT INTO `district` VALUES (2511, 303, '高平市', 3, 4, '.1.23.303.2511.');
INSERT INTO `district` VALUES (2512, 303, '沁水县', 3, 4, '.1.23.303.2512.');
INSERT INTO `district` VALUES (2513, 303, '阳城县', 3, 4, '.1.23.303.2513.');
INSERT INTO `district` VALUES (2514, 303, '陵川县', 3, 4, '.1.23.303.2514.');
INSERT INTO `district` VALUES (2515, 303, '泽州县', 3, 4, '.1.23.303.2515.');
INSERT INTO `district` VALUES (2516, 304, '榆次区', 3, 4, '.1.23.304.2516.');
INSERT INTO `district` VALUES (2517, 304, '介休市', 3, 4, '.1.23.304.2517.');
INSERT INTO `district` VALUES (2518, 304, '榆社县', 3, 4, '.1.23.304.2518.');
INSERT INTO `district` VALUES (2519, 304, '左权县', 3, 4, '.1.23.304.2519.');
INSERT INTO `district` VALUES (2520, 304, '和顺县', 3, 4, '.1.23.304.2520.');
INSERT INTO `district` VALUES (2521, 304, '昔阳县', 3, 4, '.1.23.304.2521.');
INSERT INTO `district` VALUES (2522, 304, '寿阳县', 3, 4, '.1.23.304.2522.');
INSERT INTO `district` VALUES (2523, 304, '太谷县', 3, 4, '.1.23.304.2523.');
INSERT INTO `district` VALUES (2524, 304, '祁县', 3, 4, '.1.23.304.2524.');
INSERT INTO `district` VALUES (2525, 304, '平遥县', 3, 4, '.1.23.304.2525.');
INSERT INTO `district` VALUES (2526, 304, '灵石县', 3, 4, '.1.23.304.2526.');
INSERT INTO `district` VALUES (2527, 305, '尧都区', 3, 4, '.1.23.305.2527.');
INSERT INTO `district` VALUES (2528, 305, '侯马市', 3, 4, '.1.23.305.2528.');
INSERT INTO `district` VALUES (2529, 305, '霍州市', 3, 4, '.1.23.305.2529.');
INSERT INTO `district` VALUES (2530, 305, '曲沃县', 3, 4, '.1.23.305.2530.');
INSERT INTO `district` VALUES (2531, 305, '翼城县', 3, 4, '.1.23.305.2531.');
INSERT INTO `district` VALUES (2532, 305, '襄汾县', 3, 4, '.1.23.305.2532.');
INSERT INTO `district` VALUES (2533, 305, '洪洞县', 3, 4, '.1.23.305.2533.');
INSERT INTO `district` VALUES (2534, 305, '吉县', 3, 4, '.1.23.305.2534.');
INSERT INTO `district` VALUES (2535, 305, '安泽县', 3, 4, '.1.23.305.2535.');
INSERT INTO `district` VALUES (2536, 305, '浮山县', 3, 4, '.1.23.305.2536.');
INSERT INTO `district` VALUES (2537, 305, '古县', 3, 4, '.1.23.305.2537.');
INSERT INTO `district` VALUES (2538, 305, '乡宁县', 3, 4, '.1.23.305.2538.');
INSERT INTO `district` VALUES (2539, 305, '大宁县', 3, 4, '.1.23.305.2539.');
INSERT INTO `district` VALUES (2540, 305, '隰县', 3, 4, '.1.23.305.2540.');
INSERT INTO `district` VALUES (2541, 305, '永和县', 3, 4, '.1.23.305.2541.');
INSERT INTO `district` VALUES (2542, 305, '蒲县', 3, 4, '.1.23.305.2542.');
INSERT INTO `district` VALUES (2543, 305, '汾西县', 3, 4, '.1.23.305.2543.');
INSERT INTO `district` VALUES (2544, 306, '离石市', 3, 4, '.1.23.306.2544.');
INSERT INTO `district` VALUES (2545, 306, '离石区', 3, 4, '.1.23.306.2545.');
INSERT INTO `district` VALUES (2546, 306, '孝义市', 3, 4, '.1.23.306.2546.');
INSERT INTO `district` VALUES (2547, 306, '汾阳市', 3, 4, '.1.23.306.2547.');
INSERT INTO `district` VALUES (2548, 306, '文水县', 3, 4, '.1.23.306.2548.');
INSERT INTO `district` VALUES (2549, 306, '交城县', 3, 4, '.1.23.306.2549.');
INSERT INTO `district` VALUES (2550, 306, '兴县', 3, 4, '.1.23.306.2550.');
INSERT INTO `district` VALUES (2551, 306, '临县', 3, 4, '.1.23.306.2551.');
INSERT INTO `district` VALUES (2552, 306, '柳林县', 3, 4, '.1.23.306.2552.');
INSERT INTO `district` VALUES (2553, 306, '石楼县', 3, 4, '.1.23.306.2553.');
INSERT INTO `district` VALUES (2554, 306, '岚县', 3, 4, '.1.23.306.2554.');
INSERT INTO `district` VALUES (2555, 306, '方山县', 3, 4, '.1.23.306.2555.');
INSERT INTO `district` VALUES (2556, 306, '中阳县', 3, 4, '.1.23.306.2556.');
INSERT INTO `district` VALUES (2557, 306, '交口县', 3, 4, '.1.23.306.2557.');
INSERT INTO `district` VALUES (2558, 307, '朔城区', 3, 4, '.1.23.307.2558.');
INSERT INTO `district` VALUES (2559, 307, '平鲁区', 3, 4, '.1.23.307.2559.');
INSERT INTO `district` VALUES (2560, 307, '山阴县', 3, 4, '.1.23.307.2560.');
INSERT INTO `district` VALUES (2561, 307, '应县', 3, 4, '.1.23.307.2561.');
INSERT INTO `district` VALUES (2562, 307, '右玉县', 3, 4, '.1.23.307.2562.');
INSERT INTO `district` VALUES (2563, 307, '怀仁县', 3, 4, '.1.23.307.2563.');
INSERT INTO `district` VALUES (2564, 308, '忻府区', 3, 4, '.1.23.308.2564.');
INSERT INTO `district` VALUES (2565, 308, '原平市', 3, 4, '.1.23.308.2565.');
INSERT INTO `district` VALUES (2566, 308, '定襄县', 3, 4, '.1.23.308.2566.');
INSERT INTO `district` VALUES (2567, 308, '五台县', 3, 4, '.1.23.308.2567.');
INSERT INTO `district` VALUES (2568, 308, '代县', 3, 4, '.1.23.308.2568.');
INSERT INTO `district` VALUES (2569, 308, '繁峙县', 3, 4, '.1.23.308.2569.');
INSERT INTO `district` VALUES (2570, 308, '宁武县', 3, 4, '.1.23.308.2570.');
INSERT INTO `district` VALUES (2571, 308, '静乐县', 3, 4, '.1.23.308.2571.');
INSERT INTO `district` VALUES (2572, 308, '神池县', 3, 4, '.1.23.308.2572.');
INSERT INTO `district` VALUES (2573, 308, '五寨县', 3, 4, '.1.23.308.2573.');
INSERT INTO `district` VALUES (2574, 308, '岢岚县', 3, 4, '.1.23.308.2574.');
INSERT INTO `district` VALUES (2575, 308, '河曲县', 3, 4, '.1.23.308.2575.');
INSERT INTO `district` VALUES (2576, 308, '保德县', 3, 4, '.1.23.308.2576.');
INSERT INTO `district` VALUES (2577, 308, '偏关县', 3, 4, '.1.23.308.2577.');
INSERT INTO `district` VALUES (2578, 309, '城区', 3, 4, '.1.23.309.2578.');
INSERT INTO `district` VALUES (2579, 309, '矿区', 3, 4, '.1.23.309.2579.');
INSERT INTO `district` VALUES (2580, 309, '郊区', 3, 4, '.1.23.309.2580.');
INSERT INTO `district` VALUES (2581, 309, '平定县', 3, 4, '.1.23.309.2581.');
INSERT INTO `district` VALUES (2582, 309, '盂县', 3, 4, '.1.23.309.2582.');
INSERT INTO `district` VALUES (2583, 310, '盐湖区', 3, 4, '.1.23.310.2583.');
INSERT INTO `district` VALUES (2584, 310, '永济市', 3, 4, '.1.23.310.2584.');
INSERT INTO `district` VALUES (2585, 310, '河津市', 3, 4, '.1.23.310.2585.');
INSERT INTO `district` VALUES (2586, 310, '临猗县', 3, 4, '.1.23.310.2586.');
INSERT INTO `district` VALUES (2587, 310, '万荣县', 3, 4, '.1.23.310.2587.');
INSERT INTO `district` VALUES (2588, 310, '闻喜县', 3, 4, '.1.23.310.2588.');
INSERT INTO `district` VALUES (2589, 310, '稷山县', 3, 4, '.1.23.310.2589.');
INSERT INTO `district` VALUES (2590, 310, '新绛县', 3, 4, '.1.23.310.2590.');
INSERT INTO `district` VALUES (2591, 310, '绛县', 3, 4, '.1.23.310.2591.');
INSERT INTO `district` VALUES (2592, 310, '垣曲县', 3, 4, '.1.23.310.2592.');
INSERT INTO `district` VALUES (2593, 310, '夏县', 3, 4, '.1.23.310.2593.');
INSERT INTO `district` VALUES (2594, 310, '平陆县', 3, 4, '.1.23.310.2594.');
INSERT INTO `district` VALUES (2595, 310, '芮城县', 3, 4, '.1.23.310.2595.');
INSERT INTO `district` VALUES (2596, 311, '莲湖区', 3, 4, '.1.24.311.2596.');
INSERT INTO `district` VALUES (2597, 311, '新城区', 3, 4, '.1.24.311.2597.');
INSERT INTO `district` VALUES (2598, 311, '碑林区', 3, 4, '.1.24.311.2598.');
INSERT INTO `district` VALUES (2599, 311, '雁塔区', 3, 4, '.1.24.311.2599.');
INSERT INTO `district` VALUES (2600, 311, '灞桥区', 3, 4, '.1.24.311.2600.');
INSERT INTO `district` VALUES (2601, 311, '未央区', 3, 4, '.1.24.311.2601.');
INSERT INTO `district` VALUES (2602, 311, '阎良区', 3, 4, '.1.24.311.2602.');
INSERT INTO `district` VALUES (2603, 311, '临潼区', 3, 4, '.1.24.311.2603.');
INSERT INTO `district` VALUES (2604, 311, '长安区', 3, 4, '.1.24.311.2604.');
INSERT INTO `district` VALUES (2605, 311, '蓝田县', 3, 4, '.1.24.311.2605.');
INSERT INTO `district` VALUES (2606, 311, '周至县', 3, 4, '.1.24.311.2606.');
INSERT INTO `district` VALUES (2607, 311, '户县', 3, 4, '.1.24.311.2607.');
INSERT INTO `district` VALUES (2608, 311, '高陵县', 3, 4, '.1.24.311.2608.');
INSERT INTO `district` VALUES (2609, 312, '汉滨区', 3, 4, '.1.24.312.2609.');
INSERT INTO `district` VALUES (2610, 312, '汉阴县', 3, 4, '.1.24.312.2610.');
INSERT INTO `district` VALUES (2611, 312, '石泉县', 3, 4, '.1.24.312.2611.');
INSERT INTO `district` VALUES (2612, 312, '宁陕县', 3, 4, '.1.24.312.2612.');
INSERT INTO `district` VALUES (2613, 312, '紫阳县', 3, 4, '.1.24.312.2613.');
INSERT INTO `district` VALUES (2614, 312, '岚皋县', 3, 4, '.1.24.312.2614.');
INSERT INTO `district` VALUES (2615, 312, '平利县', 3, 4, '.1.24.312.2615.');
INSERT INTO `district` VALUES (2616, 312, '镇坪县', 3, 4, '.1.24.312.2616.');
INSERT INTO `district` VALUES (2617, 312, '旬阳县', 3, 4, '.1.24.312.2617.');
INSERT INTO `district` VALUES (2618, 312, '白河县', 3, 4, '.1.24.312.2618.');
INSERT INTO `district` VALUES (2619, 313, '陈仓区', 3, 4, '.1.24.313.2619.');
INSERT INTO `district` VALUES (2620, 313, '渭滨区', 3, 4, '.1.24.313.2620.');
INSERT INTO `district` VALUES (2621, 313, '金台区', 3, 4, '.1.24.313.2621.');
INSERT INTO `district` VALUES (2622, 313, '凤翔县', 3, 4, '.1.24.313.2622.');
INSERT INTO `district` VALUES (2623, 313, '岐山县', 3, 4, '.1.24.313.2623.');
INSERT INTO `district` VALUES (2624, 313, '扶风县', 3, 4, '.1.24.313.2624.');
INSERT INTO `district` VALUES (2625, 313, '眉县', 3, 4, '.1.24.313.2625.');
INSERT INTO `district` VALUES (2626, 313, '陇县', 3, 4, '.1.24.313.2626.');
INSERT INTO `district` VALUES (2627, 313, '千阳县', 3, 4, '.1.24.313.2627.');
INSERT INTO `district` VALUES (2628, 313, '麟游县', 3, 4, '.1.24.313.2628.');
INSERT INTO `district` VALUES (2629, 313, '凤县', 3, 4, '.1.24.313.2629.');
INSERT INTO `district` VALUES (2630, 313, '太白县', 3, 4, '.1.24.313.2630.');
INSERT INTO `district` VALUES (2631, 314, '汉台区', 3, 4, '.1.24.314.2631.');
INSERT INTO `district` VALUES (2632, 314, '南郑县', 3, 4, '.1.24.314.2632.');
INSERT INTO `district` VALUES (2633, 314, '城固县', 3, 4, '.1.24.314.2633.');
INSERT INTO `district` VALUES (2634, 314, '洋县', 3, 4, '.1.24.314.2634.');
INSERT INTO `district` VALUES (2635, 314, '西乡县', 3, 4, '.1.24.314.2635.');
INSERT INTO `district` VALUES (2636, 314, '勉县', 3, 4, '.1.24.314.2636.');
INSERT INTO `district` VALUES (2637, 314, '宁强县', 3, 4, '.1.24.314.2637.');
INSERT INTO `district` VALUES (2638, 314, '略阳县', 3, 4, '.1.24.314.2638.');
INSERT INTO `district` VALUES (2639, 314, '镇巴县', 3, 4, '.1.24.314.2639.');
INSERT INTO `district` VALUES (2640, 314, '留坝县', 3, 4, '.1.24.314.2640.');
INSERT INTO `district` VALUES (2641, 314, '佛坪县', 3, 4, '.1.24.314.2641.');
INSERT INTO `district` VALUES (2642, 315, '商州区', 3, 4, '.1.24.315.2642.');
INSERT INTO `district` VALUES (2643, 315, '洛南县', 3, 4, '.1.24.315.2643.');
INSERT INTO `district` VALUES (2644, 315, '丹凤县', 3, 4, '.1.24.315.2644.');
INSERT INTO `district` VALUES (2645, 315, '商南县', 3, 4, '.1.24.315.2645.');
INSERT INTO `district` VALUES (2646, 315, '山阳县', 3, 4, '.1.24.315.2646.');
INSERT INTO `district` VALUES (2647, 315, '镇安县', 3, 4, '.1.24.315.2647.');
INSERT INTO `district` VALUES (2648, 315, '柞水县', 3, 4, '.1.24.315.2648.');
INSERT INTO `district` VALUES (2649, 316, '耀州区', 3, 4, '.1.24.316.2649.');
INSERT INTO `district` VALUES (2650, 316, '王益区', 3, 4, '.1.24.316.2650.');
INSERT INTO `district` VALUES (2651, 316, '印台区', 3, 4, '.1.24.316.2651.');
INSERT INTO `district` VALUES (2652, 316, '宜君县', 3, 4, '.1.24.316.2652.');
INSERT INTO `district` VALUES (2653, 317, '临渭区', 3, 4, '.1.24.317.2653.');
INSERT INTO `district` VALUES (2654, 317, '韩城市', 3, 4, '.1.24.317.2654.');
INSERT INTO `district` VALUES (2655, 317, '华阴市', 3, 4, '.1.24.317.2655.');
INSERT INTO `district` VALUES (2656, 317, '华县', 3, 4, '.1.24.317.2656.');
INSERT INTO `district` VALUES (2657, 317, '潼关县', 3, 4, '.1.24.317.2657.');
INSERT INTO `district` VALUES (2658, 317, '大荔县', 3, 4, '.1.24.317.2658.');
INSERT INTO `district` VALUES (2659, 317, '合阳县', 3, 4, '.1.24.317.2659.');
INSERT INTO `district` VALUES (2660, 317, '澄城县', 3, 4, '.1.24.317.2660.');
INSERT INTO `district` VALUES (2661, 317, '蒲城县', 3, 4, '.1.24.317.2661.');
INSERT INTO `district` VALUES (2662, 317, '白水县', 3, 4, '.1.24.317.2662.');
INSERT INTO `district` VALUES (2663, 317, '富平县', 3, 4, '.1.24.317.2663.');
INSERT INTO `district` VALUES (2664, 318, '秦都区', 3, 4, '.1.24.318.2664.');
INSERT INTO `district` VALUES (2665, 318, '渭城区', 3, 4, '.1.24.318.2665.');
INSERT INTO `district` VALUES (2666, 318, '杨陵区', 3, 4, '.1.24.318.2666.');
INSERT INTO `district` VALUES (2667, 318, '兴平市', 3, 4, '.1.24.318.2667.');
INSERT INTO `district` VALUES (2668, 318, '三原县', 3, 4, '.1.24.318.2668.');
INSERT INTO `district` VALUES (2669, 318, '泾阳县', 3, 4, '.1.24.318.2669.');
INSERT INTO `district` VALUES (2670, 318, '乾县', 3, 4, '.1.24.318.2670.');
INSERT INTO `district` VALUES (2671, 318, '礼泉县', 3, 4, '.1.24.318.2671.');
INSERT INTO `district` VALUES (2672, 318, '永寿县', 3, 4, '.1.24.318.2672.');
INSERT INTO `district` VALUES (2673, 318, '彬县', 3, 4, '.1.24.318.2673.');
INSERT INTO `district` VALUES (2674, 318, '长武县', 3, 4, '.1.24.318.2674.');
INSERT INTO `district` VALUES (2675, 318, '旬邑县', 3, 4, '.1.24.318.2675.');
INSERT INTO `district` VALUES (2676, 318, '淳化县', 3, 4, '.1.24.318.2676.');
INSERT INTO `district` VALUES (2677, 318, '武功县', 3, 4, '.1.24.318.2677.');
INSERT INTO `district` VALUES (2678, 319, '吴起县', 3, 4, '.1.24.319.2678.');
INSERT INTO `district` VALUES (2679, 319, '宝塔区', 3, 4, '.1.24.319.2679.');
INSERT INTO `district` VALUES (2680, 319, '延长县', 3, 4, '.1.24.319.2680.');
INSERT INTO `district` VALUES (2681, 319, '延川县', 3, 4, '.1.24.319.2681.');
INSERT INTO `district` VALUES (2682, 319, '子长县', 3, 4, '.1.24.319.2682.');
INSERT INTO `district` VALUES (2683, 319, '安塞县', 3, 4, '.1.24.319.2683.');
INSERT INTO `district` VALUES (2684, 319, '志丹县', 3, 4, '.1.24.319.2684.');
INSERT INTO `district` VALUES (2685, 319, '甘泉县', 3, 4, '.1.24.319.2685.');
INSERT INTO `district` VALUES (2686, 319, '富县', 3, 4, '.1.24.319.2686.');
INSERT INTO `district` VALUES (2687, 319, '洛川县', 3, 4, '.1.24.319.2687.');
INSERT INTO `district` VALUES (2688, 319, '宜川县', 3, 4, '.1.24.319.2688.');
INSERT INTO `district` VALUES (2689, 319, '黄龙县', 3, 4, '.1.24.319.2689.');
INSERT INTO `district` VALUES (2690, 319, '黄陵县', 3, 4, '.1.24.319.2690.');
INSERT INTO `district` VALUES (2691, 320, '榆阳区', 3, 4, '.1.24.320.2691.');
INSERT INTO `district` VALUES (2692, 320, '神木县', 3, 4, '.1.24.320.2692.');
INSERT INTO `district` VALUES (2693, 320, '府谷县', 3, 4, '.1.24.320.2693.');
INSERT INTO `district` VALUES (2694, 320, '横山县', 3, 4, '.1.24.320.2694.');
INSERT INTO `district` VALUES (2695, 320, '靖边县', 3, 4, '.1.24.320.2695.');
INSERT INTO `district` VALUES (2696, 320, '定边县', 3, 4, '.1.24.320.2696.');
INSERT INTO `district` VALUES (2697, 320, '绥德县', 3, 4, '.1.24.320.2697.');
INSERT INTO `district` VALUES (2698, 320, '米脂县', 3, 4, '.1.24.320.2698.');
INSERT INTO `district` VALUES (2699, 320, '佳县', 3, 4, '.1.24.320.2699.');
INSERT INTO `district` VALUES (2700, 320, '吴堡县', 3, 4, '.1.24.320.2700.');
INSERT INTO `district` VALUES (2701, 320, '清涧县', 3, 4, '.1.24.320.2701.');
INSERT INTO `district` VALUES (2702, 320, '子洲县', 3, 4, '.1.24.320.2702.');
INSERT INTO `district` VALUES (2703, 321, '长宁区', 3, 4, '.1.25.321.2703.');
INSERT INTO `district` VALUES (2704, 321, '闸北区', 3, 4, '.1.25.321.2704.');
INSERT INTO `district` VALUES (2705, 321, '闵行区', 3, 4, '.1.25.321.2705.');
INSERT INTO `district` VALUES (2706, 321, '徐汇区', 3, 4, '.1.25.321.2706.');
INSERT INTO `district` VALUES (2707, 321, '浦东新区', 3, 4, '.1.25.321.2707.');
INSERT INTO `district` VALUES (2708, 321, '杨浦区', 3, 4, '.1.25.321.2708.');
INSERT INTO `district` VALUES (2709, 321, '普陀区', 3, 4, '.1.25.321.2709.');
INSERT INTO `district` VALUES (2710, 321, '静安区', 3, 4, '.1.25.321.2710.');
INSERT INTO `district` VALUES (2711, 321, '卢湾区', 3, 4, '.1.25.321.2711.');
INSERT INTO `district` VALUES (2712, 321, '虹口区', 3, 4, '.1.25.321.2712.');
INSERT INTO `district` VALUES (2713, 321, '黄浦区', 3, 4, '.1.25.321.2713.');
INSERT INTO `district` VALUES (2714, 321, '南汇区', 3, 4, '.1.25.321.2714.');
INSERT INTO `district` VALUES (2715, 321, '松江区', 3, 4, '.1.25.321.2715.');
INSERT INTO `district` VALUES (2716, 321, '嘉定区', 3, 4, '.1.25.321.2716.');
INSERT INTO `district` VALUES (2717, 321, '宝山区', 3, 4, '.1.25.321.2717.');
INSERT INTO `district` VALUES (2718, 321, '青浦区', 3, 4, '.1.25.321.2718.');
INSERT INTO `district` VALUES (2719, 321, '金山区', 3, 4, '.1.25.321.2719.');
INSERT INTO `district` VALUES (2720, 321, '奉贤区', 3, 4, '.1.25.321.2720.');
INSERT INTO `district` VALUES (2721, 321, '崇明县', 3, 4, '.1.25.321.2721.');
INSERT INTO `district` VALUES (2722, 322, '青羊区', 3, 4, '.1.26.322.2722.');
INSERT INTO `district` VALUES (2723, 322, '锦江区', 3, 4, '.1.26.322.2723.');
INSERT INTO `district` VALUES (2724, 322, '金牛区', 3, 4, '.1.26.322.2724.');
INSERT INTO `district` VALUES (2725, 322, '武侯区', 3, 4, '.1.26.322.2725.');
INSERT INTO `district` VALUES (2726, 322, '成华区', 3, 4, '.1.26.322.2726.');
INSERT INTO `district` VALUES (2727, 322, '龙泉驿区', 3, 4, '.1.26.322.2727.');
INSERT INTO `district` VALUES (2728, 322, '青白江区', 3, 4, '.1.26.322.2728.');
INSERT INTO `district` VALUES (2729, 322, '新都区', 3, 4, '.1.26.322.2729.');
INSERT INTO `district` VALUES (2730, 322, '温江区', 3, 4, '.1.26.322.2730.');
INSERT INTO `district` VALUES (2731, 322, '高新区', 3, 4, '.1.26.322.2731.');
INSERT INTO `district` VALUES (2732, 322, '高新西区', 3, 4, '.1.26.322.2732.');
INSERT INTO `district` VALUES (2733, 322, '都江堰市', 3, 4, '.1.26.322.2733.');
INSERT INTO `district` VALUES (2734, 322, '彭州市', 3, 4, '.1.26.322.2734.');
INSERT INTO `district` VALUES (2735, 322, '邛崃市', 3, 4, '.1.26.322.2735.');
INSERT INTO `district` VALUES (2736, 322, '崇州市', 3, 4, '.1.26.322.2736.');
INSERT INTO `district` VALUES (2737, 322, '金堂县', 3, 4, '.1.26.322.2737.');
INSERT INTO `district` VALUES (2738, 322, '双流县', 3, 4, '.1.26.322.2738.');
INSERT INTO `district` VALUES (2739, 322, '郫县', 3, 4, '.1.26.322.2739.');
INSERT INTO `district` VALUES (2740, 322, '大邑县', 3, 4, '.1.26.322.2740.');
INSERT INTO `district` VALUES (2741, 322, '蒲江县', 3, 4, '.1.26.322.2741.');
INSERT INTO `district` VALUES (2742, 322, '新津县', 3, 4, '.1.26.322.2742.');
INSERT INTO `district` VALUES (2743, 322, '都江堰市', 3, 4, '.1.26.322.2743.');
INSERT INTO `district` VALUES (2744, 322, '彭州市', 3, 4, '.1.26.322.2744.');
INSERT INTO `district` VALUES (2745, 322, '邛崃市', 3, 4, '.1.26.322.2745.');
INSERT INTO `district` VALUES (2746, 322, '崇州市', 3, 4, '.1.26.322.2746.');
INSERT INTO `district` VALUES (2747, 322, '金堂县', 3, 4, '.1.26.322.2747.');
INSERT INTO `district` VALUES (2748, 322, '双流县', 3, 4, '.1.26.322.2748.');
INSERT INTO `district` VALUES (2749, 322, '郫县', 3, 4, '.1.26.322.2749.');
INSERT INTO `district` VALUES (2750, 322, '大邑县', 3, 4, '.1.26.322.2750.');
INSERT INTO `district` VALUES (2751, 322, '蒲江县', 3, 4, '.1.26.322.2751.');
INSERT INTO `district` VALUES (2752, 322, '新津县', 3, 4, '.1.26.322.2752.');
INSERT INTO `district` VALUES (2753, 323, '涪城区', 3, 4, '.1.26.323.2753.');
INSERT INTO `district` VALUES (2754, 323, '游仙区', 3, 4, '.1.26.323.2754.');
INSERT INTO `district` VALUES (2755, 323, '江油市', 3, 4, '.1.26.323.2755.');
INSERT INTO `district` VALUES (2756, 323, '盐亭县', 3, 4, '.1.26.323.2756.');
INSERT INTO `district` VALUES (2757, 323, '三台县', 3, 4, '.1.26.323.2757.');
INSERT INTO `district` VALUES (2758, 323, '平武县', 3, 4, '.1.26.323.2758.');
INSERT INTO `district` VALUES (2759, 323, '安县', 3, 4, '.1.26.323.2759.');
INSERT INTO `district` VALUES (2760, 323, '梓潼县', 3, 4, '.1.26.323.2760.');
INSERT INTO `district` VALUES (2761, 323, '北川县', 3, 4, '.1.26.323.2761.');
INSERT INTO `district` VALUES (2762, 324, '马尔康县', 3, 4, '.1.26.324.2762.');
INSERT INTO `district` VALUES (2763, 324, '汶川县', 3, 4, '.1.26.324.2763.');
INSERT INTO `district` VALUES (2764, 324, '理县', 3, 4, '.1.26.324.2764.');
INSERT INTO `district` VALUES (2765, 324, '茂县', 3, 4, '.1.26.324.2765.');
INSERT INTO `district` VALUES (2766, 324, '松潘县', 3, 4, '.1.26.324.2766.');
INSERT INTO `district` VALUES (2767, 324, '九寨沟县', 3, 4, '.1.26.324.2767.');
INSERT INTO `district` VALUES (2768, 324, '金川县', 3, 4, '.1.26.324.2768.');
INSERT INTO `district` VALUES (2769, 324, '小金县', 3, 4, '.1.26.324.2769.');
INSERT INTO `district` VALUES (2770, 324, '黑水县', 3, 4, '.1.26.324.2770.');
INSERT INTO `district` VALUES (2771, 324, '壤塘县', 3, 4, '.1.26.324.2771.');
INSERT INTO `district` VALUES (2772, 324, '阿坝县', 3, 4, '.1.26.324.2772.');
INSERT INTO `district` VALUES (2773, 324, '若尔盖县', 3, 4, '.1.26.324.2773.');
INSERT INTO `district` VALUES (2774, 324, '红原县', 3, 4, '.1.26.324.2774.');
INSERT INTO `district` VALUES (2775, 325, '巴州区', 3, 4, '.1.26.325.2775.');
INSERT INTO `district` VALUES (2776, 325, '通江县', 3, 4, '.1.26.325.2776.');
INSERT INTO `district` VALUES (2777, 325, '南江县', 3, 4, '.1.26.325.2777.');
INSERT INTO `district` VALUES (2778, 325, '平昌县', 3, 4, '.1.26.325.2778.');
INSERT INTO `district` VALUES (2779, 326, '通川区', 3, 4, '.1.26.326.2779.');
INSERT INTO `district` VALUES (2780, 326, '万源市', 3, 4, '.1.26.326.2780.');
INSERT INTO `district` VALUES (2781, 326, '达县', 3, 4, '.1.26.326.2781.');
INSERT INTO `district` VALUES (2782, 326, '宣汉县', 3, 4, '.1.26.326.2782.');
INSERT INTO `district` VALUES (2783, 326, '开江县', 3, 4, '.1.26.326.2783.');
INSERT INTO `district` VALUES (2784, 326, '大竹县', 3, 4, '.1.26.326.2784.');
INSERT INTO `district` VALUES (2785, 326, '渠县', 3, 4, '.1.26.326.2785.');
INSERT INTO `district` VALUES (2786, 327, '旌阳区', 3, 4, '.1.26.327.2786.');
INSERT INTO `district` VALUES (2787, 327, '广汉市', 3, 4, '.1.26.327.2787.');
INSERT INTO `district` VALUES (2788, 327, '什邡市', 3, 4, '.1.26.327.2788.');
INSERT INTO `district` VALUES (2789, 327, '绵竹市', 3, 4, '.1.26.327.2789.');
INSERT INTO `district` VALUES (2790, 327, '罗江县', 3, 4, '.1.26.327.2790.');
INSERT INTO `district` VALUES (2791, 327, '中江县', 3, 4, '.1.26.327.2791.');
INSERT INTO `district` VALUES (2792, 328, '康定县', 3, 4, '.1.26.328.2792.');
INSERT INTO `district` VALUES (2793, 328, '丹巴县', 3, 4, '.1.26.328.2793.');
INSERT INTO `district` VALUES (2794, 328, '泸定县', 3, 4, '.1.26.328.2794.');
INSERT INTO `district` VALUES (2795, 328, '炉霍县', 3, 4, '.1.26.328.2795.');
INSERT INTO `district` VALUES (2796, 328, '九龙县', 3, 4, '.1.26.328.2796.');
INSERT INTO `district` VALUES (2797, 328, '甘孜县', 3, 4, '.1.26.328.2797.');
INSERT INTO `district` VALUES (2798, 328, '雅江县', 3, 4, '.1.26.328.2798.');
INSERT INTO `district` VALUES (2799, 328, '新龙县', 3, 4, '.1.26.328.2799.');
INSERT INTO `district` VALUES (2800, 328, '道孚县', 3, 4, '.1.26.328.2800.');
INSERT INTO `district` VALUES (2801, 328, '白玉县', 3, 4, '.1.26.328.2801.');
INSERT INTO `district` VALUES (2802, 328, '理塘县', 3, 4, '.1.26.328.2802.');
INSERT INTO `district` VALUES (2803, 328, '德格县', 3, 4, '.1.26.328.2803.');
INSERT INTO `district` VALUES (2804, 328, '乡城县', 3, 4, '.1.26.328.2804.');
INSERT INTO `district` VALUES (2805, 328, '石渠县', 3, 4, '.1.26.328.2805.');
INSERT INTO `district` VALUES (2806, 328, '稻城县', 3, 4, '.1.26.328.2806.');
INSERT INTO `district` VALUES (2807, 328, '色达县', 3, 4, '.1.26.328.2807.');
INSERT INTO `district` VALUES (2808, 328, '巴塘县', 3, 4, '.1.26.328.2808.');
INSERT INTO `district` VALUES (2809, 328, '得荣县', 3, 4, '.1.26.328.2809.');
INSERT INTO `district` VALUES (2810, 329, '广安区', 3, 4, '.1.26.329.2810.');
INSERT INTO `district` VALUES (2811, 329, '华蓥市', 3, 4, '.1.26.329.2811.');
INSERT INTO `district` VALUES (2812, 329, '岳池县', 3, 4, '.1.26.329.2812.');
INSERT INTO `district` VALUES (2813, 329, '武胜县', 3, 4, '.1.26.329.2813.');
INSERT INTO `district` VALUES (2814, 329, '邻水县', 3, 4, '.1.26.329.2814.');
INSERT INTO `district` VALUES (2815, 330, '利州区', 3, 4, '.1.26.330.2815.');
INSERT INTO `district` VALUES (2816, 330, '元坝区', 3, 4, '.1.26.330.2816.');
INSERT INTO `district` VALUES (2817, 330, '朝天区', 3, 4, '.1.26.330.2817.');
INSERT INTO `district` VALUES (2818, 330, '旺苍县', 3, 4, '.1.26.330.2818.');
INSERT INTO `district` VALUES (2819, 330, '青川县', 3, 4, '.1.26.330.2819.');
INSERT INTO `district` VALUES (2820, 330, '剑阁县', 3, 4, '.1.26.330.2820.');
INSERT INTO `district` VALUES (2821, 330, '苍溪县', 3, 4, '.1.26.330.2821.');
INSERT INTO `district` VALUES (2822, 331, '峨眉山市', 3, 4, '.1.26.331.2822.');
INSERT INTO `district` VALUES (2823, 331, '乐山市', 3, 4, '.1.26.331.2823.');
INSERT INTO `district` VALUES (2824, 331, '犍为县', 3, 4, '.1.26.331.2824.');
INSERT INTO `district` VALUES (2825, 331, '井研县', 3, 4, '.1.26.331.2825.');
INSERT INTO `district` VALUES (2826, 331, '夹江县', 3, 4, '.1.26.331.2826.');
INSERT INTO `district` VALUES (2827, 331, '沐川县', 3, 4, '.1.26.331.2827.');
INSERT INTO `district` VALUES (2828, 331, '峨边', 3, 4, '.1.26.331.2828.');
INSERT INTO `district` VALUES (2829, 331, '马边', 3, 4, '.1.26.331.2829.');
INSERT INTO `district` VALUES (2830, 332, '西昌市', 3, 4, '.1.26.332.2830.');
INSERT INTO `district` VALUES (2831, 332, '盐源县', 3, 4, '.1.26.332.2831.');
INSERT INTO `district` VALUES (2832, 332, '德昌县', 3, 4, '.1.26.332.2832.');
INSERT INTO `district` VALUES (2833, 332, '会理县', 3, 4, '.1.26.332.2833.');
INSERT INTO `district` VALUES (2834, 332, '会东县', 3, 4, '.1.26.332.2834.');
INSERT INTO `district` VALUES (2835, 332, '宁南县', 3, 4, '.1.26.332.2835.');
INSERT INTO `district` VALUES (2836, 332, '普格县', 3, 4, '.1.26.332.2836.');
INSERT INTO `district` VALUES (2837, 332, '布拖县', 3, 4, '.1.26.332.2837.');
INSERT INTO `district` VALUES (2838, 332, '金阳县', 3, 4, '.1.26.332.2838.');
INSERT INTO `district` VALUES (2839, 332, '昭觉县', 3, 4, '.1.26.332.2839.');
INSERT INTO `district` VALUES (2840, 332, '喜德县', 3, 4, '.1.26.332.2840.');
INSERT INTO `district` VALUES (2841, 332, '冕宁县', 3, 4, '.1.26.332.2841.');
INSERT INTO `district` VALUES (2842, 332, '越西县', 3, 4, '.1.26.332.2842.');
INSERT INTO `district` VALUES (2843, 332, '甘洛县', 3, 4, '.1.26.332.2843.');
INSERT INTO `district` VALUES (2844, 332, '美姑县', 3, 4, '.1.26.332.2844.');
INSERT INTO `district` VALUES (2845, 332, '雷波县', 3, 4, '.1.26.332.2845.');
INSERT INTO `district` VALUES (2846, 332, '木里', 3, 4, '.1.26.332.2846.');
INSERT INTO `district` VALUES (2847, 333, '东坡区', 3, 4, '.1.26.333.2847.');
INSERT INTO `district` VALUES (2848, 333, '仁寿县', 3, 4, '.1.26.333.2848.');
INSERT INTO `district` VALUES (2849, 333, '彭山县', 3, 4, '.1.26.333.2849.');
INSERT INTO `district` VALUES (2850, 333, '洪雅县', 3, 4, '.1.26.333.2850.');
INSERT INTO `district` VALUES (2851, 333, '丹棱县', 3, 4, '.1.26.333.2851.');
INSERT INTO `district` VALUES (2852, 333, '青神县', 3, 4, '.1.26.333.2852.');
INSERT INTO `district` VALUES (2853, 334, '阆中市', 3, 4, '.1.26.334.2853.');
INSERT INTO `district` VALUES (2854, 334, '南部县', 3, 4, '.1.26.334.2854.');
INSERT INTO `district` VALUES (2855, 334, '营山县', 3, 4, '.1.26.334.2855.');
INSERT INTO `district` VALUES (2856, 334, '蓬安县', 3, 4, '.1.26.334.2856.');
INSERT INTO `district` VALUES (2857, 334, '仪陇县', 3, 4, '.1.26.334.2857.');
INSERT INTO `district` VALUES (2858, 334, '顺庆区', 3, 4, '.1.26.334.2858.');
INSERT INTO `district` VALUES (2859, 334, '高坪区', 3, 4, '.1.26.334.2859.');
INSERT INTO `district` VALUES (2860, 334, '嘉陵区', 3, 4, '.1.26.334.2860.');
INSERT INTO `district` VALUES (2861, 334, '西充县', 3, 4, '.1.26.334.2861.');
INSERT INTO `district` VALUES (2862, 335, '市中区', 3, 4, '.1.26.335.2862.');
INSERT INTO `district` VALUES (2863, 335, '东兴区', 3, 4, '.1.26.335.2863.');
INSERT INTO `district` VALUES (2864, 335, '威远县', 3, 4, '.1.26.335.2864.');
INSERT INTO `district` VALUES (2865, 335, '资中县', 3, 4, '.1.26.335.2865.');
INSERT INTO `district` VALUES (2866, 335, '隆昌县', 3, 4, '.1.26.335.2866.');
INSERT INTO `district` VALUES (2867, 336, '东  区', 3, 4, '.1.26.336.2867.');
INSERT INTO `district` VALUES (2868, 336, '西  区', 3, 4, '.1.26.336.2868.');
INSERT INTO `district` VALUES (2869, 336, '仁和区', 3, 4, '.1.26.336.2869.');
INSERT INTO `district` VALUES (2870, 336, '米易县', 3, 4, '.1.26.336.2870.');
INSERT INTO `district` VALUES (2871, 336, '盐边县', 3, 4, '.1.26.336.2871.');
INSERT INTO `district` VALUES (2872, 337, '船山区', 3, 4, '.1.26.337.2872.');
INSERT INTO `district` VALUES (2873, 337, '安居区', 3, 4, '.1.26.337.2873.');
INSERT INTO `district` VALUES (2874, 337, '蓬溪县', 3, 4, '.1.26.337.2874.');
INSERT INTO `district` VALUES (2875, 337, '射洪县', 3, 4, '.1.26.337.2875.');
INSERT INTO `district` VALUES (2876, 337, '大英县', 3, 4, '.1.26.337.2876.');
INSERT INTO `district` VALUES (2877, 338, '雨城区', 3, 4, '.1.26.338.2877.');
INSERT INTO `district` VALUES (2878, 338, '名山县', 3, 4, '.1.26.338.2878.');
INSERT INTO `district` VALUES (2879, 338, '荥经县', 3, 4, '.1.26.338.2879.');
INSERT INTO `district` VALUES (2880, 338, '汉源县', 3, 4, '.1.26.338.2880.');
INSERT INTO `district` VALUES (2881, 338, '石棉县', 3, 4, '.1.26.338.2881.');
INSERT INTO `district` VALUES (2882, 338, '天全县', 3, 4, '.1.26.338.2882.');
INSERT INTO `district` VALUES (2883, 338, '芦山县', 3, 4, '.1.26.338.2883.');
INSERT INTO `district` VALUES (2884, 338, '宝兴县', 3, 4, '.1.26.338.2884.');
INSERT INTO `district` VALUES (2885, 339, '翠屏区', 3, 4, '.1.26.339.2885.');
INSERT INTO `district` VALUES (2886, 339, '宜宾县', 3, 4, '.1.26.339.2886.');
INSERT INTO `district` VALUES (2887, 339, '南溪县', 3, 4, '.1.26.339.2887.');
INSERT INTO `district` VALUES (2888, 339, '江安县', 3, 4, '.1.26.339.2888.');
INSERT INTO `district` VALUES (2889, 339, '长宁县', 3, 4, '.1.26.339.2889.');
INSERT INTO `district` VALUES (2890, 339, '高县', 3, 4, '.1.26.339.2890.');
INSERT INTO `district` VALUES (2891, 339, '珙县', 3, 4, '.1.26.339.2891.');
INSERT INTO `district` VALUES (2892, 339, '筠连县', 3, 4, '.1.26.339.2892.');
INSERT INTO `district` VALUES (2893, 339, '兴文县', 3, 4, '.1.26.339.2893.');
INSERT INTO `district` VALUES (2894, 339, '屏山县', 3, 4, '.1.26.339.2894.');
INSERT INTO `district` VALUES (2895, 340, '雁江区', 3, 4, '.1.26.340.2895.');
INSERT INTO `district` VALUES (2896, 340, '简阳市', 3, 4, '.1.26.340.2896.');
INSERT INTO `district` VALUES (2897, 340, '安岳县', 3, 4, '.1.26.340.2897.');
INSERT INTO `district` VALUES (2898, 340, '乐至县', 3, 4, '.1.26.340.2898.');
INSERT INTO `district` VALUES (2899, 341, '大安区', 3, 4, '.1.26.341.2899.');
INSERT INTO `district` VALUES (2900, 341, '自流井区', 3, 4, '.1.26.341.2900.');
INSERT INTO `district` VALUES (2901, 341, '贡井区', 3, 4, '.1.26.341.2901.');
INSERT INTO `district` VALUES (2902, 341, '沿滩区', 3, 4, '.1.26.341.2902.');
INSERT INTO `district` VALUES (2903, 341, '荣县', 3, 4, '.1.26.341.2903.');
INSERT INTO `district` VALUES (2904, 341, '富顺县', 3, 4, '.1.26.341.2904.');
INSERT INTO `district` VALUES (2905, 342, '江阳区', 3, 4, '.1.26.342.2905.');
INSERT INTO `district` VALUES (2906, 342, '纳溪区', 3, 4, '.1.26.342.2906.');
INSERT INTO `district` VALUES (2907, 342, '龙马潭区', 3, 4, '.1.26.342.2907.');
INSERT INTO `district` VALUES (2908, 342, '泸县', 3, 4, '.1.26.342.2908.');
INSERT INTO `district` VALUES (2909, 342, '合江县', 3, 4, '.1.26.342.2909.');
INSERT INTO `district` VALUES (2910, 342, '叙永县', 3, 4, '.1.26.342.2910.');
INSERT INTO `district` VALUES (2911, 342, '古蔺县', 3, 4, '.1.26.342.2911.');
INSERT INTO `district` VALUES (2912, 343, '和平区', 3, 4, '.1.27.343.2912.');
INSERT INTO `district` VALUES (2913, 343, '河西区', 3, 4, '.1.27.343.2913.');
INSERT INTO `district` VALUES (2914, 343, '南开区', 3, 4, '.1.27.343.2914.');
INSERT INTO `district` VALUES (2915, 343, '河北区', 3, 4, '.1.27.343.2915.');
INSERT INTO `district` VALUES (2916, 343, '河东区', 3, 4, '.1.27.343.2916.');
INSERT INTO `district` VALUES (2917, 343, '红桥区', 3, 4, '.1.27.343.2917.');
INSERT INTO `district` VALUES (2918, 343, '东丽区', 3, 4, '.1.27.343.2918.');
INSERT INTO `district` VALUES (2919, 343, '津南区', 3, 4, '.1.27.343.2919.');
INSERT INTO `district` VALUES (2920, 343, '西青区', 3, 4, '.1.27.343.2920.');
INSERT INTO `district` VALUES (2921, 343, '北辰区', 3, 4, '.1.27.343.2921.');
INSERT INTO `district` VALUES (2922, 343, '塘沽区', 3, 4, '.1.27.343.2922.');
INSERT INTO `district` VALUES (2923, 343, '汉沽区', 3, 4, '.1.27.343.2923.');
INSERT INTO `district` VALUES (2924, 343, '大港区', 3, 4, '.1.27.343.2924.');
INSERT INTO `district` VALUES (2925, 343, '武清区', 3, 4, '.1.27.343.2925.');
INSERT INTO `district` VALUES (2926, 343, '宝坻区', 3, 4, '.1.27.343.2926.');
INSERT INTO `district` VALUES (2927, 343, '经济开发区', 3, 4, '.1.27.343.2927.');
INSERT INTO `district` VALUES (2928, 343, '宁河县', 3, 4, '.1.27.343.2928.');
INSERT INTO `district` VALUES (2929, 343, '静海县', 3, 4, '.1.27.343.2929.');
INSERT INTO `district` VALUES (2930, 343, '蓟县', 3, 4, '.1.27.343.2930.');
INSERT INTO `district` VALUES (2931, 344, '城关区', 3, 4, '.1.28.344.2931.');
INSERT INTO `district` VALUES (2932, 344, '林周县', 3, 4, '.1.28.344.2932.');
INSERT INTO `district` VALUES (2933, 344, '当雄县', 3, 4, '.1.28.344.2933.');
INSERT INTO `district` VALUES (2934, 344, '尼木县', 3, 4, '.1.28.344.2934.');
INSERT INTO `district` VALUES (2935, 344, '曲水县', 3, 4, '.1.28.344.2935.');
INSERT INTO `district` VALUES (2936, 344, '堆龙德庆县', 3, 4, '.1.28.344.2936.');
INSERT INTO `district` VALUES (2937, 344, '达孜县', 3, 4, '.1.28.344.2937.');
INSERT INTO `district` VALUES (2938, 344, '墨竹工卡县', 3, 4, '.1.28.344.2938.');
INSERT INTO `district` VALUES (2939, 345, '噶尔县', 3, 4, '.1.28.345.2939.');
INSERT INTO `district` VALUES (2940, 345, '普兰县', 3, 4, '.1.28.345.2940.');
INSERT INTO `district` VALUES (2941, 345, '札达县', 3, 4, '.1.28.345.2941.');
INSERT INTO `district` VALUES (2942, 345, '日土县', 3, 4, '.1.28.345.2942.');
INSERT INTO `district` VALUES (2943, 345, '革吉县', 3, 4, '.1.28.345.2943.');
INSERT INTO `district` VALUES (2944, 345, '改则县', 3, 4, '.1.28.345.2944.');
INSERT INTO `district` VALUES (2945, 345, '措勤县', 3, 4, '.1.28.345.2945.');
INSERT INTO `district` VALUES (2946, 346, '昌都县', 3, 4, '.1.28.346.2946.');
INSERT INTO `district` VALUES (2947, 346, '江达县', 3, 4, '.1.28.346.2947.');
INSERT INTO `district` VALUES (2948, 346, '贡觉县', 3, 4, '.1.28.346.2948.');
INSERT INTO `district` VALUES (2949, 346, '类乌齐县', 3, 4, '.1.28.346.2949.');
INSERT INTO `district` VALUES (2950, 346, '丁青县', 3, 4, '.1.28.346.2950.');
INSERT INTO `district` VALUES (2951, 346, '察雅县', 3, 4, '.1.28.346.2951.');
INSERT INTO `district` VALUES (2952, 346, '八宿县', 3, 4, '.1.28.346.2952.');
INSERT INTO `district` VALUES (2953, 346, '左贡县', 3, 4, '.1.28.346.2953.');
INSERT INTO `district` VALUES (2954, 346, '芒康县', 3, 4, '.1.28.346.2954.');
INSERT INTO `district` VALUES (2955, 346, '洛隆县', 3, 4, '.1.28.346.2955.');
INSERT INTO `district` VALUES (2956, 346, '边坝县', 3, 4, '.1.28.346.2956.');
INSERT INTO `district` VALUES (2957, 347, '林芝县', 3, 4, '.1.28.347.2957.');
INSERT INTO `district` VALUES (2958, 347, '工布江达县', 3, 4, '.1.28.347.2958.');
INSERT INTO `district` VALUES (2959, 347, '米林县', 3, 4, '.1.28.347.2959.');
INSERT INTO `district` VALUES (2960, 347, '墨脱县', 3, 4, '.1.28.347.2960.');
INSERT INTO `district` VALUES (2961, 347, '波密县', 3, 4, '.1.28.347.2961.');
INSERT INTO `district` VALUES (2962, 347, '察隅县', 3, 4, '.1.28.347.2962.');
INSERT INTO `district` VALUES (2963, 347, '朗县', 3, 4, '.1.28.347.2963.');
INSERT INTO `district` VALUES (2964, 348, '那曲县', 3, 4, '.1.28.348.2964.');
INSERT INTO `district` VALUES (2965, 348, '嘉黎县', 3, 4, '.1.28.348.2965.');
INSERT INTO `district` VALUES (2966, 348, '比如县', 3, 4, '.1.28.348.2966.');
INSERT INTO `district` VALUES (2967, 348, '聂荣县', 3, 4, '.1.28.348.2967.');
INSERT INTO `district` VALUES (2968, 348, '安多县', 3, 4, '.1.28.348.2968.');
INSERT INTO `district` VALUES (2969, 348, '申扎县', 3, 4, '.1.28.348.2969.');
INSERT INTO `district` VALUES (2970, 348, '索县', 3, 4, '.1.28.348.2970.');
INSERT INTO `district` VALUES (2971, 348, '班戈县', 3, 4, '.1.28.348.2971.');
INSERT INTO `district` VALUES (2972, 348, '巴青县', 3, 4, '.1.28.348.2972.');
INSERT INTO `district` VALUES (2973, 348, '尼玛县', 3, 4, '.1.28.348.2973.');
INSERT INTO `district` VALUES (2974, 349, '日喀则市', 3, 4, '.1.28.349.2974.');
INSERT INTO `district` VALUES (2975, 349, '南木林县', 3, 4, '.1.28.349.2975.');
INSERT INTO `district` VALUES (2976, 349, '江孜县', 3, 4, '.1.28.349.2976.');
INSERT INTO `district` VALUES (2977, 349, '定日县', 3, 4, '.1.28.349.2977.');
INSERT INTO `district` VALUES (2978, 349, '萨迦县', 3, 4, '.1.28.349.2978.');
INSERT INTO `district` VALUES (2979, 349, '拉孜县', 3, 4, '.1.28.349.2979.');
INSERT INTO `district` VALUES (2980, 349, '昂仁县', 3, 4, '.1.28.349.2980.');
INSERT INTO `district` VALUES (2981, 349, '谢通门县', 3, 4, '.1.28.349.2981.');
INSERT INTO `district` VALUES (2982, 349, '白朗县', 3, 4, '.1.28.349.2982.');
INSERT INTO `district` VALUES (2983, 349, '仁布县', 3, 4, '.1.28.349.2983.');
INSERT INTO `district` VALUES (2984, 349, '康马县', 3, 4, '.1.28.349.2984.');
INSERT INTO `district` VALUES (2985, 349, '定结县', 3, 4, '.1.28.349.2985.');
INSERT INTO `district` VALUES (2986, 349, '仲巴县', 3, 4, '.1.28.349.2986.');
INSERT INTO `district` VALUES (2987, 349, '亚东县', 3, 4, '.1.28.349.2987.');
INSERT INTO `district` VALUES (2988, 349, '吉隆县', 3, 4, '.1.28.349.2988.');
INSERT INTO `district` VALUES (2989, 349, '聂拉木县', 3, 4, '.1.28.349.2989.');
INSERT INTO `district` VALUES (2990, 349, '萨嘎县', 3, 4, '.1.28.349.2990.');
INSERT INTO `district` VALUES (2991, 349, '岗巴县', 3, 4, '.1.28.349.2991.');
INSERT INTO `district` VALUES (2992, 350, '乃东县', 3, 4, '.1.28.350.2992.');
INSERT INTO `district` VALUES (2993, 350, '扎囊县', 3, 4, '.1.28.350.2993.');
INSERT INTO `district` VALUES (2994, 350, '贡嘎县', 3, 4, '.1.28.350.2994.');
INSERT INTO `district` VALUES (2995, 350, '桑日县', 3, 4, '.1.28.350.2995.');
INSERT INTO `district` VALUES (2996, 350, '琼结县', 3, 4, '.1.28.350.2996.');
INSERT INTO `district` VALUES (2997, 350, '曲松县', 3, 4, '.1.28.350.2997.');
INSERT INTO `district` VALUES (2998, 350, '措美县', 3, 4, '.1.28.350.2998.');
INSERT INTO `district` VALUES (2999, 350, '洛扎县', 3, 4, '.1.28.350.2999.');
INSERT INTO `district` VALUES (3000, 350, '加查县', 3, 4, '.1.28.350.3000.');
INSERT INTO `district` VALUES (3001, 350, '隆子县', 3, 4, '.1.28.350.3001.');
INSERT INTO `district` VALUES (3002, 350, '错那县', 3, 4, '.1.28.350.3002.');
INSERT INTO `district` VALUES (3003, 350, '浪卡子县', 3, 4, '.1.28.350.3003.');
INSERT INTO `district` VALUES (3004, 351, '天山区', 3, 4, '.1.29.351.3004.');
INSERT INTO `district` VALUES (3005, 351, '沙依巴克区', 3, 4, '.1.29.351.3005.');
INSERT INTO `district` VALUES (3006, 351, '新市区', 3, 4, '.1.29.351.3006.');
INSERT INTO `district` VALUES (3007, 351, '水磨沟区', 3, 4, '.1.29.351.3007.');
INSERT INTO `district` VALUES (3008, 351, '头屯河区', 3, 4, '.1.29.351.3008.');
INSERT INTO `district` VALUES (3009, 351, '达坂城区', 3, 4, '.1.29.351.3009.');
INSERT INTO `district` VALUES (3010, 351, '米东区', 3, 4, '.1.29.351.3010.');
INSERT INTO `district` VALUES (3011, 351, '乌鲁木齐县', 3, 4, '.1.29.351.3011.');
INSERT INTO `district` VALUES (3012, 352, '阿克苏市', 3, 4, '.1.29.352.3012.');
INSERT INTO `district` VALUES (3013, 352, '温宿县', 3, 4, '.1.29.352.3013.');
INSERT INTO `district` VALUES (3014, 352, '库车县', 3, 4, '.1.29.352.3014.');
INSERT INTO `district` VALUES (3015, 352, '沙雅县', 3, 4, '.1.29.352.3015.');
INSERT INTO `district` VALUES (3016, 352, '新和县', 3, 4, '.1.29.352.3016.');
INSERT INTO `district` VALUES (3017, 352, '拜城县', 3, 4, '.1.29.352.3017.');
INSERT INTO `district` VALUES (3018, 352, '乌什县', 3, 4, '.1.29.352.3018.');
INSERT INTO `district` VALUES (3019, 352, '阿瓦提县', 3, 4, '.1.29.352.3019.');
INSERT INTO `district` VALUES (3020, 352, '柯坪县', 3, 4, '.1.29.352.3020.');
INSERT INTO `district` VALUES (3021, 353, '阿拉尔市', 3, 4, '.1.29.353.3021.');
INSERT INTO `district` VALUES (3022, 354, '库尔勒市', 3, 4, '.1.29.354.3022.');
INSERT INTO `district` VALUES (3023, 354, '轮台县', 3, 4, '.1.29.354.3023.');
INSERT INTO `district` VALUES (3024, 354, '尉犁县', 3, 4, '.1.29.354.3024.');
INSERT INTO `district` VALUES (3025, 354, '若羌县', 3, 4, '.1.29.354.3025.');
INSERT INTO `district` VALUES (3026, 354, '且末县', 3, 4, '.1.29.354.3026.');
INSERT INTO `district` VALUES (3027, 354, '焉耆', 3, 4, '.1.29.354.3027.');
INSERT INTO `district` VALUES (3028, 354, '和静县', 3, 4, '.1.29.354.3028.');
INSERT INTO `district` VALUES (3029, 354, '和硕县', 3, 4, '.1.29.354.3029.');
INSERT INTO `district` VALUES (3030, 354, '博湖县', 3, 4, '.1.29.354.3030.');
INSERT INTO `district` VALUES (3031, 355, '博乐市', 3, 4, '.1.29.355.3031.');
INSERT INTO `district` VALUES (3032, 355, '精河县', 3, 4, '.1.29.355.3032.');
INSERT INTO `district` VALUES (3033, 355, '温泉县', 3, 4, '.1.29.355.3033.');
INSERT INTO `district` VALUES (3034, 356, '呼图壁县', 3, 4, '.1.29.356.3034.');
INSERT INTO `district` VALUES (3035, 356, '米泉市', 3, 4, '.1.29.356.3035.');
INSERT INTO `district` VALUES (3036, 356, '昌吉市', 3, 4, '.1.29.356.3036.');
INSERT INTO `district` VALUES (3037, 356, '阜康市', 3, 4, '.1.29.356.3037.');
INSERT INTO `district` VALUES (3038, 356, '玛纳斯县', 3, 4, '.1.29.356.3038.');
INSERT INTO `district` VALUES (3039, 356, '奇台县', 3, 4, '.1.29.356.3039.');
INSERT INTO `district` VALUES (3040, 356, '吉木萨尔县', 3, 4, '.1.29.356.3040.');
INSERT INTO `district` VALUES (3041, 356, '木垒', 3, 4, '.1.29.356.3041.');
INSERT INTO `district` VALUES (3042, 357, '哈密市', 3, 4, '.1.29.357.3042.');
INSERT INTO `district` VALUES (3043, 357, '伊吾县', 3, 4, '.1.29.357.3043.');
INSERT INTO `district` VALUES (3044, 357, '巴里坤', 3, 4, '.1.29.357.3044.');
INSERT INTO `district` VALUES (3045, 358, '和田市', 3, 4, '.1.29.358.3045.');
INSERT INTO `district` VALUES (3046, 358, '和田县', 3, 4, '.1.29.358.3046.');
INSERT INTO `district` VALUES (3047, 358, '墨玉县', 3, 4, '.1.29.358.3047.');
INSERT INTO `district` VALUES (3048, 358, '皮山县', 3, 4, '.1.29.358.3048.');
INSERT INTO `district` VALUES (3049, 358, '洛浦县', 3, 4, '.1.29.358.3049.');
INSERT INTO `district` VALUES (3050, 358, '策勒县', 3, 4, '.1.29.358.3050.');
INSERT INTO `district` VALUES (3051, 358, '于田县', 3, 4, '.1.29.358.3051.');
INSERT INTO `district` VALUES (3052, 358, '民丰县', 3, 4, '.1.29.358.3052.');
INSERT INTO `district` VALUES (3053, 359, '喀什市', 3, 4, '.1.29.359.3053.');
INSERT INTO `district` VALUES (3054, 359, '疏附县', 3, 4, '.1.29.359.3054.');
INSERT INTO `district` VALUES (3055, 359, '疏勒县', 3, 4, '.1.29.359.3055.');
INSERT INTO `district` VALUES (3056, 359, '英吉沙县', 3, 4, '.1.29.359.3056.');
INSERT INTO `district` VALUES (3057, 359, '泽普县', 3, 4, '.1.29.359.3057.');
INSERT INTO `district` VALUES (3058, 359, '莎车县', 3, 4, '.1.29.359.3058.');
INSERT INTO `district` VALUES (3059, 359, '叶城县', 3, 4, '.1.29.359.3059.');
INSERT INTO `district` VALUES (3060, 359, '麦盖提县', 3, 4, '.1.29.359.3060.');
INSERT INTO `district` VALUES (3061, 359, '岳普湖县', 3, 4, '.1.29.359.3061.');
INSERT INTO `district` VALUES (3062, 359, '伽师县', 3, 4, '.1.29.359.3062.');
INSERT INTO `district` VALUES (3063, 359, '巴楚县', 3, 4, '.1.29.359.3063.');
INSERT INTO `district` VALUES (3064, 359, '塔什库尔干', 3, 4, '.1.29.359.3064.');
INSERT INTO `district` VALUES (3065, 360, '克拉玛依市', 3, 4, '.1.29.360.3065.');
INSERT INTO `district` VALUES (3066, 361, '阿图什市', 3, 4, '.1.29.361.3066.');
INSERT INTO `district` VALUES (3067, 361, '阿克陶县', 3, 4, '.1.29.361.3067.');
INSERT INTO `district` VALUES (3068, 361, '阿合奇县', 3, 4, '.1.29.361.3068.');
INSERT INTO `district` VALUES (3069, 361, '乌恰县', 3, 4, '.1.29.361.3069.');
INSERT INTO `district` VALUES (3070, 362, '石河子市', 3, 4, '.1.29.362.3070.');
INSERT INTO `district` VALUES (3071, 363, '图木舒克市', 3, 4, '.1.29.363.3071.');
INSERT INTO `district` VALUES (3072, 364, '吐鲁番市', 3, 4, '.1.29.364.3072.');
INSERT INTO `district` VALUES (3073, 364, '鄯善县', 3, 4, '.1.29.364.3073.');
INSERT INTO `district` VALUES (3074, 364, '托克逊县', 3, 4, '.1.29.364.3074.');
INSERT INTO `district` VALUES (3075, 365, '五家渠市', 3, 4, '.1.29.365.3075.');
INSERT INTO `district` VALUES (3076, 366, '阿勒泰市', 3, 4, '.1.29.366.3076.');
INSERT INTO `district` VALUES (3077, 366, '布克赛尔', 3, 4, '.1.29.366.3077.');
INSERT INTO `district` VALUES (3078, 366, '伊宁市', 3, 4, '.1.29.366.3078.');
INSERT INTO `district` VALUES (3079, 366, '布尔津县', 3, 4, '.1.29.366.3079.');
INSERT INTO `district` VALUES (3080, 366, '奎屯市', 3, 4, '.1.29.366.3080.');
INSERT INTO `district` VALUES (3081, 366, '乌苏市', 3, 4, '.1.29.366.3081.');
INSERT INTO `district` VALUES (3082, 366, '额敏县', 3, 4, '.1.29.366.3082.');
INSERT INTO `district` VALUES (3083, 366, '富蕴县', 3, 4, '.1.29.366.3083.');
INSERT INTO `district` VALUES (3084, 366, '伊宁县', 3, 4, '.1.29.366.3084.');
INSERT INTO `district` VALUES (3085, 366, '福海县', 3, 4, '.1.29.366.3085.');
INSERT INTO `district` VALUES (3086, 366, '霍城县', 3, 4, '.1.29.366.3086.');
INSERT INTO `district` VALUES (3087, 366, '沙湾县', 3, 4, '.1.29.366.3087.');
INSERT INTO `district` VALUES (3088, 366, '巩留县', 3, 4, '.1.29.366.3088.');
INSERT INTO `district` VALUES (3089, 366, '哈巴河县', 3, 4, '.1.29.366.3089.');
INSERT INTO `district` VALUES (3090, 366, '托里县', 3, 4, '.1.29.366.3090.');
INSERT INTO `district` VALUES (3091, 366, '青河县', 3, 4, '.1.29.366.3091.');
INSERT INTO `district` VALUES (3092, 366, '新源县', 3, 4, '.1.29.366.3092.');
INSERT INTO `district` VALUES (3093, 366, '裕民县', 3, 4, '.1.29.366.3093.');
INSERT INTO `district` VALUES (3094, 366, '和布克赛尔', 3, 4, '.1.29.366.3094.');
INSERT INTO `district` VALUES (3095, 366, '吉木乃县', 3, 4, '.1.29.366.3095.');
INSERT INTO `district` VALUES (3096, 366, '昭苏县', 3, 4, '.1.29.366.3096.');
INSERT INTO `district` VALUES (3097, 366, '特克斯县', 3, 4, '.1.29.366.3097.');
INSERT INTO `district` VALUES (3098, 366, '尼勒克县', 3, 4, '.1.29.366.3098.');
INSERT INTO `district` VALUES (3099, 366, '察布查尔', 3, 4, '.1.29.366.3099.');
INSERT INTO `district` VALUES (3100, 367, '盘龙区', 3, 4, '.1.30.367.3100.');
INSERT INTO `district` VALUES (3101, 367, '五华区', 3, 4, '.1.30.367.3101.');
INSERT INTO `district` VALUES (3102, 367, '官渡区', 3, 4, '.1.30.367.3102.');
INSERT INTO `district` VALUES (3103, 367, '西山区', 3, 4, '.1.30.367.3103.');
INSERT INTO `district` VALUES (3104, 367, '东川区', 3, 4, '.1.30.367.3104.');
INSERT INTO `district` VALUES (3105, 367, '安宁市', 3, 4, '.1.30.367.3105.');
INSERT INTO `district` VALUES (3106, 367, '呈贡县', 3, 4, '.1.30.367.3106.');
INSERT INTO `district` VALUES (3107, 367, '晋宁县', 3, 4, '.1.30.367.3107.');
INSERT INTO `district` VALUES (3108, 367, '富民县', 3, 4, '.1.30.367.3108.');
INSERT INTO `district` VALUES (3109, 367, '宜良县', 3, 4, '.1.30.367.3109.');
INSERT INTO `district` VALUES (3110, 367, '嵩明县', 3, 4, '.1.30.367.3110.');
INSERT INTO `district` VALUES (3111, 367, '石林县', 3, 4, '.1.30.367.3111.');
INSERT INTO `district` VALUES (3112, 367, '禄劝', 3, 4, '.1.30.367.3112.');
INSERT INTO `district` VALUES (3113, 367, '寻甸', 3, 4, '.1.30.367.3113.');
INSERT INTO `district` VALUES (3114, 368, '兰坪', 3, 4, '.1.30.368.3114.');
INSERT INTO `district` VALUES (3115, 368, '泸水县', 3, 4, '.1.30.368.3115.');
INSERT INTO `district` VALUES (3116, 368, '福贡县', 3, 4, '.1.30.368.3116.');
INSERT INTO `district` VALUES (3117, 368, '贡山', 3, 4, '.1.30.368.3117.');
INSERT INTO `district` VALUES (3118, 369, '宁洱', 3, 4, '.1.30.369.3118.');
INSERT INTO `district` VALUES (3119, 369, '思茅区', 3, 4, '.1.30.369.3119.');
INSERT INTO `district` VALUES (3120, 369, '墨江', 3, 4, '.1.30.369.3120.');
INSERT INTO `district` VALUES (3121, 369, '景东', 3, 4, '.1.30.369.3121.');
INSERT INTO `district` VALUES (3122, 369, '景谷', 3, 4, '.1.30.369.3122.');
INSERT INTO `district` VALUES (3123, 369, '镇沅', 3, 4, '.1.30.369.3123.');
INSERT INTO `district` VALUES (3124, 369, '江城', 3, 4, '.1.30.369.3124.');
INSERT INTO `district` VALUES (3125, 369, '孟连', 3, 4, '.1.30.369.3125.');
INSERT INTO `district` VALUES (3126, 369, '澜沧', 3, 4, '.1.30.369.3126.');
INSERT INTO `district` VALUES (3127, 369, '西盟', 3, 4, '.1.30.369.3127.');
INSERT INTO `district` VALUES (3128, 370, '古城区', 3, 4, '.1.30.370.3128.');
INSERT INTO `district` VALUES (3129, 370, '宁蒗', 3, 4, '.1.30.370.3129.');
INSERT INTO `district` VALUES (3130, 370, '玉龙', 3, 4, '.1.30.370.3130.');
INSERT INTO `district` VALUES (3131, 370, '永胜县', 3, 4, '.1.30.370.3131.');
INSERT INTO `district` VALUES (3132, 370, '华坪县', 3, 4, '.1.30.370.3132.');
INSERT INTO `district` VALUES (3133, 371, '隆阳区', 3, 4, '.1.30.371.3133.');
INSERT INTO `district` VALUES (3134, 371, '施甸县', 3, 4, '.1.30.371.3134.');
INSERT INTO `district` VALUES (3135, 371, '腾冲县', 3, 4, '.1.30.371.3135.');
INSERT INTO `district` VALUES (3136, 371, '龙陵县', 3, 4, '.1.30.371.3136.');
INSERT INTO `district` VALUES (3137, 371, '昌宁县', 3, 4, '.1.30.371.3137.');
INSERT INTO `district` VALUES (3138, 372, '楚雄市', 3, 4, '.1.30.372.3138.');
INSERT INTO `district` VALUES (3139, 372, '双柏县', 3, 4, '.1.30.372.3139.');
INSERT INTO `district` VALUES (3140, 372, '牟定县', 3, 4, '.1.30.372.3140.');
INSERT INTO `district` VALUES (3141, 372, '南华县', 3, 4, '.1.30.372.3141.');
INSERT INTO `district` VALUES (3142, 372, '姚安县', 3, 4, '.1.30.372.3142.');
INSERT INTO `district` VALUES (3143, 372, '大姚县', 3, 4, '.1.30.372.3143.');
INSERT INTO `district` VALUES (3144, 372, '永仁县', 3, 4, '.1.30.372.3144.');
INSERT INTO `district` VALUES (3145, 372, '元谋县', 3, 4, '.1.30.372.3145.');
INSERT INTO `district` VALUES (3146, 372, '武定县', 3, 4, '.1.30.372.3146.');
INSERT INTO `district` VALUES (3147, 372, '禄丰县', 3, 4, '.1.30.372.3147.');
INSERT INTO `district` VALUES (3148, 373, '大理市', 3, 4, '.1.30.373.3148.');
INSERT INTO `district` VALUES (3149, 373, '祥云县', 3, 4, '.1.30.373.3149.');
INSERT INTO `district` VALUES (3150, 373, '宾川县', 3, 4, '.1.30.373.3150.');
INSERT INTO `district` VALUES (3151, 373, '弥渡县', 3, 4, '.1.30.373.3151.');
INSERT INTO `district` VALUES (3152, 373, '永平县', 3, 4, '.1.30.373.3152.');
INSERT INTO `district` VALUES (3153, 373, '云龙县', 3, 4, '.1.30.373.3153.');
INSERT INTO `district` VALUES (3154, 373, '洱源县', 3, 4, '.1.30.373.3154.');
INSERT INTO `district` VALUES (3155, 373, '剑川县', 3, 4, '.1.30.373.3155.');
INSERT INTO `district` VALUES (3156, 373, '鹤庆县', 3, 4, '.1.30.373.3156.');
INSERT INTO `district` VALUES (3157, 373, '漾濞', 3, 4, '.1.30.373.3157.');
INSERT INTO `district` VALUES (3158, 373, '南涧', 3, 4, '.1.30.373.3158.');
INSERT INTO `district` VALUES (3159, 373, '巍山', 3, 4, '.1.30.373.3159.');
INSERT INTO `district` VALUES (3160, 374, '潞西市', 3, 4, '.1.30.374.3160.');
INSERT INTO `district` VALUES (3161, 374, '瑞丽市', 3, 4, '.1.30.374.3161.');
INSERT INTO `district` VALUES (3162, 374, '梁河县', 3, 4, '.1.30.374.3162.');
INSERT INTO `district` VALUES (3163, 374, '盈江县', 3, 4, '.1.30.374.3163.');
INSERT INTO `district` VALUES (3164, 374, '陇川县', 3, 4, '.1.30.374.3164.');
INSERT INTO `district` VALUES (3165, 375, '香格里拉县', 3, 4, '.1.30.375.3165.');
INSERT INTO `district` VALUES (3166, 375, '德钦县', 3, 4, '.1.30.375.3166.');
INSERT INTO `district` VALUES (3167, 375, '维西', 3, 4, '.1.30.375.3167.');
INSERT INTO `district` VALUES (3168, 376, '泸西县', 3, 4, '.1.30.376.3168.');
INSERT INTO `district` VALUES (3169, 376, '蒙自县', 3, 4, '.1.30.376.3169.');
INSERT INTO `district` VALUES (3170, 376, '个旧市', 3, 4, '.1.30.376.3170.');
INSERT INTO `district` VALUES (3171, 376, '开远市', 3, 4, '.1.30.376.3171.');
INSERT INTO `district` VALUES (3172, 376, '绿春县', 3, 4, '.1.30.376.3172.');
INSERT INTO `district` VALUES (3173, 376, '建水县', 3, 4, '.1.30.376.3173.');
INSERT INTO `district` VALUES (3174, 376, '石屏县', 3, 4, '.1.30.376.3174.');
INSERT INTO `district` VALUES (3175, 376, '弥勒县', 3, 4, '.1.30.376.3175.');
INSERT INTO `district` VALUES (3176, 376, '元阳县', 3, 4, '.1.30.376.3176.');
INSERT INTO `district` VALUES (3177, 376, '红河县', 3, 4, '.1.30.376.3177.');
INSERT INTO `district` VALUES (3178, 376, '金平', 3, 4, '.1.30.376.3178.');
INSERT INTO `district` VALUES (3179, 376, '河口', 3, 4, '.1.30.376.3179.');
INSERT INTO `district` VALUES (3180, 376, '屏边', 3, 4, '.1.30.376.3180.');
INSERT INTO `district` VALUES (3181, 377, '临翔区', 3, 4, '.1.30.377.3181.');
INSERT INTO `district` VALUES (3182, 377, '凤庆县', 3, 4, '.1.30.377.3182.');
INSERT INTO `district` VALUES (3183, 377, '云县', 3, 4, '.1.30.377.3183.');
INSERT INTO `district` VALUES (3184, 377, '永德县', 3, 4, '.1.30.377.3184.');
INSERT INTO `district` VALUES (3185, 377, '镇康县', 3, 4, '.1.30.377.3185.');
INSERT INTO `district` VALUES (3186, 377, '双江', 3, 4, '.1.30.377.3186.');
INSERT INTO `district` VALUES (3187, 377, '耿马', 3, 4, '.1.30.377.3187.');
INSERT INTO `district` VALUES (3188, 377, '沧源', 3, 4, '.1.30.377.3188.');
INSERT INTO `district` VALUES (3189, 378, '麒麟区', 3, 4, '.1.30.378.3189.');
INSERT INTO `district` VALUES (3190, 378, '宣威市', 3, 4, '.1.30.378.3190.');
INSERT INTO `district` VALUES (3191, 378, '马龙县', 3, 4, '.1.30.378.3191.');
INSERT INTO `district` VALUES (3192, 378, '陆良县', 3, 4, '.1.30.378.3192.');
INSERT INTO `district` VALUES (3193, 378, '师宗县', 3, 4, '.1.30.378.3193.');
INSERT INTO `district` VALUES (3194, 378, '罗平县', 3, 4, '.1.30.378.3194.');
INSERT INTO `district` VALUES (3195, 378, '富源县', 3, 4, '.1.30.378.3195.');
INSERT INTO `district` VALUES (3196, 378, '会泽县', 3, 4, '.1.30.378.3196.');
INSERT INTO `district` VALUES (3197, 378, '沾益县', 3, 4, '.1.30.378.3197.');
INSERT INTO `district` VALUES (3198, 379, '文山县', 3, 4, '.1.30.379.3198.');
INSERT INTO `district` VALUES (3199, 379, '砚山县', 3, 4, '.1.30.379.3199.');
INSERT INTO `district` VALUES (3200, 379, '西畴县', 3, 4, '.1.30.379.3200.');
INSERT INTO `district` VALUES (3201, 379, '麻栗坡县', 3, 4, '.1.30.379.3201.');
INSERT INTO `district` VALUES (3202, 379, '马关县', 3, 4, '.1.30.379.3202.');
INSERT INTO `district` VALUES (3203, 379, '丘北县', 3, 4, '.1.30.379.3203.');
INSERT INTO `district` VALUES (3204, 379, '广南县', 3, 4, '.1.30.379.3204.');
INSERT INTO `district` VALUES (3205, 379, '富宁县', 3, 4, '.1.30.379.3205.');
INSERT INTO `district` VALUES (3206, 380, '景洪市', 3, 4, '.1.30.380.3206.');
INSERT INTO `district` VALUES (3207, 380, '勐海县', 3, 4, '.1.30.380.3207.');
INSERT INTO `district` VALUES (3208, 380, '勐腊县', 3, 4, '.1.30.380.3208.');
INSERT INTO `district` VALUES (3209, 381, '红塔区', 3, 4, '.1.30.381.3209.');
INSERT INTO `district` VALUES (3210, 381, '江川县', 3, 4, '.1.30.381.3210.');
INSERT INTO `district` VALUES (3211, 381, '澄江县', 3, 4, '.1.30.381.3211.');
INSERT INTO `district` VALUES (3212, 381, '通海县', 3, 4, '.1.30.381.3212.');
INSERT INTO `district` VALUES (3213, 381, '华宁县', 3, 4, '.1.30.381.3213.');
INSERT INTO `district` VALUES (3214, 381, '易门县', 3, 4, '.1.30.381.3214.');
INSERT INTO `district` VALUES (3215, 381, '峨山', 3, 4, '.1.30.381.3215.');
INSERT INTO `district` VALUES (3216, 381, '新平', 3, 4, '.1.30.381.3216.');
INSERT INTO `district` VALUES (3217, 381, '元江', 3, 4, '.1.30.381.3217.');
INSERT INTO `district` VALUES (3218, 382, '昭阳区', 3, 4, '.1.30.382.3218.');
INSERT INTO `district` VALUES (3219, 382, '鲁甸县', 3, 4, '.1.30.382.3219.');
INSERT INTO `district` VALUES (3220, 382, '巧家县', 3, 4, '.1.30.382.3220.');
INSERT INTO `district` VALUES (3221, 382, '盐津县', 3, 4, '.1.30.382.3221.');
INSERT INTO `district` VALUES (3222, 382, '大关县', 3, 4, '.1.30.382.3222.');
INSERT INTO `district` VALUES (3223, 382, '永善县', 3, 4, '.1.30.382.3223.');
INSERT INTO `district` VALUES (3224, 382, '绥江县', 3, 4, '.1.30.382.3224.');
INSERT INTO `district` VALUES (3225, 382, '镇雄县', 3, 4, '.1.30.382.3225.');
INSERT INTO `district` VALUES (3226, 382, '彝良县', 3, 4, '.1.30.382.3226.');
INSERT INTO `district` VALUES (3227, 382, '威信县', 3, 4, '.1.30.382.3227.');
INSERT INTO `district` VALUES (3228, 382, '水富县', 3, 4, '.1.30.382.3228.');
INSERT INTO `district` VALUES (3229, 383, '西湖区', 3, 4, '.1.31.383.3229.');
INSERT INTO `district` VALUES (3230, 383, '上城区', 3, 4, '.1.31.383.3230.');
INSERT INTO `district` VALUES (3231, 383, '下城区', 3, 4, '.1.31.383.3231.');
INSERT INTO `district` VALUES (3232, 383, '拱墅区', 3, 4, '.1.31.383.3232.');
INSERT INTO `district` VALUES (3233, 383, '滨江区', 3, 4, '.1.31.383.3233.');
INSERT INTO `district` VALUES (3234, 383, '江干区', 3, 4, '.1.31.383.3234.');
INSERT INTO `district` VALUES (3235, 383, '萧山区', 3, 4, '.1.31.383.3235.');
INSERT INTO `district` VALUES (3236, 383, '余杭区', 3, 4, '.1.31.383.3236.');
INSERT INTO `district` VALUES (3237, 383, '市郊', 3, 4, '.1.31.383.3237.');
INSERT INTO `district` VALUES (3238, 383, '建德市', 3, 4, '.1.31.383.3238.');
INSERT INTO `district` VALUES (3239, 383, '富阳市', 3, 4, '.1.31.383.3239.');
INSERT INTO `district` VALUES (3240, 383, '临安市', 3, 4, '.1.31.383.3240.');
INSERT INTO `district` VALUES (3241, 383, '桐庐县', 3, 4, '.1.31.383.3241.');
INSERT INTO `district` VALUES (3242, 383, '淳安县', 3, 4, '.1.31.383.3242.');
INSERT INTO `district` VALUES (3243, 384, '吴兴区', 3, 4, '.1.31.384.3243.');
INSERT INTO `district` VALUES (3244, 384, '南浔区', 3, 4, '.1.31.384.3244.');
INSERT INTO `district` VALUES (3245, 384, '德清县', 3, 4, '.1.31.384.3245.');
INSERT INTO `district` VALUES (3246, 384, '长兴县', 3, 4, '.1.31.384.3246.');
INSERT INTO `district` VALUES (3247, 384, '安吉县', 3, 4, '.1.31.384.3247.');
INSERT INTO `district` VALUES (3248, 385, '南湖区', 3, 4, '.1.31.385.3248.');
INSERT INTO `district` VALUES (3249, 385, '秀洲区', 3, 4, '.1.31.385.3249.');
INSERT INTO `district` VALUES (3250, 385, '海宁市', 3, 4, '.1.31.385.3250.');
INSERT INTO `district` VALUES (3251, 385, '嘉善县', 3, 4, '.1.31.385.3251.');
INSERT INTO `district` VALUES (3252, 385, '平湖市', 3, 4, '.1.31.385.3252.');
INSERT INTO `district` VALUES (3253, 385, '桐乡市', 3, 4, '.1.31.385.3253.');
INSERT INTO `district` VALUES (3254, 385, '海盐县', 3, 4, '.1.31.385.3254.');
INSERT INTO `district` VALUES (3255, 386, '婺城区', 3, 4, '.1.31.386.3255.');
INSERT INTO `district` VALUES (3256, 386, '金东区', 3, 4, '.1.31.386.3256.');
INSERT INTO `district` VALUES (3257, 386, '兰溪市', 3, 4, '.1.31.386.3257.');
INSERT INTO `district` VALUES (3258, 386, '市区', 3, 4, '.1.31.386.3258.');
INSERT INTO `district` VALUES (3259, 386, '佛堂镇', 3, 4, '.1.31.386.3259.');
INSERT INTO `district` VALUES (3260, 386, '上溪镇', 3, 4, '.1.31.386.3260.');
INSERT INTO `district` VALUES (3261, 386, '义亭镇', 3, 4, '.1.31.386.3261.');
INSERT INTO `district` VALUES (3262, 386, '大陈镇', 3, 4, '.1.31.386.3262.');
INSERT INTO `district` VALUES (3263, 386, '苏溪镇', 3, 4, '.1.31.386.3263.');
INSERT INTO `district` VALUES (3264, 386, '赤岸镇', 3, 4, '.1.31.386.3264.');
INSERT INTO `district` VALUES (3265, 386, '东阳市', 3, 4, '.1.31.386.3265.');
INSERT INTO `district` VALUES (3266, 386, '永康市', 3, 4, '.1.31.386.3266.');
INSERT INTO `district` VALUES (3267, 386, '武义县', 3, 4, '.1.31.386.3267.');
INSERT INTO `district` VALUES (3268, 386, '浦江县', 3, 4, '.1.31.386.3268.');
INSERT INTO `district` VALUES (3269, 386, '磐安县', 3, 4, '.1.31.386.3269.');
INSERT INTO `district` VALUES (3270, 387, '莲都区', 3, 4, '.1.31.387.3270.');
INSERT INTO `district` VALUES (3271, 387, '龙泉市', 3, 4, '.1.31.387.3271.');
INSERT INTO `district` VALUES (3272, 387, '青田县', 3, 4, '.1.31.387.3272.');
INSERT INTO `district` VALUES (3273, 387, '缙云县', 3, 4, '.1.31.387.3273.');
INSERT INTO `district` VALUES (3274, 387, '遂昌县', 3, 4, '.1.31.387.3274.');
INSERT INTO `district` VALUES (3275, 387, '松阳县', 3, 4, '.1.31.387.3275.');
INSERT INTO `district` VALUES (3276, 387, '云和县', 3, 4, '.1.31.387.3276.');
INSERT INTO `district` VALUES (3277, 387, '庆元县', 3, 4, '.1.31.387.3277.');
INSERT INTO `district` VALUES (3278, 387, '景宁', 3, 4, '.1.31.387.3278.');
INSERT INTO `district` VALUES (3279, 388, '海曙区', 3, 4, '.1.31.388.3279.');
INSERT INTO `district` VALUES (3280, 388, '江东区', 3, 4, '.1.31.388.3280.');
INSERT INTO `district` VALUES (3281, 388, '江北区', 3, 4, '.1.31.388.3281.');
INSERT INTO `district` VALUES (3282, 388, '镇海区', 3, 4, '.1.31.388.3282.');
INSERT INTO `district` VALUES (3283, 388, '北仑区', 3, 4, '.1.31.388.3283.');
INSERT INTO `district` VALUES (3284, 388, '鄞州区', 3, 4, '.1.31.388.3284.');
INSERT INTO `district` VALUES (3285, 388, '余姚市', 3, 4, '.1.31.388.3285.');
INSERT INTO `district` VALUES (3286, 388, '慈溪市', 3, 4, '.1.31.388.3286.');
INSERT INTO `district` VALUES (3287, 388, '奉化市', 3, 4, '.1.31.388.3287.');
INSERT INTO `district` VALUES (3288, 388, '象山县', 3, 4, '.1.31.388.3288.');
INSERT INTO `district` VALUES (3289, 388, '宁海县', 3, 4, '.1.31.388.3289.');
INSERT INTO `district` VALUES (3290, 389, '越城区', 3, 4, '.1.31.389.3290.');
INSERT INTO `district` VALUES (3291, 389, '上虞市', 3, 4, '.1.31.389.3291.');
INSERT INTO `district` VALUES (3292, 389, '嵊州市', 3, 4, '.1.31.389.3292.');
INSERT INTO `district` VALUES (3293, 389, '绍兴县', 3, 4, '.1.31.389.3293.');
INSERT INTO `district` VALUES (3294, 389, '新昌县', 3, 4, '.1.31.389.3294.');
INSERT INTO `district` VALUES (3295, 389, '诸暨市', 3, 4, '.1.31.389.3295.');
INSERT INTO `district` VALUES (3296, 390, '椒江区', 3, 4, '.1.31.390.3296.');
INSERT INTO `district` VALUES (3297, 390, '黄岩区', 3, 4, '.1.31.390.3297.');
INSERT INTO `district` VALUES (3298, 390, '路桥区', 3, 4, '.1.31.390.3298.');
INSERT INTO `district` VALUES (3299, 390, '温岭市', 3, 4, '.1.31.390.3299.');
INSERT INTO `district` VALUES (3300, 390, '临海市', 3, 4, '.1.31.390.3300.');
INSERT INTO `district` VALUES (3301, 390, '玉环县', 3, 4, '.1.31.390.3301.');
INSERT INTO `district` VALUES (3302, 390, '三门县', 3, 4, '.1.31.390.3302.');
INSERT INTO `district` VALUES (3303, 390, '天台县', 3, 4, '.1.31.390.3303.');
INSERT INTO `district` VALUES (3304, 390, '仙居县', 3, 4, '.1.31.390.3304.');
INSERT INTO `district` VALUES (3305, 391, '鹿城区', 3, 4, '.1.31.391.3305.');
INSERT INTO `district` VALUES (3306, 391, '龙湾区', 3, 4, '.1.31.391.3306.');
INSERT INTO `district` VALUES (3307, 391, '瓯海区', 3, 4, '.1.31.391.3307.');
INSERT INTO `district` VALUES (3308, 391, '瑞安市', 3, 4, '.1.31.391.3308.');
INSERT INTO `district` VALUES (3309, 391, '乐清市', 3, 4, '.1.31.391.3309.');
INSERT INTO `district` VALUES (3310, 391, '洞头县', 3, 4, '.1.31.391.3310.');
INSERT INTO `district` VALUES (3311, 391, '永嘉县', 3, 4, '.1.31.391.3311.');
INSERT INTO `district` VALUES (3312, 391, '平阳县', 3, 4, '.1.31.391.3312.');
INSERT INTO `district` VALUES (3313, 391, '苍南县', 3, 4, '.1.31.391.3313.');
INSERT INTO `district` VALUES (3314, 391, '文成县', 3, 4, '.1.31.391.3314.');
INSERT INTO `district` VALUES (3315, 391, '泰顺县', 3, 4, '.1.31.391.3315.');
INSERT INTO `district` VALUES (3316, 392, '定海区', 3, 4, '.1.31.392.3316.');
INSERT INTO `district` VALUES (3317, 392, '普陀区', 3, 4, '.1.31.392.3317.');
INSERT INTO `district` VALUES (3318, 392, '岱山县', 3, 4, '.1.31.392.3318.');
INSERT INTO `district` VALUES (3319, 392, '嵊泗县', 3, 4, '.1.31.392.3319.');
INSERT INTO `district` VALUES (3320, 393, '衢州市', 3, 4, '.1.31.393.3320.');
INSERT INTO `district` VALUES (3321, 393, '江山市', 3, 4, '.1.31.393.3321.');
INSERT INTO `district` VALUES (3322, 393, '常山县', 3, 4, '.1.31.393.3322.');
INSERT INTO `district` VALUES (3323, 393, '开化县', 3, 4, '.1.31.393.3323.');
INSERT INTO `district` VALUES (3324, 393, '龙游县', 3, 4, '.1.31.393.3324.');
INSERT INTO `district` VALUES (3325, 394, '合川区', 3, 4, '.1.32.394.3325.');
INSERT INTO `district` VALUES (3326, 394, '江津区', 3, 4, '.1.32.394.3326.');
INSERT INTO `district` VALUES (3327, 394, '南川区', 3, 4, '.1.32.394.3327.');
INSERT INTO `district` VALUES (3328, 394, '永川区', 3, 4, '.1.32.394.3328.');
INSERT INTO `district` VALUES (3329, 394, '南岸区', 3, 4, '.1.32.394.3329.');
INSERT INTO `district` VALUES (3330, 394, '渝北区', 3, 4, '.1.32.394.3330.');
INSERT INTO `district` VALUES (3331, 394, '万盛区', 3, 4, '.1.32.394.3331.');
INSERT INTO `district` VALUES (3332, 394, '大渡口区', 3, 4, '.1.32.394.3332.');
INSERT INTO `district` VALUES (3333, 394, '万州区', 3, 4, '.1.32.394.3333.');
INSERT INTO `district` VALUES (3334, 394, '北碚区', 3, 4, '.1.32.394.3334.');
INSERT INTO `district` VALUES (3335, 394, '沙坪坝区', 3, 4, '.1.32.394.3335.');
INSERT INTO `district` VALUES (3336, 394, '巴南区', 3, 4, '.1.32.394.3336.');
INSERT INTO `district` VALUES (3337, 394, '涪陵区', 3, 4, '.1.32.394.3337.');
INSERT INTO `district` VALUES (3338, 394, '江北区', 3, 4, '.1.32.394.3338.');
INSERT INTO `district` VALUES (3339, 394, '九龙坡区', 3, 4, '.1.32.394.3339.');
INSERT INTO `district` VALUES (3340, 394, '渝中区', 3, 4, '.1.32.394.3340.');
INSERT INTO `district` VALUES (3341, 394, '黔江开发区', 3, 4, '.1.32.394.3341.');
INSERT INTO `district` VALUES (3342, 394, '长寿区', 3, 4, '.1.32.394.3342.');
INSERT INTO `district` VALUES (3343, 394, '双桥区', 3, 4, '.1.32.394.3343.');
INSERT INTO `district` VALUES (3344, 394, '綦江县', 3, 4, '.1.32.394.3344.');
INSERT INTO `district` VALUES (3345, 394, '潼南县', 3, 4, '.1.32.394.3345.');
INSERT INTO `district` VALUES (3346, 394, '铜梁县', 3, 4, '.1.32.394.3346.');
INSERT INTO `district` VALUES (3347, 394, '大足县', 3, 4, '.1.32.394.3347.');
INSERT INTO `district` VALUES (3348, 394, '荣昌县', 3, 4, '.1.32.394.3348.');
INSERT INTO `district` VALUES (3349, 394, '璧山县', 3, 4, '.1.32.394.3349.');
INSERT INTO `district` VALUES (3350, 394, '垫江县', 3, 4, '.1.32.394.3350.');
INSERT INTO `district` VALUES (3351, 394, '武隆县', 3, 4, '.1.32.394.3351.');
INSERT INTO `district` VALUES (3352, 394, '丰都县', 3, 4, '.1.32.394.3352.');
INSERT INTO `district` VALUES (3353, 394, '城口县', 3, 4, '.1.32.394.3353.');
INSERT INTO `district` VALUES (3354, 394, '梁平县', 3, 4, '.1.32.394.3354.');
INSERT INTO `district` VALUES (3355, 394, '开县', 3, 4, '.1.32.394.3355.');
INSERT INTO `district` VALUES (3356, 394, '巫溪县', 3, 4, '.1.32.394.3356.');
INSERT INTO `district` VALUES (3357, 394, '巫山县', 3, 4, '.1.32.394.3357.');
INSERT INTO `district` VALUES (3358, 394, '奉节县', 3, 4, '.1.32.394.3358.');
INSERT INTO `district` VALUES (3359, 394, '云阳县', 3, 4, '.1.32.394.3359.');
INSERT INTO `district` VALUES (3360, 394, '忠县', 3, 4, '.1.32.394.3360.');
INSERT INTO `district` VALUES (3361, 394, '石柱', 3, 4, '.1.32.394.3361.');
INSERT INTO `district` VALUES (3362, 394, '彭水', 3, 4, '.1.32.394.3362.');
INSERT INTO `district` VALUES (3363, 394, '酉阳', 3, 4, '.1.32.394.3363.');
INSERT INTO `district` VALUES (3364, 394, '秀山', 3, 4, '.1.32.394.3364.');
INSERT INTO `district` VALUES (3365, 395, '沙田区', 3, 4, '.1.33.395.3365.');
INSERT INTO `district` VALUES (3366, 395, '东区', 3, 4, '.1.33.395.3366.');
INSERT INTO `district` VALUES (3367, 395, '观塘区', 3, 4, '.1.33.395.3367.');
INSERT INTO `district` VALUES (3368, 395, '黄大仙区', 3, 4, '.1.33.395.3368.');
INSERT INTO `district` VALUES (3369, 395, '九龙城区', 3, 4, '.1.33.395.3369.');
INSERT INTO `district` VALUES (3370, 395, '屯门区', 3, 4, '.1.33.395.3370.');
INSERT INTO `district` VALUES (3371, 395, '葵青区', 3, 4, '.1.33.395.3371.');
INSERT INTO `district` VALUES (3372, 395, '元朗区', 3, 4, '.1.33.395.3372.');
INSERT INTO `district` VALUES (3373, 395, '深水埗区', 3, 4, '.1.33.395.3373.');
INSERT INTO `district` VALUES (3374, 395, '西贡区', 3, 4, '.1.33.395.3374.');
INSERT INTO `district` VALUES (3375, 395, '大埔区', 3, 4, '.1.33.395.3375.');
INSERT INTO `district` VALUES (3376, 395, '湾仔区', 3, 4, '.1.33.395.3376.');
INSERT INTO `district` VALUES (3377, 395, '油尖旺区', 3, 4, '.1.33.395.3377.');
INSERT INTO `district` VALUES (3378, 395, '北区', 3, 4, '.1.33.395.3378.');
INSERT INTO `district` VALUES (3379, 395, '南区', 3, 4, '.1.33.395.3379.');
INSERT INTO `district` VALUES (3380, 395, '荃湾区', 3, 4, '.1.33.395.3380.');
INSERT INTO `district` VALUES (3381, 395, '中西区', 3, 4, '.1.33.395.3381.');
INSERT INTO `district` VALUES (3382, 395, '离岛区', 3, 4, '.1.33.395.3382.');
INSERT INTO `district` VALUES (3383, 396, '澳门', 3, 4, '.1.34.396.3383.');
INSERT INTO `district` VALUES (3384, 397, '台北', 3, 4, '.1.35.397.3384.');
INSERT INTO `district` VALUES (3385, 397, '高雄', 3, 4, '.1.35.397.3385.');
INSERT INTO `district` VALUES (3386, 397, '基隆', 3, 4, '.1.35.397.3386.');
INSERT INTO `district` VALUES (3387, 397, '台中', 3, 4, '.1.35.397.3387.');
INSERT INTO `district` VALUES (3388, 397, '台南', 3, 4, '.1.35.397.3388.');
INSERT INTO `district` VALUES (3389, 397, '新竹', 3, 4, '.1.35.397.3389.');
INSERT INTO `district` VALUES (3390, 397, '嘉义', 3, 4, '.1.35.397.3390.');
INSERT INTO `district` VALUES (3391, 397, '宜兰县', 3, 4, '.1.35.397.3391.');
INSERT INTO `district` VALUES (3392, 397, '桃园县', 3, 4, '.1.35.397.3392.');
INSERT INTO `district` VALUES (3393, 397, '苗栗县', 3, 4, '.1.35.397.3393.');
INSERT INTO `district` VALUES (3394, 397, '彰化县', 3, 4, '.1.35.397.3394.');
INSERT INTO `district` VALUES (3395, 397, '南投县', 3, 4, '.1.35.397.3395.');
INSERT INTO `district` VALUES (3396, 397, '云林县', 3, 4, '.1.35.397.3396.');
INSERT INTO `district` VALUES (3397, 397, '屏东县', 3, 4, '.1.35.397.3397.');
INSERT INTO `district` VALUES (3398, 397, '台东县', 3, 4, '.1.35.397.3398.');
INSERT INTO `district` VALUES (3399, 397, '花莲县', 3, 4, '.1.35.397.3399.');
INSERT INTO `district` VALUES (3400, 397, '澎湖县', 3, 4, '.1.35.397.3400.');
INSERT INTO `district` VALUES (3401, 3, '合肥', 2, 3, '.1.3.3401.');
INSERT INTO `district` VALUES (3402, 3401, '庐阳区', 3, 4, '.1.3.3401.3402.');
INSERT INTO `district` VALUES (3403, 3401, '瑶海区', 3, 4, '.1.3.3401.3403.');
INSERT INTO `district` VALUES (3404, 3401, '蜀山区', 3, 4, '.1.3.3401.3404.');
INSERT INTO `district` VALUES (3405, 3401, '包河区', 3, 4, '.1.3.3401.3405.');
INSERT INTO `district` VALUES (3406, 3401, '长丰县', 3, 4, '.1.3.3401.3406.');
INSERT INTO `district` VALUES (3407, 3401, '肥东县', 3, 4, '.1.3.3401.3407.');
INSERT INTO `district` VALUES (3408, 3401, '肥西县', 3, 4, '.1.3.3401.3408.');

-- ----------------------------
-- Table structure for educational
-- ----------------------------
DROP TABLE IF EXISTS `educational`;
CREATE TABLE `educational`  (
  `eduId` int(11) NOT NULL AUTO_INCREMENT COMMENT '教育程度编号',
  `eduName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教育程度名称',
  `eduOther` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教育程度其他说明',
  PRIMARY KEY (`eduId`) USING BTREE,
  INDEX `eduId`(`eduId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of educational
-- ----------------------------
INSERT INTO `educational` VALUES (1, '大专', NULL);
INSERT INTO `educational` VALUES (2, '本科', NULL);
INSERT INTO `educational` VALUES (3, '研究生', NULL);
INSERT INTO `educational` VALUES (4, '无', NULL);

-- ----------------------------
-- Table structure for electricmotor
-- ----------------------------
DROP TABLE IF EXISTS `electricmotor`;
CREATE TABLE `electricmotor`  (
  `EMID` int(11) NOT NULL AUTO_INCREMENT COMMENT '电动机ID',
  `EMtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电机类型',
  `EMaggregatecapacity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电机总功率',
  `EMTotaltorque` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电机总扭矩',
  `EMMaxpowerfrontmotor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前电动机最大功率',
  `EMMaxtorquefrontmotor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前电动机最大扭矩',
  `EMMaxpowerrearmotor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后电动机最大功率',
  `EMMaxtorquerearmotor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后电动机最大扭矩',
  `EMSystemIntegratedPower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统综合功率',
  `EMIntegratedtorquesys` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统综合扭矩',
  `EMNumbermotordrivers` int(11) NULL DEFAULT NULL COMMENT '驱动电机数',
  `EMMotorlayout` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电机布局',
  `EMBatteryType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电池类型',
  `EMPurerange` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工信部纯电续航里程',
  `EMenergycontentofbattery` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电池能量',
  `EM100kmelectricityconsumption` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '百公里耗电量',
  `EMBatterypackwarranty` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电池组质保',
  `EMQuickCharge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快充时间',
  `EMSlowChargeTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '慢充时间',
  `EMFast charge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快充电量',
  PRIMARY KEY (`EMID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of electricmotor
-- ----------------------------

-- ----------------------------
-- Table structure for engine
-- ----------------------------
DROP TABLE IF EXISTS `engine`;
CREATE TABLE `engine`  (
  `ENID` int(11) NOT NULL AUTO_INCREMENT COMMENT '发动机ID',
  `ENModel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发动机型号',
  `ENDisplacementML` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排量(毫升)',
  `ENDisplacementL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排量(升)',
  `ENAirIntake` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '进气形式',
  `ENCylinderArrangement` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '汽缸排列形式',
  `ENNumberCylinders` int(11) NULL DEFAULT NULL COMMENT '气缸个数',
  `ENNumberValvesPerCylinder` int(11) NULL DEFAULT NULL COMMENT '每缸气门数',
  `ENReductionRatio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '压缩比',
  `ENAdmissionGear` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配气机构',
  `ENCylinderDiameter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缸径',
  `ENDistanceRun` double NULL DEFAULT NULL COMMENT '行程',
  `ENMaximumHorsepower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最大马力(Ps)',
  `ENMaxPower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最大功率(kW)',
  `ENMaximumPowerSpeed` double NULL DEFAULT NULL COMMENT '最大功率转速(rpm)',
  `ENAcrotOrque` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最大扭矩(N-m)',
  `ENMaximumTorqueSpeed` double NULL DEFAULT NULL COMMENT '最大扭矩转速(rpm)',
  `ENSpecificTechnology` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发动机特有技术',
  `ENFuelForms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '燃料形式',
  `ENFuelLabel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '燃油编号',
  `ENFuelMode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '燃油方式',
  `ENFuelStandards` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '燃油标号',
  `ENOilSupply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供油方式',
  `ENCylinderCoverMaterial` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缸盖材料',
  `ENCylinderMaterials` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缸体材料',
  `ENEnvironmentalStandards` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '环保标准',
  PRIMARY KEY (`ENID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of engine
-- ----------------------------

-- ----------------------------
-- Table structure for enjoy
-- ----------------------------
DROP TABLE IF EXISTS `enjoy`;
CREATE TABLE `enjoy`  (
  `enjoyId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户爱好记录ID',
  `userId` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `carId` int(11) NULL DEFAULT NULL COMMENT '用户喜欢的车的编号',
  PRIMARY KEY (`enjoyId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of enjoy
-- ----------------------------

-- ----------------------------
-- Table structure for essentialparam
-- ----------------------------
DROP TABLE IF EXISTS `essentialparam`;
CREATE TABLE `essentialparam`  (
  `CEPID` int(11) NOT NULL COMMENT '基本参数ID',
  `CEPFirm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '厂商',
  `CEPLevel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '级别',
  `CEPEnergyType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '能源类型',
  `CEPEnvironmentalStandards` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '环保标准',
  `CEPListingTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上市时间',
  `CEPMaxPower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最大功率',
  `CEPAcrotOrque` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最大扭矩',
  `CEPEngine` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发动机',
  `CEPGearBox` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '变速箱',
  `CEPLength` double NULL DEFAULT NULL COMMENT '车身长',
  `CEPWidth` double NULL DEFAULT NULL COMMENT '车宽',
  `CEPHeight` double NULL DEFAULT NULL COMMENT '车高',
  `CEPBodywork` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车身结构',
  `CEPMaxSpeed` double NULL DEFAULT NULL COMMENT '最高车速',
  `CEPOfficial100kmhAcceleration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '官方百公里加速度',
  `CEPMeasured100kmhAcceleration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实测百公里加速度',
  `CEPMeasured100kmhBrake` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实测百公里制动',
  `CEPMIIT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工信部综合油耗',
  `CEPMeasuredFuelConsumption` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实测油耗',
  `CEPVehicleWarranty` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '整车质保',
  PRIMARY KEY (`CEPID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of essentialparam
-- ----------------------------
INSERT INTO `essentialparam` VALUES (1, '一汽-大众奥迪', '中型车', '汽油', '国V', '2018.10', '110', '250', '1.4T 150马力L4', '7档双离合', 4837, 1843, 1432, '4门5座三厢车', 205, '9.4', '-', '-', '5.8', '-', '三年或10万公里');

-- ----------------------------
-- Table structure for exteriorsecurity
-- ----------------------------
DROP TABLE IF EXISTS `exteriorsecurity`;
CREATE TABLE `exteriorsecurity`  (
  `ESID` int(11) NOT NULL AUTO_INCREMENT COMMENT '外部/防盗配置ID',
  `ESSkylightType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '天窗类型',
  `ESSportsPackage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运动外观套件',
  `ESRimMaterial` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮圈材质',
  `ESElectricSuctionDoor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电动吸合车门',
  `ESSlidingDoorType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '侧滑门形式',
  `ESElectricTrunk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电动后备箱',
  `ESInductionTrunk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '感应后备箱',
  `ESElectricTrunkLocationMemory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电动后备箱位置记忆',
  `ESSternDoorGlassOpensIndependently` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '尾门玻璃独立开启',
  `ESRoofRack` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车顶行李架',
  `ESEngineElectronicTheft` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发动机电子防盗',
  `ESInteriorControlLock` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车内中控锁',
  `ESKeyType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '钥匙类型',
  `ESKeylessStart` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '无钥匙启动',
  `ESKeylessEntry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '无钥匙进入',
  `ESActiveClosedIntakeGrille` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主动闭合式进气格栅',
  `ESRemoteStart` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '远程启动',
  `ESSidePedal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车侧脚踏板',
  `ESBatteryPreheating` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电池预加热',
  PRIMARY KEY (`ESID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exteriorsecurity
-- ----------------------------

-- ----------------------------
-- Table structure for gearbox
-- ----------------------------
DROP TABLE IF EXISTS `gearbox`;
CREATE TABLE `gearbox`  (
  `GBID` int(11) NOT NULL AUTO_INCREMENT COMMENT '变速箱ID',
  `GBNumber` int(20) NULL DEFAULT NULL COMMENT '变速杆数目',
  `GBStyle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '变速箱类型',
  `GBAbbreviation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简称',
  PRIMARY KEY (`GBID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gearbox
-- ----------------------------

-- ----------------------------
-- Table structure for glassrearviewmirror
-- ----------------------------
DROP TABLE IF EXISTS `glassrearviewmirror`;
CREATE TABLE `glassrearviewmirror`  (
  `GRMID` int(11) NOT NULL COMMENT '玻璃后视镜配置iD',
  `GRMElectricwindow` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前后电动车窗',
  `GRMOnebuttonwindowlifting` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车窗一键升降',
  `GRMWindowantipinch` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车窗防夹手',
  `GRMMultilayersoundproofglass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '多层隔音玻璃',
  `GRMExteriormirror` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外后视镜',
  `GRMInteriormirror` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内后视镜',
  `GRMRearwindshieldblind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后风挡遮阳帘',
  `GRMRearsidewindowblind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排侧窗遮阳帘',
  `GRMRearsideprivacyglass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排侧隐私玻璃',
  `GRMInteriorvanitymirror` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车内化妆镜',
  `GRMRearwiper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后雨刷',
  `GRMSensingwiper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '感应雨刷功能',
  `GMRHeatedPenshui` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可加热喷水嘴',
  PRIMARY KEY (`GRMID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of glassrearviewmirror
-- ----------------------------

-- ----------------------------
-- Table structure for internal
-- ----------------------------
DROP TABLE IF EXISTS `internal`;
CREATE TABLE `internal`  (
  `IID` int(11) NOT NULL AUTO_INCREMENT COMMENT '内部配置ID',
  `ISWmaterial` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方向盘材质',
  `ISWadjust` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方向盘调节位置',
  `IMultifuncSW` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '多功能方向盘',
  `ISWshift` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方向盘换挡',
  `ISWheating` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方向盘加热',
  `ISWmemory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方向盘记忆',
  `IDrivingcomputerdisplayscreen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行车电脑显示屏幕',
  `IFullLCDinstrumentpanel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '全液晶仪表盘',
  `ILiquidcrystalinstrumentsize` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '液晶仪表尺寸',
  `IHBUhead-updigitaldisplay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'HBU抬头数字显示',
  `IBuilt-incarrecorder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内置行车记录仪',
  `IActivenoisecontrol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主动降噪',
  `IWirelesschargingofmobilephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机无线充电功能',
  `IElectricadjustablepedal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电动可调踏板',
  PRIMARY KEY (`IID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of internal
-- ----------------------------

-- ----------------------------
-- Table structure for lightingconfig
-- ----------------------------
DROP TABLE IF EXISTS `lightingconfig`;
CREATE TABLE `lightingconfig`  (
  `LCID` int(11) NOT NULL AUTO_INCREMENT COMMENT '灯光配置ID',
  `LCLowbeamlightsource` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '近光灯光源',
  `LCHighbeamlightsource` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '远光灯光源',
  `LCLightingfeatures` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '灯光特色功能',
  `LCLEDdaytimerunlight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'LED日间行车灯',
  `LCAdaptivehighlowbeam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自适应远近光',
  `LCAutomaticheadlamp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自动头灯',
  `LCSteeringassistlamp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转向辅助灯',
  `LCTurnheadlamp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转向头灯',
  `LCFrontfoglamp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车前雾灯',
  `LCHeadlamprainmode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前大灯雨幕模式',
  `LCAdjustableheadlightheight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大灯高度可调',
  `LCHeadlightcleaningdevice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大灯清洗装置',
  `LCHeadlampdelayoff` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大灯延时关闭',
  `LCTouchreadinglamp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '触摸式阅读灯',
  `LCInteriorambiencelight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车内环境氛围灯',
  PRIMARY KEY (`LCID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lightingconfig
-- ----------------------------

-- ----------------------------
-- Table structure for multimediaconfig
-- ----------------------------
DROP TABLE IF EXISTS `multimediaconfig`;
CREATE TABLE `multimediaconfig`  (
  `MCID` int(11) NOT NULL COMMENT '多媒体配置ID',
  `MCCentralcontrolcolorLCDscreen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中控彩色液晶屏幕',
  `MCSizecentralcontrolLCD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中控液晶屏尺寸',
  `MCGPS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'GPS导航系统',
  `MCNavigationroadinfodisplay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导航路况信息显示',
  `MCRoadrescuecall` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '道路救援呼叫',
  `MCSplitscreendisplaycentralcontrol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中控液晶屏分屏显示',
  `MCCarphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车载电话',
  `MCMobilephoneinterconnection` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机互联',
  `MCSpeechrecognitioncontrol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '语音识别控制系统',
  `MCGesturecontrol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手势控制',
  `MCFacerecognition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面部识别系统',
  `MCVehicleinterconnection` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车联网',
  `MCOTAupgrade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'OTA升级',
  `MCCarTV` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车载电视',
  `MCRearLCDscreen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排液晶屏幕',
  `MCRearcontrolmultimedia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排控制多媒体',
  `MCExternalaudiosourceinterfacetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外接音频接口类型',
  `MCNumberUSBinterfaces` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'USB/Type-C接口数量',
  `MCVehiclemountedVCD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车载VCD',
  `MC220230Power` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '220V/230V电源',
  `MCTrunk12Vpowerinterface` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行李箱12v电源接口',
  `MCSpeakerbrandname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扬声器品牌名称',
  `MCNumberspeakers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扬声器数量',
  PRIMARY KEY (`MCID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of multimediaconfig
-- ----------------------------

-- ----------------------------
-- Table structure for orderform
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform`  (
  `ofId` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `userId` int(11) NULL DEFAULT NULL COMMENT '购买用户ID',
  `carId` int(11) NULL DEFAULT NULL COMMENT '购买的车ID',
  `ofTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '购买时间',
  `ofState` int(11) NULL DEFAULT NULL COMMENT '订单状态',
  `ofComment` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '订单评价',
  `ofPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单价格',
  PRIMARY KEY (`ofId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `carId`(`carId`) USING BTREE,
  CONSTRAINT `orderform_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderform_ibfk_2` FOREIGN KEY (`carId`) REFERENCES `car` (`carId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orderform
-- ----------------------------
INSERT INTO `orderform` VALUES (1, 1, 1, '2020-03-19 18:11:34', 1, '车很好', 1000000.00);

-- ----------------------------
-- Table structure for packageselect
-- ----------------------------
DROP TABLE IF EXISTS `packageselect`;
CREATE TABLE `packageselect`  (
  `PSID` int(11) NOT NULL AUTO_INCREMENT COMMENT '选装包ID',
  `PSNameAndPrice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选装包名和价格',
  `PSAppearanceColor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外观颜色',
  `PSInteriorColor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内饰颜色',
  PRIMARY KEY (`PSID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of packageselect
-- ----------------------------

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat`  (
  `SID` int(11) NOT NULL AUTO_INCREMENT COMMENT '座椅ID',
  `STheSeatMaterial` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座椅材质',
  `SSportsSeats` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运动风格座椅',
  `SMainSeatAdjustmentMode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主座椅调节方式',
  `SViceSeatAdjustmentMode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副座椅调节方式',
  `SSeatMotorControl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主副驾驶座电动调节',
  `SFrontSeatFunction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前排座椅功能',
  `SElectricChairMemory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电动座椅记忆功能',
  `STheBackAdjustsViceSeat Button` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副驾驶位后排可调节按钮',
  `SSecondRowSeatAdjustment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第二排座椅调节',
  `SBackRowSeatFunction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排座椅电动调节',
  `SBackRowFunctionSeat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排座椅功能',
  `SBackRowSmallTable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排小桌板',
  `SSecondRowIndependentSeats` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第二排独立座椅',
  `SSeatLayout` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座椅布局',
  `SBackRowSeatInvertedForm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排座椅放倒形式',
  `STheRearSeatElectricallyReclined` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排座椅电动放倒',
  `SFrontAndRearCenterHandrail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前后中央扶手',
  `STheRearStand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后排杯架',
  `SHeatCoolingCupHolder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加热制冷杯架',
  PRIMARY KEY (`SID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of seat
-- ----------------------------

-- ----------------------------
-- Table structure for shops
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops`  (
  `shopsId` int(11) NOT NULL AUTO_INCREMENT COMMENT '商铺ID',
  `shopsName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商铺名字',
  `shopsDis` int(11) NULL DEFAULT NULL COMMENT '商铺地址',
  `shopsIntro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商铺介绍',
  `shopsStarLevel` int(11) NULL DEFAULT NULL COMMENT '商铺星级',
  `shopsPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商铺图片',
  `shopsAvatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商铺头像地址',
  `shopsPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商铺联系方式',
  `userId` int(11) NULL DEFAULT NULL COMMENT '商铺拥有者',
  PRIMARY KEY (`shopsId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shops
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `userAvatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像地址',
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `userPassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `userAge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户年龄',
  `userSex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `userEdu` int(255) NULL DEFAULT NULL COMMENT '用户教育程度ID',
  `userConstellation` int(255) NULL DEFAULT NULL COMMENT '用户星座ID',
  `userDistrict` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户地址ID',
  `workID` int(255) NULL DEFAULT NULL COMMENT '工作性质ID',
  PRIMARY KEY (`userId`) USING BTREE,
  INDEX `userEdu`(`userEdu`) USING BTREE,
  INDEX `userConstellation`(`userConstellation`) USING BTREE,
  INDEX `userDistrict`(`userDistrict`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '2.png', '用户2', '1', '20', '男', 1, 1, '2', 1);
INSERT INTO `user` VALUES (4, '2.png', '用户2', '2', '20', '男', 1, 1, '2', 1);
INSERT INTO `user` VALUES (5, '2.png', '用户2', '2', '20', '男', 1, 1, '12', 1);
INSERT INTO `user` VALUES (6, '2.png', '用户2', '2', '20', '男', 1, 1, '12', 1);
INSERT INTO `user` VALUES (7, '2.png', '用户2', '2', '20', '男', 1, 1, '12', 1);
INSERT INTO `user` VALUES (8, '2.png', '用户2', '2', '20', '男', 1, 1, '12', 1);
INSERT INTO `user` VALUES (9, '2.png', '用户2', '2', '20', '男', 1, 1, '12', 1);
INSERT INTO `user` VALUES (10, '2.png', '用户2', '2', '20', '男', 1, 1, '12', 1);
INSERT INTO `user` VALUES (11, '2.png', '用户2', '2', '20', '男', 1, 1, '12', 1);
INSERT INTO `user` VALUES (12, '2.png', '用户2', '2', '20', '男', 1, 1, '12', 1);
INSERT INTO `user` VALUES (13, '2.png', '用户2', '2', '20', '男', 1, 1, '12', 1);
INSERT INTO `user` VALUES (14, '2.png', '用户2', '2', '20', '男', 1, 1, '12', 1);

-- ----------------------------
-- Table structure for userwork
-- ----------------------------
DROP TABLE IF EXISTS `userwork`;
CREATE TABLE `userwork`  (
  `workID` int(11) NOT NULL AUTO_INCREMENT COMMENT '工作性质ID',
  `workName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作名',
  `workDistrict` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作地点',
  PRIMARY KEY (`workID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userwork
-- ----------------------------
INSERT INTO `userwork` VALUES (1, '个体（开店、运输、跑业务多的、地区代理等等）', NULL);
INSERT INTO `userwork` VALUES (2, '公务员', NULL);
INSERT INTO `userwork` VALUES (3, '事业编制', NULL);
INSERT INTO `userwork` VALUES (4, '企业蓝领', NULL);
INSERT INTO `userwork` VALUES (5, '都市白领', NULL);

-- ----------------------------
-- Table structure for wheelbrake
-- ----------------------------
DROP TABLE IF EXISTS `wheelbrake`;
CREATE TABLE `wheelbrake`  (
  `WBID` int(11) NOT NULL AUTO_INCREMENT COMMENT '车轮制动ID',
  `WBFrontBrakeType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前制动器类型',
  `WBRearBrakeType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后制动器类型',
  `WBCarBrakeType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' 驻车制动类型',
  `WBFrontTyre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' 前轮胎规格',
  `WBRearTyre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后轮胎规格',
  `WBSpareTyre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' 备胎规格',
  PRIMARY KEY (`WBID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wheelbrake
-- ----------------------------
INSERT INTO `wheelbrake` VALUES (1, '通风盘式', '盘式', '电子驻车', '225/50 R17', '225/50 R17', '非全尺寸');

SET FOREIGN_KEY_CHECKS = 1;
