
-- 

CREATE TABLE `mainmodel` (
  `piece_id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `material_name` varchar(255) NOT NULL,
  `section` varchar(20) NOT NULL,
  `material_val` varchar(40) NOT NULL,
  `checked_out` varchar(255) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `mainmodel`
-- 

INSERT INTO `mainmodel` VALUES (1, NULL, 'material_0', 'section_0', 'sec0_initialShadingGroup1', 'false');
INSERT INTO `mainmodel` VALUES (2, NULL, 'material_1', 'section_1', 'sec1_initialShadingGroup1', 'false');
INSERT INTO `mainmodel` VALUES (3, NULL, 'material_2', 'section_2', 'sec2_initialShadingGroup1', 'false');
INSERT INTO `mainmodel` VALUES (4, NULL, 'material_3', 'section_3', 'sec3_initialShadingGroup1', 'false');
INSERT INTO `mainmodel` VALUES (5, NULL, 'material_4', 'section_4', 'sec4_initialShadingGroup1', 'false');
INSERT INTO `mainmodel` VALUES (6, NULL, 'material_5', 'section_5', 'sec5_initialShadingGroup1', 'false');
INSERT INTO `mainmodel` VALUES (7, NULL, 'material_6', 'section_6', 'sec6_initialShadingGroup1', 'false');
INSERT INTO `mainmodel` VALUES (8, NULL, 'material_7', 'section_7', 'sec7_initialShadingGroup1', 'false');

-- --------------------------------------------------------

-- 
-- Table structure for table `parts`
-- 

CREATE TABLE `parts` (
  `fileName` varchar(255) NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

-- 
-- Dumping data for table `parts`
-- 

INSERT INTO `parts` VALUES ('P001.stl', 1);
INSERT INTO `parts` VALUES ('P002.stl', 2);
INSERT INTO `parts` VALUES ('P003.stl', 3);
INSERT INTO `parts` VALUES ('P004.stl', 4);
INSERT INTO `parts` VALUES ('P005.stl', 5);
INSERT INTO `parts` VALUES ('P006.stl', 6);
INSERT INTO `parts` VALUES ('P007.stl', 7);
INSERT INTO `parts` VALUES ('P008.stl', 8);
INSERT INTO `parts` VALUES ('P009.stl', 9);
INSERT INTO `parts` VALUES ('P010.stl', 10);
INSERT INTO `parts` VALUES ('P011.stl', 11);
INSERT INTO `parts` VALUES ('P012.stl', 12);
INSERT INTO `parts` VALUES ('P013.stl', 13);
INSERT INTO `parts` VALUES ('P014.stl', 14);
INSERT INTO `parts` VALUES ('P015.stl', 15);
INSERT INTO `parts` VALUES ('P016.stl', 16);
INSERT INTO `parts` VALUES ('P017.stl', 17);
INSERT INTO `parts` VALUES ('P018.stl', 18);
INSERT INTO `parts` VALUES ('P019.stl', 19);
INSERT INTO `parts` VALUES ('P020.stl', 20);
INSERT INTO `parts` VALUES ('P021.stl', 21);
INSERT INTO `parts` VALUES ('P022.stl', 22);
INSERT INTO `parts` VALUES ('P023.stl', 23);
INSERT INTO `parts` VALUES ('P024.stl', 24);
INSERT INTO `parts` VALUES ('P025.stl', 25);
INSERT INTO `parts` VALUES ('P026.stl', 26);
INSERT INTO `parts` VALUES ('P027.stl', 27);
INSERT INTO `parts` VALUES ('P028.stl', 28);
INSERT INTO `parts` VALUES ('P029.stl', 29);
INSERT INTO `parts` VALUES ('P030.stl', 30);
INSERT INTO `parts` VALUES ('P031.stl', 31);
INSERT INTO `parts` VALUES ('P032.stl', 32);
INSERT INTO `parts` VALUES ('P033.stl', 33);
INSERT INTO `parts` VALUES ('P034.stl', 34);
INSERT INTO `parts` VALUES ('P035.stl', 35);
INSERT INTO `parts` VALUES ('P036.stl', 36);
INSERT INTO `parts` VALUES ('P037.stl', 37);
INSERT INTO `parts` VALUES ('P038.stl', 38);
INSERT INTO `parts` VALUES ('P039.stl', 39);
INSERT INTO `parts` VALUES ('P040.stl', 40);
INSERT INTO `parts` VALUES ('P041.stl', 41);
INSERT INTO `parts` VALUES ('P042.stl', 42);
INSERT INTO `parts` VALUES ('P043.stl', 43);
INSERT INTO `parts` VALUES ('P044.stl', 44);
INSERT INTO `parts` VALUES ('P045.stl', 45);
INSERT INTO `parts` VALUES ('P046.stl', 46);
INSERT INTO `parts` VALUES ('P047.stl', 47);
INSERT INTO `parts` VALUES ('P048.stl', 48);
INSERT INTO `parts` VALUES ('P049.stl', 49);
INSERT INTO `parts` VALUES ('P050.stl', 50);
INSERT INTO `parts` VALUES ('P051.stl', 51);
INSERT INTO `parts` VALUES ('P052.stl', 52);
INSERT INTO `parts` VALUES ('P053.stl', 53);
INSERT INTO `parts` VALUES ('P054.stl', 54);
INSERT INTO `parts` VALUES ('P055.stl', 55);
INSERT INTO `parts` VALUES ('P056.stl', 56);
INSERT INTO `parts` VALUES ('P057.stl', 57);
INSERT INTO `parts` VALUES ('P058.stl', 58);
INSERT INTO `parts` VALUES ('P059.stl', 59);
INSERT INTO `parts` VALUES ('P060.stl', 60);
INSERT INTO `parts` VALUES ('P061.stl', 61);
INSERT INTO `parts` VALUES ('P062.stl', 62);
INSERT INTO `parts` VALUES ('P063.stl', 63);
INSERT INTO `parts` VALUES ('P064.stl', 64);
INSERT INTO `parts` VALUES ('P065.stl', 65);
INSERT INTO `parts` VALUES ('P066.stl', 66);
INSERT INTO `parts` VALUES ('P067.stl', 67);
INSERT INTO `parts` VALUES ('P068.stl', 68);
INSERT INTO `parts` VALUES ('P069.stl', 69);
INSERT INTO `parts` VALUES ('P070.stl', 70);
INSERT INTO `parts` VALUES ('P071.stl', 71);
INSERT INTO `parts` VALUES ('P072.stl', 72);
INSERT INTO `parts` VALUES ('P073.stl', 73);
INSERT INTO `parts` VALUES ('P074.stl', 74);
INSERT INTO `parts` VALUES ('P075.stl', 75);
INSERT INTO `parts` VALUES ('P076.stl', 76);
INSERT INTO `parts` VALUES ('P077.stl', 77);
INSERT INTO `parts` VALUES ('P078.stl', 78);
INSERT INTO `parts` VALUES ('P079.stl', 79);
INSERT INTO `parts` VALUES ('P080.stl', 80);
INSERT INTO `parts` VALUES ('P081.stl', 81);
INSERT INTO `parts` VALUES ('P082.stl', 82);
INSERT INTO `parts` VALUES ('P083.stl', 83);
INSERT INTO `parts` VALUES ('P084.stl', 84);
INSERT INTO `parts` VALUES ('P085.stl', 85);
INSERT INTO `parts` VALUES ('P086.stl', 86);
INSERT INTO `parts` VALUES ('P087.stl', 87);
INSERT INTO `parts` VALUES ('P088.stl', 88);
INSERT INTO `parts` VALUES ('P089.stl', 89);
INSERT INTO `parts` VALUES ('P090.stl', 90);
INSERT INTO `parts` VALUES ('P091.stl', 91);
INSERT INTO `parts` VALUES ('P092.stl', 92);
INSERT INTO `parts` VALUES ('P093.stl', 93);
INSERT INTO `parts` VALUES ('P094.stl', 94);
INSERT INTO `parts` VALUES ('P095.stl', 95);
INSERT INTO `parts` VALUES ('P096.stl', 96);
INSERT INTO `parts` VALUES ('P097.stl', 97);
INSERT INTO `parts` VALUES ('P098.stl', 98);
INSERT INTO `parts` VALUES ('P099.stl', 99);
INSERT INTO `parts` VALUES ('P100.stl', 100);
INSERT INTO `parts` VALUES ('P101.stl', 101);
INSERT INTO `parts` VALUES ('P102.stl', 102);
INSERT INTO `parts` VALUES ('P103.stl', 103);
INSERT INTO `parts` VALUES ('P104.stl', 104);
INSERT INTO `parts` VALUES ('P105.stl', 105);
INSERT INTO `parts` VALUES ('P106.stl', 106);
INSERT INTO `parts` VALUES ('P107.stl', 107);
INSERT INTO `parts` VALUES ('P108.stl', 108);
INSERT INTO `parts` VALUES ('P109.stl', 109);
INSERT INTO `parts` VALUES ('P110.stl', 110);
INSERT INTO `parts` VALUES ('P111.stl', 111);
INSERT INTO `parts` VALUES ('P112.stl', 112);

-- --------------------------------------------------------

-- 
-- Table structure for table `pieces`
-- 

CREATE TABLE `pieces` (
  `piece_id` int(3) NOT NULL,
  `section` varchar(30) NOT NULL,
  `file_name` varchar(30) NOT NULL,
  `material_name` varchar(30) NOT NULL,
  `checked_out` varchar(5) NOT NULL DEFAULT 'false',
  `checked_id` int(11) DEFAULT NULL,
  `checkOutDate` varchar(40) NOT NULL,
  `finished` varchar(10) NOT NULL DEFAULT 'false',
  `finished_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`piece_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `pieces`
-- 

INSERT INTO `pieces` VALUES (1, 'section_0', 'Layer1_Part1.stl', 'material_0', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (2, 'section_0', 'Layer1_Part10.stl', 'material_1', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (3, 'section_0', 'Layer1_Part11.stl', 'material_2', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (4, 'section_0', 'Layer1_Part2.stl', 'material_3', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (5, 'section_0', 'Layer1_Part3.stl', 'material_4', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (6, 'section_0', 'Layer1_Part4.stl', 'material_5', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (7, 'section_0', 'Layer1_Part5.stl', 'material_6', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (8, 'section_0', 'Layer1_Part6.stl', 'material_7', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (9, 'section_0', 'Layer1_Part7.stl', 'material_8', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (10, 'section_0', 'Layer1_Part8.stl', 'material_9', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (11, 'section_0', 'Layer1_Part9.stl', 'material_10', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (12, 'section_0', 'Layer2_Part19.stl', 'material_11', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (13, 'section_0', 'Layer2_Part20.stl', 'material_12', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (14, 'section_1', 'Layer1_Part12.stl', 'material_0', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (15, 'section_1', 'Layer1_Part13.stl', 'material_1', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (16, 'section_1', 'Layer1_Part14.stl', 'material_2', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (17, 'section_1', 'Layer1_Part15.stl', 'material_3', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (18, 'section_1', 'Layer1_Part16.stl', 'material_4', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (19, 'section_1', 'Layer1_Part17.stl', 'material_5', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (20, 'section_1', 'Layer1_Part18.stl', 'material_6', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (21, 'section_1', 'Layer2_Part21.stl', 'material_7', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (22, 'section_1', 'Layer2_Part22.stl', 'material_8', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (23, 'section_2', 'Layer3_Part23.stl', 'material_0', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (24, 'section_2', 'Layer3_Part24.stl', 'material_1', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (25, 'section_2', 'Layer4_Part27.stl', 'material_2', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (26, 'section_2', 'Layer4_Part28.stl', 'material_3', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (27, 'section_2', 'Layer4_Part29.stl', 'material_4', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (28, 'section_2', 'Layer4_Part30.stl', 'material_5', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (29, 'section_2', 'Layer4_Part31.stl', 'material_6', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (30, 'section_2', 'Layer4_Part32.stl', 'material_7', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (31, 'section_2', 'Layer4_Part33.stl', 'material_8', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (32, 'section_2', 'Layer5_Part36.stl', 'material_9', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (33, 'section_2', 'Layer5_Part37.stl', 'material_10', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (34, 'section_2', 'Layer5_Part38.stl', 'material_11', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (35, 'section_2', 'Layer5_Part39.stl', 'material_12', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (36, 'section_2', 'Layer5_Part40.stl', 'material_13', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (37, 'section_2', 'Layer5_Part41.stl', 'material_14', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (38, 'section_2', 'Layer5_Part42.stl', 'material_15', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (39, 'section_2', 'Layer5_Part43.stl', 'material_16', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (40, 'section_2', 'Layer5_Part44.stl', 'material_17', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (41, 'section_2', 'Layer5_Part45.stl', 'material_18', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (42, 'section_3', 'Layer3_Part25.stl', 'material_0', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (43, 'section_3', 'Layer3_Part26.stl', 'material_1', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (44, 'section_3', 'Layer4_Part34.stl', 'material_2', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (45, 'section_3', 'Layer4_Part35.stl', 'material_3', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (46, 'section_3', 'Layer5_Part46.stl', 'material_4', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (47, 'section_3', 'Layer5_Part47.stl', 'material_5', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (48, 'section_3', 'Layer5_Part48.stl', 'material_6', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (49, 'section_3', 'Layer5_Part49.stl', 'material_7', 'true', 137, '2018-12-7', 'false', NULL);
INSERT INTO `pieces` VALUES (50, 'section_3', 'Layer5_Part50.stl', 'material_8', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (51, 'section_3', 'Layer5_Part51.stl', 'material_9', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (52, 'section_3', 'Layer5_Part52.stl', 'material_10', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (53, 'section_4', 'Layer6_Part53.stl', 'material_0', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (54, 'section_4', 'Layer6_Part54.stl', 'material_1', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (55, 'section_4', 'Layer6_Part55.stl', 'material_2', 'true', 141, '2018-11-28', 'false', NULL);
INSERT INTO `pieces` VALUES (56, 'section_4', 'Layer6_Part56.stl', 'material_3', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (57, 'section_4', 'Layer6_Part57.stl', 'material_4', 'true', 139, '2018-11-25', 'false', NULL);
INSERT INTO `pieces` VALUES (58, 'section_4', 'Layer6_Part58.stl', 'material_5', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (59, 'section_4', 'Layer6_Part59.stl', 'material_6', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (60, 'section_4', 'Layer6_Part60.stl', 'material_7', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (61, 'section_4', 'Layer7_Part70.stl', 'material_8', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (62, 'section_4', 'Layer7_Part71.stl', 'material_9', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (63, 'section_4', 'Layer7_Part72.stl', 'material_10', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (64, 'section_4', 'Layer7_Part73.stl', 'material_11', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (65, 'section_4', 'Layer7_Part74.stl', 'material_12', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (66, 'section_4', 'Layer7_Part75.stl', 'material_13', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (67, 'section_4', 'Layer7_Part76.stl', 'material_14', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (68, 'section_4', 'Layer7_Part77.stl', 'material_15', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (69, 'section_5', 'Layer6_Part61.stl', 'material_0', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (70, 'section_5', 'Layer6_Part62.stl', 'material_1', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (71, 'section_5', 'Layer6_Part63.stl', 'material_2', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (72, 'section_5', 'Layer6_Part64.stl', 'material_3', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (73, 'section_5', 'Layer6_Part65.stl', 'material_4', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (74, 'section_5', 'Layer6_Part66.stl', 'material_5', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (75, 'section_5', 'Layer6_Part67.stl', 'material_6', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (76, 'section_5', 'Layer6_Part68.stl', 'material_7', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (77, 'section_5', 'Layer6_Part69.stl', 'material_8', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (78, 'section_5', 'Layer7_Part78.stl', 'material_9', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (79, 'section_5', 'Layer7_Part79.stl', 'material_10', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (80, 'section_5', 'Layer7_Part80.stl', 'material_11', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (81, 'section_5', 'Layer7_Part81.stl', 'material_12', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (82, 'section_5', 'Layer7_Part82.stl', 'material_13', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (83, 'section_6', 'Layer8_Part83.stl', 'material_0', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (84, 'section_6', 'Layer8_Part84.stl', 'material_1', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (85, 'section_6', 'Layer8_Part85.stl', 'material_2', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (86, 'section_6', 'Layer8_Part86.stl', 'material_3', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (87, 'section_6', 'Layer8_Part87.stl', 'material_4', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (88, 'section_6', 'Layer8_Part88.stl', 'material_5', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (89, 'section_6', 'Layer8_Part89.stl', 'material_6', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (90, 'section_6', 'Layer8_Part90.stl', 'material_7', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (91, 'section_6', 'Layer8_Part91.stl', 'material_8', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (92, 'section_6', 'Layer9_Part100.stl', 'material_9', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (93, 'section_6', 'Layer9_Part101.stl', 'material_10', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (94, 'section_6', 'Layer9_Part102.stl', 'material_11', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (95, 'section_6', 'Layer9_Part103.stl', 'material_12', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (96, 'section_6', 'Layer9_Part104.stl', 'material_13', 'true', 140, '2018-11-26', 'false', NULL);
INSERT INTO `pieces` VALUES (97, 'section_6', 'Layer9_Part105.stl', 'material_14', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (98, 'section_6', 'Layer9_Part106.stl', 'material_15', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (99, 'section_6', 'Layer9_Part107.stl', 'material_16', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (100, 'section_6', 'Layer9_Part108.stl', 'material_17', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (101, 'section_6', 'Layer9_Part109.stl', 'material_18', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (102, 'section_6', 'Layer9_Part99.stl', 'material_19', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (103, 'section_7', 'Layer8_Part92.stl', 'material_0', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (104, 'section_7', 'Layer8_Part93.stl', 'material_1', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (105, 'section_7', 'Layer8_Part94.stl', 'material_2', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (106, 'section_7', 'Layer8_Part95.stl', 'material_3', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (107, 'section_7', 'Layer8_Part96.stl', 'material_4', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (108, 'section_7', 'Layer8_Part97.stl', 'material_5', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (109, 'section_7', 'Layer8_Part98.stl', 'material_6', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (110, 'section_7', 'Layer9_Part110.stl', 'material_7', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (111, 'section_7', 'Layer9_Part111.stl', 'material_8', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (112, 'section_7', 'Layer9_Part112.stl', 'material_9', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (113, 'section_7', 'Layer9_Part113.stl', 'material_10', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (114, 'section_7', 'Layer9_Part114.stl', 'material_11', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (115, 'section_8', 'Layer10_Part115.stl', 'material_0', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (116, 'section_8', 'Layer10_Part116.stl', 'material_1', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (117, 'section_8', 'Layer10_Part117.stl', 'material_2', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (118, 'section_8', 'Layer10_Part118.stl', 'material_3', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (119, 'section_8', 'Layer10_Part119.stl', 'material_4', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (120, 'section_8', 'Layer10_Part120.stl', 'material_5', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (121, 'section_8', 'Layer10_Part121.stl', 'material_6', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (122, 'section_8', 'Layer10_Part122.stl', 'material_7', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (123, 'section_8', 'Layer11_Part128.stl', 'material_8', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (124, 'section_8', 'Layer11_Part129.stl', 'material_9', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (125, 'section_8', 'Layer11_Part130.stl', 'material_10', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (126, 'section_8', 'Layer11_Part131.stl', 'material_11', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (127, 'section_8', 'Layer11_Part132.stl', 'material_12', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (128, 'ssection_9', 'Layer10_Part123.stl', 'material_0', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (129, 'section_9', 'Layer10_Part124.stl', 'material_1', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (130, 'section_9', 'Layer10_Part125.stl', 'material_2', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (131, 'section_9', 'Layer10_Part126.stl', 'material_3', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (132, 'section_9', 'Layer10_Part127.stl', 'material_4', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (133, 'section_9', 'Layer11_Part133.stl', 'material_5', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (134, 'section_9', 'Layer11_Part134.stl', 'material_6', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (135, 'section_9', 'Layer11_Part135.stl', 'material_7', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (136, 'section_9', 'Layer11_Part136.stl', 'material_8', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (137, 'section_9', 'Layer11_Part137.stl', 'material_9', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (138, 'section_10', 'Layer12_Part138.stl', 'material_0', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (139, 'section_10', 'Layer12_Part139.stl', 'material_1', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (140, 'section_10', 'Layer12_Part140.stl', 'material_2', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (141, 'section_10', 'Layer12_Part141.stl', 'material_3', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (142, 'section_10', 'Layer13_Part142.stl', 'material_4', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (143, 'section_10', 'Layer13_Part143.stl', 'material_5', 'false', NULL, '', 'true', 137);
INSERT INTO `pieces` VALUES (144, 'section_10', 'Layer13_Part144.stl', 'material_6', 'false', NULL, '', 'false', NULL);
INSERT INTO `pieces` VALUES (145, 'section_10', 'Layer13_Part145.stl', 'material_7', 'false', NULL, '', 'false', NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `steps`
-- 

CREATE TABLE `steps` (
  `id` int(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `steps`
-- 

INSERT INTO `steps` VALUES (0, 'Checkout a piece');
INSERT INTO `steps` VALUES (1, 'Download piece');
INSERT INTO `steps` VALUES (2, 'Start printing piece');
INSERT INTO `steps` VALUES (3, 'Piece is printed');
INSERT INTO `steps` VALUES (4, 'Piece sent to Harrison Site');

-- --------------------------------------------------------

-- 
-- Table structure for table `test`
-- 

CREATE TABLE `test` (
  `name` varchar(80) NOT NULL,
  `another` int(3) NOT NULL,
  `another2` int(3) NOT NULL,
  `and3` int(3) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `test`
-- 

INSERT INTO `test` VALUES ('Alex', 234, 433, 432);

-- --------------------------------------------------------

-- 
-- Table structure for table `tokens`
-- 

CREATE TABLE `tokens` (
  `email` varchar(555) NOT NULL,
  `token` varchar(255) NOT NULL,
  `used` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tokens`
-- 

INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1507331471', 0);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1507331541', 0);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1507331595', 0);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1507331944', 0);
INSERT INTO `tokens` VALUES ('robville91@gmail.com', '1507334431', 0);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1507336530', 0);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1507337481', 0);
INSERT INTO `tokens` VALUES ('robville91@gmail.com', '1507338476', 0);
INSERT INTO `tokens` VALUES ('tori', '1507339890', 0);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1507339897', 1);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1507347456', 1);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1507351682', 1);
INSERT INTO `tokens` VALUES ('chyde@bhpsite.org', '1507923167', 1);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1509676707', 1);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1511717464', 1);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1511718006', 1);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1511718711', 1);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1511719044', 1);
INSERT INTO `tokens` VALUES ('tori.roessler@gmail.com', '1512526221', 1);
INSERT INTO `tokens` VALUES ('ryanseybold@churchmilitant.com', '1513030456', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `role` int(255) NOT NULL,
  `partnumber` varchar(255) NOT NULL,
  `checkoutdate` varchar(255) NOT NULL,
  `status` varchar(55) NOT NULL,
  `step` int(2) NOT NULL DEFAULT '0',
  `step_start_date` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=143 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (15, 'Rob', 'Sunderlin', 'robs', 'robs', 'robville91@gmail.com', '3176077954', 'IUPUI', 2, 'material_3', '0', '', 0, '');
INSERT INTO `users` VALUES (18, 'Tori', 'Roessler', 'toriroessler', 'woah', 'tori.roessler@gmail.com', '3177313874', 'IUPUI', 1, '', '1512712551', '', 0, '');
INSERT INTO `users` VALUES (95, 'Test', 'User', 'Testuser', 'password123456789', 'testuser@gmail.com', '8888888888', 'testuser', 2, '', '1512715917', '', 0, '');
INSERT INTO `users` VALUES (96, 'Ryan', 'Seybold', 'rysey', 'ryseyb', 'ryanseybold@churchmilitant.com', '8888888888', 'Church Militant', 2, '', '1513030428', '', 0, '');
INSERT INTO `users` VALUES (97, 'Zeb', 'Wood', 'zwood', '13intheend13', 'zeb.wood@gmail.com', '3171233456', 'IU test', 2, '', '', '', 0, '');
INSERT INTO `users` VALUES (137, 'Blake', 'Robertson', NULL, '$2y$10$v2iSInsSa0HtGTwW9/uGG.cj.sr1zPw0HqSjfBBsvKZOVclDcdwza', 'phpuser@gmail.com', '3175549143', NULL, 1, '', '', '', 0, '2018-12-7');
INSERT INTO `users` VALUES (138, 'test', 'user', NULL, '$2y$10$UnFnqnRWt6NQeR4tEw/5pO5uPVWLBSlJZZD/BvfKRYUlVoe8mXa3i', 'test@example.com', '7890-098767890-34322', NULL, 2, '', '', '', 0, '');
INSERT INTO `users` VALUES (139, 'Blake', 'Robertson', NULL, '$2y$10$v3GYt2J8ivv74GmbtcFFo.roArnNEKQSnbl2WLiAtiuCbwW.1dA9G', 'blaketest1@gmail.com', 'password', NULL, 2, '', '', '', 0, '2018-11-25');
INSERT INTO `users` VALUES (140, 'Blake', 'Robertson', NULL, '$2y$10$EGt8AoUBKkTUumLfKEe8zeKOcvPmUv8z5TnsQ9NQprP11wXB6x54q', 'blaketest2@gmail.com', '3175549143', NULL, 2, '', '', '', 0, '2018-11-27');
INSERT INTO `users` VALUES (141, 'Charles', 'Hyde', NULL, '$2y$10$VdLrlO8GfJVY8hwQs3Tjo.CVJoE875supqiKKNKZEdHSxBQB3keiC', 'chyde@bhpsite.org', '672341888', NULL, 1, '', '', '', 0, '2018-11-28');
INSERT INTO `users` VALUES (142, 'John', 'Wick', NULL, '$2y$10$ZVez4xazK3vdhDhCK3BaV.sYgfaW4eEDFqTCLRyX4ve2H8T/v2W/S', 'jwick@gmail.com', '4127646537', NULL, 2, '', '', '', 0, '');
