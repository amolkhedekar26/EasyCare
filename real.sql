-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: phoenix
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add medicine',7,'add_medicine'),(26,'Can change medicine',7,'change_medicine'),(27,'Can delete medicine',7,'delete_medicine'),(28,'Can view medicine',7,'view_medicine'),(29,'Can add doctor',8,'add_doctor'),(30,'Can change doctor',8,'change_doctor'),(31,'Can delete doctor',8,'delete_doctor'),(32,'Can view doctor',8,'view_doctor'),(33,'Can add service',9,'add_service'),(34,'Can change service',9,'change_service'),(35,'Can delete service',9,'delete_service'),(36,'Can view service',9,'view_service'),(37,'Can add hospital',10,'add_hospital'),(38,'Can change hospital',10,'change_hospital'),(39,'Can delete hospital',10,'delete_hospital'),(40,'Can view hospital',10,'view_hospital'),(41,'Can add profile',11,'add_profile'),(42,'Can change profile',11,'change_profile'),(43,'Can delete profile',11,'delete_profile'),(44,'Can view profile',11,'view_profile'),(45,'Can add question',12,'add_question'),(46,'Can change question',12,'change_question'),(47,'Can delete question',12,'delete_question'),(48,'Can view question',12,'view_question');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$eSDrk43bp1e3$WEcf2Mx9F+6SOhk7cy1uVpohA+0BxPQjPrtb5dumXNU=','2019-08-08 20:43:04.316173',1,'amol','Amol','Khedekar','amlu9421@gmail.com',1,1,'2019-07-28 19:09:53.000000'),(3,'pbkdf2_sha256$150000$JVqctZeTOtlw$WLnScpYE2G19qI0Imew/hIt25pKIOKvEzEE99olF4ZY=','2019-08-04 21:56:56.244513',0,'akshu','','','',0,1,'2019-08-04 19:50:20.660389'),(13,'pbkdf2_sha256$150000$7ZukgD4HyzRa$pnnUJY91hgKsz+Llx9QUbvQNX3Vdoq6oQ5s0XLCfmYE=','2019-08-08 08:08:36.518232',0,'taee','Sonu','','taee@gmail.com',0,1,'2019-08-08 07:08:12.000000'),(14,'pbkdf2_sha256$150000$rCW5eMyRDOTb$LvGNvxggD6S/uUMifNgeCtigTSXjlqiU7vGL85kRqbc=','2019-08-08 22:59:51.796514',0,'kaku','Kaku','Shahane','khedekaramol003@gmail.com',0,1,'2019-08-08 09:52:49.000000'),(15,'pbkdf2_sha256$150000$Dc9NyjY20qMW$DcCiOq7Wbbb2C9hwqYK0w/3UfBimnVhjgfx0otlPl3c=','2019-08-08 20:09:25.447365',0,'madhavi','Madhavi','Mulye','amitkambli999@gmail.com',0,1,'2019-08-08 12:51:23.000000'),(16,'pbkdf2_sha256$150000$kWmpdtiuR9nV$YtmCai4Lfe82/TQ660KlbQ1K0E21JerZLhj+p7ApaZw=','2019-08-08 15:59:13.597728',0,'dada','','','a@gmail.com',0,1,'2019-08-08 15:59:06.182455'),(17,'pbkdf2_sha256$150000$Lxbqie7gcuEU$0clmgaEA7CWp2M8J46R/GXQQxdvsxWeLborYBI6RYpk=','2019-08-08 22:41:11.598883',0,'samir','Samir','Patankar','amitkambli999@gmail.com',0,1,'2019-08-08 20:13:49.000000'),(18,'pbkdf2_sha256$150000$NY7qHTqRLUSQ$em1Swide+YDzBN5Scy0SMZyGg9YBY6HYvsM/WhcPl6Q=','2019-08-08 20:35:19.117712',0,'dilip','Dilip','Bhosale','amitkambli999@gmail.com',0,1,'2019-08-08 20:14:51.000000'),(19,'pbkdf2_sha256$150000$eQYokTPmEOK2$0c5RW87x5WD0gwifZ+lC6nZnR30f++FJGhtgI3R+C0U=',NULL,0,'mandar','Manadar','Gorivale','amitkambli999@gmail.com',0,1,'2019-08-08 20:15:33.000000'),(20,'pbkdf2_sha256$150000$AFilJQbIhF0T$XK3ffqdecgEC74hrbXSYxkBQsBfI80E+pDaG5ICwb80=',NULL,0,'mahesh','Mahesh','Paranjape','amitkambli999@gmail.com',0,1,'2019-08-08 20:16:08.000000'),(21,'pbkdf2_sha256$150000$Wjvt6XOBsDNe$13IxB8+AEJHu42oRnY3lqOPnnubQSfmZjosMS9tN7p4=',NULL,0,'anand','Anand','Dhole','amitkambli999@gmail.com',0,1,'2019-08-08 20:16:47.000000'),(22,'pbkdf2_sha256$150000$d8kyOzVWlOTm$h5quBQNA741ZJV57h6tWfa9IBTBcs4cDjf4izccuqfA=',NULL,0,'manasi','Manasi','Deshmukh','amitkambli999@gmail.com',0,1,'2019-08-08 20:17:30.000000'),(23,'pbkdf2_sha256$150000$ug7Ldesw5e6r$bOOAX5GJCvbj/iN3nNTU5OuXOgPSOeF2XbjrrVSP9lY=',NULL,0,'riya','Riya','Pawar','amitkambli999@gmail.com',0,1,'2019-08-08 20:18:04.000000'),(24,'pbkdf2_sha256$150000$aomzP7k1zPp7$tIMngWsY4VcennVW6xyPTC9v2UxTxjrKAqgEJm93hKw=',NULL,0,'rahul','Rahul','Deshpande','khedekaramol003@gmail.com',0,1,'2019-08-08 20:32:43.000000'),(25,'pbkdf2_sha256$150000$dsW6N4BJWuc3$NVqDmk3jVo0F55zuiuUKUZQAE0bBHIIOSWRjsy0Fd5I=','2019-08-08 20:36:24.500264',0,'nandu','Nandkishor','Surve','khedekaramol003@gmail.com',0,1,'2019-08-08 20:33:34.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-07-28 19:21:00.593592','1','Anand',1,'[{\"added\": {}}]',8,1),(2,'2019-07-28 19:21:37.139235','2','Mohammad Shafi',1,'[{\"added\": {}}]',8,1),(3,'2019-07-28 19:22:08.864948','3','Sadiq',1,'[{\"added\": {}}]',8,1),(4,'2019-07-28 19:25:22.800912','4','Madhavi Pawar',1,'[{\"added\": {}}]',8,1),(5,'2019-07-28 19:26:44.743190','5','Srividya  Madhawan',1,'[{\"added\": {}}]',8,1),(6,'2019-07-28 19:30:32.160445','6','Giri Shankar',1,'[{\"added\": {}}]',8,1),(7,'2019-07-28 19:31:02.208182','7','Md Yaha',1,'[{\"added\": {}}]',8,1),(8,'2019-07-28 19:31:45.473499','8','Abhijeet Kumar',1,'[{\"added\": {}}]',8,1),(9,'2019-07-28 19:31:59.799297','5','Srividya  Madhawan',2,'[{\"changed\": {\"fields\": [\"doc_degree\"]}}]',8,1),(10,'2019-07-28 19:38:12.959823','9','Shiva Rama',1,'[{\"added\": {}}]',8,1),(11,'2019-07-28 19:39:42.837377','10','Kanchan Mahadik',1,'[{\"added\": {}}]',8,1),(12,'2019-07-28 19:42:03.017139','11','Pooja Agre - Gynaecologist',1,'[{\"added\": {}}]',8,1),(13,'2019-07-28 19:42:44.991387','12','VInutha Joshi - Gynaecologist',1,'[{\"added\": {}}]',8,1),(14,'2019-07-28 19:44:08.648766','13','Jyoti Pawar - Gynaecologist',1,'[{\"added\": {}}]',8,1),(15,'2019-07-28 19:44:49.852212','14','Indrani - Gynaecologist',1,'[{\"added\": {}}]',8,1),(16,'2019-07-28 19:45:22.854526','15','Nandini Bhatye - Gynaecologist',1,'[{\"added\": {}}]',8,1),(17,'2019-07-28 20:11:27.882221','16','Shweta Yadav - Gynaecologist',1,'[{\"added\": {}}]',8,1),(18,'2019-07-28 20:12:01.105700','17','Pallavi Kumar - Gynaecologist',1,'[{\"added\": {}}]',8,1),(19,'2019-07-28 20:17:51.645309','18','Parimala Durgude - Gynaecologist',1,'[{\"added\": {}}]',8,1),(20,'2019-07-28 20:18:33.747865','19','Neelam Nath - Gynaecologist',1,'[{\"added\": {}}]',8,1),(21,'2019-07-28 20:23:06.718929','20','Prabhu Singh - Pediatrician',1,'[{\"added\": {}}]',8,1),(22,'2019-07-28 20:23:40.201061','21','Sireesh - Pediatrician',1,'[{\"added\": {}}]',8,1),(23,'2019-07-28 20:24:10.587811','22','Tellis - Pediatrician',1,'[{\"added\": {}}]',8,1),(24,'2019-07-28 20:26:10.830181','23','Adarsh Shukla - Pediatrician',1,'[{\"added\": {}}]',8,1),(25,'2019-07-28 20:27:05.230427','24','Sumathi Desai - Pediatrician',1,'[{\"added\": {}}]',8,1),(26,'2019-07-28 20:27:53.837493','25','Manjit Kaur - Pediatrician',1,'[{\"added\": {}}]',8,1),(27,'2019-07-28 20:30:03.492704','1','Anand - Physician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(28,'2019-07-28 20:30:17.438241','2','Mohammad Shafi - Physician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(29,'2019-07-28 20:30:24.896044','3','Sadiq - Physician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(30,'2019-07-28 20:30:31.908616','4','Madhavi Pawar - Physician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(31,'2019-07-28 20:30:36.460930','4','Madhavi Pawar - Physician',2,'[]',8,1),(32,'2019-07-28 20:30:47.812813','25','Manjit Kaur - Pediatrician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(33,'2019-07-28 20:30:52.480429','24','Sumathi Desai - Pediatrician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(34,'2019-07-28 20:30:56.685490','23','Adarsh Shukla - Pediatrician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(35,'2019-07-28 20:31:01.538769','22','Tellis - Pediatrician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(36,'2019-07-28 20:31:06.487308','21','Sireesh - Pediatrician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(37,'2019-07-28 20:31:17.079632','20','Prabhu Singh - Pediatrician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(38,'2019-07-28 20:31:27.293569','19','Neelam Nath - Gynaecologist',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(39,'2019-07-28 20:31:32.451704','18','Parimala Durgude - Gynaecologist',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(40,'2019-07-28 20:31:38.553127','17','Pallavi Kumar - Gynaecologist',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(41,'2019-07-28 20:31:42.746485','16','Shweta Yadav - Gynaecologist',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(42,'2019-07-28 20:31:48.597199','15','Nandini Bhatye - Gynaecologist',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(43,'2019-07-28 20:31:53.184698','15','Nandini Bhatye - Gynaecologist',2,'[]',8,1),(44,'2019-07-28 20:31:56.531424','15','Nandini Bhatye - Gynaecologist',2,'[]',8,1),(45,'2019-07-28 20:32:02.906206','14','Indrani - Gynaecologist',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(46,'2019-07-28 20:32:07.990324','13','Jyoti Pawar - Gynaecologist',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(47,'2019-07-28 20:32:14.957926','13','Jyoti Pawar - Gynaecologist',2,'[]',8,1),(48,'2019-07-28 20:32:20.275854','12','VInutha Joshi - Gynaecologist',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(49,'2019-07-28 20:32:27.117973','11','Pooja Agre - Gynaecologist',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(50,'2019-07-28 20:32:33.096503','10','Kanchan Mahadik - Physician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(51,'2019-07-28 20:32:39.895105','11','Pooja Agre - Gynaecologist',2,'[]',8,1),(52,'2019-07-28 20:32:45.270494','9','Shiva Rama - Physician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(53,'2019-07-28 20:32:51.270259','8','Abhijeet Kumar - Physician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(54,'2019-07-28 20:32:56.600364','7','Md Yaha - Physician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(55,'2019-07-28 20:33:04.010521','6','Giri Shankar - Physician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(56,'2019-07-28 20:33:09.833716','5','Srividya  Madhawan - Physician',2,'[{\"changed\": {\"fields\": [\"doc_location\"]}}]',8,1),(57,'2019-07-28 20:33:14.230257','4','Madhavi Pawar - Physician',2,'[]',8,1),(58,'2019-07-30 18:39:13.020233','1','Parkar Hospital : Ratnagiri - All specialists avaiable',1,'[{\"added\": {}}]',10,1),(59,'2019-07-30 18:43:52.246773','2','Saphalya Hospital : Ratnagiri - Heart  Neuro  Cardio',1,'[{\"added\": {}}]',10,1),(60,'2019-07-30 18:47:49.214515','3','BKL Walawalkar Hospital : Chiplun - ENT  Cardoilogy',1,'[{\"added\": {}}]',10,1),(61,'2019-07-30 18:48:33.435228','4','Soham Hospital : Ratnagiri - All specialists avaiable',1,'[{\"added\": {}}]',10,1),(62,'2019-07-30 18:49:55.496455','5','Madhusiddhi Hospital : Khed - Heart',1,'[{\"added\": {}}]',10,1),(63,'2019-07-30 18:50:13.531732','3','BKL Walawalkar Hospital : Chiplun - ENT',2,'[{\"changed\": {\"fields\": [\"h_speciality\"]}}]',10,1),(64,'2019-07-30 18:50:34.325574','2','Saphalya Hospital : Ratnagiri - Neurology',2,'[{\"changed\": {\"fields\": [\"h_speciality\"]}}]',10,1),(65,'2019-07-30 18:51:23.741953','1','Parkar Hospital : Ratnagiri - All specialists avaiable',2,'[]',10,1),(66,'2019-07-30 18:52:10.596141','6','MukadamNetrarugnalay : Dapoli - Eye',1,'[{\"added\": {}}]',10,1),(67,'2019-07-30 18:53:48.458239','7','Swastik Hospital : Ratnagiri - Surgery',1,'[{\"added\": {}}]',10,1),(68,'2019-07-30 18:54:46.639840','8','Parshuram Hospital : Chiplun - All specialists avaiable',1,'[{\"added\": {}}]',10,1),(69,'2019-07-30 18:54:57.979973','1','Parkar Hospital : Ratnagiri - All',2,'[{\"changed\": {\"fields\": [\"h_speciality\"]}}]',10,1),(70,'2019-07-30 18:55:07.156442','4','Soham Hospital : Ratnagiri - All',2,'[{\"changed\": {\"fields\": [\"h_speciality\"]}}]',10,1),(71,'2019-07-30 18:55:14.424921','8','Parshuram Hospital : Chiplun - All',2,'[{\"changed\": {\"fields\": [\"h_speciality\"]}}]',10,1),(72,'2019-07-30 18:57:04.262703','9','Pawaskar Hospital : Ratnagiri - Gynaecology',1,'[{\"added\": {}}]',10,1),(73,'2019-07-30 18:57:51.433956','10','Aparna Hospital : Ratnagiri - Maternity',1,'[{\"added\": {}}]',10,1),(74,'2019-07-30 18:59:01.217133','11','Maniyra Children Hospital : Ratnagiri - Pediatrics',1,'[{\"added\": {}}]',10,1),(75,'2019-07-30 18:59:43.733667','12','Sanjeevani Hospital : Ratnagiri - Nephrology',1,'[{\"added\": {}}]',10,1),(76,'2019-07-30 19:00:54.070443','13','Patil Hospital : Ratnagiri - Orthopedics',1,'[{\"added\": {}}]',10,1),(77,'2019-07-30 19:01:39.670121','14','Shree Hospital : Ratnagiri - All',1,'[{\"added\": {}}]',10,1),(78,'2019-07-30 19:02:50.834683','15','Pradnya Hospital : Chiplun - Heart',1,'[{\"added\": {}}]',10,1),(79,'2019-07-30 19:04:21.484524','16','Kadam Hospital : Chiplun - Eye',1,'[{\"added\": {}}]',10,1),(80,'2019-07-30 19:06:09.195988','17','Gode Hospital : Chiplun - Dentistry',1,'[{\"added\": {}}]',10,1),(81,'2019-07-30 19:06:59.302160','18','City Hospital : Chiplun - All',1,'[{\"added\": {}}]',10,1),(82,'2019-07-30 19:07:51.939122','19','AK Joshi Hospital : Chiplun - Heart',1,'[{\"added\": {}}]',10,1),(83,'2019-07-30 19:09:47.977765','20','Deshpande Hospital : Chiplun - Gynaecology',1,'[{\"added\": {}}]',10,1),(84,'2019-07-30 19:10:53.192583','21','Civil Hospital : Chiplun - All',1,'[{\"added\": {}}]',10,1),(85,'2019-07-30 19:12:45.747185','22','Chapolikar Hospital : Chiplun - Eye',1,'[{\"added\": {}}]',10,1),(86,'2019-07-30 19:13:40.984208','23','Nikam Hosptital : Chiplun - Dentistry',1,'[{\"added\": {}}]',10,1),(87,'2019-08-04 19:49:52.424677','2','akshu',3,'',4,1),(88,'2019-08-04 19:50:20.769627','3','akshu',1,'[{\"added\": {}}]',4,1),(89,'2019-08-04 20:11:50.184022','4','guru',3,'',4,1),(90,'2019-08-04 20:46:27.144513','1','amol',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(91,'2019-08-04 20:55:51.821132','7','satya',2,'[{\"changed\": {\"fields\": [\"first_name\"]}}]',4,1),(92,'2019-08-04 21:52:46.877232','5','amit',3,'',4,1),(93,'2019-08-06 21:13:11.432389','12','amit',1,'[{\"added\": {}}]',4,1),(94,'2019-08-06 21:13:25.810770','12','amit',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',4,1),(95,'2019-08-06 23:18:07.012269','1','Anand - Physician : Ratnagiri',2,'[{\"changed\": {\"fields\": [\"is_male\"]}}]',8,1),(96,'2019-08-06 23:18:15.910695','2','Mohammad Shafi - Physician : Ratnagiri',2,'[{\"changed\": {\"fields\": [\"is_male\"]}}]',8,1),(97,'2019-08-06 23:18:19.525457','25','Manjit Kaur - Pediatrician : Lanja',2,'[]',8,1),(98,'2019-08-06 23:18:22.764324','24','Sumathi Desai - Pediatrician : Lanja',2,'[]',8,1),(99,'2019-08-06 23:18:26.667516','23','Adarsh Shukla - Pediatrician : Lanja',2,'[{\"changed\": {\"fields\": [\"is_male\"]}}]',8,1),(100,'2019-08-06 23:18:30.105086','22','Tellis - Pediatrician : Lanja',2,'[{\"changed\": {\"fields\": [\"is_male\"]}}]',8,1),(101,'2019-08-06 23:18:33.208415','21','Sireesh - Pediatrician : Lanja',2,'[{\"changed\": {\"fields\": [\"is_male\"]}}]',8,1),(102,'2019-08-06 23:18:36.704774','20','Prabhu Singh - Pediatrician : Lanja',2,'[{\"changed\": {\"fields\": [\"is_male\"]}}]',8,1),(103,'2019-08-06 23:18:46.489641','9','Shiva Rama - Physician : Ratnagiri',2,'[{\"changed\": {\"fields\": [\"is_male\"]}}]',8,1),(104,'2019-08-06 23:18:52.350046','8','Abhijeet Kumar - Physician : Ratnagiri',2,'[{\"changed\": {\"fields\": [\"is_male\"]}}]',8,1),(105,'2019-08-06 23:18:57.169457','7','Md Yaha - Physician : Ratnagiri',2,'[{\"changed\": {\"fields\": [\"is_male\"]}}]',8,1),(106,'2019-08-06 23:19:02.985039','6','Giri Shankar - Physician : Ratnagiri',2,'[{\"changed\": {\"fields\": [\"is_male\"]}}]',8,1),(107,'2019-08-06 23:19:07.396484','5','Srividya  Madhawan - Physician : Ratnagiri',2,'[]',8,1),(108,'2019-08-06 23:19:13.498071','3','Sadiq - Physician : Ratnagiri',2,'[{\"changed\": {\"fields\": [\"is_male\"]}}]',8,1),(109,'2019-08-06 23:34:52.926758','3','diphenhydramine:cold',2,'[]',7,1),(110,'2019-08-06 23:34:56.702659','67','pseudoephedrine:cold',2,'[{\"changed\": {\"fields\": [\"is_syrup\"]}}]',7,1),(111,'2019-08-06 23:35:02.905715','66','Sudafed PE cold and cough:cold',2,'[{\"changed\": {\"fields\": [\"is_syrup\"]}}]',7,1),(112,'2019-08-06 23:35:07.434528','65','Theraflu Nighttime Sever Cold and Cough:cold',2,'[{\"changed\": {\"fields\": [\"is_syrup\"]}}]',7,1),(113,'2019-08-06 23:35:15.765853','58','atenolol:high blood pressure',2,'[{\"changed\": {\"fields\": [\"is_syrup\"]}}]',7,1),(114,'2019-08-06 23:35:22.342281','56','losartan:high blood pressure',2,'[{\"changed\": {\"fields\": [\"is_syrup\"]}}]',7,1),(115,'2019-08-06 23:35:43.681749','15','Fioricet:headache',2,'[{\"changed\": {\"fields\": [\"is_syrup\"]}}]',7,1),(116,'2019-08-06 23:35:51.650301','25','prednisone:asthma',2,'[{\"changed\": {\"fields\": [\"is_syrup\"]}}]',7,1),(117,'2019-08-06 23:36:09.598321','14','Bronchomol:coug',2,'[{\"changed\": {\"fields\": [\"is_syrup\"]}}]',7,1),(118,'2019-08-06 23:36:23.450760','13','Benadryl:cough',2,'[{\"changed\": {\"fields\": [\"is_syrup\"]}}]',7,1),(119,'2019-08-08 07:57:28.785361','13','taee',2,'[{\"changed\": {\"fields\": [\"first_name\"]}}]',4,1),(120,'2019-08-08 09:54:39.072078','12','amit',3,'',4,1),(121,'2019-08-08 09:54:39.114938','10','as',3,'',4,1),(122,'2019-08-08 09:54:39.170692','8','asd',3,'',4,1),(123,'2019-08-08 09:54:39.226379','6','babya',3,'',4,1),(124,'2019-08-08 09:54:39.282012','7','satya',3,'',4,1),(125,'2019-08-08 09:54:39.337183','11','vikas',3,'',4,1),(126,'2019-08-08 09:54:39.392846','9','z',3,'',4,1),(127,'2019-08-08 09:56:45.403789','1','OPD',1,'[{\"added\": {}}]',9,1),(128,'2019-08-08 09:57:04.879935','2','Laboratory Services',1,'[{\"added\": {}}]',9,1),(129,'2019-08-08 09:57:16.071854','3','Radiological Services',1,'[{\"added\": {}}]',9,1),(130,'2019-08-08 09:57:29.815224','4','Emergency Services',1,'[{\"added\": {}}]',9,1),(131,'2019-08-08 09:57:47.695937','5','Kitchen and Dietery Services',1,'[{\"added\": {}}]',9,1),(132,'2019-08-08 11:05:41.135594','6','Emergency Services',1,'[{\"added\": {}}]',9,1),(133,'2019-08-08 11:05:47.817766','7','OPD',1,'[{\"added\": {}}]',9,1),(134,'2019-08-08 12:52:09.531001','15','madhavi',2,'[{\"changed\": {\"fields\": [\"is_doctor\", \"tag\"]}}]',11,1),(135,'2019-08-08 12:52:43.575075','14','kaku',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',4,1),(136,'2019-08-08 13:05:53.552716','3','kaku : cdd vv-heart',3,'',12,1),(137,'2019-08-08 13:05:53.605115','2','kaku : heart pain-heart',3,'',12,1),(138,'2019-08-08 18:47:00.538017','15','madhavi',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]',4,1),(139,'2019-08-08 20:13:49.877311','17','samir',1,'[{\"added\": {}}]',4,1),(140,'2019-08-08 20:14:19.728417','17','samir',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(141,'2019-08-08 20:14:51.415592','18','dilip',1,'[{\"added\": {}}]',4,1),(142,'2019-08-08 20:15:11.673720','18','dilip',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(143,'2019-08-08 20:15:33.524771','19','mandar',1,'[{\"added\": {}}]',4,1),(144,'2019-08-08 20:15:49.212899','19','mandar',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(145,'2019-08-08 20:16:08.577663','20','mahesh',1,'[{\"added\": {}}]',4,1),(146,'2019-08-08 20:16:32.003608','20','mahesh',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(147,'2019-08-08 20:16:47.955467','21','anand',1,'[{\"added\": {}}]',4,1),(148,'2019-08-08 20:17:04.700204','21','anand',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(149,'2019-08-08 20:17:30.986549','22','manasi',1,'[{\"added\": {}}]',4,1),(150,'2019-08-08 20:17:45.716532','22','manasi',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(151,'2019-08-08 20:18:04.266256','23','riya',1,'[{\"added\": {}}]',4,1),(152,'2019-08-08 20:18:14.658544','23','riya',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(153,'2019-08-08 20:19:12.688373','17','samir',2,'[{\"changed\": {\"fields\": [\"is_doctor\", \"tag\"]}}]',11,1),(154,'2019-08-08 20:19:38.323898','19','mandar',2,'[{\"changed\": {\"fields\": [\"is_doctor\", \"tag\"]}}]',11,1),(155,'2019-08-08 20:19:53.386667','18','dilip',2,'[{\"changed\": {\"fields\": [\"is_doctor\", \"tag\"]}}]',11,1),(156,'2019-08-08 20:20:04.514397','20','mahesh',2,'[{\"changed\": {\"fields\": [\"is_doctor\", \"tag\"]}}]',11,1),(157,'2019-08-08 20:20:11.396685','21','anand',2,'[{\"changed\": {\"fields\": [\"is_doctor\", \"tag\"]}}]',11,1),(158,'2019-08-08 20:20:25.310920','23','riya',2,'[{\"changed\": {\"fields\": [\"is_doctor\", \"tag\"]}}]',11,1),(159,'2019-08-08 20:20:30.634644','22','manasi',2,'[{\"changed\": {\"fields\": [\"is_doctor\", \"tag\"]}}]',11,1),(160,'2019-08-08 20:32:44.014804','24','rahul',1,'[{\"added\": {}}]',4,1),(161,'2019-08-08 20:33:10.966256','24','rahul',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(162,'2019-08-08 20:33:34.839749','25','nandu',1,'[{\"added\": {}}]',4,1),(163,'2019-08-08 20:33:59.014515','25','nandu',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(164,'2019-08-08 20:43:15.296896','14','kaku',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'project','doctor'),(10,'project','hospital'),(7,'project','medicine'),(11,'project','profile'),(12,'project','question'),(9,'project','service'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-07-27 14:47:44.915467'),(2,'auth','0001_initial','2019-07-27 14:47:47.399698'),(3,'admin','0001_initial','2019-07-27 14:47:56.139536'),(4,'admin','0002_logentry_remove_auto_add','2019-07-27 14:47:58.026843'),(5,'admin','0003_logentry_add_action_flag_choices','2019-07-27 14:47:58.095769'),(6,'contenttypes','0002_remove_content_type_name','2019-07-27 14:47:59.428929'),(7,'auth','0002_alter_permission_name_max_length','2019-07-27 14:47:59.587167'),(8,'auth','0003_alter_user_email_max_length','2019-07-27 14:47:59.754801'),(9,'auth','0004_alter_user_username_opts','2019-07-27 14:47:59.826410'),(10,'auth','0005_alter_user_last_login_null','2019-07-27 14:48:00.558607'),(11,'auth','0006_require_contenttypes_0002','2019-07-27 14:48:00.615696'),(12,'auth','0007_alter_validators_add_error_messages','2019-07-27 14:48:00.685567'),(13,'auth','0008_alter_user_username_max_length','2019-07-27 14:48:00.839467'),(14,'auth','0009_alter_user_last_name_max_length','2019-07-27 14:48:00.995959'),(15,'auth','0010_alter_group_name_max_length','2019-07-27 14:48:01.329654'),(16,'auth','0011_update_proxy_permissions','2019-07-27 14:48:01.400460'),(17,'sessions','0001_initial','2019-07-27 14:48:01.817575'),(18,'project','0001_initial','2019-07-27 14:53:17.989974'),(19,'project','0002_doctor','2019-07-27 14:59:28.320183'),(20,'project','0003_auto_20190727_1459','2019-07-27 14:59:28.373781'),(21,'project','0004_auto_20190728_1920','2019-07-28 19:20:24.761527'),(22,'project','0005_doctor_doc_location','2019-07-28 20:29:18.463284'),(23,'project','0006_hospital_service','2019-07-30 13:30:47.655739'),(24,'project','0007_auto_20190730_1934','2019-07-30 19:34:12.971694'),(25,'project','0008_doctor_is_male','2019-08-06 23:16:28.056836'),(26,'project','0009_medicine_is_syrup','2019-08-06 23:34:28.426875'),(27,'project','0010_profile','2019-08-08 09:51:16.014711'),(28,'project','0011_remove_profile_email','2019-08-08 09:54:02.669378'),(29,'project','0012_question','2019-08-08 12:48:01.241537');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('349x3eixhrjj12fs3tts4yeviuia7luc','MDNhNDRkNjAxM2U2NzU0YzgwM2JhOTAzYjVkNGE3Y2ZjYjJjOTcwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDIyNjJlYjEzZDI4NGFiNDgyYmQ4M2RlZGJlODk3NDRiZTAzN2E5In0=','2019-08-11 19:10:02.471833'),('3h59665j0wqdx9wuqhc1ddzaq9cyrr61','MDNhNDRkNjAxM2U2NzU0YzgwM2JhOTAzYjVkNGE3Y2ZjYjJjOTcwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDIyNjJlYjEzZDI4NGFiNDgyYmQ4M2RlZGJlODk3NDRiZTAzN2E5In0=','2019-08-19 17:35:45.454195'),('6ycgmz25ip488rv6yzu2uj7t7lkolja7','MDNhNDRkNjAxM2U2NzU0YzgwM2JhOTAzYjVkNGE3Y2ZjYjJjOTcwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDIyNjJlYjEzZDI4NGFiNDgyYmQ4M2RlZGJlODk3NDRiZTAzN2E5In0=','2019-08-18 20:10:46.183759'),('7nzbpf335gq26neidm42wgt76n5kacje','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 19:44:13.119147'),('9y5aoclj310a0v67efpeezoufq12827r','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 20:01:56.672452'),('ab2duyzu76xtrbact1xtkt7vhara8xd9','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 19:42:17.565382'),('ad8w43ajgzhohj66rqynklzystddw6wc','MDNhNDRkNjAxM2U2NzU0YzgwM2JhOTAzYjVkNGE3Y2ZjYjJjOTcwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDIyNjJlYjEzZDI4NGFiNDgyYmQ4M2RlZGJlODk3NDRiZTAzN2E5In0=','2019-08-13 13:53:05.239028'),('ciwnh3j1qisiej86b6lpgu7gez0vnyjq','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 20:02:13.906271'),('cjq4agzlb1b5n1q5xmnn1ko0u4u1u8nd','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 19:48:30.344136'),('edufi2s6obq2g6t9n2qd31pvke98v9ov','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 19:38:52.311190'),('ejsz3q0k2b45db4k7fz44zu1k1aiborw','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 20:03:52.392664'),('h7dmd3e1u0f3uz6wjp9bfksl30mwedok','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 19:54:53.041329'),('hibefxxtkidvei77spgg707yn9ilkxfa','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 19:39:58.108000'),('kneot9z7t8l6ubeo407rtj1ranj4rslp','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 20:02:04.551812'),('kzs9tmi0q4w0f4lc2uj4c7ngrcccqnbn','MDNhNDRkNjAxM2U2NzU0YzgwM2JhOTAzYjVkNGE3Y2ZjYjJjOTcwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDIyNjJlYjEzZDI4NGFiNDgyYmQ4M2RlZGJlODk3NDRiZTAzN2E5In0=','2019-08-22 10:11:31.155056'),('nh21nw90mh7dfk8sp0nnrpqw04czexlf','MDNhNDRkNjAxM2U2NzU0YzgwM2JhOTAzYjVkNGE3Y2ZjYjJjOTcwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDIyNjJlYjEzZDI4NGFiNDgyYmQ4M2RlZGJlODk3NDRiZTAzN2E5In0=','2019-08-20 22:29:48.445597'),('nltnhldfd8o3gfgwc6xoudzm1klgo519','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 19:48:15.313172'),('t8c554i3ka7k1num3su9h4xaoef2kpnp','ZDhkNGVhZDk5ZDlmY2RmZTA1YWQzNTZkZjlmNTRkMTVkYTgwZDI0ODp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2NlMTRlZGIwMWUwNGU4YmIzYmFjYjZhZWZhYzE5MWU4ZTJjOWVhNSJ9','2019-08-22 08:08:36.574084'),('unkemxta31vdd7f1bodjseqow2jzi4l0','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 19:41:36.548925'),('xb7wdkekbwf4ty71l3ye2g7st4su1ane','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 19:42:37.431005'),('zuyavqa4ajeh39uv5qekfak3ue0mc48e','NzFlZjMxOWU1ZjNmOWVlZjAyNDhlOWFhNTBiNjk2ZGE2MGMzMzY3Njp7fQ==','2019-08-18 19:51:35.440978');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_doctor`
--

DROP TABLE IF EXISTS `project_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(120) NOT NULL,
  `doc_address` varchar(120) NOT NULL,
  `doc_mobile` bigint(20) NOT NULL,
  `doc_speciality` varchar(120) NOT NULL,
  `doc_experience` varchar(120) NOT NULL,
  `doc_degree` varchar(120) NOT NULL,
  `doc_location` varchar(120) NOT NULL,
  `is_male` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_doctor`
--

LOCK TABLES `project_doctor` WRITE;
/*!40000 ALTER TABLE `project_doctor` DISABLE KEYS */;
INSERT INTO `project_doctor` VALUES (1,'Anand','Maruti Ali Ratnagiri',9087564312,'Physician','13','MBBS  MD','Ratnagiri',1),(2,'Mohammad Shafi','Maruti Ali Ratnagiri',9878654323,'Physician','10','MBBS','Ratnagiri',1),(3,'Sadiq','Maruti Ali Ratnagiri',7056432567,'Physician','12','MHSc','Ratnagiri',1),(4,'Madhavi Pawar','Maruti Ali Ratnagiri',8098765649,'Physician','11','MBBs DNB','Ratnagiri',0),(5,'Srividya  Madhawan','Maruti Ali Ratnagiri',9432124567,'Physician','5','MBBS DNB','Ratnagiri',0),(6,'Giri Shankar','Maruti Ali Ratnagiri',8765431234,'Physician','18','MBBS','Ratnagiri',1),(7,'Md Yaha','Maruti Ali Ratnagiri',7098675664,'Physician','9','MBBS DEM','Ratnagiri',1),(8,'Abhijeet Kumar','Maruti Ali Ratnagiri',8767678998,'Physician','8','MBBS DNB','Ratnagiri',1),(9,'Shiva Rama','Maruti Ali Ratnagiri',8098765678,'Physician','9','MBBS  MD MHSC','Ratnagiri',1),(10,'Kanchan Mahadik','Maruti Ali Ratnagiri',9087675434,'Physician','9','MBBS  MD','Ratnagiri',0),(11,'Pooja Agre','Savarde',8089234512,'Gynaecologist','10','DGO MBBS','Savarde',0),(12,'VInutha Joshi','Savarde',7098341244,'Gynaecologist','5','DNB MRCOG','Savarde',0),(13,'Jyoti Pawar','Savarde',8733418390,'Gynaecologist','31','MBBS MD Gynecology','Savarde',0),(14,'Indrani','Savarde',8765234567,'Gynaecologist','30','DGO MB MBBS','Savarde',0),(15,'Nandini Bhatye','Savarde',9876453212,'Gynaecologist','11','MBBS DGO','Savarde',0),(16,'Shweta Yadav','Savarde',9087293453,'Gynaecologist','12','MBBS','Savarde',0),(17,'Pallavi Kumar','Savarde',8076409823,'Gynaecologist','9','DNB','Savarde',0),(18,'Parimala Durgude','Savarde',8045673421,'Gynaecologist','5','MBBS DNB','Savarde',0),(19,'Neelam Nath','Savarde',8765453212,'Gynaecologist','44','MBBS DGO','Savarde',0),(20,'Prabhu Singh','Lanja',8094321223,'Pediatrician','12','MD Pediatrics','Lanja',1),(21,'Sireesh','Lanja',8765453212,'Pediatrician','14','MD','Lanja',1),(22,'Tellis','Lanja',9123453216,'Pediatrician','18','MD Pediatrics','Lanja',1),(23,'Adarsh Shukla','Lanja',90865423,'Pediatrician','20','MD Pediatrics','Lanja',1),(24,'Sumathi Desai','Lanja',8765780982,'Pediatrician','15','MD Pediatrics','Lanja',0),(25,'Manjit Kaur','Lanja',8087823312,'Pediatrician','35','MD Pediatrics DCH','Lanja',0);
/*!40000 ALTER TABLE `project_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_hospital`
--

DROP TABLE IF EXISTS `project_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `h_name` varchar(120) NOT NULL,
  `h_address` varchar(120) NOT NULL,
  `h_contact` bigint(20) NOT NULL,
  `h_speciality` varchar(120) NOT NULL,
  `h_location` varchar(120) NOT NULL,
  `h_rating` varchar(120) NOT NULL,
  `h_noofdoctors` int(11) NOT NULL,
  `h_time` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_hospital`
--

LOCK TABLES `project_hospital` WRITE;
/*!40000 ALTER TABLE `project_hospital` DISABLE KEYS */;
INSERT INTO `project_hospital` VALUES (1,'Parkar Hospital','Maruti Mandir Ratnagiri',9085784458,'All','Ratnagiri','4',15,'9:00 AM - 10:00 PM'),(2,'Saphalya Hospital','Vasant Vihar Complex Ratnagiri',9123093432,'Neurology','Ratnagiri','4',25,'9:00 AM - 10:00 PM'),(3,'BKL Walawalkar Hospital','Varcha Peth Chiplun',7056321234,'ENT','Chiplun','4',18,'9:00 AM - 10:00 PM'),(4,'Soham Hospital','ITI Link Road Ratnagiri',9043434443,'All','Ratnagiri','3',14,'9:00 AM - 10:00 PM'),(5,'Madhusiddhi Hospital','Khed Bajarpeth',7023049453,'Heart','Khed','4',12,'9:00 AM - 10:00 PM'),(6,'MukadamNetrarugnalay','Near KKV Dapoli',9087675323,'Eye','Dapoli','4',10,'9:00 AM - 10:00 PM'),(7,'Swastik Hospital','Jawaharlal Road Ratnagiri',8098765643,'Surgery','Ratnagiri','4',15,'9:00 AM - 10:00 PM'),(8,'Parshuram Hospital','Lote',9087431234,'All','Chiplun','4',12,'9:00 AM - 10:00 PM'),(9,'Pawaskar Hospital','Near Apna Bazar Ratnagiri',9087431234,'Gynaecology','Ratnagiri','4',7,'9:00 AM - 10:00 PM'),(10,'Aparna Hospital','Maruti Mandir Ratnagiri',9087675412,'Maternity','Ratnagiri','4',8,'9:00 AM - 10:00 PM'),(11,'Maniyra Children Hospital','Vasant Vihar Complex Ratnagiri',8087675412,'Pediatrics','Ratnagiri','4',6,'9:00 AM - 10:00 PM'),(12,'Sanjeevani Hospital','Bandar Road Ratnagiri',908774933,'Nephrology','Ratnagiri','3',7,'9:00 AM - 10:00 PM'),(13,'Patil Hospital','ITI Link Road Ratnagiri',76341234,'Orthopedics','Ratnagiri','3',5,'9:00 AM - 10:00 PM'),(14,'Shree Hospital','ITI Link Road Ratnagiri',8767499823,'All','Ratnagiri','3',7,'9:00 AM - 10:00 PM'),(15,'Pradnya Hospital','Savarde Near BOI Bank',8087675434,'Heart','Chiplun','3',9,'9:00 AM - 10:00 PM'),(16,'Kadam Hospital','Near MACB  Chiplun',9087808981,'Eye','Chiplun','4',8,'9:00 AM - 10:00 PM'),(17,'Gode Hospital','Desai Plaza Chiplun',8098564345,'Dentistry','Chiplun','4',7,'9:00 AM - 10:00 PM'),(18,'City Hospital','opposite Bus Stand Chiplun',8076452345,'All','Chiplun','5',15,'9:00 AM - 10:00 PM'),(19,'AK Joshi Hospital','Near Azad Maidan  Chiplun',90765763535,'Heart','Chiplun','4',10,'9:00 AM - 10:00 PM'),(20,'Deshpande Hospital','Opposite DBJ College Ratnagiri',9090989832,'Gynaecology','Chiplun','4',6,'9:00 AM - 10:00 PM'),(21,'Civil Hospital','ITI Link Road Chiplun',8908988237,'All','Chiplun','4',40,'9:00 AM - 10:00 PM'),(22,'Chapolikar Hospital','Sai Nagar Chiplun',7098812212,'Eye','Chiplun','4',10,'9:00 AM - 10:00 PM'),(23,'Nikam Hosptital','Opposite Nikam House',909080777,'Dentistry','Chiplun','4',8,'9:00 AM - 10:00 PM');
/*!40000 ALTER TABLE `project_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_medicine`
--

DROP TABLE IF EXISTS `project_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_medicine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `med_name` varchar(120) NOT NULL,
  `med_disaese` varchar(120) NOT NULL,
  `med_brand` varchar(120) DEFAULT NULL,
  `med_dose` varchar(120) DEFAULT NULL,
  `is_syrup` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_medicine`
--

LOCK TABLES `project_medicine` WRITE;
/*!40000 ALTER TABLE `project_medicine` DISABLE KEYS */;
INSERT INTO `project_medicine` VALUES (3,'diphenhydramine','cold','Benadryl','Chidren under 12 years - 5 mL  and  Adults -10 mL',0),(4,'Vicks Nyquil D Cold and Flu NightTime Relief','cold','Vicks','1 or 2 capsules a day',0),(5,'chlorpheniramine','cold','Chlor-Trimeton','1 or 2 capsules a day',0),(6,'Benadryl','cold','Benadryl','Chidren under 12 years - 5 mL  and  Adults -10 mL',0),(7,'Paracetamol','fever','Paracetamol','as per need',0),(8,'aceatminophen','fever','Tylenol','as per need',0),(9,'ibuprofen','fever','IBU','as',0),(10,'aspirin','fever','Bayer Aspirin','as per need',0),(11,'benzonatate','cough','Tessalon','100 mg to 300 mg three times a day',0),(12,'Cheratussin AC','cough','Codeine','100 mg to 300 mg three times a day',0),(13,'Benadryl','cough','Benadry','Chidren under 12 years - 5 mL  and  Adults -10 mL',1),(14,'Bronchomol','coug','Zontaun','1 or 2 capsules a day',1),(15,'Fioricet','headache','OTC','as per need',1),(16,'ibuprofen','headache','Tylenol','as per need',0),(17,'acetaminophen','headache','Fioricet','100 mg to 300 mg three times a day',0),(18,'naproxen','headache','Aleve','as per need',0),(19,'doxycycline','acne','Doryx','daily 2 times',0),(20,'spironolactone','acne','Aldactone','as per need',0),(21,'minocycline','acne','Minocin','daily 2 times',0),(22,'clindamycin','acne','Cleocin','as per need',0),(23,'Singulair','asthma','Singulair','100 mg to 300 mg three times a day',0),(24,'montelukast','asthma','Sing','as per need',0),(25,'prednisone','asthma','Rayos','daily 2 times',1),(26,'ipratropium','asthma','Atrovent','100 mg to 300 mg three times a day',0),(27,'spironolactone','hair loss','Aldactone','daily 2 times',0),(28,'minoxidil','hair loss','Rogaine','as per need',0),(29,'Kenalag-10','hair loss','Sinuyl','daily 2 times',0),(30,'hydroxyzine','allergy','Vistaril','daily 2 times',0),(31,'levocetirizine','allergy','Xyzal','daily 2 times',0),(32,'doxylamine','allergy','Equate Sleep Aid','1 or 2 capsules a day',0),(33,'tripolidine','allergy','Zymine','daily 2 times',0),(34,'phentermine','weight loss','Adipex-P','daily 2 times',0),(35,'topiramate','weight loss','Topomax','100 mg to 300 mg three times a day',0),(36,'Belviq','weight loss','Belviq','as per need',0),(37,'phendimetrazine','weight loss','Bontril','1 or 2 capsules a day',0),(38,'orlistat','weight loss','Alli','daily 2 times',0),(39,'tramadol','pain','Ultram','as per need',0),(40,'Norco','pain','Guimin','daily 2 times',0),(41,'gabapentin','pain','Weilrt','1 or 2 capsules a day',0),(42,'oxycodone','pain','Oxycontin','as per need',0),(43,'loperamide','diarrhoea','Imodium','daily 2 times',0),(44,'Lomotil','diarrhoea','Asepiur','1 or 2 capsules a day',0),(45,'atropine','diarrhoea','Lonox','100 mg to 300 mg three times a day',0),(46,'bismuth subsalicyclate','diarrhoea','Pepto-Bismel','daily 2 times',0),(47,'modafinil','fatigue','Modoit','daily 2 times',0),(48,'methylphenidate','fatigue','Jinker','daily 2 times',0),(49,'amantadine','fatigue','Rexoim','1 or 2 capsules a day',0),(50,'aspirin','heart attack','Bayer Aspirin','1 or 2 capsules a day',0),(51,'Plavix','heart attack','Tylenol','daily 2 times',0),(52,'clopidogrel','heart attack','Plavix','daily 2 times',0),(53,'metoprolol','heart attack','Lopresser','1 or 2 capsules a day',0),(54,'lisinopril','high blood pressure','Prinivil','1 or 2 capsules a day',0),(55,'amlodipine','high blood pressure','Norvsac','daily 2 times',0),(56,'losartan','high blood pressure','Cozar','100 mg to 300 mg three times a day',1),(57,'hydrochlorothyzide','high blood pressure','Microzide','daily 2 times',0),(58,'atenolol','high blood pressure','Tenormin','daily 2 times',1),(59,'ibuprofen','muscle pain','Advil','1 or 2 capsules a day',0),(60,'naproxen','muscle pain','Tylenol','daily 2 times',0),(61,'acetaminophen','muscle pain','Paracetamol','daily 2 times',0),(62,'diclofenac','muscle pain','Voltaren','1 or 2 capsules a day',0),(63,'Paracetamol','muscle pain','Paracetamol','daily 2 times',0),(64,'Tussionex Penkinetic','cold','Paracetamol','daily 2 times',0),(65,'Theraflu Nighttime Sever Cold and Cough','cold','Bayer Aspirin','1 or 2 capsules a day',1),(66,'Sudafed PE cold and cough','cold','Aldactone','daily 2 times',1),(67,'pseudoephedrine','cold','Vicks','daily 2 times',1);
/*!40000 ALTER TABLE `project_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_profile`
--

DROP TABLE IF EXISTS `project_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_profile` (
  `user_id` int(11) NOT NULL,
  `is_doctor` tinyint(1) NOT NULL,
  `tag` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `project_profile_user_id_61190f32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_profile`
--

LOCK TABLES `project_profile` WRITE;
/*!40000 ALTER TABLE `project_profile` DISABLE KEYS */;
INSERT INTO `project_profile` VALUES (14,0,NULL),(15,1,'heart'),(16,0,NULL),(17,1,'heart'),(18,1,'physic'),(19,1,'physic'),(20,1,'skin'),(21,1,'skin'),(22,1,'gyn'),(23,1,'gyn'),(24,0,NULL),(25,0,NULL);
/*!40000 ALTER TABLE `project_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_question`
--

DROP TABLE IF EXISTS `project_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(120) NOT NULL,
  `query` varchar(200) NOT NULL,
  `doc_name` varchar(200) DEFAULT NULL,
  `tag` varchar(120) NOT NULL,
  `answer` varchar(250) DEFAULT NULL,
  `posted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_question`
--

LOCK TABLES `project_question` WRITE;
/*!40000 ALTER TABLE `project_question` DISABLE KEYS */;
INSERT INTO `project_question` VALUES (1,'amol','nsnn','madhavi','heart','drink water',1),(4,'kaku','bsbsbb','madhavi','heart','bhjccvv',1),(5,'kaku','heart problem','madhavi','heart','iinjvkvev',1),(6,'kaku','evevv','madhavi','heart','jcmkc jc djv',1),(7,'kaku','babbb','madhavi','heart','potat dukhtay',1),(8,'kaku','vevevrevev',NULL,'heart',NULL,0),(9,'kaku','got heart pain',NULL,'heart',NULL,0),(10,'kaku','heart trass',NULL,'heart',NULL,0),(11,'kaku','cqnjckcqkcjcc','samir','heart','nj dscj vj vnvvevvv',1),(12,'nandu','lot of ear pain','dilip','physic','take B complex capsule',1),(13,'kaku','veeev','dilip','physic',NULL,0),(14,'kaku','veeev','madhavi','heart',NULL,0),(15,'kaku','weccecccccccccccccccccccce','mandar','physic',NULL,0);
/*!40000 ALTER TABLE `project_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_service`
--

DROP TABLE IF EXISTS `project_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(120) NOT NULL,
  `h_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_service_h_name_id_12acaf83_fk_project_hospital_id` (`h_name_id`),
  CONSTRAINT `project_service_h_name_id_12acaf83_fk_project_hospital_id` FOREIGN KEY (`h_name_id`) REFERENCES `project_hospital` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_service`
--

LOCK TABLES `project_service` WRITE;
/*!40000 ALTER TABLE `project_service` DISABLE KEYS */;
INSERT INTO `project_service` VALUES (1,'OPD',1),(2,'Laboratory Services',1),(3,'Radiological Services',1),(4,'Emergency Services',1),(5,'Kitchen and Dietery Services',1),(6,'Emergency Services',2),(7,'OPD',2);
/*!40000 ALTER TABLE `project_service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-09  4:43:46
