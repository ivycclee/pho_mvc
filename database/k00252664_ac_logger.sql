CREATE DATABASE  IF NOT EXISTS `ac_logger` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `ac_logger`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ac_logger
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.17-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('Admin','Ivy','Lee','email@email.com','Password1'),('ADMIN2','Ad','Min','blaH@EMAIL.COM','Password1'),('admintest','admin','test','asjkdhas@admin.com','cf8f0c0d32522bc3d2ebe59d1'),('ives','Ivy','Lee','ivylee@email.com','Password1'),('TestAdmin','Test','Admin','ta@email.com','Password1');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `art`
--

DROP TABLE IF EXISTS `art`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `art` (
  `name` varchar(64) NOT NULL,
  `type` varchar(25) DEFAULT NULL,
  `canBeForged` char(1) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art`
--

LOCK TABLES `art` WRITE;
/*!40000 ALTER TABLE `art` DISABLE KEYS */;
INSERT INTO `art` VALUES ('Academic Painting','Small painting','Y'),('Amazing Painting','Large painting','Y'),('Ancient Status','Small sculpture','Y'),('Basic Painting','Large painting','Y'),('Beautiful Statue','Small sculpture','Y'),('Calm Painting','Large painting','N'),('Common Painting','Small painting','N'),('Detailed Painting','Large painting','Y'),('Dynamic Painting','Small painting','N'),('Familiar Statue','Small sculpture','N'),('Famous Painting','Small painting','Y'),('Flowery Painting','Small painting','N'),('Gallant Statue','Large sculpture','Y'),('Glowing Painting','Small painting','N'),('Graceful Painting','Large painting','Y'),('Great Statue','Large sculpture','N'),('Informative Statue','Small sculpture','Y'),('Jolly Painting','Small painting','Y'),('Moody Painting','Small painting','N'),('Motherly Statue','Large sculpture','Y'),('Moving Painting','Large painting','Y'),('Mysterious Painting','Large painting','N'),('Mystic Statue','Small sculpture','Y'),('Nice Painting','Large painting','N'),('Perfect Painting','Small painting','N'),('Quaint Painting','Large painting','Y'),('Robust Statue','Large sculpture','Y'),('Rock-Head Statue','Large sculpture','Y'),('Scary Painting','Small painting','Y'),('Scenic Painting','Large painting','Y'),('Serene Painting','Small painting','Y'),('Sinking Painting','Small painting','N'),('Solemn Painting','Large painting','Y'),('Tremendous Statue','Large sculpture','Y'),('Twinkling Painting','Small painting','N'),('Valiant Statue','Large sculpture','Y'),('Warm Painting','Large painting','N'),('Warrior Statue','Small sculpture','Y'),('Wild Painting (Left)','Large painting','Y'),('Wild Painting (Right)','Large painting','Y'),('Wistful Painting','Small painting','Y'),('Worthy Painting','Large painting','N');
/*!40000 ALTER TABLE `art` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `name` varchar(64) NOT NULL,
  `catchLocation` varchar(45) NOT NULL,
  `sellPrice` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
INSERT INTO `bugs` VALUES ('Agrias Butterfly','Flying',3000),('Ant','Rotten food',80),('Atlas Moth','On trees',3000),('Bagworm','Shaking trees',600),('Banded Dragonfly','Flying',4500),('Bell Cricket','Ground',430),('Blue Weevil Beetle','Trees',800),('Brown Cicada','Trees',250),('Centipede','Hitting rocks',300),('Cicada Shell','Trees',10),('Citrus Long-Horned Beetle','Tree stumps',350),('Common Bluebottle','Flying',300),('Common Butterfly','Flying',160),('Cricket','Ground',130),('Cyclommatus Staf','Trees',8000),('Damselfly','Flying',500),('Darner Dragonfly','Flying',230),('Diving Beetle','On rivers or ponds',800),('Drone Beetle','Trees',200),('Dung Beetle','Ground',3000),('Earth-Boring Dung Beetle','Ground',300),('Evening Cicada','Trees',550),('Firefly','Flying',300),('Flea','Villager heads',70),('Fly','Trash',60),('Giant Stag','Trees',10000),('Giant Water Bug','On rivers or ponds',2000),('Giraffe Stag','Trees',12000),('Golden Stag','Trees',12000),('Goliath Beetle','Trees',8000),('Grasshopper','Ground',160),('Great Purple Emperor','Flying',3000),('Hermit Crab','Beach',1000),('Honeybee','Flying',200),('Horned Atlas','Trees',8000),('Horned Dynastid','Trees',1350),('Horned Elephant','Trees',8000),('Horned Herculus','Trees',12000),('Jewel Beetle','Ground',2400),('Ladybug','Flowers',200),('Long Locust','Ground',200),('Madagascan Sunset Moth','Flying',2500),('Man-faced Stinkbug','Flowers',1000),('Mantis','Flowers',430),('Migratory Locust','Ground',600),('Miyama Stag','Trees',1000),('Mole Cricket','Underground',500),('Monarch Butterfly','Flying',4000),('Mosquito','Flying',130),('Moth','Flying',130),('Orchid Mantis','Flowers',2400),('Paper Kite Butterfly','Flying',1000),('Peacock Butterfly','Flying',2500),('Pill Bug','Hitting rocks',250),('Pondskater','On rivers or ponds',130),('Queen Alexandra\'s Birdwing','Flying',4000),('Rainbow Stag','Trees',6000),('Rajah Brooke\'s Birdwing','Flying',2500),('Red Dragonfly','Flying',180),('Rice Grasshopper','Ground',160),('Robust Cicada','Trees',300),('Rosalia Batesi Beetle','Tree stumps',3000),('Saw Stag','Trees',2000),('Scarab Beetle','Trees',10000),('Scorpion','Ground',8000),('Snail','Rocks or bushes',250),('Spider','Shaking trees',600),('Stinkbug','Flowers',120),('Tarantula','Ground',8000),('Tiger Beetle','Ground',1500),('Tiger Butterfly','Flying',240),('Violin beetle','Tree stumps',450),('Walker Cicada','Trees',400),('Walking Leaf','Ground',600),('Walking Stick','Trees',600),('Wasp','Shaking trees',2500),('Wharf Roach','Beach rocks',200),('Yellow Butterfly','Flying',160);
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donated_art`
--

DROP TABLE IF EXISTS `donated_art`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donated_art` (
  `user_username` varchar(25) NOT NULL,
  `art_name` varchar(64) NOT NULL,
  `art_list_name` varchar(25) NOT NULL,
  PRIMARY KEY (`user_username`,`art_name`),
  KEY `fk_user_has_art_art1_idx` (`art_name`),
  KEY `fk_user_has_art_user1_idx` (`user_username`),
  CONSTRAINT `fk_user_has_art_art1` FOREIGN KEY (`art_name`) REFERENCES `art` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_art_user1` FOREIGN KEY (`user_username`) REFERENCES `member` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donated_art`
--

LOCK TABLES `donated_art` WRITE;
/*!40000 ALTER TABLE `donated_art` DISABLE KEYS */;
/*!40000 ALTER TABLE `donated_art` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donated_bugs`
--

DROP TABLE IF EXISTS `donated_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donated_bugs` (
  `user_username` varchar(25) NOT NULL,
  `bugs_name` varchar(64) NOT NULL,
  `bug_list_name` varchar(25) NOT NULL,
  PRIMARY KEY (`user_username`,`bugs_name`),
  KEY `fk_user_has_bugs_bugs1_idx` (`bugs_name`),
  KEY `fk_user_has_bugs_user1_idx` (`user_username`),
  CONSTRAINT `fk_user_has_bugs_bugs1` FOREIGN KEY (`bugs_name`) REFERENCES `bugs` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_bugs_user1` FOREIGN KEY (`user_username`) REFERENCES `member` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donated_bugs`
--

LOCK TABLES `donated_bugs` WRITE;
/*!40000 ALTER TABLE `donated_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `donated_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donated_fish`
--

DROP TABLE IF EXISTS `donated_fish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donated_fish` (
  `user_username` varchar(25) NOT NULL,
  `fish_name` varchar(64) NOT NULL,
  `fish_list_name` varchar(25) NOT NULL,
  PRIMARY KEY (`user_username`,`fish_name`),
  KEY `fk_user_has_fish_fish1_idx` (`fish_name`),
  KEY `fk_user_has_fish_user1_idx` (`user_username`),
  CONSTRAINT `fk_user_has_fish_fish1` FOREIGN KEY (`fish_name`) REFERENCES `fish` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_fish_user1` FOREIGN KEY (`user_username`) REFERENCES `member` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donated_fish`
--

LOCK TABLES `donated_fish` WRITE;
/*!40000 ALTER TABLE `donated_fish` DISABLE KEYS */;
/*!40000 ALTER TABLE `donated_fish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fish`
--

DROP TABLE IF EXISTS `fish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fish` (
  `name` varchar(64) NOT NULL,
  `catchLocation` varchar(5) NOT NULL,
  `sellPrice` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fish`
--

LOCK TABLES `fish` WRITE;
/*!40000 ALTER TABLE `fish` DISABLE KEYS */;
INSERT INTO `fish` VALUES ('Anchovy','Sea',200),('Angelfish','River',3000),('Arapaima','River',10000),('Arowana','River',10000),('Barred Knifejaw','Sea',5000),('Barreleye','Sea',15000),('Betta','River',2500),('Bitterling','River',900),('Black Bass','River',400),('Blowfish','Sea',5000),('Blue Marlin','Pier',10000),('Bluegill','River',180),('Butterfly Fish','Sea',1000),('Carp','Pond',300),('Catfish','Pond',800),('Char','River',3800),('Cherry Salmon','River',1000),('Clown Fish','Sea',650),('Coelacanth','Sea',15000),('Crawfish','Pond',200),('Crucian Carp','River',160),('Dab','Sea',300),('Dace','River',240),('Dorado','River',15000),('Football Fish','Sea',2500),('Freshwater Goby','River',400),('Frog','Pond',120),('Gar','Pond',6000),('Giant Snakehead','Pond',5500),('Giant Trevally','Pier',4500),('Golden Trout','River',15000),('Goldfish','Pond',1300),('Great White Shark','Sea',15000),('Guppy','River',1300),('Hammerhead Shark','Sea',8000),('Horse Mackeral','Sea',150),('Killifish','Pond',300),('King Salmon','River',1800),('Koi','Pond',4000),('Loach','River',400),('Mahi-Mahi','Pier',6000),('Mitten Crab','River',2000),('Moray Eel','Sea',2000),('Napoleanfish','Sea',10000),('Neon Tetra','River',500),('Nibble Fish','River',1500),('Oarfish','Sea',9000),('Ocean Sunfish','Sea',4000),('Olive Flounder','Sea',800),('Pale Chub','River',200),('Pike','River',1800),('Piranha','River',2500),('Pond Smelt','River',500),('Pop-Eyed Goldfish','Pond',1300),('Puffer Fish','Sea',250),('Rainbowfish','River',800),('Ranchu Goldfish','Pond',4500),('Ray','Sea',3000),('Red Snapper','Sea',3000),('Ribbon Eel','Sea',600),('Saddled Bichir','River',4000),('Salmon','River',700),('Saw Shark','Sea',12000),('Sea Bass','Sea',400),('Sea Butterfly','Sea',1000),('Seahorse','Sea',1100),('Snapping Turtle','River',5000),('Soft-Shelled Turtle','River',3750),('Squid','Sea',500),('Stringfish','River',15000),('Sturgeon','River',10000),('Suckerfish','Sea',1500),('Surgeonfish','Sea',1000),('Sweetfish','River',900),('Tadpole','Pond',100),('Tilapia','River',800),('Tuna','Pier',7000),('Whale Shark','Sea',13000),('Yellow Perch','River',300),('Zebra Turkeyfish','Sea',500);
/*!40000 ALTER TABLE `fish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `username` varchar(25) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('Member','Ivy','Lee','member@email.com','Password2'),('membertest','member','test','asjkdhsa@email.com','cf8f0c0d32522bc3d2ebe59d1'),('TestMember','Test','Member','tm@email.com','Password1'),('WorkPlease','Ivy','Lee','asjkdhsa@sajda.com','Password1');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_villager_list`
--

DROP TABLE IF EXISTS `user_villager_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_villager_list` (
  `villagers_name` varchar(30) NOT NULL,
  `user_username` varchar(25) NOT NULL,
  `villager_list_name` varchar(25) NOT NULL,
  PRIMARY KEY (`villagers_name`,`user_username`),
  KEY `fk_villagers_has_user_user1_idx` (`user_username`),
  KEY `fk_villagers_has_user_villagers_idx` (`villagers_name`),
  CONSTRAINT `fk_villagers_has_user_user1` FOREIGN KEY (`user_username`) REFERENCES `member` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_villagers_has_user_villagers` FOREIGN KEY (`villagers_name`) REFERENCES `villagers` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_villager_list`
--

LOCK TABLES `user_villager_list` WRITE;
/*!40000 ALTER TABLE `user_villager_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_villager_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villagers`
--

DROP TABLE IF EXISTS `villagers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `villagers` (
  `name` varchar(30) NOT NULL,
  `personality` varchar(8) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `species` varchar(30) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villagers`
--

LOCK TABLES `villagers` WRITE;
/*!40000 ALTER TABLE `villagers` DISABLE KEYS */;
INSERT INTO `villagers` VALUES ('Ankha','Snooty','F','Cat'),('Beardo','Smug','M','Bear'),('Bob','Lazy','M','Cat'),('Charlise','Sisterly','F','Bear'),('Chow','Cranky','M','Bear'),('Curt','Cranky','M','Bear'),('Felicity','Peppy','F','Cat'),('Grizzly','Cranky','M','Bear'),('Groucho','Cranky','M','Bear'),('Ike','Cranky','M','Bear'),('Kabuki','Cranky','M','Cat'),('Katt','Sisterly','F','Cat'),('Kid Cat','Jock','M','Cat'),('Kiki','Normal','F','Cat'),('Kitty','Snooty','F','Cat'),('Klaus','Smug','M','Bear'),('Lolly','Normal','F','Cat'),('Megan','Normal','F','Bear'),('Merry','Peppy','F','Cat'),('Mitzi','Normal','F','Cat'),('Moe','Lazy','F','Cat'),('Monique','Snooty','F','Cat'),('Nate','Lazy','M','Bear'),('Olivia','Snooty','F','Cat'),('Paula','Sisterly','F','Bear'),('Pinky','Peppy','F','Bear'),('Punchy','Lazy','M','Cat'),('Purrl','Snooty','F','Cat'),('Raymond','Smug','M','Cat'),('Rosie','Peppy','F','Cat'),('Rudy','Jock','M','Cat'),('Stinky','Jock','M','Cat'),('Tabby','Peppy','F','Cat'),('Tangy','Peppy','F','Cat'),('Teddy','Jock','M','Bear'),('Tom','Cranky','M','Cat'),('Tutu','Peppy','F','Bear'),('Ursala','Sisterly','F','Bear');
/*!40000 ALTER TABLE `villagers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27 12:20:38
