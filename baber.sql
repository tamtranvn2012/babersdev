/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : baber

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2013-08-11 16:02:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `approveprofile`
-- ----------------------------
DROP TABLE IF EXISTS `approveprofile`;
CREATE TABLE `approveprofile` (
  `upid` int(11) DEFAULT NULL,
  `bpid` int(11) DEFAULT NULL,
  `isapproved` tinyint(1) DEFAULT NULL,
  `apid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`apid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of approveprofile
-- ----------------------------
INSERT INTO approveprofile VALUES ('1', '2', '1', '1');
INSERT INTO approveprofile VALUES ('3', '2', '1', '2');
INSERT INTO approveprofile VALUES ('5', '2', '1', '3');
INSERT INTO approveprofile VALUES ('1', '2', '1', '4');
INSERT INTO approveprofile VALUES ('8', '2', '1', '5');

-- ----------------------------
-- Table structure for `bussinessprofile`
-- ----------------------------
DROP TABLE IF EXISTS `bussinessprofile`;
CREATE TABLE `bussinessprofile` (
  `bpid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `photo_link` varchar(255) DEFAULT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `zip` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `instantgram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `favorites_tool` text,
  `private` tinyint(1) DEFAULT NULL,
  `babershopname` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `slug` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`bpid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bussinessprofile
-- ----------------------------
INSERT INTO bussinessprofile VALUES ('1', '8', '8___2013_08_08___491_beautiful_hair5.jpg', '3 kiet 258 le duan bus', 'Hue', 'Hu', '47000', '0543581097', 'myins', 'myface', 'knife,cutter', '0', 'hoanthanh', '1376015243', 'rvengine');
INSERT INTO bussinessprofile VALUES ('2', '9', '8___2013_08_08___Beautiful_Hair.jpg', '56 kiet 23 dinh tien hoan', 'Hue', 'Hu', 'test zip code', '0543567833', 'cusins', 'cusface', 'knife,cutter,hair', '0', 'thanhhobbshop', '1376015243', 'rvengine1');
INSERT INTO bussinessprofile VALUES ('3', '10', '8___2013_08_08___thumb_1114_brown_hair_1.jpg', '2 kiet 44 Phan Boi Chau', 'DaNang', 'DN', 'zip danang', '0443333555', 'dncusins', 'dnface', 'cutter,hair,tool', '0', 'songlamshop', '1376015243', 'rvengine2');
INSERT INTO bussinessprofile VALUES ('4', '11', '8___2013_08_08___red_hair_beauty_smile_look_nice_girl_hair_perfection_33305_1600x1200.jpg', '33 kiet 22 phan dinh phung', 'Ho Chi Minh', 'HCM', '33440', '32456788', 'hcmins', 'hcmface', 'cutter,hair,tool', '0', 'thanhhohcmshop', '1376015243', 'rvengine3');
INSERT INTO bussinessprofile VALUES ('5', '12', '8___2013_08_09___images_11.jpg', '33 kiet 22 phan dinh phung', 'Phan Ran', 'Pr', '226677 zip', '3256678890', 'Prins', 'Prface', 'cutter hair', '0', 'congthanhshop', '1376015243', 'rvengine4');
INSERT INTO bussinessprofile VALUES ('6', '9', '8___2013_08_09___images_11.jpg', '3 kiet 258 le duan', 'Hue', 'Hu', '47600', '0543581097', 'myinsta1', 'thanhface1', 'cutter hair', '0', 'nhanshop', '1376015243', 'rvengine1');
INSERT INTO bussinessprofile VALUES ('7', '10', '8___2013_08_09___images_11.jpg', '3 kiet 258 le duan', 'Hoi An', 'Hue', '7800', '0123456789', 'myinsta10', 'thanhface1', 'cutter,hair,tool', '0', 'songlamshop1', '1376015243', 'rvengine2');
INSERT INTO bussinessprofile VALUES ('8', '8', '8___2013_08_09___images_11.jpg', '3 kiet 258 le duan', 'Hoi An', 'Hue', '89007', '0123456789', 'myinsta10', 'thanhface1', 'cutter,hair,tool', '0', 'songlamshop2', '1376015243', 'rvengine9');

-- ----------------------------
-- Table structure for `photos`
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_link` varchar(255) DEFAULT NULL,
  `photo_tag` text,
  `userid` int(11) DEFAULT NULL,
  `isprivate` tinyint(1) DEFAULT NULL,
  `baber_name` varchar(255) DEFAULT NULL,
  `photo_img_link` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `baber_type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO photos VALUES ('3', 'test baber 1', 'baber1', '8', '0', 'baber1', '8___2013_08_08___35G1953_v4_copy1.jpg', '1375961551', 'barbershop');
INSERT INTO photos VALUES ('4', 'test baber 1', 'baber1', '8', '0', 'baber1', '8___2013_08_08___35G1953_v4_copy1.jpg', '1375961551', 'barbershop');
INSERT INTO photos VALUES ('5', 'test baber 2', 'test baber 3', '8', '0', 'test baber 3', '8___2013_08_08___491_beautiful_hair5.jpg', '1375961551', 'hair salon');
INSERT INTO photos VALUES ('6', 'test baber 4', 'test baber 4', '9', '0', 'test baber 4', '8___2013_08_08___Beautiful_Hair.jpg', '1375961551', 'hair salon');
INSERT INTO photos VALUES ('7', 'test baber 5', 'test baber 5', '9', '0', 'test baber 6', '8___2013_08_08___beautiful_long_hair.jpg', '1375961551', 'stylist');
INSERT INTO photos VALUES ('9', 'test baber 6', 'test baber 6', '10', '0', 'test baber 7', '8___2013_08_08___thumb_1114_brown_hair_1.jpg', '1375961551', 'stylist');
INSERT INTO photos VALUES ('10', 'test baber 6', 'test baber 6', '10', '0', 'test baber 7', '8___2013_08_08___silky_hair_beauty_317906.jpg', '1375961551', 'stylist');
INSERT INTO photos VALUES ('11', 'test baber 10', 'test baber 10', '10', '0', 'test baber 10', '8___2013_08_08___red_hair_beauty_smile_look_nice_girl_hair_perfection_33305_1600x1200.jpg', '1375961551', 'stylist');
INSERT INTO photos VALUES ('12', 'test baber 9', 'test baber 9', '11', '0', 'test baber 9 name', '8___2013_08_09___images09.jpg', '1376014567', 'stylist');
INSERT INTO photos VALUES ('13', 'test baber 10', 'test baber 10', '11', '0', 'test baber 10 name', '8___2013_08_09___images_10.jpg', '1376014982', 'hair salon');
INSERT INTO photos VALUES ('14', 'test baber 11', 'test baber 11', '11', '0', 'test baber 11 name', '8___2013_08_09___images_11.jpg', '1376015081', 'hair salon');
INSERT INTO photos VALUES ('15', 'test baber 12', 'test baber 12', '11', '0', 'test baber 12 name', '8___2013_08_09___images12.jpg', '1376015154', 'barbershop');
INSERT INTO photos VALUES ('16', 'test baber 13', 'test baber 13', '12', '0', 'test baber 13 name', '8___2013_08_09___good_h11.jpg', '1376015243', 'hair salon');
INSERT INTO photos VALUES ('17', 'test baber 13', 'test baber 13', '12', '0', 'test baber 13 name', '8___2013_08_09___good_h11.jpg', '1376015243', 'hair salon');

-- ----------------------------
-- Table structure for `photo_tmp`
-- ----------------------------
DROP TABLE IF EXISTS `photo_tmp`;
CREATE TABLE `photo_tmp` (
  `user_id_tmp` int(11) DEFAULT NULL,
  `photo_link_tmp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of photo_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for `postapprovedprofile`
-- ----------------------------
DROP TABLE IF EXISTS `postapprovedprofile`;
CREATE TABLE `postapprovedprofile` (
  `ppid` int(11) NOT NULL AUTO_INCREMENT,
  `apid` int(11) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `babershopname` varchar(255) DEFAULT NULL,
  `baber_type` varchar(32) DEFAULT NULL,
  `baber_name` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `tag` text,
  `private` tinyint(1) DEFAULT NULL,
  `photo_img_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ppid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of postapprovedprofile
-- ----------------------------
INSERT INTO postapprovedprofile VALUES ('1', '1', '5', 'test baber shop', 'hair salon', 'song lam baber', '1376015243', 'test tag,hair,stylist 5', '0', null);
INSERT INTO postapprovedprofile VALUES ('2', '1', '4', 'test baber shop', 'stylist', 'thanh ho baber', '1376015243', 'test tag,hair,stylist 4', '0', null);
INSERT INTO postapprovedprofile VALUES ('3', '2', '9', 'test baber shop', 'hair salon', 'nhan duyen baber', '1376015243', 'test tag,hair,stylist 3', '0', null);
INSERT INTO postapprovedprofile VALUES ('4', '2', '11', 'test baber shop', 'stylist', 'thien thanh baber', '1376015243', 'test tag,hair,stylist 2', '0', null);
INSERT INTO postapprovedprofile VALUES ('5', '3', '16', 'test baber shop', 'hair salon', 'hoan thanh baber', '1376015243', 'test tag,hair,stylist 2', '0', null);
INSERT INTO postapprovedprofile VALUES ('6', '4', '5', 'test baber shop', 'hair salon', 'hoan thanh baber', '1376015243', 'test tag,hair,stylist 2', '0', null);
INSERT INTO postapprovedprofile VALUES ('7', '1', '4', 'test baber shop', 'hair salon', 'thien thanh baber', '1376015243', 'test tag,hair,stylist 2', '0', null);
INSERT INTO postapprovedprofile VALUES ('8', '2', '9', 'test baber shop', 'stylist', 'nhan duyen baber', '1376015243', 'test tag,hair,stylist 2', '0', null);
INSERT INTO postapprovedprofile VALUES ('9', '4', '11', 'test baber shop', 'stylist', 'nhan duyen baber', '1376015243', 'test tag,hair,stylist 2', '0', null);
INSERT INTO postapprovedprofile VALUES ('10', '3', '16', 'test baber shop', 'hair salon', 'nhan duyen baber', '1376015243', 'test tag,hair,stylist 2', '0', null);
INSERT INTO postapprovedprofile VALUES ('11', '4', '5', 'test baber shop', 'stylist', 'thanh ho baber', '1376015243', 'test tag,hair,stylist 2', '0', null);
INSERT INTO postapprovedprofile VALUES ('12', '2', '9', 'test baber shop', 'stylist', 'thanh ho baber', '1376015243', 'test tag,hair,stylist 2', '0', null);
INSERT INTO postapprovedprofile VALUES ('13', '3', '16', 'test baber shop', 'stylist', 'song lam baber', '1376015243', 'test tag,hair,stylist 2', '0', null);

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `test1` varchar(100) DEFAULT NULL,
  `test2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO test VALUES ('t1', 't2');
INSERT INTO test VALUES ('q1', 'q2');
INSERT INTO test VALUES ('e1', 'e2');

-- ----------------------------
-- Table structure for `upload_tmp`
-- ----------------------------
DROP TABLE IF EXISTS `upload_tmp`;
CREATE TABLE `upload_tmp` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of upload_tmp
-- ----------------------------
INSERT INTO upload_tmp VALUES ('1');
INSERT INTO upload_tmp VALUES ('2');
INSERT INTO upload_tmp VALUES ('3');
INSERT INTO upload_tmp VALUES ('4');
INSERT INTO upload_tmp VALUES ('5');
INSERT INTO upload_tmp VALUES ('6');
INSERT INTO upload_tmp VALUES ('7');
INSERT INTO upload_tmp VALUES ('8');
INSERT INTO upload_tmp VALUES ('9');
INSERT INTO upload_tmp VALUES ('10');
INSERT INTO upload_tmp VALUES ('11');
INSERT INTO upload_tmp VALUES ('12');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) DEFAULT NULL,
  `salt` varchar(3) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO user VALUES ('rvengine', 'ZDIxY2JhZmNjOGRjYTY2NTBiYTc3Mjlj', '8', '1376100216', 'h5f', 'test@test.com');
INSERT INTO user VALUES ('rvengine1', 'ZDIxY2JhZmNjOGRjYTY2NTBiYTc3Mjlj', '9', '1376100216', 'h5f', 'test1@test.com');
INSERT INTO user VALUES ('rvengine2', 'ZDIxY2JhZmNjOGRjYTY2NTBiYTc3Mjlj', '10', '1376100216', 'h5f', 'test2@test.com');
INSERT INTO user VALUES ('rvengine3', 'ZDIxY2JhZmNjOGRjYTY2NTBiYTc3Mjlj', '11', '1376100216', 'h5f', 'test3@test.com');
INSERT INTO user VALUES ('rvengine4', 'ZDIxY2JhZmNjOGRjYTY2NTBiYTc3Mjlj', '12', '1376100216', 'h5f', 'test4@test.com');
INSERT INTO user VALUES ('rvenginenew', 'ZDIxY2JhZmNjOGRjYTY2NTBiYTc3Mjlj', '14', '1376100216', 'h5f', 'test4@test.com');

-- ----------------------------
-- Table structure for `userprofile`
-- ----------------------------
DROP TABLE IF EXISTS `userprofile`;
CREATE TABLE `userprofile` (
  `upid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `photo_link` varchar(255) DEFAULT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `zip` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `instantgram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `favorites_tool` text,
  `private` tinyint(1) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `slug` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`upid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userprofile
-- ----------------------------
INSERT INTO userprofile VALUES ('1', '8', '8___2013_08_08___35G1953_v4_copy1.jpg', '3 kiet 258', 'hue', 'hu', '47000', '01689120525', 'thanhhoins', 'thanhhoface', 'knife,cut', '0', '1376015243', null);
INSERT INTO userprofile VALUES ('2', '9', '8___2013_08_08___35G1953_v4_copy1.jpg', '3 kiet 258 uid 9', 'hue', 'hu', '47000', '01689120525', 'thanhhoins9', 'thanhhoface9', 'knife,cut', '0', '1376015243', null);
INSERT INTO userprofile VALUES ('3', '10', '8___2013_08_08___35G1953_v4_copy1.jpg', '3 kiet 258 uid 10', 'hue', 'hu', '47000', '01689120525', 'thanhhoins10', 'thanhhoface10', 'knife,cut', '0', '1376015243', null);
INSERT INTO userprofile VALUES ('4', '11', '8___2013_08_08___35G1953_v4_copy1.jpg', '3 kiet 258 uid 10', 'hue', 'hu', '47000', '01689120525', 'thanhhoins11', 'thanhhoface11', 'knife,cut', '0', '1376015243', null);
INSERT INTO userprofile VALUES ('5', '12', '8___2013_08_08___35G1953_v4_copy1.jpg', '3 kiet 258 uid 10', 'hue', 'hu', '47000', '01689120525', 'thanhhoins12', 'thanhhoface12', 'knife,cut', '0', '1376015243', null);