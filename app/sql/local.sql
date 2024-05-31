-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_bingmappro_map_pins`
--

DROP TABLE IF EXISTS `wp_bingmappro_map_pins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bingmappro_map_pins` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `map_id` mediumint(4) NOT NULL DEFAULT '0',
  `pin_id` mediumint(4) NOT NULL DEFAULT '0',
  `pin_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `map_id` (`map_id`),
  KEY `pin_id` (`pin_id`),
  KEY `pin_active` (`pin_active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bingmappro_map_pins`
--

LOCK TABLES `wp_bingmappro_map_pins` WRITE;
/*!40000 ALTER TABLE `wp_bingmappro_map_pins` DISABLE KEYS */;
INSERT INTO `wp_bingmappro_map_pins` VALUES (1,1,1,1,'2024-03-30 18:41:29');
/*!40000 ALTER TABLE `wp_bingmappro_map_pins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bingmappro_map_shapes`
--

DROP TABLE IF EXISTS `wp_bingmappro_map_shapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bingmappro_map_shapes` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `map_id` mediumint(4) NOT NULL DEFAULT '0',
  `shape_id` mediumint(4) NOT NULL DEFAULT '0',
  `shape_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `map_id` (`map_id`),
  KEY `shape_id` (`shape_id`),
  KEY `shape_active` (`shape_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bingmappro_map_shapes`
--

LOCK TABLES `wp_bingmappro_map_shapes` WRITE;
/*!40000 ALTER TABLE `wp_bingmappro_map_shapes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bingmappro_map_shapes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bingmappro_map_shortcodes`
--

DROP TABLE IF EXISTS `wp_bingmappro_map_shortcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bingmappro_map_shortcodes` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `map_id` mediumint(4) NOT NULL DEFAULT '0',
  `shortcode` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `s_lat` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `s_long` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `s_zoom` mediumint(2) NOT NULL DEFAULT '0',
  `s_checkone` tinyint(1) NOT NULL DEFAULT '0',
  `s_string` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `s_text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `map_id` (`map_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bingmappro_map_shortcodes`
--

LOCK TABLES `wp_bingmappro_map_shortcodes` WRITE;
/*!40000 ALTER TABLE `wp_bingmappro_map_shortcodes` DISABLE KEYS */;
INSERT INTO `wp_bingmappro_map_shortcodes` VALUES (1,1,'haifa','32.784019907260614','35.007854470437245',16,0,'','','2024-03-30 19:02:06');
/*!40000 ALTER TABLE `wp_bingmappro_map_shortcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bingmappro_maps`
--

DROP TABLE IF EXISTS `wp_bingmappro_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bingmappro_maps` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `map_title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `map_width` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '100',
  `map_height` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '400',
  `map_width_type` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '%',
  `map_height_type` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'px',
  `map_start_lat` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '53.350140',
  `map_start_long` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '-6.266155',
  `map_zoom` tinyint(3) NOT NULL DEFAULT '2',
  `map_type` tinyint(1) NOT NULL DEFAULT '0',
  `map_active` tinyint(1) NOT NULL DEFAULT '1',
  `styling_json` longtext COLLATE utf8mb4_unicode_520_ci,
  `styling_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `alignment` tinyint(5) DEFAULT '0',
  `kml` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `html_class` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `map_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `map_shortcode` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `map_refresh` tinyint(1) NOT NULL DEFAULT '0',
  `compact_nav` tinyint(1) NOT NULL DEFAULT '0',
  `context_menu` tinyint(1) NOT NULL DEFAULT '0',
  `show_pan_btns` tinyint(1) NOT NULL DEFAULT '0',
  `look_at_location` tinyint(1) NOT NULL DEFAULT '0',
  `bicycle` tinyint(1) NOT NULL DEFAULT '0',
  `traffic` tinyint(1) NOT NULL DEFAULT '0',
  `custom_map_style` tinyint(1) NOT NULL DEFAULT '0',
  `toggle_fullscreen` tinyint(1) NOT NULL DEFAULT '0',
  `disable_mousewheel` tinyint(1) NOT NULL DEFAULT '0',
  `disable_zoom` tinyint(1) NOT NULL DEFAULT '0',
  `show_user_location` tinyint(1) NOT NULL DEFAULT '0',
  `street_view` tinyint(1) NOT NULL DEFAULT '0',
  `custom_map_style_script` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `other_settings` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cluster` smallint(3) NOT NULL DEFAULT '-1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `map_active` (`map_active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bingmappro_maps`
--

LOCK TABLES `wp_bingmappro_maps` WRITE;
/*!40000 ALTER TABLE `wp_bingmappro_maps` DISABLE KEYS */;
INSERT INTO `wp_bingmappro_maps` VALUES (1,'haifa','100','400','%','px','32.784019907260614','35.007854470437245',16,0,1,NULL,0,0,'','',0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'','',-1,'2024-03-30 18:21:06');
/*!40000 ALTER TABLE `wp_bingmappro_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bingmappro_pins`
--

DROP TABLE IF EXISTS `wp_bingmappro_pins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bingmappro_pins` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `pin_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_lat` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_long` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_address` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_desc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pin_custom_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_iframe_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_image_one` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_image_two` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_image_three` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_image_four` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_link_one` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_link_two` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_link_three` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_link_four` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_link_one_txt` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_link_one_open` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_link_two_txt` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_link_two_open` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_link_three_txt` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_link_three_open` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_link_four_txt` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pin_link_four_open` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `img_desc` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `icon_link` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `icon` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `animation` tinyint(1) NOT NULL DEFAULT '0',
  `category` tinyint(1) NOT NULL DEFAULT '0',
  `pin_type` tinyint(2) NOT NULL DEFAULT '0',
  `direction_to_here` tinyint(1) NOT NULL DEFAULT '0',
  `data_json` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `other_settings` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `approved_by` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `text_pin` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `use_text_pin` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(3) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `approved` (`approved`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bingmappro_pins`
--

LOCK TABLES `wp_bingmappro_pins` WRITE;
/*!40000 ALTER TABLE `wp_bingmappro_pins` DISABLE KEYS */;
INSERT INTO `wp_bingmappro_pins` VALUES (1,1,'haifa campus','32.783433','35.0078699','14 Duchifat, חיפה, מחוז חיפה 32, ישראל','','','','','simple','none','','','','','','','','','','','','','','','','','4',0,0,0,0,'','','2024-03-30 18:41:10',1,'','',0,0,'');
/*!40000 ALTER TABLE `wp_bingmappro_pins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bingmappro_shapes`
--

DROP TABLE IF EXISTS `wp_bingmappro_shapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bingmappro_shapes` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `s_type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `bodycolor` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `strokecolor` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `stroketickness` mediumint(2) NOT NULL DEFAULT '1',
  `bodyopacity` float NOT NULL DEFAULT '0.4',
  `shapedata` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `s_style` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `infotype` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `infosimpletitle` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `infosimpledesc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `infoadvanced` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `maplat` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `maplong` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mapzoom` tinyint(1) NOT NULL DEFAULT '12',
  `maptype` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'r',
  `tickboxone` tinyint(1) NOT NULL DEFAULT '0',
  `tickboxtwo` tinyint(1) NOT NULL DEFAULT '0',
  `tickboxthree` tinyint(1) NOT NULL DEFAULT '1',
  `textfieldone` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `textfiledtwo` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `textone` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `texttwo` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `textthree` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `textfour` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `s_import` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `s_tags` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `s_caption` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bingmappro_shapes`
--

LOCK TABLES `wp_bingmappro_shapes` WRITE;
/*!40000 ALTER TABLE `wp_bingmappro_shapes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bingmappro_shapes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-03-06 19:35:15','2024-03-06 19:35:15','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_icons`
--

DROP TABLE IF EXISTS `wp_gmp_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_icons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `width` mediumint(5) NOT NULL DEFAULT '0',
  `height` mediumint(5) NOT NULL DEFAULT '0',
  `path` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_def` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_icons`
--

LOCK TABLES `wp_gmp_icons` WRITE;
/*!40000 ALTER TABLE `wp_gmp_icons` DISABLE KEYS */;
INSERT INTO `wp_gmp_icons` VALUES (1,'marker','blue,white,star,pin',32,44,'bblue.png',1);
INSERT INTO `wp_gmp_icons` VALUES (2,'marker','green,white,star,pin',32,44,'bgreen.png',1);
INSERT INTO `wp_gmp_icons` VALUES (3,'marker','purple,white,star,pin',32,44,'purple.png',1);
INSERT INTO `wp_gmp_icons` VALUES (4,'marker','blue,white,star,pin',32,44,'bred.png',1);
INSERT INTO `wp_gmp_icons` VALUES (5,'marker','blue,pin',24,38,'blue.png',1);
INSERT INTO `wp_gmp_icons` VALUES (6,'marker','gray,pin',20,33,'gray.png',1);
INSERT INTO `wp_gmp_icons` VALUES (7,'marker','green,pin',20,34,'green.png',1);
INSERT INTO `wp_gmp_icons` VALUES (8,'marker','pin,yellow',20,33,'orange.png',1);
INSERT INTO `wp_gmp_icons` VALUES (9,'marker','pin,red',20,31,'red.png',1);
INSERT INTO `wp_gmp_icons` VALUES (10,'flag','gray',32,30,'flag_black.png',1);
INSERT INTO `wp_gmp_icons` VALUES (11,'flag','blue',32,30,'flag_blue.png',1);
INSERT INTO `wp_gmp_icons` VALUES (12,'flag','green',32,30,'flag_green.png',1);
INSERT INTO `wp_gmp_icons` VALUES (13,'flag','orange',32,30,'flag_orange.png',1);
INSERT INTO `wp_gmp_icons` VALUES (14,'flag','purple',32,30,'flag_purple.png',1);
INSERT INTO `wp_gmp_icons` VALUES (15,'flag','red',32,30,'flag_red.png',1);
INSERT INTO `wp_gmp_icons` VALUES (16,'marker','pin,cycle,blue',26,36,'blue_circle.png',1);
INSERT INTO `wp_gmp_icons` VALUES (17,'marker','white,blue,pin',26,36,'blue_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (18,'marker','blue,pin',26,36,'blue_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (19,'pin','green,marker,cycle',26,36,'green_circle.png',1);
INSERT INTO `wp_gmp_icons` VALUES (20,'pin','green,cycle',26,36,'green_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (21,'pin','green',26,36,'green_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (22,'pin','orange,cycle',26,36,'orange_circle.png',1);
INSERT INTO `wp_gmp_icons` VALUES (23,'pin','orange,cycle',26,36,'orange_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (24,'pin','orange',26,36,'orange_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (25,'pin','purple,cycle',26,36,'purple_circle.png',1);
INSERT INTO `wp_gmp_icons` VALUES (26,'pin','purple,cycle',26,36,'purple_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (27,'pin','purple',26,36,'purple_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (28,'pin','red,cycle',26,36,'red_circle.png',1);
INSERT INTO `wp_gmp_icons` VALUES (29,'pin','red,cycle',26,36,'red_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (30,'pin','red',26,36,'red_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (31,'star','black,dark,pin',32,41,'star_pin_black.png',1);
INSERT INTO `wp_gmp_icons` VALUES (32,'star','blue,pin',32,41,'star_pin_blue.png',1);
INSERT INTO `wp_gmp_icons` VALUES (33,'star','green,pin',32,41,'star_pin_green.png',1);
INSERT INTO `wp_gmp_icons` VALUES (34,'star','orange,pin',32,41,'star_pin_orange.png',1);
INSERT INTO `wp_gmp_icons` VALUES (35,'star','purple',32,41,'star_pin_purple.png',1);
INSERT INTO `wp_gmp_icons` VALUES (36,'star','red,pin',32,41,'star_pin_red.png',1);
INSERT INTO `wp_gmp_icons` VALUES (37,'pin','gray,white,cycle',26,36,'white_circlepng.png',1);
INSERT INTO `wp_gmp_icons` VALUES (38,'pin','gray,white,cycle',26,36,'white_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (39,'pin','white,gray',26,36,'white_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (40,'pin','yellow,cycle',26,36,'yellow_circlepng.png',1);
INSERT INTO `wp_gmp_icons` VALUES (41,'pin','yellow,cycle',26,36,'yellow_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (42,'pin','yellow',26,36,'yellow_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (43,'marker','red',20,34,'marker.png',1);
INSERT INTO `wp_gmp_icons` VALUES (44,'marker','blue',22,32,'marker_blue.png',1);
INSERT INTO `wp_gmp_icons` VALUES (45,'marker','red,letter',20,34,'markerA.png',1);
INSERT INTO `wp_gmp_icons` VALUES (46,'marker','orange',20,34,'marker_orange.png',1);
INSERT INTO `wp_gmp_icons` VALUES (47,'marker','green',20,34,'marker_green.png',1);
/*!40000 ALTER TABLE `wp_gmp_icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_maps`
--

DROP TABLE IF EXISTS `wp_gmp_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `params` text,
  `html_options` text NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_maps`
--

LOCK TABLES `wp_gmp_maps` WRITE;
/*!40000 ALTER TABLE `wp_gmp_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gmp_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_marker_groups`
--

DROP TABLE IF EXISTS `wp_gmp_marker_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_marker_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `parent` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_marker_groups`
--

LOCK TABLES `wp_gmp_marker_groups` WRITE;
/*!40000 ALTER TABLE `wp_gmp_marker_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gmp_marker_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_marker_groups_relation`
--

DROP TABLE IF EXISTS `wp_gmp_marker_groups_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_marker_groups_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marker_id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_marker_groups_relation`
--

LOCK TABLES `wp_gmp_marker_groups_relation` WRITE;
/*!40000 ALTER TABLE `wp_gmp_marker_groups_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gmp_marker_groups_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_markers`
--

DROP TABLE IF EXISTS `wp_gmp_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `coord_x` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coord_y` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` int(11) DEFAULT NULL,
  `map_id` int(11) DEFAULT NULL,
  `marker_group_id` int(11) DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `animation` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort_order` smallint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_markers`
--

LOCK TABLES `wp_gmp_markers` WRITE;
/*!40000 ALTER TABLE `wp_gmp_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gmp_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_modules`
--

DROP TABLE IF EXISTS `wp_gmp_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `type_id` smallint(3) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_520_ci,
  `has_tab` tinyint(1) NOT NULL DEFAULT '0',
  `label` varchar(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `ex_plug_dir` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_modules`
--

LOCK TABLES `wp_gmp_modules` WRITE;
/*!40000 ALTER TABLE `wp_gmp_modules` DISABLE KEYS */;
INSERT INTO `wp_gmp_modules` VALUES (1,'adminmenu',1,1,'',0,'Admin Menu','',NULL);
INSERT INTO `wp_gmp_modules` VALUES (2,'options',1,1,'',1,'Options','',NULL);
INSERT INTO `wp_gmp_modules` VALUES (3,'user',1,1,'',1,'Users','',NULL);
INSERT INTO `wp_gmp_modules` VALUES (4,'templates',1,1,'',1,'Templates for Plugin','',NULL);
INSERT INTO `wp_gmp_modules` VALUES (5,'shortcodes',1,6,'',0,'Shortcodes','Shortcodes data',NULL);
INSERT INTO `wp_gmp_modules` VALUES (6,'gmap',1,1,'',1,'Gmap','Gmap',NULL);
INSERT INTO `wp_gmp_modules` VALUES (7,'marker',1,1,'',0,'Markers','Maps Markers',NULL);
INSERT INTO `wp_gmp_modules` VALUES (8,'marker_groups',1,1,'',0,'Marker Groups','Marker Groups',NULL);
INSERT INTO `wp_gmp_modules` VALUES (9,'supsystic_promo',1,1,'',0,'Promo','Promo',NULL);
INSERT INTO `wp_gmp_modules` VALUES (10,'icons',1,1,'',1,'Marker Icons','Marker Icons',NULL);
INSERT INTO `wp_gmp_modules` VALUES (11,'mail',1,1,'',1,'mail','mail',NULL);
/*!40000 ALTER TABLE `wp_gmp_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_modules_type`
--

DROP TABLE IF EXISTS `wp_gmp_modules_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_modules_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_modules_type`
--

LOCK TABLES `wp_gmp_modules_type` WRITE;
/*!40000 ALTER TABLE `wp_gmp_modules_type` DISABLE KEYS */;
INSERT INTO `wp_gmp_modules_type` VALUES (1,'system');
INSERT INTO `wp_gmp_modules_type` VALUES (4,'widget');
INSERT INTO `wp_gmp_modules_type` VALUES (6,'addons');
INSERT INTO `wp_gmp_modules_type` VALUES (7,'template');
/*!40000 ALTER TABLE `wp_gmp_modules_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_options`
--

DROP TABLE IF EXISTS `wp_gmp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value` text,
  `label` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `htmltype_id` smallint(2) NOT NULL DEFAULT '1',
  `params` text,
  `cat_id` mediumint(3) DEFAULT '0',
  `sort_order` mediumint(3) DEFAULT '0',
  `value_type` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_options`
--

LOCK TABLES `wp_gmp_options` WRITE;
/*!40000 ALTER TABLE `wp_gmp_options` DISABLE KEYS */;
INSERT INTO `wp_gmp_options` VALUES (1,'save_statistic','0','Send statistic',NULL,1,NULL,0,0,NULL);
INSERT INTO `wp_gmp_options` VALUES (2,'infowindow_size','a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";}','Info Window Size',NULL,1,NULL,0,0,NULL);
/*!40000 ALTER TABLE `wp_gmp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_options_categories`
--

DROP TABLE IF EXISTS `wp_gmp_options_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_options_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_options_categories`
--

LOCK TABLES `wp_gmp_options_categories` WRITE;
/*!40000 ALTER TABLE `wp_gmp_options_categories` DISABLE KEYS */;
INSERT INTO `wp_gmp_options_categories` VALUES (1,'General');
INSERT INTO `wp_gmp_options_categories` VALUES (2,'Template');
INSERT INTO `wp_gmp_options_categories` VALUES (3,'Subscribe');
INSERT INTO `wp_gmp_options_categories` VALUES (4,'Social');
/*!40000 ALTER TABLE `wp_gmp_options_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_usage_stat`
--

DROP TABLE IF EXISTS `wp_gmp_usage_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_usage_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `visits` int(11) NOT NULL DEFAULT '0',
  `spent_time` int(11) NOT NULL DEFAULT '0',
  `modify_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_usage_stat`
--

LOCK TABLES `wp_gmp_usage_stat` WRITE;
/*!40000 ALTER TABLE `wp_gmp_usage_stat` DISABLE KEYS */;
INSERT INTO `wp_gmp_usage_stat` VALUES (1,'installed',1,0,'2024-03-29 07:31:41');
/*!40000 ALTER TABLE `wp_gmp_usage_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=641 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://my-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://my-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','my-university','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:183:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=33&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:37:\"api-bing-map-2018/wp-bing-map-pro.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:3;s:34:\"ultimate-maps-by-supsystic/ums.php\";i:4;s:31:\"wp-google-maps/wpGoogleMaps.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','university2024','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','university2024','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','56657','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:2:{s:24:\"google-maps-easy/gmp.php\";a:2:{i:0;s:8:\"utilsGmp\";i:1;s:12:\"deletePlugin\";}s:34:\"ultimate-maps-by-supsystic/ums.php\";a:2:{i:0;s:8:\"utilsUms\";i:1;s:12:\"deletePlugin\";}}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','35','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','33','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1725305714','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'wp_attachment_pages_enabled','0','yes');
INSERT INTO `wp_options` VALUES (100,'initial_db_version','56657','yes');
INSERT INTO `wp_options` VALUES (101,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (102,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','1','no');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:8:{i:1711999136;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1712000116;a:3:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1712000418;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1712000419;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1712036676;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1712259316;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1712469899;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.4.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (124,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.3\";s:7:\"version\";s:5:\"6.4.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1711996994;s:15:\"version_checked\";s:5:\"6.4.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1711996994;s:7:\"checked\";a:4:{s:16:\"twentytwentyfour\";s:3:\"1.0\";s:17:\"twentytwentythree\";s:3:\"1.3\";s:15:\"twentytwentytwo\";s:3:\"1.6\";s:14:\"university2024\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.0.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.3.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.6.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (145,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (149,'theme_mods_university2024','a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}}','yes');
INSERT INTO `wp_options` VALUES (150,'theme_mods_twentytwentyfour','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1709754038;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (151,'current_theme','Snir Inbar','yes');
INSERT INTO `wp_options` VALUES (152,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (155,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (178,'_transient_health-check-site-status-result','{\"good\":17,\"recommended\":3,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (183,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (200,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (256,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (304,'recently_activated','a:2:{s:24:\"google-maps-easy/gmp.php\";i:1711812036;s:51:\"api-key-for-google-maps/api-key-for-google-maps.php\";i:1711697329;}','yes');
INSERT INTO `wp_options` VALUES (309,'acf_first_activated_version','6.2.7','yes');
INSERT INTO `wp_options` VALUES (310,'acf_version','6.2.7','yes');
INSERT INTO `wp_options` VALUES (320,'recovery_mode_email_last_sent','1710876047','yes');
INSERT INTO `wp_options` VALUES (537,'wpgmza_db_version','9.0.35','yes');
INSERT INTO `wp_options` VALUES (538,'wpgmza_global_settings','{\"engine\":\"google-maps\",\"internal_engine\":\"legacy\",\"google_maps_api_key\":false,\"default_marker_icon\":\"http:\\/\\/my-university.local\\/wp-content\\/plugins\\/wp-google-maps\\/images\\/spotlight-poi3.png\",\"developer_mode\":false,\"user_interface_style\":\"default\",\"wpgmza_gdpr_enabled\":1,\"wpgmza_gdpr_default_notice\":\"<p>\\r\\n\\tI agree for my personal data to be processed by <span name=\\\"wpgmza_gdpr_company_name\\\"><\\/span>, for the purpose(s) of <span name=\\\"wpgmza_gdpr_retention_purpose\\\"><\\/span>.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\t\\r\\n\\tI agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and\\tgenerating directions.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tSome visual components of WP Go Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWP Go Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \\\"state\\\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Go Maps transmit this information.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tPlease <a href=\\\"https:\\/\\/developers.google.com\\/maps\\/terms\\\">see here<\\/a> and <a href=\\\"https:\\/\\/maps.google.com\\/help\\/terms_maps.html\\\">here<\\/a> for Google\'s terms. Please also see <a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en-GB&amp;gl=uk\\\">Google\'s Privacy Policy<\\/a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWhere this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\\r\\n<\\/p>\",\"wpgmza_gdpr_company_name\":\"my-university\",\"wpgmza_gdpr_retention_purpose\":\"displaying map tiles, geocoding addresses and calculating and display directions.\",\"wpgmza_gdpr_button_label\":\"I agree\",\"wpgmza_marker_xml_location\":\"C:\\\\Users\\\\Snir1\\\\Local Sites\\\\my-university\\\\app\\\\public\\\\wp-content\\\\uploads\\\\wp-google-maps\\\\\",\"wpgmza_marker_xml_url\":\"http:\\/\\/my-university.local\\/wp-content\\/uploads\\/wp-google-maps\\/\",\"action\":\"wpgmza_save_settings\",\"wpgmza_maps_engine\":\"google-maps\",\"wpgmza_settings_map_full_screen_control\":false,\"wpgmza_settings_map_streetview\":false,\"wpgmza_settings_map_zoom\":false,\"wpgmza_settings_map_pan\":false,\"wpgmza_settings_map_type\":false,\"wpgmza_settings_map_tilt_controls\":false,\"wpgmza_settings_map_scroll\":false,\"wpgmza_settings_map_draggable\":false,\"wpgmza_settings_map_clickzoom\":false,\"wpgmza_settings_cat_logic\":\"0\",\"wpgmza_settings_filterbycat_type\":\"1\",\"use_fontawesome\":\"4.*\",\"tile_server_url\":\"https:\\/\\/{a-c}.tile.openstreetmap.org\\/{z}\\/{x}\\/{y}.png\",\"tile_server_url_override\":\"\",\"wpgmza_load_engine_api_condition\":\"where-required\",\"wpgmza_always_include_engine_api_on_pages\":\"\",\"wpgmza_always_exclude_engine_api_on_pages\":\"\",\"enable_google_api_async_param\":false,\"wpgmza_prevent_other_plugins_and_theme_loading_api\":false,\"wpgmza_settings_access_level\":\"manage_options\",\"wpgmza_settings_retina_width\":\"\",\"wpgmza_settings_retina_height\":\"\",\"wpgmza_force_greedy_gestures\":false,\"disable_lightbox_images\":false,\"gallery_item_source_size\":null,\"wpgmza_settings_image_resizing\":false,\"wpgmza_settings_image_width\":\"\",\"wpgmza_settings_image_height\":\"\",\"wpgmza_settings_infowindow_width\":\"\",\"wpgmza_settings_infowindow_links\":false,\"wpgmza_settings_infowindow_address\":false,\"infowindow_hide_category\":false,\"wpgmza_settings_infowindow_link_text\":\"\",\"wpgmza_settings_map_open_marker_by\":\"1\",\"wpgmza_settings_disable_infowindows\":false,\"wpgmza_settings_markerlist_icon\":false,\"wpgmza_settings_markerlist_link\":false,\"wpgmza_settings_markerlist_title\":false,\"wpgmza_settings_markerlist_address\":false,\"wpgmza_settings_markerlist_category\":false,\"wpgmza_settings_markerlist_description\":false,\"wpgmza_do_not_enqueue_datatables\":false,\"enable_datatables_enter_search\":false,\"wpgmza_default_items\":null,\"wpgmza_settings_carousel_markerlist_theme\":null,\"wpgmza_settings_carousel_markerlist_image\":false,\"wpgmza_settings_carousel_markerlist_title\":false,\"wpgmza_settings_carousel_markerlist_icon\":false,\"wpgmza_settings_carousel_markerlist_address\":false,\"wpgmza_settings_carousel_markerlist_description\":false,\"wpgmza_settings_carousel_markerlist_marker_link\":false,\"wpgmza_settings_carousel_markerlist_directions\":false,\"wpgmza_settings_carousel_markerlist_resize_image\":false,\"carousel_lazyload\":false,\"carousel_autoheight\":false,\"carousel_pagination\":false,\"carousel_navigation\":false,\"wpgmza_do_not_enqueue_owl_carousel\":false,\"wpgmza_do_not_enqueue_owl_carousel_themes\":false,\"carousel_items\":\"5\",\"carousel_items_tablet\":\"3\",\"carousel_items_mobile\":\"1\",\"carousel_autoplay\":\"5000\",\"wpgmza_store_locator_radii\":\"\",\"wpgmza_google_maps_api_key\":\"\",\"importer_google_maps_api_key\":\"\",\"open_layers_api_key\":\"\",\"open_route_service_key\":\"\",\"wpgmza_settings_marker_pull\":\"0\",\"wpgmza_custom_css\":\"\",\"wpgmza_custom_js\":\"\",\"disable_compressed_path_variables\":false,\"disable_autoptimize_compatibility_fix\":false,\"enable_dynamic_sql_refac_filter\":false,\"disable_automatic_backups\":false,\"disable_google_fonts\":false,\"enable_google_csp_headers\":false,\"force_ajax_only_mode\":false,\"wpgmza_developer_mode\":false,\"wpgmza_gdpr_require_consent_before_load\":true,\"wpgmza_gdpr_override_notice\":false,\"wpgmza_gdpr_notice_override_text\":\"\"}','yes');
INSERT INTO `wp_options` VALUES (539,'WPGMZA_OTHER_SETTINGS','a:97:{s:6:\"engine\";s:11:\"google-maps\";s:15:\"internal_engine\";s:6:\"legacy\";s:19:\"google_maps_api_key\";b:0;s:19:\"default_marker_icon\";s:86:\"http://my-university.local/wp-content/plugins/wp-google-maps/images/spotlight-poi3.png\";s:14:\"developer_mode\";b:0;s:20:\"user_interface_style\";s:7:\"default\";s:19:\"wpgmza_gdpr_enabled\";i:1;s:26:\"wpgmza_gdpr_default_notice\";s:1960:\"<p>\r\n	I agree for my personal data to be processed by <span name=\"wpgmza_gdpr_company_name\"></span>, for the purpose(s) of <span name=\"wpgmza_gdpr_retention_purpose\"></span>.\r\n</p>\r\n\r\n<p>	\r\n	I agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and	generating directions.\r\n</p>\r\n<p>\r\n	Some visual components of WP Go Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\r\n</p>\r\n<p>\r\n	WP Go Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \"state\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Go Maps transmit this information.\r\n</p>\r\n<p>\r\n	Please <a href=\"https://developers.google.com/maps/terms\">see here</a> and <a href=\"https://maps.google.com/help/terms_maps.html\">here</a> for Google\'s terms. Please also see <a href=\"https://policies.google.com/privacy?hl=en-GB&amp;gl=uk\">Google\'s Privacy Policy</a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\r\n</p>\r\n<p>\r\n	Where this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\r\n</p>\";s:24:\"wpgmza_gdpr_company_name\";s:13:\"my-university\";s:29:\"wpgmza_gdpr_retention_purpose\";s:81:\"displaying map tiles, geocoding addresses and calculating and display directions.\";s:24:\"wpgmza_gdpr_button_label\";s:7:\"I agree\";s:26:\"wpgmza_marker_xml_location\";s:86:\"C:\\Users\\Snir1\\Local Sites\\my-university\\app\\public\\wp-content\\uploads\\wp-google-maps\\\";s:21:\"wpgmza_marker_xml_url\";s:61:\"http://my-university.local/wp-content/uploads/wp-google-maps/\";s:6:\"action\";s:20:\"wpgmza_save_settings\";s:18:\"wpgmza_maps_engine\";s:11:\"google-maps\";s:39:\"wpgmza_settings_map_full_screen_control\";b:0;s:30:\"wpgmza_settings_map_streetview\";b:0;s:24:\"wpgmza_settings_map_zoom\";b:0;s:23:\"wpgmza_settings_map_pan\";b:0;s:24:\"wpgmza_settings_map_type\";b:0;s:33:\"wpgmza_settings_map_tilt_controls\";b:0;s:26:\"wpgmza_settings_map_scroll\";b:0;s:29:\"wpgmza_settings_map_draggable\";b:0;s:29:\"wpgmza_settings_map_clickzoom\";b:0;s:25:\"wpgmza_settings_cat_logic\";s:1:\"0\";s:32:\"wpgmza_settings_filterbycat_type\";s:1:\"1\";s:15:\"use_fontawesome\";s:3:\"4.*\";s:15:\"tile_server_url\";s:52:\"https://{a-c}.tile.openstreetmap.org/{z}/{x}/{y}.png\";s:24:\"tile_server_url_override\";s:0:\"\";s:32:\"wpgmza_load_engine_api_condition\";s:14:\"where-required\";s:41:\"wpgmza_always_include_engine_api_on_pages\";s:0:\"\";s:41:\"wpgmza_always_exclude_engine_api_on_pages\";s:0:\"\";s:29:\"enable_google_api_async_param\";b:0;s:50:\"wpgmza_prevent_other_plugins_and_theme_loading_api\";b:0;s:28:\"wpgmza_settings_access_level\";s:14:\"manage_options\";s:28:\"wpgmza_settings_retina_width\";s:0:\"\";s:29:\"wpgmza_settings_retina_height\";s:0:\"\";s:28:\"wpgmza_force_greedy_gestures\";b:0;s:23:\"disable_lightbox_images\";b:0;s:24:\"gallery_item_source_size\";N;s:30:\"wpgmza_settings_image_resizing\";b:0;s:27:\"wpgmza_settings_image_width\";s:0:\"\";s:28:\"wpgmza_settings_image_height\";s:0:\"\";s:32:\"wpgmza_settings_infowindow_width\";s:0:\"\";s:32:\"wpgmza_settings_infowindow_links\";b:0;s:34:\"wpgmza_settings_infowindow_address\";b:0;s:24:\"infowindow_hide_category\";b:0;s:36:\"wpgmza_settings_infowindow_link_text\";s:0:\"\";s:34:\"wpgmza_settings_map_open_marker_by\";s:1:\"1\";s:35:\"wpgmza_settings_disable_infowindows\";b:0;s:31:\"wpgmza_settings_markerlist_icon\";b:0;s:31:\"wpgmza_settings_markerlist_link\";b:0;s:32:\"wpgmza_settings_markerlist_title\";b:0;s:34:\"wpgmza_settings_markerlist_address\";b:0;s:35:\"wpgmza_settings_markerlist_category\";b:0;s:38:\"wpgmza_settings_markerlist_description\";b:0;s:32:\"wpgmza_do_not_enqueue_datatables\";b:0;s:30:\"enable_datatables_enter_search\";b:0;s:20:\"wpgmza_default_items\";N;s:41:\"wpgmza_settings_carousel_markerlist_theme\";N;s:41:\"wpgmza_settings_carousel_markerlist_image\";b:0;s:41:\"wpgmza_settings_carousel_markerlist_title\";b:0;s:40:\"wpgmza_settings_carousel_markerlist_icon\";b:0;s:43:\"wpgmza_settings_carousel_markerlist_address\";b:0;s:47:\"wpgmza_settings_carousel_markerlist_description\";b:0;s:47:\"wpgmza_settings_carousel_markerlist_marker_link\";b:0;s:46:\"wpgmza_settings_carousel_markerlist_directions\";b:0;s:48:\"wpgmza_settings_carousel_markerlist_resize_image\";b:0;s:17:\"carousel_lazyload\";b:0;s:19:\"carousel_autoheight\";b:0;s:19:\"carousel_pagination\";b:0;s:19:\"carousel_navigation\";b:0;s:34:\"wpgmza_do_not_enqueue_owl_carousel\";b:0;s:41:\"wpgmza_do_not_enqueue_owl_carousel_themes\";b:0;s:14:\"carousel_items\";s:1:\"5\";s:21:\"carousel_items_tablet\";s:1:\"3\";s:21:\"carousel_items_mobile\";s:1:\"1\";s:17:\"carousel_autoplay\";s:4:\"5000\";s:26:\"wpgmza_store_locator_radii\";s:0:\"\";s:26:\"wpgmza_google_maps_api_key\";s:0:\"\";s:28:\"importer_google_maps_api_key\";s:0:\"\";s:19:\"open_layers_api_key\";s:0:\"\";s:22:\"open_route_service_key\";s:0:\"\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";s:17:\"wpgmza_custom_css\";s:0:\"\";s:16:\"wpgmza_custom_js\";s:0:\"\";s:33:\"disable_compressed_path_variables\";b:0;s:37:\"disable_autoptimize_compatibility_fix\";b:0;s:31:\"enable_dynamic_sql_refac_filter\";b:0;s:25:\"disable_automatic_backups\";b:0;s:20:\"disable_google_fonts\";b:0;s:25:\"enable_google_csp_headers\";b:0;s:20:\"force_ajax_only_mode\";b:0;s:21:\"wpgmza_developer_mode\";b:0;s:39:\"wpgmza_gdpr_require_consent_before_load\";b:1;s:27:\"wpgmza_gdpr_override_notice\";b:0;s:32:\"wpgmza_gdpr_notice_override_text\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (540,'wpgmza_xml_location','C:\\Users\\Snir1\\Local Sites\\my-university\\app\\public\\wp-content\\uploads\\wp-google-maps\\','yes');
INSERT INTO `wp_options` VALUES (541,'wpgmza_xml_url','http://my-university.local/wp-content/uploads/wp-google-maps/','yes');
INSERT INTO `wp_options` VALUES (542,'wpgmza-first-run','2024-03-29T07:13:50+0000','yes');
INSERT INTO `wp_options` VALUES (543,'wpgmza_welcome_screen_done','1','yes');
INSERT INTO `wp_options` VALUES (544,'widget_wpgmza_map_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (545,'wpgmza_temp_api','AIzaSyBM6F4K7tfeTct533KK8QCnIpDTrxxpCXA','yes');
INSERT INTO `wp_options` VALUES (546,'wpgmza-installer-paused','2024-03-30','yes');
INSERT INTO `wp_options` VALUES (549,'wpgmza_google_maps_api_key','','yes');
INSERT INTO `wp_options` VALUES (554,'wp_gmp_db_version','1.11.13','yes');
INSERT INTO `wp_options` VALUES (555,'wp_gmp_db_installed','1','yes');
INSERT INTO `wp_options` VALUES (556,'gmp_def_icons_installed','1','yes');
INSERT INTO `wp_options` VALUES (557,'gmp_plugin_activation_errors','','yes');
INSERT INTO `wp_options` VALUES (589,'BingMapPro__version','5.0','yes');
INSERT INTO `wp_options` VALUES (590,'BingMapPro__installed','1','yes');
INSERT INTO `wp_options` VALUES (591,'BingMapPro_bmp_api_key','AhT6BagKb1Fv6htHl7i6uuUTmcm_yS245I22BiAMVJ6aMTXcXChXfa9PWYAbz1rd','yes');
INSERT INTO `wp_options` VALUES (592,'BingMapPro_bmp_dsom','false','yes');
INSERT INTO `wp_options` VALUES (593,'BingMapPro_bmp_cnb','false','yes');
INSERT INTO `wp_options` VALUES (594,'BingMapPro_bmp_dz','false','yes');
INSERT INTO `wp_options` VALUES (595,'BingMapPro_bmp_mr','false','yes');
INSERT INTO `wp_options` VALUES (596,'BingMapPro_bmp_pin_desktop_width','250','yes');
INSERT INTO `wp_options` VALUES (597,'BingMapPro_bmp_pin_desktop_height','170','yes');
INSERT INTO `wp_options` VALUES (598,'BingMapPro_bmp_pin_tablet_width','210','yes');
INSERT INTO `wp_options` VALUES (599,'BingMapPro_bmp_pin_tablet_height','130','yes');
INSERT INTO `wp_options` VALUES (600,'BingMapPro_bmp_pin_mobile_width','140','yes');
INSERT INTO `wp_options` VALUES (601,'BingMapPro_bmp_pin_mobile_height','100','yes');
INSERT INTO `wp_options` VALUES (602,'BingMapPro_bmp_woo_autosuggest_enabled','0','yes');
INSERT INTO `wp_options` VALUES (603,'BingMapPro_restrict_suggest','','yes');
INSERT INTO `wp_options` VALUES (613,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1711996994;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:34:\"ultimate-maps-by-supsystic/ums.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:40:\"w.org/plugins/ultimate-maps-by-supsystic\";s:4:\"slug\";s:26:\"ultimate-maps-by-supsystic\";s:6:\"plugin\";s:34:\"ultimate-maps-by-supsystic/ums.php\";s:11:\"new_version\";s:6:\"1.2.18\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/ultimate-maps-by-supsystic/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/ultimate-maps-by-supsystic.1.2.18.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/ultimate-maps-by-supsystic/assets/icon-256x256.jpg?rev=1964943\";s:2:\"1x\";s:79:\"https://ps.w.org/ultimate-maps-by-supsystic/assets/icon-128x128.jpg?rev=1964943\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/ultimate-maps-by-supsystic/assets/banner-772x250.jpg?rev=1964943\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";b:0;}s:37:\"api-bing-map-2018/wp-bing-map-pro.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/api-bing-map-2018\";s:4:\"slug\";s:17:\"api-bing-map-2018\";s:6:\"plugin\";s:37:\"api-bing-map-2018/wp-bing-map-pro.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/api-bing-map-2018/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/api-bing-map-2018.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/api-bing-map-2018/assets/icon-256x256.png?rev=2124238\";s:2:\"1x\";s:70:\"https://ps.w.org/api-bing-map-2018/assets/icon-128x128.png?rev=2124238\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"5.0.1\";}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:6:\"9.0.35\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=3058363\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=3058363\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-google-maps/assets/banner-1544x500.png?rev=3058363\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.png?rev=3058368\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}}s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.7\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.6\";s:34:\"ultimate-maps-by-supsystic/ums.php\";s:6:\"1.2.18\";s:37:\"api-bing-map-2018/wp-bing-map-pro.php\";s:3:\"5.0\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:6:\"9.0.35\";}}','no');
INSERT INTO `wp_options` VALUES (614,'wp_ums_db_version','1.2.18','yes');
INSERT INTO `wp_options` VALUES (615,'wp_ums_db_installed','1','yes');
INSERT INTO `wp_options` VALUES (616,'ums_opts_data','a:8:{s:10:\"def_engine\";a:2:{s:5:\"value\";s:4:\"bing\";s:10:\"changed_on\";i:1711814897;}s:8:\"bing_key\";a:2:{s:5:\"value\";s:64:\"AhT6BagKb1Fv6htHl7i6uuUTmcm_yS245I22BiAMVJ6aMTXcXChXfa9PWYAbz1rd\";s:10:\"changed_on\";i:1711814897;}s:12:\"rapidapi_key\";a:1:{s:5:\"value\";s:0:\"\";}s:10:\"mapbox_key\";a:1:{s:5:\"value\";s:0:\"\";}s:17:\"thunderforest_key\";a:1:{s:5:\"value\";s:0:\"\";}s:13:\"add_love_link\";a:1:{s:5:\"value\";s:1:\"0\";}s:16:\"remove_love_link\";a:1:{s:5:\"value\";s:1:\"0\";}s:12:\"access_roles\";a:2:{s:5:\"value\";a:1:{i:0;s:13:\"administrator\";}s:10:\"changed_on\";i:1711814842;}}','yes');
INSERT INTO `wp_options` VALUES (617,'ums_def_icons_installed','1','yes');
INSERT INTO `wp_options` VALUES (618,'ums_plugin_activation_errors','','yes');
INSERT INTO `wp_options` VALUES (619,'ums_ac_disabled','1','yes');
INSERT INTO `wp_options` VALUES (620,'ums_show_love_link','1','yes');
INSERT INTO `wp_options` VALUES (621,'ums_last_check_love_link','1711815039','yes');
INSERT INTO `wp_options` VALUES (622,'supsystic_ums_love_link_title','WordPress Google Maps','yes');
INSERT INTO `wp_options` VALUES (638,'_site_transient_timeout_theme_roots','1711998793','no');
INSERT INTO `wp_options` VALUES (639,'_site_transient_theme_roots','a:4:{s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:14:\"university2024\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1710713681:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1710713680:1');
INSERT INTO `wp_postmeta` VALUES (9,9,'_edit_lock','1710790331:1');
INSERT INTO `wp_postmeta` VALUES (12,11,'_edit_lock','1711483128:1');
INSERT INTO `wp_postmeta` VALUES (13,3,'_edit_lock','1710493396:1');
INSERT INTO `wp_postmeta` VALUES (14,14,'_edit_lock','1710572565:1');
INSERT INTO `wp_postmeta` VALUES (16,18,'_edit_lock','1710572564:1');
INSERT INTO `wp_postmeta` VALUES (17,20,'_edit_lock','1710569348:1');
INSERT INTO `wp_postmeta` VALUES (18,22,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (19,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (20,22,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (21,22,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (22,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (23,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (24,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (25,22,'_menu_item_url','http://my-university.local/');
INSERT INTO `wp_postmeta` VALUES (27,23,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (28,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (29,23,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (30,23,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (31,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (32,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (33,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (34,23,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (36,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (37,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (38,24,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (39,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (40,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (41,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (42,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (43,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (44,24,'_menu_item_orphaned','1710570568');
INSERT INTO `wp_postmeta` VALUES (45,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (46,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (47,25,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (48,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (49,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (50,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (51,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (52,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (54,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (55,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (56,26,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (57,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (58,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (59,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (60,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (61,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (62,26,'_menu_item_orphaned','1710570568');
INSERT INTO `wp_postmeta` VALUES (63,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (64,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (65,27,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (66,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (67,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (68,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (69,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (70,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (71,27,'_menu_item_orphaned','1710570568');
INSERT INTO `wp_postmeta` VALUES (72,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (73,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (74,28,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (75,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (76,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (77,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (78,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (79,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (81,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (82,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (83,29,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (84,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (85,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (86,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (87,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (88,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (90,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (91,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (92,30,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (93,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (94,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (95,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (96,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (97,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (99,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (100,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (101,31,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (102,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (103,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (104,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (105,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (106,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (108,33,'_edit_lock','1710654229:1');
INSERT INTO `wp_postmeta` VALUES (109,35,'_edit_lock','1711565482:1');
INSERT INTO `wp_postmeta` VALUES (114,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (117,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (120,7,'_wp_old_date','2024-03-15');
INSERT INTO `wp_postmeta` VALUES (123,5,'_wp_old_date','2024-03-15');
INSERT INTO `wp_postmeta` VALUES (124,37,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (125,37,'_edit_lock','1711260225:1');
INSERT INTO `wp_postmeta` VALUES (126,38,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (127,38,'_edit_lock','1710964520:1');
INSERT INTO `wp_postmeta` VALUES (128,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (129,39,'_edit_lock','1711606129:1');
INSERT INTO `wp_postmeta` VALUES (132,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (133,41,'_edit_lock','1710876988:1');
INSERT INTO `wp_postmeta` VALUES (134,39,'event_date','20240418');
INSERT INTO `wp_postmeta` VALUES (135,39,'_event_date','field_65f8a056356a4');
INSERT INTO `wp_postmeta` VALUES (136,43,'_edit_lock','1710876457:1');
INSERT INTO `wp_postmeta` VALUES (137,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (138,43,'event_date','20241229');
INSERT INTO `wp_postmeta` VALUES (139,43,'_event_date','field_65f8a056356a4');
INSERT INTO `wp_postmeta` VALUES (140,44,'_edit_lock','1710879325:1');
INSERT INTO `wp_postmeta` VALUES (141,37,'event_date','20240324');
INSERT INTO `wp_postmeta` VALUES (142,37,'_event_date','field_65f8a056356a4');
INSERT INTO `wp_postmeta` VALUES (143,38,'event_date','20220310');
INSERT INTO `wp_postmeta` VALUES (144,38,'_event_date','field_65f8a056356a4');
INSERT INTO `wp_postmeta` VALUES (145,46,'_edit_lock','1711218262:1');
INSERT INTO `wp_postmeta` VALUES (146,47,'_edit_lock','1711699898:1');
INSERT INTO `wp_postmeta` VALUES (147,48,'_edit_lock','1711433048:1');
INSERT INTO `wp_postmeta` VALUES (148,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (149,49,'_edit_lock','1711261650:1');
INSERT INTO `wp_postmeta` VALUES (150,37,'related_program','a:2:{i:0;s:2:\"46\";i:1;s:2:\"48\";}');
INSERT INTO `wp_postmeta` VALUES (151,37,'_related_program','field_65fb3e03877c6');
INSERT INTO `wp_postmeta` VALUES (152,39,'related_program','a:1:{i:0;s:2:\"47\";}');
INSERT INTO `wp_postmeta` VALUES (153,39,'_related_program','field_65fb3e03877c6');
INSERT INTO `wp_postmeta` VALUES (154,38,'related_program','a:1:{i:0;s:2:\"48\";}');
INSERT INTO `wp_postmeta` VALUES (155,38,'_related_program','field_65fb3e03877c6');
INSERT INTO `wp_postmeta` VALUES (156,51,'_edit_lock','1711260158:1');
INSERT INTO `wp_postmeta` VALUES (157,52,'_edit_lock','1711260207:1');
INSERT INTO `wp_postmeta` VALUES (158,53,'_edit_lock','1711260258:1');
INSERT INTO `wp_postmeta` VALUES (159,54,'_edit_lock','1711433090:1');
INSERT INTO `wp_postmeta` VALUES (160,55,'_edit_lock','1711432320:1');
INSERT INTO `wp_postmeta` VALUES (161,56,'_edit_lock','1711475495:1');
INSERT INTO `wp_postmeta` VALUES (162,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (163,56,'related_program','a:1:{i:0;s:2:\"47\";}');
INSERT INTO `wp_postmeta` VALUES (164,56,'_related_program','field_65fb3e03877c6');
INSERT INTO `wp_postmeta` VALUES (165,58,'_wp_attached_file','2024/03/perach.jpg');
INSERT INTO `wp_postmeta` VALUES (166,58,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:18:\"2024/03/perach.jpg\";s:8:\"filesize\";i:93532;s:5:\"sizes\";a:5:{s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:18:\"perach-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19470;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:18:\"perach-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49129;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"perach-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6403;}s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"perach-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18380;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"perach-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:85866;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (167,56,'_thumbnail_id','58');
INSERT INTO `wp_postmeta` VALUES (168,59,'_wp_attached_file','2024/03/snir-inbar.jpeg');
INSERT INTO `wp_postmeta` VALUES (169,59,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:1066;s:4:\"file\";s:23:\"2024/03/snir-inbar.jpeg\";s:8:\"filesize\";i:154279;s:5:\"sizes\";a:6:{s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:23:\"snir-inbar-400x260.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21568;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:23:\"snir-inbar-480x650.jpeg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59244;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"snir-inbar-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5924;}s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"snir-inbar-225x300.jpeg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14947;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"snir-inbar-768x1023.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:139186;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"snir-inbar-768x1024.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:139379;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (170,54,'_thumbnail_id','59');
INSERT INTO `wp_postmeta` VALUES (171,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (172,54,'related_program','a:2:{i:0;s:2:\"48\";i:1;s:2:\"46\";}');
INSERT INTO `wp_postmeta` VALUES (173,54,'_related_program','field_65fb3e03877c6');
INSERT INTO `wp_postmeta` VALUES (174,60,'_wp_attached_file','2024/03/מיזם-חדש-2.webp');
INSERT INTO `wp_postmeta` VALUES (175,60,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2024/03/מיזם-חדש-2.webp\";s:8:\"filesize\";i:11376;s:5:\"sizes\";a:4:{s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:30:\"מיזם-חדש-2-400x260.webp\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8670;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:30:\"מיזם-חדש-2-480x500.webp\";s:5:\"width\";i:480;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:16808;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"מיזם-חדש-2-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3876;}s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"מיזם-חדש-2-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8852;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (176,55,'_thumbnail_id','60');
INSERT INTO `wp_postmeta` VALUES (177,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (178,55,'related_program','');
INSERT INTO `wp_postmeta` VALUES (179,55,'_related_program','field_65fb3e03877c6');
INSERT INTO `wp_postmeta` VALUES (180,58,'_edit_lock','1711433192:1');
INSERT INTO `wp_postmeta` VALUES (181,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (182,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (183,61,'_edit_lock','1711434373:1');
INSERT INTO `wp_postmeta` VALUES (184,56,'page_banner_subtitle','life is music');
INSERT INTO `wp_postmeta` VALUES (185,56,'_page_banner_subtitle','field_6602674fe7907');
INSERT INTO `wp_postmeta` VALUES (186,56,'page_banner_background_image','67');
INSERT INTO `wp_postmeta` VALUES (187,56,'_page_banner_background_image','field_66026777e7908');
INSERT INTO `wp_postmeta` VALUES (188,64,'_wp_attached_file','2024/03/volumetric-musical-background-with-treble-clef-notes-generative-ai-scaled.webp');
INSERT INTO `wp_postmeta` VALUES (189,64,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1463;s:4:\"file\";s:86:\"2024/03/volumetric-musical-background-with-treble-clef-notes-generative-ai-scaled.webp\";s:8:\"filesize\";i:128452;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:79:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-300x171.webp\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7358;}s:5:\"large\";a:5:{s:4:\"file\";s:80:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-1024x585.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:585;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:38572;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:79:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5354;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:79:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-768x439.webp\";s:5:\"width\";i:768;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:26358;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:80:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-1536x878.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:878;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:65988;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:81:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-2048x1170.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1170;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:96810;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:79:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-400x260.webp\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12770;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:79:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-480x650.webp\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:34242;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:80:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-1500x350.webp\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:44246;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:71:\"volumetric-musical-background-with-treble-clef-notes-generative-ai.webp\";}');
INSERT INTO `wp_postmeta` VALUES (192,67,'_wp_attached_file','2024/03/volumetric-musical-background-with-treble-clef-notes-generative-ai-1500x350-1.webp');
INSERT INTO `wp_postmeta` VALUES (193,67,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:350;s:4:\"file\";s:90:\"2024/03/volumetric-musical-background-with-treble-clef-notes-generative-ai-1500x350-1.webp\";s:8:\"filesize\";i:44246;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:89:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-1500x350-1-300x70.webp\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5058;}s:5:\"large\";a:5:{s:4:\"file\";s:91:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-1500x350-1-1024x239.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:24518;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:90:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-1500x350-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6946;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:90:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-1500x350-1-768x179.webp\";s:5:\"width\";i:768;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:17320;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:90:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-1500x350-1-400x260.webp\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:20282;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:90:\"volumetric-musical-background-with-treble-clef-notes-generative-ai-1500x350-1-480x350.webp\";s:5:\"width\";i:480;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:30764;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (196,69,'_wp_attached_file','2024/03/education-day-arrangement-table-with-copy-space-scaled.webp');
INSERT INTO `wp_postmeta` VALUES (197,69,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:67:\"2024/03/education-day-arrangement-table-with-copy-space-scaled.webp\";s:8:\"filesize\";i:175244;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:60:\"education-day-arrangement-table-with-copy-space-300x169.webp\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6770;}s:5:\"large\";a:5:{s:4:\"file\";s:61:\"education-day-arrangement-table-with-copy-space-1024x576.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:44730;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:60:\"education-day-arrangement-table-with-copy-space-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3348;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:60:\"education-day-arrangement-table-with-copy-space-768x432.webp\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:28492;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:61:\"education-day-arrangement-table-with-copy-space-1536x864.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:82172;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:62:\"education-day-arrangement-table-with-copy-space-2048x1152.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:126598;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:60:\"education-day-arrangement-table-with-copy-space-400x260.webp\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11644;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:60:\"education-day-arrangement-table-with-copy-space-480x650.webp\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18518;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:61:\"education-day-arrangement-table-with-copy-space-1500x350.webp\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:47368;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:52:\"education-day-arrangement-table-with-copy-space.webp\";}');
INSERT INTO `wp_postmeta` VALUES (199,11,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (201,70,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (203,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (204,11,'page_banner_subtitle','Welcome to our school');
INSERT INTO `wp_postmeta` VALUES (205,11,'_page_banner_subtitle','field_6602674fe7907');
INSERT INTO `wp_postmeta` VALUES (206,11,'page_banner_background_image','69');
INSERT INTO `wp_postmeta` VALUES (207,11,'_page_banner_background_image','field_66026777e7908');
INSERT INTO `wp_postmeta` VALUES (208,70,'page_banner_subtitle','Welcome to our school');
INSERT INTO `wp_postmeta` VALUES (209,70,'_page_banner_subtitle','field_6602674fe7907');
INSERT INTO `wp_postmeta` VALUES (210,70,'page_banner_background_image','69');
INSERT INTO `wp_postmeta` VALUES (211,70,'_page_banner_background_image','field_66026777e7908');
INSERT INTO `wp_postmeta` VALUES (213,35,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (215,71,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (217,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (218,35,'page_banner_subtitle','Enjoy our greate articles');
INSERT INTO `wp_postmeta` VALUES (219,35,'_page_banner_subtitle','field_6602674fe7907');
INSERT INTO `wp_postmeta` VALUES (220,35,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (221,35,'_page_banner_background_image','field_66026777e7908');
INSERT INTO `wp_postmeta` VALUES (222,71,'page_banner_subtitle','Enjoy our greate articles');
INSERT INTO `wp_postmeta` VALUES (223,71,'_page_banner_subtitle','field_6602674fe7907');
INSERT INTO `wp_postmeta` VALUES (224,71,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (225,71,'_page_banner_background_image','field_66026777e7908');
INSERT INTO `wp_postmeta` VALUES (226,39,'page_banner_subtitle','English class by Mrs Perach sade ianbr');
INSERT INTO `wp_postmeta` VALUES (227,39,'_page_banner_subtitle','field_6602674fe7907');
INSERT INTO `wp_postmeta` VALUES (228,39,'page_banner_background_image','72');
INSERT INTO `wp_postmeta` VALUES (229,39,'_page_banner_background_image','field_66026777e7908');
INSERT INTO `wp_postmeta` VALUES (230,72,'_wp_attached_file','2024/03/מיזם-חדש-3.webp');
INSERT INTO `wp_postmeta` VALUES (231,72,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1000;s:4:\"file\";s:30:\"2024/03/מיזם-חדש-3.webp\";s:8:\"filesize\";i:41652;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"מיזם-חדש-3-300x150.webp\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4476;}s:5:\"large\";a:5:{s:4:\"file\";s:31:\"מיזם-חדש-3-1024x512.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:17972;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"מיזם-חדש-3-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2470;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"מיזם-חדש-3-768x384.webp\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12336;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"מיזם-חדש-3-1536x768.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:32852;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:30:\"מיזם-חדש-3-400x260.webp\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6042;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:30:\"מיזם-חדש-3-480x650.webp\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9016;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:31:\"מיזם-חדש-3-1500x350.webp\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:23118;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (232,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (233,47,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (234,47,'_page_banner_subtitle','field_6602674fe7907');
INSERT INTO `wp_postmeta` VALUES (235,47,'page_banner_background_image','72');
INSERT INTO `wp_postmeta` VALUES (236,47,'_page_banner_background_image','field_66026777e7908');
INSERT INTO `wp_postmeta` VALUES (237,73,'_edit_lock','1711815883:1');
INSERT INTO `wp_postmeta` VALUES (238,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (239,73,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (240,73,'_page_banner_subtitle','field_6602674fe7907');
INSERT INTO `wp_postmeta` VALUES (241,73,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (242,73,'_page_banner_background_image','field_66026777e7908');
INSERT INTO `wp_postmeta` VALUES (243,74,'_edit_lock','1711813404:1');
INSERT INTO `wp_postmeta` VALUES (244,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (245,74,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (246,74,'_page_banner_subtitle','field_6602674fe7907');
INSERT INTO `wp_postmeta` VALUES (247,74,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (248,74,'_page_banner_background_image','field_66026777e7908');
INSERT INTO `wp_postmeta` VALUES (249,75,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (250,75,'_edit_lock','1711813620:1');
INSERT INTO `wp_postmeta` VALUES (253,74,'map_location','[bing-map-pro id=1]');
INSERT INTO `wp_postmeta` VALUES (254,74,'_map_location','field_660509e526e77');
INSERT INTO `wp_postmeta` VALUES (255,73,'_oembed_bb152155496664f929f023526a4f351a','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (256,73,'map_location','[ultimate_maps id=\"1\"]');
INSERT INTO `wp_postmeta` VALUES (257,73,'_map_location','field_660509e526e77');
INSERT INTO `wp_postmeta` VALUES (258,79,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (259,79,'_wp_trash_meta_time','1711697085');
INSERT INTO `wp_postmeta` VALUES (260,79,'_wp_desired_post_slug','group_66066cb9dbd24');
INSERT INTO `wp_postmeta` VALUES (261,80,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (262,80,'_wp_trash_meta_time','1711697085');
INSERT INTO `wp_postmeta` VALUES (263,80,'_wp_desired_post_slug','field_66066cb9e0fe1');
INSERT INTO `wp_postmeta` VALUES (264,73,'_oembed_0fa35878c5d61cd19b6097163be8be02','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (266,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (267,82,'_edit_lock','1711698721:1');
INSERT INTO `wp_postmeta` VALUES (268,47,'related_campus','a:2:{i:0;s:2:\"73\";i:1;s:2:\"74\";}');
INSERT INTO `wp_postmeta` VALUES (269,47,'_related_campus','field_6606736de9147');
INSERT INTO `wp_postmeta` VALUES (270,74,'_oembed_bbd816b6aa0bee4d9c6f6c43068372c6','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (271,73,'_oembed_44e08227107d287a8ada7376133f307f','{{unknown}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-03-06 19:35:15','2024-03-06 19:35:15','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-03-06 19:35:15','2024-03-06 19:35:15','',0,'http://my-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2024-03-06 19:35:15','2024-03-06 19:35:15','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://my-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-03-06 19:35:15','2024-03-06 19:35:15','',0,'http://my-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2024-03-06 19:35:15','2024-03-06 19:35:15','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://my-university.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2024-03-15 09:05:40','2024-03-15 09:05:40','',0,'http://my-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2024-03-06 09:03:26','2024-03-06 09:03:26','<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','first post','','publish','open','open','','first-post','','','2024-03-17 22:17:02','2024-03-17 22:17:02','',0,'http://my-university.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2024-03-15 09:03:26','2024-03-15 09:03:26','<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','first post','','inherit','closed','closed','','5-revision-v1','','','2024-03-15 09:03:26','2024-03-15 09:03:26','',5,'http://my-university.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-03-12 09:03:00','2024-03-12 09:03:00','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->','another post','','publish','open','open','','another-post','','','2024-03-17 22:16:55','2024-03-17 22:16:55','',0,'http://my-university.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2024-03-15 09:03:54','2024-03-15 09:03:54','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->','another post','','inherit','closed','closed','','7-revision-v1','','','2024-03-15 09:03:54','2024-03-15 09:03:54','',7,'http://my-university.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-03-15 09:04:11','2024-03-15 09:04:11','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->','three of us!','this  is my custom exerpt','publish','open','open','','three-of-us','','','2024-03-18 19:27:37','2024-03-18 19:27:37','',0,'http://my-university.local/?p=9',0,'post','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2024-03-15 09:04:11','2024-03-15 09:04:11','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->','three of us!','','inherit','closed','closed','','9-revision-v1','','','2024-03-15 09:04:11','2024-03-15 09:04:11','',9,'http://my-university.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-03-15 09:05:10','2024-03-15 09:05:10','<!-- wp:paragraph -->\n<p>this is about us content!!</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2024-03-26 18:02:16','2024-03-26 18:02:16','',0,'http://my-university.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-03-15 09:05:10','2024-03-15 09:05:10','<!-- wp:paragraph -->\n<p>this is about us content!!</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','11-revision-v1','','','2024-03-15 09:05:10','2024-03-15 09:05:10','',11,'http://my-university.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-03-15 09:05:40','2024-03-15 09:05:40','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://my-university.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-03-15 09:05:40','2024-03-15 09:05:40','',3,'http://my-university.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-03-15 09:28:26','2024-03-15 09:28:26','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2024-03-16 06:11:58','2024-03-16 06:11:58','',11,'http://my-university.local/?page_id=14',2,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-03-15 09:28:26','2024-03-15 09:28:26','','Our History','','inherit','closed','closed','','14-revision-v1','','','2024-03-15 09:28:26','2024-03-15 09:28:26','',14,'http://my-university.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2024-03-15 09:28:43','2024-03-15 09:28:43','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','14-revision-v1','','','2024-03-15 09:28:43','2024-03-15 09:28:43','',14,'http://my-university.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2024-03-15 09:30:09','2024-03-15 09:30:09','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2024-03-16 06:11:56','2024-03-16 06:11:56','',11,'http://my-university.local/?page_id=18',1,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2024-03-15 09:30:09','2024-03-15 09:30:09','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','18-revision-v1','','','2024-03-15 09:30:09','2024-03-15 09:30:09','',18,'http://my-university.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-03-15 09:52:11','2024-03-15 09:52:11','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2024-03-15 09:52:11','2024-03-15 09:52:11','',3,'http://my-university.local/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-03-15 09:52:11','2024-03-15 09:52:11','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','20-revision-v1','','','2024-03-15 09:52:11','2024-03-15 09:52:11','',20,'http://my-university.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-03-16 06:31:14','2024-03-16 06:30:13','','Home','','publish','closed','closed','','home','','','2024-03-16 06:31:14','2024-03-16 06:31:14','',0,'http://my-university.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-03-16 06:31:14','2024-03-16 06:30:13',' ','','','publish','closed','closed','','23','','','2024-03-16 06:31:14','2024-03-16 06:31:14','',0,'http://my-university.local/?p=23',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-03-16 06:29:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-03-16 06:29:28','0000-00-00 00:00:00','',3,'http://my-university.local/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-03-16 06:31:14','2024-03-16 06:30:13',' ','','','publish','closed','closed','','25','','','2024-03-16 06:31:14','2024-03-16 06:31:14','',0,'http://my-university.local/?p=25',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-03-16 06:29:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-03-16 06:29:28','0000-00-00 00:00:00','',11,'http://my-university.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-03-16 06:29:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-03-16 06:29:28','0000-00-00 00:00:00','',11,'http://my-university.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2024-03-16 06:31:14','2024-03-16 06:30:13',' ','','','publish','closed','closed','','28','','','2024-03-16 06:31:14','2024-03-16 06:31:14','',0,'http://my-university.local/?p=28',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-03-16 06:38:43','2024-03-16 06:38:43',' ','','','publish','closed','closed','','29','','','2024-03-16 06:38:43','2024-03-16 06:38:43','',0,'http://my-university.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2024-03-16 06:39:13','2024-03-16 06:39:13',' ','','','publish','closed','closed','','30','','','2024-03-16 06:39:13','2024-03-16 06:39:13','',0,'http://my-university.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2024-03-16 06:39:13','2024-03-16 06:39:13',' ','','','publish','closed','closed','','31','','','2024-03-16 06:39:13','2024-03-16 06:39:13','',3,'http://my-university.local/?p=31',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-03-17 05:46:13','2024-03-17 05:46:13','','Home','','publish','closed','closed','','home','','','2024-03-17 05:46:13','2024-03-17 05:46:13','',0,'http://my-university.local/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2024-03-17 05:46:13','2024-03-17 05:46:13','','Home','','inherit','closed','closed','','33-revision-v1','','','2024-03-17 05:46:13','2024-03-17 05:46:13','',33,'http://my-university.local/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2024-03-17 05:46:20','2024-03-17 05:46:20','','Blog','','publish','closed','closed','','blog','','','2024-03-27 18:38:31','2024-03-27 18:38:31','',0,'http://my-university.local/?page_id=35',0,'page','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2024-03-17 05:46:20','2024-03-17 05:46:20','','Blog','','inherit','closed','closed','','35-revision-v1','','','2024-03-17 05:46:20','2024-03-17 05:46:20','',35,'http://my-university.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2024-03-18 05:52:04','2024-03-18 05:52:04','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','math meetup','','publish','closed','closed','','math-meetup','','','2024-03-23 18:30:11','2024-03-23 18:30:11','',0,'http://my-university.local/?post_type=event&#038;p=37',0,'event','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2024-03-18 05:52:37','2024-03-18 05:52:37','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','Front-end class','','publish','closed','closed','','law-school','','','2024-03-20 19:54:43','2024-03-20 19:54:43','',0,'http://my-university.local/?post_type=event&#038;p=38',0,'event','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-03-18 05:53:01','2024-03-18 05:53:01','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','english class','','publish','closed','closed','','english-class','','','2024-03-27 18:49:15','2024-03-27 18:49:15','',0,'http://my-university.local/?post_type=event&#038;p=39',0,'event','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-03-18 19:27:37','2024-03-18 19:27:37','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->','three of us!','this  is my custom exerpt','inherit','closed','closed','','9-revision-v1','','','2024-03-18 19:27:37','2024-03-18 19:27:37','',9,'http://my-university.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-03-18 20:15:29','2024-03-18 20:15:29','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','event','event','publish','closed','closed','','group_65f8a05690efc','','','2024-03-18 20:24:37','2024-03-18 20:24:37','',0,'http://my-university.local/?post_type=acf-field-group&#038;p=41',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-03-18 20:15:29','2024-03-18 20:15:29','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','event date','event_date','publish','closed','closed','','field_65f8a056356a4','','','2024-03-18 20:24:37','2024-03-18 20:24:37','',41,'http://my-university.local/?post_type=acf-field&#038;p=42',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-03-19 19:02:11','2024-03-19 19:02:11','<!-- wp:paragraph -->\n<p>happy birthday snir!</p>\n<!-- /wp:paragraph -->','Snir B-day','','publish','closed','closed','','snir-b-day','','','2024-03-19 19:02:12','2024-03-19 19:02:12','',0,'http://my-university.local/?post_type=event&#038;p=43',0,'event','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2024-03-19 19:36:25','2024-03-19 19:36:25','','Past Events','','publish','closed','closed','','past-events','','','2024-03-19 19:36:25','2024-03-19 19:36:25','',0,'http://my-university.local/?page_id=44',0,'page','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2024-03-19 19:36:25','2024-03-19 19:36:25','','Past Events','','inherit','closed','closed','','44-revision-v1','','','2024-03-19 19:36:25','2024-03-19 19:36:25','',44,'http://my-university.local/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2024-03-20 17:02:38','2024-03-20 17:02:38','<!-- wp:paragraph -->\n<p>sdsajasfasfl ljfdlasddf</p>\n<!-- /wp:paragraph -->','Math','','publish','closed','closed','','math','','','2024-03-23 18:26:45','2024-03-23 18:26:45','',0,'http://my-university.local/?post_type=program&#038;p=46',0,'program','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2024-03-20 17:02:47','2024-03-20 17:02:47','','English','','publish','closed','closed','','english','','','2024-03-29 07:54:35','2024-03-29 07:54:35','',0,'http://my-university.local/?post_type=program&#038;p=47',0,'program','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2024-03-20 17:02:56','2024-03-20 17:02:56','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Programing','','publish','closed','closed','','programing','','','2024-03-26 06:06:26','2024-03-26 06:06:26','',0,'http://my-university.local/?post_type=program&#038;p=48',0,'program','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2024-03-20 19:50:37','2024-03-20 19:50:37','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','related program','related-program','publish','closed','closed','','group_65fb3e02c9334','','','2024-03-24 06:14:35','2024-03-24 06:14:35','',0,'http://my-university.local/?post_type=acf-field-group&#038;p=49',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2024-03-20 19:50:37','2024-03-20 19:50:37','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:3:\"100\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','related programs','related_program','publish','closed','closed','','field_65fb3e03877c6','','','2024-03-23 18:43:42','2024-03-23 18:43:42','',49,'http://my-university.local/?post_type=acf-field&#038;p=50',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2024-03-24 06:05:00','2024-03-24 06:05:00','<!-- wp:paragraph -->\n<p>this is proffersor about text</p>\n<!-- /wp:paragraph -->','Dr. Snir Inbar','','publish','closed','closed','','dr-snir-inbar','','','2024-03-24 06:05:00','2024-03-24 06:05:00','',0,'http://my-university.local/?post_type=proferssor&#038;p=51',0,'proferssor','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2024-03-24 06:05:49','2024-03-24 06:05:49','<!-- wp:paragraph -->\n<p>this is proferssor about text</p>\n<!-- /wp:paragraph -->','MRS Perach Sade Inbar','','publish','closed','closed','','mrs-perach-sade-inbar','','','2024-03-24 06:05:49','2024-03-24 06:05:49','',0,'http://my-university.local/?post_type=proferssor&#038;p=52',0,'proferssor','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2024-03-24 06:06:24','2024-03-24 06:06:24','<!-- wp:paragraph -->\n<p>this is  professor about text.</p>\n<!-- /wp:paragraph -->','Dr. Bdokoty','','publish','closed','closed','','dr-bdokoty','','','2024-03-24 06:06:24','2024-03-24 06:06:24','',0,'http://my-university.local/?post_type=proferssor&#038;p=53',0,'proferssor','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2024-03-24 06:10:14','2024-03-24 06:10:14','<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->','Dr Snir Inbar','','publish','closed','closed','','dr-snir-inbar','','','2024-03-26 06:01:11','2024-03-26 06:01:11','',0,'http://my-university.local/?post_type=professor&#038;p=54',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2024-03-24 06:10:34','2024-03-24 06:10:34','<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->','Dr. Bdokoty','','publish','closed','closed','','dr-bdokoty','','','2024-03-26 05:25:04','2024-03-26 05:25:04','',0,'http://my-university.local/?post_type=professor&#038;p=55',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2024-03-24 06:10:55','2024-03-24 06:10:55','<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->','Dr. Perach Sade Inbar','','publish','closed','closed','','dr-perach-sade-inbar','','','2024-03-26 17:51:35','2024-03-26 17:51:35','',0,'http://my-university.local/?post_type=professor&#038;p=56',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2024-03-25 17:54:36','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-03-25 17:54:36','0000-00-00 00:00:00','',0,'http://my-university.local/?p=57',0,'post','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2024-03-26 05:22:41','2024-03-26 05:22:41','','perach','','inherit','open','closed','','perach','','','2024-03-26 06:00:16','2024-03-26 06:00:16','',56,'http://my-university.local/wp-content/uploads/2024/03/perach.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (59,1,'2024-03-26 05:23:09','2024-03-26 05:23:09','','snir inbar','','inherit','open','closed','','snir-inbar','','','2024-03-26 05:23:09','2024-03-26 05:23:09','',54,'http://my-university.local/wp-content/uploads/2024/03/snir-inbar.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (60,1,'2024-03-26 05:24:58','2024-03-26 05:24:58','','מיזם חדש (2)','','inherit','open','closed','','%d7%9e%d7%99%d7%96%d7%9d-%d7%97%d7%93%d7%a9-2','','','2024-03-26 05:24:58','2024-03-26 05:24:58','',55,'http://my-university.local/wp-content/uploads/2024/03/מיזם-חדש-2.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (61,1,'2024-03-26 06:14:39','2024-03-26 06:14:39','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','page banner','page-banner','publish','closed','closed','','group_6602674f45e6f','','','2024-03-26 06:14:39','2024-03-26 06:14:39','',0,'http://my-university.local/?post_type=acf-field-group&#038;p=61',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2024-03-26 06:14:39','2024-03-26 06:14:39','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','page banner subtitle','page_banner_subtitle','publish','closed','closed','','field_6602674fe7907','','','2024-03-26 06:14:39','2024-03-26 06:14:39','',61,'http://my-university.local/?post_type=acf-field&p=62',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2024-03-26 06:14:39','2024-03-26 06:14:39','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','page banner background image','page_banner_background_image','publish','closed','closed','','field_66026777e7908','','','2024-03-26 06:14:39','2024-03-26 06:14:39','',61,'http://my-university.local/?post_type=acf-field&p=63',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2024-03-26 06:17:09','2024-03-26 06:17:09','','volumetric-musical-background-with-treble-clef-notes-generative-ai','','inherit','open','closed','','volumetric-musical-background-with-treble-clef-notes-generative-ai','','','2024-03-26 06:17:09','2024-03-26 06:17:09','',56,'http://my-university.local/wp-content/uploads/2024/03/volumetric-musical-background-with-treble-clef-notes-generative-ai.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (67,1,'2024-03-26 17:51:29','2024-03-26 17:51:29','','volumetric-musical-background-with-treble-clef-notes-generative-ai-1500x350','','inherit','open','closed','','volumetric-musical-background-with-treble-clef-notes-generative-ai-1500x350','','','2024-03-26 17:51:29','2024-03-26 17:51:29','',56,'http://my-university.local/wp-content/uploads/2024/03/volumetric-musical-background-with-treble-clef-notes-generative-ai-1500x350-1.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (69,1,'2024-03-26 18:02:08','2024-03-26 18:02:08','','education-day-arrangement-table-with-copy-space','','inherit','open','closed','','education-day-arrangement-table-with-copy-space','','','2024-03-26 18:02:08','2024-03-26 18:02:08','',11,'http://my-university.local/wp-content/uploads/2024/03/education-day-arrangement-table-with-copy-space.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (70,1,'2024-03-26 18:02:16','2024-03-26 18:02:16','<!-- wp:paragraph -->\n<p>this is about us content!!</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','11-revision-v1','','','2024-03-26 18:02:16','2024-03-26 18:02:16','',11,'http://my-university.local/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2024-03-27 18:38:31','2024-03-27 18:38:31','','Blog','','inherit','closed','closed','','35-revision-v1','','','2024-03-27 18:38:31','2024-03-27 18:38:31','',35,'http://my-university.local/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2024-03-27 18:48:46','2024-03-27 18:48:46','','מיזם חדש (3)','','inherit','open','closed','','%d7%9e%d7%99%d7%96%d7%9d-%d7%97%d7%93%d7%a9-3','','','2024-03-27 18:48:46','2024-03-27 18:48:46','',47,'http://my-university.local/wp-content/uploads/2024/03/מיזם-חדש-3.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (73,1,'2024-03-28 06:09:20','2024-03-28 06:09:20','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[ultimate_maps id=\"1\"]\n<!-- /wp:shortcode -->','Haifa','','publish','closed','closed','','haifa','','','2024-03-30 16:11:58','2024-03-30 16:11:58','',0,'http://my-university.local/?post_type=campus&#038;p=73',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2024-03-28 06:09:31','2024-03-28 06:09:31','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[bing-map-pro id=1]\n<!-- /wp:shortcode -->','Tel Aviv','','publish','closed','closed','','tel-aviv','','','2024-03-30 15:43:14','2024-03-30 15:43:14','',0,'http://my-university.local/?post_type=campus&#038;p=74',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2024-03-28 06:12:02','2024-03-28 06:12:02','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Map location','map-location','publish','closed','closed','','group_660509e4ec164','','','2024-03-30 15:47:00','2024-03-30 15:47:00','',0,'http://my-university.local/?post_type=acf-field-group&#038;p=75',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2024-03-28 06:12:02','2024-03-28 06:12:02','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','map location','map_location','publish','closed','closed','','field_660509e526e77','','','2024-03-30 15:47:00','2024-03-30 15:47:00','',75,'http://my-university.local/?post_type=acf-field&#038;p=76',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2024-03-29 07:24:41','2024-03-29 07:24:41','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Map location (copy)','map-location-copy','trash','closed','closed','','group_66066cb9dbd24__trashed','','','2024-03-29 07:24:45','2024-03-29 07:24:45','',0,'http://my-university.local/?p=79',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2024-03-29 07:24:41','2024-03-29 07:24:41','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','map location','map_location','trash','closed','closed','','field_66066cb9e0fe1__trashed','','','2024-03-29 07:24:45','2024-03-29 07:24:45','',79,'http://my-university.local/?post_type=acf-field&#038;p=80',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2024-03-29 07:54:18','2024-03-29 07:54:18','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','related campus','related-campus','publish','closed','closed','','group_6606736d9f2f4','','','2024-03-29 07:54:18','2024-03-29 07:54:18','',0,'http://my-university.local/?post_type=acf-field-group&#038;p=82',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2024-03-29 07:54:18','2024-03-29 07:54:18','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','related campus','related_campus','publish','closed','closed','','field_6606736de9147','','','2024-03-29 07:54:18','2024-03-29 07:54:18','',82,'http://my-university.local/?post_type=acf-field&p=83',0,'acf-field','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,5,0);
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,5,0);
INSERT INTO `wp_term_relationships` VALUES (9,5,0);
INSERT INTO `wp_term_relationships` VALUES (22,2,0);
INSERT INTO `wp_term_relationships` VALUES (23,2,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (28,2,0);
INSERT INTO `wp_term_relationships` VALUES (29,3,0);
INSERT INTO `wp_term_relationships` VALUES (30,4,0);
INSERT INTO `wp_term_relationships` VALUES (31,4,0);
INSERT INTO `wp_term_relationships` VALUES (79,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','great articles by my university',0,3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'header menu','header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'footer menu 1','footer-menu-1',0);
INSERT INTO `wp_terms` VALUES (4,'footer menu 2','footer-menu-2',0);
INSERT INTO `wp_terms` VALUES (5,'Blog','blog',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_icons`
--

DROP TABLE IF EXISTS `wp_ums_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_icons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `path` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `width` mediumint(5) NOT NULL DEFAULT '0',
  `height` mediumint(5) NOT NULL DEFAULT '0',
  `is_def` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_icons`
--

LOCK TABLES `wp_ums_icons` WRITE;
/*!40000 ALTER TABLE `wp_ums_icons` DISABLE KEYS */;
INSERT INTO `wp_ums_icons` VALUES (1,'marker','blue,white,star,pin','bblue.png',32,44,1);
INSERT INTO `wp_ums_icons` VALUES (2,'marker','green,white,star,pin','bgreen.png',32,44,1);
INSERT INTO `wp_ums_icons` VALUES (3,'marker','purple,white,star,pin','purple.png',32,44,1);
INSERT INTO `wp_ums_icons` VALUES (4,'marker','blue,white,star,pin','bred.png',32,44,1);
INSERT INTO `wp_ums_icons` VALUES (5,'marker','blue,pin','blue.png',24,38,1);
INSERT INTO `wp_ums_icons` VALUES (6,'marker','gray,pin','gray.png',20,33,1);
INSERT INTO `wp_ums_icons` VALUES (7,'marker','green,pin','green.png',20,34,1);
INSERT INTO `wp_ums_icons` VALUES (8,'marker','pin,yellow','orange.png',20,33,1);
INSERT INTO `wp_ums_icons` VALUES (9,'marker','pin,red','red.png',20,31,1);
INSERT INTO `wp_ums_icons` VALUES (10,'flag','gray','flag_black.png',32,30,1);
INSERT INTO `wp_ums_icons` VALUES (11,'flag','blue','flag_blue.png',32,30,1);
INSERT INTO `wp_ums_icons` VALUES (12,'flag','green','flag_green.png',32,30,1);
INSERT INTO `wp_ums_icons` VALUES (13,'flag','orange','flag_orange.png',32,30,1);
INSERT INTO `wp_ums_icons` VALUES (14,'flag','purple','flag_purple.png',32,30,1);
INSERT INTO `wp_ums_icons` VALUES (15,'flag','red','flag_red.png',32,30,1);
INSERT INTO `wp_ums_icons` VALUES (16,'marker','pin,cycle,blue','blue_circle.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (17,'marker','white,blue,pin','blue_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (18,'marker','blue,pin','blue_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (19,'pin','green,marker,cycle','green_circle.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (20,'pin','green,cycle','green_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (21,'pin','green','green_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (22,'pin','orange,cycle','orange_circle.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (23,'pin','orange,cycle','orange_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (24,'pin','orange','orange_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (25,'pin','purple,cycle','purple_circle.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (26,'pin','purple,cycle','purple_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (27,'pin','purple','purple_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (28,'pin','red,cycle','red_circle.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (29,'pin','red,cycle','red_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (30,'pin','red','red_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (31,'star','black,dark,pin','star_pin_black.png',32,41,1);
INSERT INTO `wp_ums_icons` VALUES (32,'star','blue,pin','star_pin_blue.png',32,41,1);
INSERT INTO `wp_ums_icons` VALUES (33,'star','green,pin','star_pin_green.png',32,41,1);
INSERT INTO `wp_ums_icons` VALUES (34,'star','orange,pin','star_pin_orange.png',32,41,1);
INSERT INTO `wp_ums_icons` VALUES (35,'star','purple','star_pin_purple.png',32,41,1);
INSERT INTO `wp_ums_icons` VALUES (36,'star','red,pin','star_pin_red.png',32,41,1);
INSERT INTO `wp_ums_icons` VALUES (37,'pin','gray,white,cycle','white_circlepng.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (38,'pin','gray,white,cycle','white_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (39,'pin','white,gray','white_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (40,'pin','yellow,cycle','yellow_circlepng.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (41,'pin','yellow,cycle','yellow_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (42,'pin','yellow','yellow_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (43,'marker','red','marker.png',20,34,1);
INSERT INTO `wp_ums_icons` VALUES (44,'marker','blue','marker_blue.png',22,32,1);
INSERT INTO `wp_ums_icons` VALUES (45,'marker','red,letter','markerA.png',20,34,1);
INSERT INTO `wp_ums_icons` VALUES (46,'marker','orange','marker_orange.png',20,34,1);
INSERT INTO `wp_ums_icons` VALUES (47,'marker','green','marker_green.png',20,34,1);
/*!40000 ALTER TABLE `wp_ums_icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_maps`
--

DROP TABLE IF EXISTS `wp_ums_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `engine` varchar(32) DEFAULT NULL,
  `params` text,
  `html_options` text NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_maps`
--

LOCK TABLES `wp_ums_maps` WRITE;
/*!40000 ALTER TABLE `wp_ums_maps` DISABLE KEYS */;
INSERT INTO `wp_ums_maps` VALUES (1,'haifa campus',NULL,'a:60:{s:11:\"width_units\";s:1:\"%\";s:16:\"membershipEnable\";s:1:\"0\";s:26:\"adapt_map_to_screen_height\";s:0:\"\";s:4:\"type\";N;s:8:\"map_type\";s:6:\"aerial\";s:16:\"map_display_mode\";N;s:10:\"map_center\";a:3:{s:7:\"address\";s:133:\"13, דוכיפת, רמת חן, רובע רמות נווה שאנן, חיפה, נפת חיפה, מחוז חיפה, 3269702, ישראל\";s:7:\"coord_x\";s:17:\"32.78343299999998\";s:7:\"coord_y\";s:18:\"35.007869899999996\";}s:8:\"language\";N;s:11:\"enable_zoom\";N;s:17:\"enable_mouse_zoom\";N;s:16:\"mouse_wheel_zoom\";s:1:\"1\";s:9:\"zoom_type\";N;s:4:\"zoom\";s:2:\"16\";s:11:\"zoom_mobile\";N;s:8:\"zoom_min\";s:1:\"1\";s:8:\"zoom_max\";s:2:\"21\";s:19:\"navigation_bar_mode\";s:7:\"compact\";s:12:\"zoom_control\";N;s:14:\"dbl_click_zoom\";s:1:\"1\";s:19:\"street_view_control\";N;s:11:\"pan_control\";N;s:16:\"overview_control\";N;s:9:\"draggable\";s:6:\"enable\";s:15:\"map_stylization\";N;s:18:\"marker_title_color\";s:7:\"#000000\";s:17:\"marker_title_size\";s:2:\"19\";s:23:\"marker_title_size_units\";s:2:\"px\";s:16:\"marker_desc_size\";s:2:\"13\";s:22:\"marker_desc_size_units\";s:2:\"px\";s:19:\"hide_marker_tooltip\";N;s:28:\"center_on_cur_marker_infownd\";N;s:19:\"marker_infownd_type\";N;s:29:\"marker_infownd_hide_close_btn\";N;s:20:\"marker_infownd_width\";s:3:\"200\";s:26:\"marker_infownd_width_units\";s:4:\"auto\";s:21:\"marker_infownd_height\";s:3:\"100\";s:27:\"marker_infownd_height_units\";s:4:\"auto\";s:23:\"marker_infownd_bg_color\";s:7:\"#FFFFFF\";s:16:\"marker_clasterer\";s:4:\"none\";s:21:\"marker_clasterer_icon\";N;s:27:\"marker_clasterer_icon_width\";N;s:28:\"marker_clasterer_icon_height\";N;s:26:\"marker_clasterer_grid_size\";s:2:\"60\";s:33:\"marker_clasterer_background_color\";s:7:\"#2196f3\";s:29:\"marker_clasterer_border_color\";s:7:\"#1c7ba7\";s:27:\"marker_clasterer_text_color\";s:5:\"white\";s:19:\"marker_filter_color\";N;s:26:\"marker_filter_button_title\";N;s:12:\"marker_hover\";s:1:\"1\";s:35:\"slider_simple_table_width_dimension\";N;s:31:\"slider_simple_table_width_title\";N;s:33:\"slider_simple_table_width_address\";N;s:37:\"slider_simple_table_width_description\";N;s:38:\"slider_simple_table_width_getdirection\";N;s:17:\"markers_list_type\";N;s:18:\"markers_list_color\";s:7:\"#55BA68\";s:9:\"is_static\";N;s:16:\"hide_empty_block\";N;s:15:\"autoplay_slider\";N;s:14:\"slide_duration\";N;}','a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"250\";}','2024-03-30 16:10:05');
/*!40000 ALTER TABLE `wp_ums_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_marker_groups`
--

DROP TABLE IF EXISTS `wp_ums_marker_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_marker_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `parent` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_marker_groups`
--

LOCK TABLES `wp_ums_marker_groups` WRITE;
/*!40000 ALTER TABLE `wp_ums_marker_groups` DISABLE KEYS */;
INSERT INTO `wp_ums_marker_groups` VALUES (1,'campus',NULL,'a:5:{s:8:\"bg_color\";s:7:\"#E4E4E4\";s:10:\"text_color\";s:7:\"#E4E4E4\";s:12:\"claster_icon\";N;s:18:\"claster_icon_width\";N;s:19:\"claster_icon_height\";N;}',0,1);
/*!40000 ALTER TABLE `wp_ums_marker_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_marker_groups_relation`
--

DROP TABLE IF EXISTS `wp_ums_marker_groups_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_marker_groups_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marker_id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_marker_groups_relation`
--

LOCK TABLES `wp_ums_marker_groups_relation` WRITE;
/*!40000 ALTER TABLE `wp_ums_marker_groups_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_ums_marker_groups_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_markers`
--

DROP TABLE IF EXISTS `wp_ums_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `coord_x` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coord_y` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` int(11) DEFAULT NULL,
  `map_id` int(11) DEFAULT NULL,
  `marker_group_id` int(11) DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `animation` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `period_from` date DEFAULT NULL,
  `period_to` date DEFAULT NULL,
  `hash` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_markers`
--

LOCK TABLES `wp_ums_markers` WRITE;
/*!40000 ALTER TABLE `wp_ums_markers` DISABLE KEYS */;
INSERT INTO `wp_ums_markers` VALUES (1,'haifa','<p>haifa campus</p>','32.783433','35.0078699',1,1,0,'',NULL,'2024-03-30 16:14:13','a:1:{s:15:\"marker_link_src\";s:0:\"\";}',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_ums_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_modules`
--

DROP TABLE IF EXISTS `wp_ums_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `type_id` smallint(3) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_520_ci,
  `has_tab` tinyint(1) NOT NULL DEFAULT '0',
  `label` varchar(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `ex_plug_dir` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_modules`
--

LOCK TABLES `wp_ums_modules` WRITE;
/*!40000 ALTER TABLE `wp_ums_modules` DISABLE KEYS */;
INSERT INTO `wp_ums_modules` VALUES (1,'adminmenu',1,1,'',0,'Admin Menu','',NULL);
INSERT INTO `wp_ums_modules` VALUES (2,'options',1,1,'',0,'Options','',NULL);
INSERT INTO `wp_ums_modules` VALUES (3,'user',1,1,'',0,'Users','',NULL);
INSERT INTO `wp_ums_modules` VALUES (4,'templates',1,1,'',0,'Templates for Plugin','',NULL);
INSERT INTO `wp_ums_modules` VALUES (5,'maps',1,1,'',0,'maps','maps',NULL);
INSERT INTO `wp_ums_modules` VALUES (6,'marker',1,1,'',0,'Markers','Maps Markers',NULL);
INSERT INTO `wp_ums_modules` VALUES (7,'marker_groups',1,1,'',0,'Marker Groups','Marker Groups',NULL);
INSERT INTO `wp_ums_modules` VALUES (8,'supsystic_promo',1,1,'',0,'Promo','Promo',NULL);
INSERT INTO `wp_ums_modules` VALUES (9,'icons',1,1,'',1,'Marker Icons','Marker Icons',NULL);
INSERT INTO `wp_ums_modules` VALUES (10,'csv',1,1,'',0,'csv','',NULL);
/*!40000 ALTER TABLE `wp_ums_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_modules_type`
--

DROP TABLE IF EXISTS `wp_ums_modules_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_modules_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_modules_type`
--

LOCK TABLES `wp_ums_modules_type` WRITE;
/*!40000 ALTER TABLE `wp_ums_modules_type` DISABLE KEYS */;
INSERT INTO `wp_ums_modules_type` VALUES (1,'system');
INSERT INTO `wp_ums_modules_type` VALUES (4,'widget');
INSERT INTO `wp_ums_modules_type` VALUES (6,'addons');
INSERT INTO `wp_ums_modules_type` VALUES (7,'template');
/*!40000 ALTER TABLE `wp_ums_modules_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_options`
--

DROP TABLE IF EXISTS `wp_ums_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value` text,
  `label` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `htmltype_id` smallint(2) NOT NULL DEFAULT '1',
  `params` text,
  `cat_id` mediumint(3) DEFAULT '0',
  `sort_order` mediumint(3) DEFAULT '0',
  `value_type` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_options`
--

LOCK TABLES `wp_ums_options` WRITE;
/*!40000 ALTER TABLE `wp_ums_options` DISABLE KEYS */;
INSERT INTO `wp_ums_options` VALUES (1,'save_statistic','0','Send statistic',NULL,1,NULL,0,0,NULL);
INSERT INTO `wp_ums_options` VALUES (2,'infowindow_size','a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";}','Info Window Size',NULL,1,NULL,0,0,'array');
/*!40000 ALTER TABLE `wp_ums_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_options_categories`
--

DROP TABLE IF EXISTS `wp_ums_options_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_options_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_options_categories`
--

LOCK TABLES `wp_ums_options_categories` WRITE;
/*!40000 ALTER TABLE `wp_ums_options_categories` DISABLE KEYS */;
INSERT INTO `wp_ums_options_categories` VALUES (1,'General');
INSERT INTO `wp_ums_options_categories` VALUES (2,'Template');
INSERT INTO `wp_ums_options_categories` VALUES (3,'Subscribe');
INSERT INTO `wp_ums_options_categories` VALUES (4,'Social');
/*!40000 ALTER TABLE `wp_ums_options_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_usage_stat`
--

DROP TABLE IF EXISTS `wp_ums_usage_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_usage_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `visits` int(11) NOT NULL DEFAULT '0',
  `spent_time` int(11) NOT NULL DEFAULT '0',
  `modify_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_usage_stat`
--

LOCK TABLES `wp_ums_usage_stat` WRITE;
/*!40000 ALTER TABLE `wp_ums_usage_stat` DISABLE KEYS */;
INSERT INTO `wp_ums_usage_stat` VALUES (1,'installed',1,0,'2024-03-30 16:07:22');
/*!40000 ALTER TABLE `wp_ums_usage_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','snir inbar');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:2:{s:13:\"administrator\";b:1;s:17:\"edit_bing_map_pro\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"27f00d8a90167deea7cef6c2edf8cf6ae84a9e24a2cf3aec1a036418b000b996\";a:4:{s:10:\"expiration\";i:1711984783;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36\";s:5:\"login\";i:1711811983;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','57');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:12:\"post-excerpt\";i:3;s:14:\"featured-image\";}s:14:\"fullscreenMode\";b:0;}s:9:\"_modified\";s:24:\"2024-03-30T15:48:15.246Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse&hidetb=1');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1711698105');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_media_library_mode','grid');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'snir_admin','$P$B7e3JjoihCI5Gm.7iUQgdB9lNvb1vk/','snir_admin','dev-email@wpengine.local','http://my-university.local','2024-03-06 19:35:15','',0,'snir inbar');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza`
--

DROP TABLE IF EXISTS `wp_wpgmza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pic` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link` varchar(2083) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `icon` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lat` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lng` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `anim` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `infoopen` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `category` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sticky` tinyint(1) DEFAULT '0',
  `other_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `latlng` point DEFAULT NULL,
  `layergroup` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza`
--

LOCK TABLES `wp_wpgmza` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza` DISABLE KEYS */;
INSERT INTO `wp_wpgmza` VALUES (1,1,'California','','','','','36.778261','-119.4179323999','','','','',1,0,0,'',0,'',_binary '\0\0\0\0\0\0\0J`s�cB@�`�g�\�]�',0);
/*!40000 ALTER TABLE `wp_wpgmza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_admin_notices`
--

DROP TABLE IF EXISTS `wp_wpgmza_admin_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_admin_notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci,
  `active_date` datetime DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_520_ci,
  `dismissed` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_admin_notices`
--

LOCK TABLES `wp_wpgmza_admin_notices` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_admin_notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_admin_notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_circles`
--

DROP TABLE IF EXISTS `wp_wpgmza_circles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  `lineColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lineOpacity` float DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `hoverEnabled` tinyint(1) DEFAULT '0',
  `ohFillColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ohLineColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ohFillOpacity` float DEFAULT NULL,
  `ohLineOpacity` float DEFAULT NULL,
  `link` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `layergroup` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_circles`
--

LOCK TABLES `wp_wpgmza_circles` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_circles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_circles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_image_overlays`
--

DROP TABLE IF EXISTS `wp_wpgmza_image_overlays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_image_overlays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `image` varchar(700) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_image_overlays`
--

LOCK TABLES `wp_wpgmza_image_overlays` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_image_overlays` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_image_overlays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_maps`
--

DROP TABLE IF EXISTS `wp_wpgmza_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_title` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_width` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_height` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_lat` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_lng` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_location` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_width_type` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_height_type` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `other_settings` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_maps`
--

LOCK TABLES `wp_wpgmza_maps` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_maps` DISABLE KEYS */;
INSERT INTO `wp_wpgmza_maps` VALUES (1,'My first map','100','400','45.950464398418106','-109.81550500000003','45.950464398418106,-109.81550500000003',4,'',0,4,0,0,'',0,'',0,0,0,'',0,0,0,0,0,'','%','px',0,0,0,0,0,'','a:6:{s:8:\"map_type\";i:1;s:15:\"sl_stroke_color\";s:7:\"#FF0000\";s:13:\"sl_fill_color\";s:7:\"#FF0000\";s:17:\"sl_stroke_opacity\";i:1;s:15:\"sl_fill_opacity\";d:0.5;s:15:\"transport_layer\";N;}');
/*!40000 ALTER TABLE `wp_wpgmza_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_point_labels`
--

DROP TABLE IF EXISTS `wp_wpgmza_point_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_point_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `center` point DEFAULT NULL,
  `fillColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lineColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  `fontSize` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_point_labels`
--

LOCK TABLES `wp_wpgmza_point_labels` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_point_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_point_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_polygon`
--

DROP TABLE IF EXISTS `wp_wpgmza_polygon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `innerpolydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lineopacity` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fillcolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohfillcolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohlinecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohopacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `polyname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linethickness` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `layergroup` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_polygon`
--

LOCK TABLES `wp_wpgmza_polygon` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_polygon` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_polygon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_polylines`
--

DROP TABLE IF EXISTS `wp_wpgmza_polylines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linethickness` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `polyname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `layergroup` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_polylines`
--

LOCK TABLES `wp_wpgmza_polylines` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_polylines` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_polylines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_rectangles`
--

DROP TABLE IF EXISTS `wp_wpgmza_rectangles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  `lineColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lineOpacity` float DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `hoverEnabled` tinyint(1) DEFAULT '0',
  `ohFillColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ohLineColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ohFillOpacity` float DEFAULT NULL,
  `ohLineOpacity` float DEFAULT NULL,
  `link` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `layergroup` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_rectangles`
--

LOCK TABLES `wp_wpgmza_rectangles` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_rectangles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_rectangles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-01 21:43:44
