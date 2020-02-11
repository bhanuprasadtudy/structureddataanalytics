CREATE DATABASE  IF NOT EXISTS `_bhtu2323_bluemooseboulder1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `_bhtu2323_bluemooseboulder1`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bluemooseboulder1
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aging`
--

DROP TABLE IF EXISTS `aging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aging` (
  `Invoice_number` int(11) NOT NULL,
  `referenceno` varchar(50) NOT NULL,
  `Invoice_date` date NOT NULL,
  `Customer_GroupName` varchar(50) DEFAULT NULL,
  `Customer_No` int(11) NOT NULL,
  PRIMARY KEY (`Invoice_number`),
  KEY `fk_aging_Customer_No` (`Customer_No`),
  CONSTRAINT `fk_aging_Customer_No` FOREIGN KEY (`Customer_No`) REFERENCES `customer_groups` (`Customergroupno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aging`
--

LOCK TABLES `aging` WRITE;
/*!40000 ALTER TABLE `aging` DISABLE KEYS */;
/*!40000 ALTER TABLE `aging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_groups`
--

DROP TABLE IF EXISTS `customer_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_groups` (
  `Customergroupno` int(11) NOT NULL,
  `CustomerGroupname` varchar(50) NOT NULL,
  PRIMARY KEY (`Customergroupno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_groups`
--

LOCK TABLES `customer_groups` WRITE;
/*!40000 ALTER TABLE `customer_groups` DISABLE KEYS */;
INSERT INTO `customer_groups` VALUES (1036,'Green Chef'),(1218,'WHOLE FOODS MARKET SO-CAL'),(1233,'Kehe Denver'),(1293,'COSTCO MW STANDARD'),(1302,'COSTCO CARLSBAD'),(1303,'UNFI Atlanta'),(1307,'Kehe Portland'),(1321,'Sam\'s DC Macclenny, FL #6099'),(1330,'Sam\'s DC Terrell, TX 6056'),(1339,'C&S/GROCERS SUPPLY - PA'),(1342,'Kehe Bloomington'),(1345,'COSTCO PARKER'),(1347,'COSTCO SUMNER'),(1354,'COSTCO DALLAS STANDARD'),(1368,'Kehe Douglasville'),(1371,'COSTCO TX STANDARD'),(1376,'WHOLE FOODS MARKET NORTH ATLANTIC'),(1380,'Pavilions'),(1383,'BURRIS REF. LOGISTICS - MD'),(1406,'WHOLE FOODS PARENT ROCKY MTN REGION'),(1412,'C&S/GROCERS SUPPLY - NY'),(1415,'Colorado Atlantic'),(1416,'Sam\'s DC Pauls Valley, OK #6042'),(1423,'COSTCO THORNTON'),(1432,'ALFALFA\'S PARENT'),(1439,'Sysco'),(1447,'Balls Food'),(1448,'ALBERT\'S Southeast'),(1449,'COSTCO SE STANDARD'),(1455,'COSTCO SW DENVER'),(1457,'UNFI Dayville'),(1458,'UNFI Gilroy'),(1460,'FoodMaven'),(1481,'COSTCO WESTMINSTER'),(1491,'Amazon Direct - Denver'),(1496,'COSTCO - Road Shows'),(1498,'Sam\'s Club'),(1499,'COSTCO MONROE TOWNSHIP'),(1500,'COSTCO COLLEGE PARK'),(1510,'COSTCO NE STANDARD'),(1516,'ALFALFA\'S LOUISVILLE'),(1523,'UNFI Moreno'),(1530,'COSTCO - Road Shows'),(1532,'Bozzutos Inc'),(1537,'Albertsons'),(1539,'C&S FREETOWN FRESH - MA'),(1544,'COSTCO - Road Shows'),(1552,'COSTCO BAY AREA STANDARD'),(1558,'COSTCO NW STANDARD'),(1564,'UNFI Aurora'),(1576,'Sam\'s DC Cheyenne, WY #7077'),(1578,'COSTCO - Road Shows'),(1581,'COSTCO W COLO SPGS'),(1585,'COSTCO MIRA LOMA ROADSHOW'),(1590,'UNFI Lancaster'),(1591,'UNFI Auburn WA'),(1596,'FOOD SERVICES OF AMERICA, INC'),(1599,'UNFI Iowa City'),(1613,'COSTCO - Road Shows'),(1620,'Sam\'s DC Robert, LA #6057'),(1621,'RUSSELL MCCALL\'S INC (GFI)'),(1622,'COSTCO SD STANDARD'),(1624,'DPI SPECIALTY FOODS, INC'),(1631,'US FOODS - LAS VEGAS'),(1645,'UNFI Auburn WA'),(1646,'COSTCO - Road Shows'),(1653,'COSTCO SHERIDAN'),(1665,'UNFI Greenwood'),(1671,'Tropical Smoothie Cafe'),(1676,'SHAWS SUPERMARKETS, INC'),(1678,'HEB'),(1694,'COSTCO WEST PALM BEACH'),(1716,'UNFI Ridgefield'),(1722,'SAFEWAY'),(1725,'MILE HI SPECIALTY FOODS'),(1726,'COSTCO MIRA LOMA'),(1732,'COSTCO TIMNATH'),(1734,'SuperValu'),(1735,'UNFI York'),(1739,'UNFI Sarasota'),(1747,'COSTCO DALLAS'),(1755,'Nor cal'),(1757,'DOT FOODS, INC.'),(1762,'Blue Moose of Boulder'),(1765,'LUCKY\'s SOUTH BOULDER'),(1767,'Sam\'s DC Harrisonville, MO #6065'),(1771,'LUCKY\'S LONGMONT'),(1775,'COSTCO LA STANDARD'),(1781,'UNFI Hudson Valley'),(1783,'LUCKY\'S PARENT'),(1785,'COSTCO SD ROADSHOW'),(1786,'COSTCO SALT LAKE'),(1787,'Sam\'s DC Auburn, IN #6074'),(1789,'UNFI Racine'),(1798,'COSTCO - Road Shows'),(1806,'Kehe Chino'),(1809,'Hudson News- Las Vegas Airport'),(1813,'UNFI Twin Cities'),(1816,'COSTCO E COLO SPGS'),(1825,'Kehe Stockton'),(1828,'UNFI Richburg'),(1829,'ALBERT\'S ORGANICS'),(1830,'Hudson News - DIA'),(1833,'UNFI Montgomery'),(1838,'Kehe'),(1845,'COSTCO - Road Shows'),(1846,'COSTCO - Road Shows'),(1848,'BALFORD FARMS'),(1849,'COSTCO ARVADA'),(1863,'Kehe Dallas'),(1868,'UNFI Chesterfield'),(1872,'UNFI Rocklin'),(1874,'COSTCO - Road Shows'),(1875,'Meraki'),(1881,'Amazon Direct - Avenel, NJ'),(1885,'Kehe Flower Mound'),(1897,'Kehe Romeoville'),(1910,'Sam\'s DC Mankato, MN #7079'),(1915,'COSTCO MONROVIA'),(1916,'Sam\'s DC Colton, CA #8397'),(1924,'COSTCO - Road Shows'),(1933,'Kehe Breinigsville (Lehigh Valley)'),(1934,'COSTCO TRACY'),(1935,'Kehe Elkton (St. Augustine, FL)'),(1950,'COSTCO - Road Shows'),(1959,'LUCKY\'S BOULDER'),(1963,'COSTCO TOLLESON'),(1969,'MONTERREY PROVISION CO    (SD)'),(1983,'Sam\'s DC Sterling, IL #7024'),(1988,'UNFI'),(1989,'ALFALFA\'S BOULDER'),(1994,'Kehe Ft. Lauderdale'),(1999,'KROGER (KRG LLC)'),(2000,'ALBERT\'S East'),(2100,'Timberline'),(2166,'Morning Fresh Farms'),(2331,'COSTCO NE ROADSHOW'),(2390,'ALBERT\'S ORGANICS - DENVER, CO'),(2572,'Blue Moose Pizza'),(2669,'Royal Crest Dairy'),(2696,'Grocery Outlet'),(2886,'ESHS Grocery');
/*!40000 ALTER TABLE `customer_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Customer_No` int(11) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Customer_No`),
  CONSTRAINT `fk_Customer_Groups_groupNo` FOREIGN KEY (`Customer_No`) REFERENCES `customer_groups` (`Customergroupno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1036,'Other'),(1218,'WHOLE FOODS DIRECT'),(1233,'Kehe'),(1293,'COSTCO'),(1302,'COSTCO'),(1303,'UNFI'),(1307,'Kehe'),(1321,'Sam\'s club'),(1330,'Sam\'s club'),(1339,'Other'),(1342,'Kehe'),(1345,'COSTCO'),(1347,'COSTCO'),(1354,'COSTCO'),(1368,'Kehe'),(1371,'COSTCO'),(1376,'WHOLE FOODS DIRECT'),(1380,'Safeway'),(1383,'Other'),(1406,'WHOLE FOODS DIRECT'),(1412,'Other'),(1415,'Other'),(1416,'Sam\'s club'),(1423,'COSTCO'),(1432,'Other'),(1439,'Other'),(1447,'Other'),(1448,'Albert\'s'),(1449,'COSTCO'),(1455,'COSTCO'),(1457,'UNFI'),(1458,'UNFI'),(1460,'Other'),(1481,'COSTCO'),(1491,'Amazon'),(1496,'COSTCO'),(1498,'Sam\'s club'),(1499,'COSTCO'),(1500,'COSTCO'),(1510,'COSTCO'),(1516,'Other'),(1523,'UNFI'),(1530,'COSTCO'),(1532,'Other'),(1537,'Safeway'),(1539,'Other'),(1544,'COSTCO'),(1552,'COSTCO'),(1558,'COSTCO'),(1564,'UNFI'),(1576,'Sam\'s club'),(1578,'COSTCO'),(1581,'COSTCO'),(1585,'COSTCO'),(1590,'UNFI'),(1591,'UNFI'),(1596,'Food service'),(1599,'UNFI'),(1613,'COSTCO'),(1620,'Sam\'s club'),(1621,'Safeway'),(1622,'COSTCO'),(1624,'Other'),(1631,'Other'),(1645,'UNFI'),(1646,'COSTCO'),(1653,'COSTCO'),(1665,'UNFI'),(1671,'Food Service'),(1676,'Other'),(1678,'HEB'),(1694,'COSTCO'),(1716,'UNFI'),(1722,'Safeway'),(1725,'Food service'),(1726,'COSTCO'),(1732,'COSTCO'),(1734,'SuperValu'),(1735,'UNFI'),(1739,'UNFI'),(1747,'COSTCO'),(1755,'Safeway'),(1757,'Food service'),(1762,'Other'),(1765,'Other'),(1767,'Sam\'s club'),(1771,'Other'),(1775,'COSTCO'),(1781,'UNFI'),(1783,'Other'),(1785,'COSTCO'),(1786,'COSTCO'),(1787,'Sam\'s club'),(1789,'UNFI'),(1798,'COSTCO'),(1806,'Kehe'),(1809,'Hudson News'),(1813,'UNFI'),(1816,'COSTCO'),(1825,'Kehe'),(1828,'UNFI'),(1829,'Albert\'s'),(1830,'Hudson News'),(1833,'UNFI'),(1838,'Kehe'),(1845,'COSTCO'),(1846,'COSTCO'),(1848,'Other'),(1849,'COSTCO'),(1863,'Kehe'),(1868,'UNFI'),(1872,'UNFI'),(1874,'COSTCO'),(1875,'Other'),(1881,'Amazon'),(1885,'Kehe'),(1897,'Kehe'),(1910,'Sam\'s club'),(1915,'COSTCO'),(1916,'Sam\'s club'),(1924,'COSTCO'),(1933,'Kehe'),(1934,'COSTCO'),(1935,'Kehe'),(1950,'COSTCO'),(1959,'Other'),(1963,'COSTCO'),(1969,'Other'),(1983,'Sam\'s club'),(1988,'UNFI'),(1989,'Other'),(1994,'Kehe'),(1999,'Kroger'),(2000,'Albert\'s'),(2100,'Other'),(2166,'Other'),(2331,'COSTCO'),(2390,'Albert\'s'),(2572,'Other'),(2669,'Royal Crest'),(2696,'Other'),(2886,'Other');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `ID` int(11) NOT NULL,
  `Item` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Inventory_Value` decimal(8,4) NOT NULL,
  `On_Hand` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_inventory_item` (`Item`),
  CONSTRAINT `fk_inventory_item` FOREIGN KEY (`Item`) REFERENCES `product_categories` (`Item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'30351.06','Finished Goods',353.4200,72),(3,'30352.06','Finished Goods',4042.3000,866),(5,'30353.06','Finished Goods',1333.2300,272),(7,'30354.06','Finished Goods',839.9800,193),(8,'30356 HPP','Semi-Finished Goods',178.5000,232),(9,'30356.06','Semi-Finished Goods',4069.0300,724),(10,'30357 HPP','Semi-Finished Goods',2046.5600,3181),(11,'30357.06','Finished Goods',1006.8400,207),(12,'30364.08','Finished Goods',1141.3100,201),(13,'30365 HPP','Semi-Finished Goods',67.0400,120),(14,'30365.08','Finished Goods',969.9900,166),(15,'30366.08','Semi-Finished Goods',100.1100,16),(16,'30371.06','Semi-Finished Goods',64.9700,10),(17,'30372 HPP','Semi-Finished Goods',16.2200,16),(18,'30372.06','Semi-Finished Goods',1381.3900,195),(20,'30374.06','Semi-Finished Goods',4467.3200,613),(22,'30378.06','Finished Goods',1798.0200,278),(23,'30382 HPP','Semi-Finished Goods',6.2500,1),(24,'30382.03','Finished Goods',675.5500,35),(25,'30384.03','Finished Goods',246.4500,26),(26,'30420.24','Semi-Finished Goods',3102.7200,44),(27,'30429 HPP','Finished Goods',169.9800,56),(28,'30429.24','Finished Goods',3094.4000,39),(29,'30430 HPP','Semi-Finished Goods',269.5400,87),(30,'30430.24','Finished Goods',3719.0000,46),(31,'30437.06','Semi-Finished Goods',156.9300,26),(32,'30438 HPP','Semi-Finished Goods',123.3400,49),(33,'30438.24','Semi-Finished Goods',7493.5600,112),(35,'30442.06','Finished Goods',2429.5000,565),(36,'30444 HPP','Semi-Finished Goods',1.5500,3),(37,'30444.06','Finished Goods',358.1200,87),(39,'30456.12','Semi-Finished Goods',104.7800,9),(41,'30458 HPP','Finished Goods',1822.1000,8048),(42,'30458.12','Finished Goods',63.7300,6),(43,'30464.45','Finished Goods',1045.0300,89),(44,'30465 HPP','Semi-Finished Goods',14.8800,9),(45,'30465.08','Finished Goods',1065.7100,73),(46,'30466.06','Semi-Finished Goods',72.6800,12),(47,'30467.06','Semi-Finished Goods',31.3000,5),(48,'30468.06','Semi-Finished Goods',177.0900,31),(49,'30470 HPP','Semi-Finished Goods',4.5600,8),(50,'30470.06','Semi-Finished Goods',581.8500,143),(53,'30474 HPP','Semi-Finished Goods',3835.8800,4328),(54,'30474.06','Semi-Finished Goods',1400.9600,235),(72,'110.3114','Ingredient',465.9300,310),(73,'110.3127','Ingredient',1782.0400,2063),(74,'112.0003','Ingredient',0.0000,328069),(75,'112.3007','Ingredient',393.9800,616),(76,'112.3018','Ingredient',399.7000,210),(77,'112.3152','Ingredient',3375.8700,224),(78,'113.3042','Ingredient',262.0200,408),(80,'113.3045','Ingredient',6730.1900,2194),(81,'113.3073','Ingredient',5863.2600,3617),(82,'114.3015','Ingredient',2364.2900,157),(83,'114.3024','Ingredient',4694.6900,816),(84,'114.3025','Ingredient',103.0600,32),(85,'114.3026','Ingredient',649.3000,66),(86,'114.3032','Ingredient',547.9500,210),(87,'114.3035','Ingredient',350.5600,306),(88,'114.3054','Ingredient',4406.6900,418),(89,'114.3055','Ingredient',558.3200,88),(90,'114.3056','Ingredient',82.1900,23),(91,'114.3058','Ingredient',2348.6100,416),(92,'114.306','Ingredient',159.0300,22),(93,'114.3066','Ingredient',133.3100,185),(94,'114.3067','Ingredient',2071.8900,1727),(95,'114.3104','Ingredient',116.3800,38),(96,'114.3116','Ingredient',2298.4000,421),(97,'114.3118','Ingredient',105.1700,17),(98,'114.3121','Ingredient',1559.3000,85),(99,'114.3122','Ingredient',751.3200,100),(100,'114.3124','Ingredient',1207.7200,311),(101,'114.3125','Ingredient',1399.6200,389),(102,'114.3127','Ingredient',1005.0000,114),(103,'114.3132','Ingredient',2476.2300,260),(104,'114.3141','Ingredient',155.2100,8),(105,'114.3142','Ingredient',140.8900,84),(106,'114.3143','Ingredient',865.4500,237),(107,'114.3152','Ingredient',683.7400,186),(115,'120.3061','Ingredient',1309.8100,107),(116,'120.308','Ingredient',1196.6800,544),(121,'121.0595','Ingredient',4659.0100,1533),(123,'121.3064','Ingredient',1250.1500,695),(124,'121.3068','Ingredient',9837.7100,9706),(125,'121.5001','Ingredient',1290.4800,657),(126,'121.7024','Ingredient',4307.8900,1372),(127,'123.3041','Ingredient',9832.9400,13013),(128,'123.3126','Ingredient',474.7700,284),(129,'124.3143','Ingredient',541.8300,505),(130,'124.3144','Ingredient',7188.1100,3557),(131,'124.3145','Ingredient',3979.4200,1583),(132,'125.3016','Ingredient',106.7900,36),(133,'125.3069','Ingredient',1347.2000,809),(134,'134.3105','Ingredient',2988.9100,1651),(135,'135.301','Ingredient',3363.7700,813),(136,'135.3109','Ingredient',1048.0100,1617),(137,'135.3128','Ingredient',882.4200,588),(138,'135.3129','Ingredient',9885.0200,4391),(139,'135.3135','Ingredient',273.9500,284),(140,'135.3136','Ingredient',214.6000,243),(142,'135.3147','Ingredient',4108.8000,4040),(143,'135.3148','Ingredient',2742.2100,2101),(144,'135.315','Ingredient',7979.5100,7125),(145,'135.3151','Ingredient',7718.3800,5028),(146,'135.3152','Ingredient',1730.2800,1018),(147,'135.3153','Ingredient',1343.5100,1018),(148,'135.3173','Ingredient',12.4500,3),(149,'135.3174','Ingredient',247.9700,43),(150,'211.3002','Ingredient',300.9100,4924),(151,'211.3003','Packaging',496.4000,7907),(152,'211.3004','Packaging',14.6400,183),(153,'213.34','Packaging',4714.1100,83271),(154,'213.3401','Packaging',3066.6700,34125),(155,'112.0003','Packaging',0.0000,237468),(156,'214.3311','Packaging',893.0800,13740),(157,'214.3312','Packaging',5347.1600,82264),(159,'216.3224','Packaging',967.2500,19543),(161,'216.3252','Packaging',6270.3500,125407),(162,'222.3115','Packaging',1665.2500,6661),(163,'222.3116','Packaging',294.8900,797),(164,'222.3119','Packaging',783.6000,3918),(165,'222.3121','Packaging',-18.7000,-34),(167,'222.3125','Packaging',1389.9600,3564),(168,'112.0003','Packaging',0.0000,6089),(169,'112.0003','Packaging',0.0000,4356),(170,'112.0003','Packaging',0.0000,4178),(171,'112.0003','Packaging',0.0000,3371),(172,'112.0003','Packaging',0.0000,-1286),(173,'222.3132','Packaging',558.0400,1993),(174,'222.3133','Packaging',2599.2000,1444),(175,'222.3134','Packaging',1489.2000,1460),(176,'222.3135','Packaging',810.9000,1802),(177,'222.3136','packaging',2001.0000,3450),(178,'222.3137','packaging',1246.0000,4450),(179,'222.32','Packaging',965.3000,2758),(180,'112.0003','Packaging',0.0000,2571),(181,'112.0003','Packaging',0.0000,1411),(182,'222.3206','Packaging',3587.0400,30835),(183,'222.3207','Packaging',3429.8700,29484),(184,'222.3208','Packaging',868.2900,7464),(185,'315.30351','Packaging/Label',1350.1200,22502),(186,'315.30352','Packaging/Label',325.8000,5430),(187,'315.30353','Packaging/Label',1615.5600,26926),(188,'315.30354','Packaging/Label',983.2200,16387),(189,'315.30356','Packaging/Label',1565.7000,26095),(190,'315.30357','Packaging/Label',2527.6800,42128),(191,'315.30364','Packaging/Label',1013.5800,16893),(192,'315.30365','Packaging/Label',1286.0400,21434),(193,'315.30366','Packaging/Label',581.4600,9691),(194,'315.30371','Packaging/Label',746.5800,12443),(195,'315.30372','Packaging/Label',2262.7800,37713),(196,'315.30374','Packaging/Label',2872.9200,47882),(197,'315.30378','Packaging/Label',4901.1600,81686),(198,'315.3042','Packaging/Label',2860.4400,47674),(199,'315.30429','Finished Goods',5812.8600,96881),(200,'315.3043','Packaging/Label',604.1400,10069),(201,'315.30437','Packaging/Label',2054.5200,34242),(202,'315.30438','Packaging/Label',5000.2800,83338),(203,'315.30442','Packaging/Label',2332.9200,38882),(204,'315.30444','Packaging/Label',4736.5800,78943),(205,'315.30456','Packaging/Label',2455.9000,122795),(206,'315.30457','Packaging/Label',2193.1400,109657),(207,'315.30458','Packaging/Label',2947.9400,147397),(208,'112.0003','Packaging/Label',0.0000,17976),(209,'315.30465','Packaging/Label',1670.8800,27848),(210,'315.30466','Packaging/Label',1438.6800,23978),(211,'315.30467','Packaging/Label',949.2600,15821),(212,'315.30468','Packaging/Label',3455.0400,57584),(213,'112.0003','Packaging/Label',0.0000,1080),(214,'112.0003','Packaging/Label',0.0000,24128),(215,'315.30473','Packaging/Label',6228.7200,103812),(216,'315.30475','Packaging/Label',1920.0000,32000),(217,'325.9006','Packaging',1194.0400,318411);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_ytd`
--

DROP TABLE IF EXISTS `inventory_ytd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_ytd` (
  `Inv_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Item_No` varchar(50) DEFAULT NULL,
  `Inventory_Value` decimal(8,4) DEFAULT NULL,
  `Inventory_Value_YTD` decimal(8,4) DEFAULT NULL,
  `On_Hand` int(11) NOT NULL,
  `On_Hand_YTD` int(11) DEFAULT NULL,
  PRIMARY KEY (`Inv_ID`),
  KEY `fk_inventory_YTD_item` (`Item_No`),
  CONSTRAINT `fk_inventory_YTD_item` FOREIGN KEY (`Item_No`) REFERENCES `product_categories` (`Item_no`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_ytd`
--

LOCK TABLES `inventory_ytd` WRITE;
/*!40000 ALTER TABLE `inventory_ytd` DISABLE KEYS */;
INSERT INTO `inventory_ytd` VALUES (1,'30351.06',373.0600,947.3600,76,193),(3,'30352.06',4135.6500,3104.0700,886,665),(5,'30353.06',1744.9500,896.9800,356,183),(7,'30354.06',839.9800,435.2300,193,100),(9,'30356.06',1961.4500,3653.1300,349,650),(11,'30357.06',1395.9600,3171.3000,287,652),(12,'30364.08',1152.6600,1334.3700,203,235),(14,'30365.08',969.9900,1063.4900,166,182),(15,'30366.08',100.1100,494.3300,16,79),(16,'30371.06',64.9700,25.9900,10,4),(18,'30372.06',1381.3900,382.5400,195,54),(20,'30374.06',2776.5900,3891.6000,381,534),(22,'30378.06',2037.3200,2574.1400,315,398),(24,'30382.03',675.5500,0.0000,35,0),(25,'30384.03',246.4500,246.4500,26,26),(26,'30420.24',3102.7200,-987.2200,44,-14),(28,'30429.24',3094.4000,3094.4000,39,39),(30,'30430.24',3719.0000,3719.0000,46,46),(31,'30437.06',156.9300,350.0700,26,58),(33,'30438.24',7493.5600,6958.3100,112,104),(35,'30442.06',2807.9000,1315.8000,653,306),(37,'30444.06',374.5700,12.3500,91,3),(39,'30456.12',104.7800,128.0500,9,11),(42,'30458.12',63.7300,297.3700,6,28),(43,'30464.45',1045.0300,1056.7800,89,90),(45,'30465.08',1065.7100,218.9800,73,15),(46,'30466.06',72.6800,181.6800,12,30),(47,'30467.06',31.3000,313.0200,5,50),(48,'30468.06',382.7400,514.1300,67,90),(50,'30470.06',581.8500,179.0300,143,44),(54,'30474.06',2086.5300,387.4900,350,65),(74,'110.3114',465.9300,315.7700,310,210),(75,'110.3127',1782.0400,5759.0500,2063,6666),(76,'112.0003',0.0000,0.0000,328289,340667),(77,'112.3007',393.9800,394.1000,616,616),(78,'112.3018',407.3000,658.2100,214,346),(79,'112.3152',3375.8700,3434.3800,224,227),(80,'113.3042',262.0200,275.5300,408,429),(82,'113.3045',6730.1900,8039.2300,2194,2620),(83,'113.3073',5863.2600,6890.0400,3617,4251),(84,'114.3015',2364.2900,2364.2900,157,157),(85,'114.3024',4765.7400,4836.8000,829,841),(86,'114.3025',103.0600,103.0600,32,32),(87,'114.3026',649.3000,663.7900,66,68),(88,'114.3032',547.9500,547.9500,210,210),(89,'114.3035',350.5600,311.6600,306,272),(90,'114.3054',4406.6900,627.8500,418,60),(91,'114.3055',583.7200,624.1100,92,98),(92,'114.3056',82.1900,82.1900,23,23),(93,'114.3058',2357.3500,2370.9800,417,420),(94,'114.306',159.0300,159.0300,22,22),(95,'114.3066',135.4700,144.8800,188,201),(96,'114.3067',2071.8900,2071.8900,1727,1727),(97,'114.3104',116.3800,116.3800,38,38),(98,'114.3116',2298.4000,2398.9000,421,439),(99,'114.3118',130.3000,663.6100,21,106),(100,'114.3121',1559.3000,1559.3000,85,85),(101,'114.3122',751.3200,751.3200,100,100),(102,'114.3124',1347.7700,1533.4400,347,395),(103,'114.3125',1399.6200,1438.7900,389,400),(104,'114.3127',1005.0000,134.7500,114,15),(105,'114.3132',2476.2300,2487.7600,260,261),(106,'114.3141',155.2100,155.2100,8,8),(107,'114.3142',140.8900,140.8900,84,84),(108,'114.3143',865.4500,898.7900,237,246),(109,'114.3152',683.7400,692.3700,186,189),(117,'120.3061',1309.8100,1497.3800,107,122),(118,'120.308',1196.6800,1535.4600,544,698),(123,'121.0595',4659.0100,454.6900,1533,150),(125,'121.3064',1250.1500,1250.1500,695,695),(127,'121.5001',1290.4800,1414.7900,657,720),(128,'121.7024',4307.8900,4826.9300,1372,1537),(129,'123.3041',9832.9400,1103.7200,13013,1461),(130,'123.3126',2188.4900,2177.1200,1311,1304),(131,'124.3143',541.8300,561.7300,505,524),(132,'124.3144',7188.1100,7598.2100,3557,3760),(133,'124.3145',3979.4200,4044.6100,1583,1609),(134,'125.3016',222.6200,59.8600,75,20),(135,'125.3069',1347.2000,1340.1100,809,805),(136,'134.3105',2988.9100,3744.7600,1651,2069),(137,'135.301',3363.7700,3363.7700,813,813),(138,'135.3109',1048.0100,989.6900,1617,1527),(139,'135.3128',999.4600,378.7200,666,252),(141,'135.3135',273.9500,233.7700,284,243),(142,'135.3136',214.6000,163.6100,243,185),(144,'135.3147',4215.5900,4229.8300,4145,4159),(145,'135.3148',2879.2400,2897.5100,2206,2220),(146,'135.315',7979.5100,7979.5100,7125,7125),(147,'135.3151',7718.3800,8005.0600,5028,5215),(148,'135.3152',1730.2800,1730.2800,1018,1018),(149,'135.3153',1343.5100,1165.3100,1018,883),(150,'135.3173',12.4500,12.4500,3,3),(151,'135.3174',247.9700,247.9700,43,43),(152,'211.3002',300.9100,317.2800,4924,5192),(153,'211.3003',496.4000,496.4000,7907,7907),(154,'211.3004',14.6400,14.6400,183,183),(155,'213.34',5682.0000,5544.6600,100368,97942),(156,'213.3401',3512.4700,4183.3700,39086,46551),(157,'214.331',0.0000,0.0000,237468,237468),(158,'214.3311',1192.2100,6114.1400,18342,94064),(159,'214.3312',5347.1600,5570.2400,82264,85696),(161,'216.3224',967.2500,990.6600,19543,20016),(163,'216.3252',6270.3500,6341.1000,125407,126822),(164,'222.3115',1857.0000,1940.2500,7428,7761),(165,'222.3116',294.8900,345.2100,797,933),(166,'222.3119',519.6000,773.6000,2598,3868),(167,'222.3121',-18.7000,30.2500,-34,55),(169,'222.3125',785.4600,1249.5600,2014,3204),(170,'222.3127',0.0000,0.0000,6089,6089),(171,'222.3128',0.0000,0.0000,4356,4356),(172,'222.3129',0.0000,0.0000,4178,4178),(173,'222.313',0.0000,0.0000,3371,3371),(174,'222.3131',0.0000,0.0000,-1286,-1286),(175,'222.3132',558.0400,565.8800,1993,2021),(176,'222.3133',2599.2000,1956.6000,1444,1087),(177,'222.3134',1489.2000,1252.5600,1460,1228),(178,'222.3135',810.9000,875.2500,1802,1945),(179,'222.3136',2001.0000,2001.0000,3450,3450),(180,'222.3137',1246.0000,1246.0000,4450,4450),(181,'222.32',965.3000,973.3500,2758,2781),(182,'222.3204',0.0000,0.0000,2571,2571),(183,'222.3205',0.0000,0.0000,1411,1411),(184,'222.3206',3587.0400,3607.9700,30835,31015),(185,'222.3207',3429.8700,3429.8700,29484,29484),(186,'222.3208',868.2900,879.4500,7464,7560),(187,'315.30351',1350.1200,870.1200,22502,14502),(188,'315.30352',325.8000,41.8800,5430,698),(189,'315.30353',1615.5600,1297.0800,26926,21618),(190,'315.30354',983.2200,548.5800,16387,9143),(191,'315.30356',1742.4600,602.4600,29041,10041),(192,'315.30357',2527.6800,1447.6800,42128,24128),(193,'315.30364',1013.5800,1013.5800,16893,16893),(194,'315.30365',1286.0400,1286.0400,21434,21434),(195,'315.30366',581.4600,581.4600,9691,9691),(196,'315.30371',746.5800,764.5800,12443,12743),(197,'315.30372',2262.7800,2338.7400,37713,38979),(198,'315.30374',2972.2800,2972.2800,49538,49538),(199,'315.30378',4901.1600,4901.1600,81686,81686),(200,'315.3042',2860.4400,3066.3600,47674,51106),(201,'315.30429',5812.8600,5812.8600,96881,96881),(202,'315.3043',604.1400,604.1400,10069,10069),(203,'315.30437',2054.5200,2054.5200,34242,34242),(204,'315.30438',5000.2800,5011.8000,83338,83530),(205,'315.30442',2332.9200,2083.5600,38882,34726),(206,'315.30444',4736.5800,4301.9400,78943,71699),(207,'315.30456',2455.9000,2469.4000,122795,123470),(208,'315.30457',2193.1400,2201.6000,109657,110080),(209,'315.30458',2947.9400,2967.7400,147397,148387),(210,'315.30459',0.0000,0.0000,17976,17976),(211,'315.30465',1670.8800,1698.7200,27848,28312),(212,'315.30466',1438.6800,1438.6800,23978,23978),(213,'315.30467',949.2600,949.2600,15821,15821),(214,'315.30468',3455.0400,3455.0400,57584,57584),(215,'315.30469',0.0000,0.0000,1080,1080),(216,'315.30472',0.0000,0.0000,24128,24128),(217,'315.30473',6228.7200,9946.8000,103812,165780),(218,'315.30475',1920.0000,1920.0000,32000,32000),(219,'325.9006',1196.9200,1216.1000,319178,324292);
/*!40000 ALTER TABLE `inventory_ytd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `PurchaseOrderDetailNo` int(11) DEFAULT NULL,
  `PurchaseOrderNo` varchar(15) NOT NULL,
  `QTY` int(11) NOT NULL,
  `ItemNo` varchar(50) NOT NULL,
  `UnitPrice` decimal(6,2) NOT NULL,
  PRIMARY KEY (`PurchaseOrderNo`),
  KEY `fk_OrderDetail_ItemNo` (`ItemNo`),
  CONSTRAINT `fk_OrderDetail_ItemNo` FOREIGN KEY (`ItemNo`) REFERENCES `product_categories` (`Item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (31,'10221021511',17,'30420.24',169.44),(12,'12040816187',42,'30473.24',169.44),(16,'12040816188',42,'30473.24',169.44),(117,'12041104167',42,'30473.24',169.44),(20,'13551007048',126,'30473.24',169.44),(203,'1721108407',294,'30473.24',169.44),(335,'1QNK7LGI',3,'30374.06',17.94),(4,'2680816280',126,'30473.24',169.44),(8,'2680816281',126,'30473.24',169.44),(113,'2681104251',84,'30473.24',169.44),(1,'2890814013',168,'30473.24',169.44),(47,'3611071',80,'30474.06',17.94),(121,'3619201',8,'30470.06',17.94),(160,'3623992',2,'30374.06',17.94),(171,'3625138',19,'30378.06',17.94),(177,'3625196',16,'30378.06',17.94),(188,'3625224',2,'30374.06',17.94),(197,'3625534',16,'30356.06',13.14),(301,'3630171',9,'30444.06',13.14),(320,'3631041',165,'30474.06',17.94),(344,'3633684',32,'30374.06',17.94),(210,'37450',108,'30356.06',13.50),(295,'38391',36,'30356.06',13.50),(289,'396010',21,'30353.06',13.14),(58,'416314552',12,'30356.06',13.14),(214,'416315687',6,'30356.06',13.14),(65,'446363622',16,'30351.06',13.14),(261,'446365014',11,'30351.06',13.14),(75,'456654914',36,'30351.06',13.14),(224,'456655986',72,'30351.06',13.14),(206,'56X587540',216,'30356.06',11.94),(349,'57892',20,'30444.06',13.14),(142,'5851106269',42,'30473.24',169.44),(310,'5851113231',42,'30420.24',169.44),(148,'618669',27,'30378.06',17.34),(313,'647136',10,'30378.06',17.94),(272,'7961105102',126,'30438.24',169.44),(274,'7961105103',126,'30438.24',169.44),(23,'9611021254',16,'30420.24',169.44),(39,'9611021268',18,'30420.24',169.44),(276,'AE-705741',30,'30470.06',17.94),(139,'BM944',360,'30378.06',17.94),(299,'PL00770914',70,'30382.03',51.75);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `PurchaseOrderNo` varchar(15) NOT NULL,
  `CustomerNo` int(11) DEFAULT NULL,
  `OrderDate` date NOT NULL,
  `RequiredDate` date NOT NULL,
  `Shipped` date NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`PurchaseOrderNo`),
  CONSTRAINT `orders_chk_1` CHECK ((`Status` in (_utf8mb4'ordered',_utf8mb4'in progress',_utf8mb4'shipped',_utf8mb4'invoiced',_utf8mb4'complete')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('10221021511',1539,'2019-10-21','2019-10-28','2019-10-23','Complete'),('12040816187',1695,'2019-08-16','2019-08-22','2019-08-26','Complete'),('12040816188',1977,'2019-08-16','2019-08-21','2019-08-21','Complete'),('12041104167',1881,'2019-05-11','2019-05-11','2019-05-13','Invoiced'),('13551007048',1729,'2019-07-10','2019-07-13','2019-07-16','Complete'),('1721108407',1849,'2019-11-11','2019-11-18','2019-11-12','Invoiced'),('2680816280',1479,'2019-08-16','2019-08-17','2019-08-24','Complete'),('2680816281',1464,'2019-08-16','2019-08-20','2019-08-25','Complete'),('2681104251',1848,'2019-05-11','2019-05-19','2019-05-12','Invoiced'),('2890814013',1411,'2019-08-14','2019-08-18','2019-08-21','Complete'),('3611071',1339,'2019-10-29','2019-11-03','2019-11-08','Complete'),('3619201',1544,'2019-05-11','2019-05-14','2019-05-11','Invoiced'),('3623992',1924,'2019-07-11','2019-07-11','2019-07-19','Invoiced'),('3625138',1950,'2019-08-11','2019-08-19','2019-08-15','Invoiced'),('3625196',1798,'2019-08-11','2019-08-16','2019-08-14','Invoiced'),('3625224',1578,'2019-08-11','2019-08-11','2019-08-19','Invoiced'),('3625534',1530,'2019-08-11','2019-08-11','2019-08-13','Invoiced'),('3633684',1775,'2019-11-15','2019-11-23','2019-11-15','Ordered'),('37450',1775,'2019-11-11','2019-11-11','2019-11-18','Invoiced'),('416314552',1829,'2019-05-11','2019-05-18','2019-05-14','Complete'),('416315687',1786,'2019-12-11','2019-12-17','2019-12-13','Invoiced'),('446363622',1432,'2019-05-11','2019-05-12','2019-05-15','Complete'),('446365014',1339,'2019-12-11','2019-12-15','2019-12-13','Invoiced'),('456654914',1881,'2019-05-11','2019-05-16','2019-05-19','Complete'),('456655986',1496,'2019-12-11','2019-12-19','2019-12-15','Invoiced'),('56X587540',1302,'2019-11-11','2019-11-18','2019-11-14','Invoiced'),('57892',1726,'2019-11-18','2019-11-23','2019-11-18','Ordered'),('5851106269',1874,'2019-06-11','2019-06-19','2019-06-11','Invoiced'),('618669',1845,'2019-07-11','2019-07-18','2019-07-18','Invoiced'),('9611021254',1383,'2019-10-21','2019-10-22','2019-10-25','Complete'),('9611021268',1412,'2019-10-21','2019-10-23','2019-10-31','Complete'),('BM944',1491,'2019-06-11','2019-06-13','2019-06-14','Invoiced');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `Item_no` varchar(50) NOT NULL,
  `Product_Description` varchar(200) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES ('110.3114','Black Bean Organic','Ingredient'),('110.3127','Garbanzo Bean Organic Cooked','Ingredient'),('112.0003','Water','Ingredient'),('112.3007','Baking Soda','Ingredient'),('112.3018','Citric Acid, Non GMO','Ingredient'),('112.3152','Eat Fresh','Ingredient'),('113.3042','Oil Canola','Ingredient'),('113.3044','Olive Oil Extra Virgin','Ingredient'),('113.3045','Olive Oil Extra Virgin Organic','Ingredient'),('113.3073','Tahini Organic','Ingredient'),('114.3015','Chives Dried','Ingredient'),('114.3024','Cumin Powder Organic','Ingredient'),('114.3025','Cumin Powder','Ingredient'),('114.3026','Dill Weed','Ingredient'),('114.3032','Honey','Ingredient'),('114.3035','Juice Lime','Ingredient'),('114.3054','Black Pepper Organic','Ingredient'),('114.3055','Pepper Black','Ingredient'),('114.3056','Pepper Cayenne Powder','Ingredient'),('114.3058','Pepper Cayenne Powder Organic','Ingredient'),('114.306','Pepper white','Ingredient'),('114.3066','Sea Salt - fine','Ingredient'),('114.3067','Franks Red Hot Sauce','Ingredient'),('114.3104','Paprika 85 ASTA','Ingredient'),('114.3116','Roasted Garlic Minced Organic','Ingredient'),('114.3118','Dry Parsley','Ingredient'),('114.3121','Habanero Powder','Ingredient'),('114.3122','Jalapeno Powder','Ingredient'),('114.3124','Hummus Blend Salt Mix Organic','Ingredient'),('114.3125','Beet Powder Organic','Ingredient'),('114.3127','Natural Hickory Smoke Flavor','Ingredient'),('114.3132','Chipotle Powder Organic','Ingredient'),('114.3141','Oil White Truffle 8.45 oz','Ingredient'),('114.3142','Vinegar white balsamic 5 Litre','Ingredient'),('114.3143','Balsamic Vinegar, Organic','Ingredient'),('114.3152','Turmeric Organic','Ingredient'),('120.3061','Pine nuts whole','Ingredient'),('120.308','Walnut meal','Ingredient'),('121.0073','Cheddar White V-Shredded','Ingredient'),('121.0503','Asiago Cheese Shredded','Ingredient'),('121.0544','Parmesan Cheese Shredded','Ingredient'),('121.0587','Montamore Cheese Shredded','Ingredient'),('121.0595','Romano Cheese Grated','Ingredient'),('121.3023','Cream Cheese regular','Ingredient'),('121.3064','Ricotta cheese','Ingredient'),('121.3068','Sour cream','Ingredient'),('121.5001','Cheddar Cheese Yellow Block','Ingredient'),('121.7024','Sharp Parmesan Cheese Savory Grated','Ingredient'),('123.3041','Mayonnaise','Ingredient'),('123.3126','Canola Mayonaise EDTA-Free','Ingredient'),('124.3143','Juice Lemon','Ingredient'),('124.3144','Juice Lemon Organic','Ingredient'),('124.3145','Juice Lime Organic','Ingredient'),('125.3016','Cilantro','Ingredient'),('125.3069','Spinach Fresh','Ingredient'),('134.3105','Basil IQF','Ingredient'),('135.301','Figs, Whole Turkish','Ingredient'),('135.3109','Onion Diced 3/8','Ingredient'),('135.3128','IQF Garlic Puree','Ingredient'),('135.3129','IQF Garlic Puree Organic','Ingredient'),('135.3135','IQF Diced Jalapenos','Ingredient'),('135.3136','IQF Diced Red Onions','Ingredient'),('135.3147','IQF Green Chile Peppers Conventional','Ingredient'),('135.3148','IQF Poblano Peppers','Ingredient'),('135.315','IQF Hatch Green Chiles','Ingredient'),('135.3151','IQF Green Chile Organic','Ingredient'),('135.3152','IQF Roasted Red Onion','Ingredient'),('135.3153','IQF Roasted Yellow Onion','Ingredient'),('135.3173','Spinach Powder','Ingredient'),('135.3174','Spinach Flakes','Ingredient'),('211.3002','Bag 8 X 12 Vacuum','Ingredient'),('211.3003','Bag 8 X 10 Vacuum','Ingredient'),('211.3004','Bag 10 X 13 Vacuum','Ingredient'),('213.34','Clear Lidding Film 165mm Width','Ingredient'),('213.3401','Clear Lidding Film 17.75 Width','Packaging'),('214.331','OTG Dome','Packaging'),('214.3311','Lid - Over Fit Wide Flange (all sizes) BLUE','Packaging'),('214.3312','Lid - Over Fit Wide Flange (all sizes) RED','Packaging'),('216.3223','Tray - Square  Wide Flange 8 oz','Packaging'),('216.3224','Tray - Square Wide Flange 12 oz','Packaging'),('216.3227','Tray - Square Wide Flange 24 oz','Packaging'),('216.3252','Tray - Round 2 oz','Packaging'),('222.3115','Case 6 / 8 oz','Packaging'),('222.3116','Case  12 / 8 oz 9.5 x 9.5 x 6','Packaging'),('222.3119','Costco Box Insert-Victory Packaging','Packaging'),('222.3121','Case  3 / 3 lb 10x 6 x 6','Packaging'),('222.3124','Case 24 / 24 oz Parm Asiago','Packaging'),('222.3125','Case Cover 24 / 24 oz Light Blue-Victory Packaging','Packaging'),('222.3127','Case 24 / 24 oz GREEN','Packaging'),('222.3128','Case Cover 24 / 24 oz GREEN','Packaging'),('222.3129','Case Cover 24 / 32 oz Multi-Pack Box','Packaging'),('222.313','Case 24 / 32 oz Multi Pack Box','Packaging'),('222.3131','OTG Box Divider','Packaging'),('222.3132','Moose Mini Food Service Box Divider','Packaging'),('222.3133','BM BASE COSTCO D/C','Packaging'),('222.3134','BM TOP COSCO HSC','Packaging'),('222.3135','352882-1-1 BM COSTCO CLUB U-PAD','Packaging'),('222.3136','Case display pack-16 count mini base','Packaging'),('222.3137','Case display pack-16 count mini cover','Packaging'),('222.32','Moose Mini Shipper','Packaging'),('222.3204','Case 12 / 24 oz Club Pack Lid','Packaging'),('222.3205','Case 12 / 24 oz Club Pack Tray','Packaging'),('222.3206','Original Moose Mini Retail Carton','Packaging'),('222.3207','Red Pepper Moose Mini Retail Carton','Packaging'),('222.3208','Lemon Turmeric Moose Mini Retail Carton','Packaging'),('30351.06','Organic Lime & Black Bean Hummus 6/8oz','Finished Goods'),('30352','HPP,Garlic Hummus 8 oz HPP','Semi-Finished Goods'),('30352.06','Organic Garlic Hummus 6/8oz','Finished Goods'),('30353','HPP,Green Chile Hummus 8 oz HPP','Semi-Finished Goods'),('30353.06','Organic Green Chile Hummus 6/8oz','Finished Goods'),('30354','HPP,Smoked Chipotle Hummus 8 oz HPP','Semi-Finished Goods'),('30354.06','Organic Smoked Chipotle Hummus 6/8oz','Finished Goods'),('30356 HPP','Original Hummus 8 oz HPP','Semi-Finished Goods'),('30356.06','Organic Original Hummus 6/8oz','Semi-Finished Goods'),('30357 HPP','Rstd Red Pepper Hummus 8 oz HPP','Semi-Finished Goods'),('30357.06','Organic Roasted Red Pepper Hummus 6/8oz','Finished Goods'),('30364.08','Mild Salsa 8/12oz','Finished Goods'),('30365 HPP','Medium Salsa 12 oz HPP','Semi-Finished Goods'),('30365.08','Medium Salsa 8/12oz','Finished Goods'),('30366.08','Hot Salsa 8/12oz','Semi-Finished Goods'),('30371.06','Southwest Pimento Cheese 6/7oz','Semi-Finished Goods'),('30372 HPP','Basil Pesto 7 oz HPP','Semi-Finished Goods'),('30372.06','Basil Pesto 6/7oz','Semi-Finished Goods'),('30374','HPP,Roasted Red Pepper Aged Cheddar 7 oz HPP','Semi-Finished Goods'),('30374.06','Red Pepper Artichoke Cheddar Spread 6/7oz','Semi-Finished Goods'),('30378 HPP','Green Chile Aged Cheddar 7 oz HPP','Semi-Finished Goods'),('30378.06','Green Chile Cheddar Spread 6/7oz','Finished Goods'),('30382 HPP','Basil Pesto Bulk 3 lb HPP','Semi-Finished Goods'),('30382.03','Basil Pesto Bulk – Food Service 3/3lb','Finished Goods'),('30384.03','Original Hummus – Food Service 3/3lb','Finished Goods'),('30420.24','Tex-Mex Smoked Gouda Spread 24/24oz','Semi-Finished Goods'),('30429 HPP','Roasted Red Pepper Aged Cheddar 24 oz','Finished Goods'),('30429.24','Red Pepper Artichoke Cheddar Spread 24/24oz','Finished Goods'),('30430 HPP','Fig Spread 24 oz HPP','Semi-Finished Goods'),('30430.24','Fig Spread 24/24oz','Finished Goods'),('30437.06','Fig Spread 6/7oz','Semi-Finished Goods'),('30438 HPP','Hatch Green Chile Aged Cheddar 24 oz HPP','Semi-Finished Goods'),('30438.24','Hatch Green Chile Cheddar Spread 24/24oz','Semi-Finished Goods'),('30442','HPP,Lemon Turmeric Hummus 8 oz HPP','Semi-Finished Goods'),('30442.06','Organic Lemon Turmeric Hummus 6/8oz','Finished Goods'),('30444 HPP','Beet Balsamic Hummus 8 oz HPP','Semi-Finished Goods'),('30444.06','Organic Beet Balsamic Hummus 6/8oz','Finished Goods'),('30456','HPP,Original Hummus OTG 1.7 oz HPP','Semi-Finished Goods'),('30456.12','Original Hummus Moose Mini Retail','Semi-Finished Goods'),('30457','HPP,Lemon Turmeric OTG 1.7 oz HPP','Finished Goods'),('30458 HPP','RRP Hummus OTG 1.7 oz HPP','Finished Goods'),('30458.12','Roasted Red Pepper Hummus Moose Mini Retail','Finished Goods'),('30464.45','Red Pepper Hummus Moose Mini Food Service (45 unit case)','Finished Goods'),('30465 HPP','Basil Pesto 12 oz HPP','Semi-Finished Goods'),('30465.08','Basil Pesto 8/12 oz','Finished Goods'),('30466.06','Truffled Ricotta Dip 6/7 oz','Semi-Finished Goods'),('30467.06','Spinach Artichoke Parmesan 6/7oz','Semi-Finished Goods'),('30468.06','Roasted Onion Dip 6/7 oz','Semi-Finished Goods'),('30470 HPP','Buffalo Cheddar Dip 7 oz HPP','Semi-Finished Goods'),('30470.06','Buffalo Cheddar Dip 6/7 oz','Semi-Finished Goods'),('30473 HPP','Parmesan Asiago 24 oz HPP','Semi-Finished Goods'),('30473.24','Parmesan Asiago 24/24 oz','Semi-Finished Goods'),('30474 HPP','Parm Asiago Spread 7 oz HPP','Semi-Finished Goods'),('30474.06','Parm Asiago Spread 6/7 oz','Semi-Finished Goods'),('315.30351','Organic Lime & Black Bean Hummus 8 oz','Packaging'),('315.30352','Organic Garlic Hummus 8 oz','Packaging'),('315.30353','Organic Green Chile Hummus 8 oz','Packaging/Label'),('315.30354','Smoked Chipotle Hummus 8 oz','Packaging/Label'),('315.30356','Organic Original Hummus 8 oz','Packaging/Label'),('315.30357','Organic Roasted Red Pepper Hummus 8 oz','Packaging/Label'),('315.30364','Mild Salsa 12 oz','Packaging/Label'),('315.30365','Medium Salsa 12 oz','Packaging/Label'),('315.30366','Hot Salsa 12 oz','Packaging/Label'),('315.30371','Southwest Pimento 7 oz','Packaging/Label'),('315.30372','Basil Pesto 7 oz','Packaging/Label'),('315.30374','Montamore Rstd Pep  7 oz','Packaging/Label'),('315.30378','Aged Cheddar Gr Chile Sprd 7 oz','Packaging/Label'),('315.3042','Tex-Mex Smoked Gouda 24 oz','Packaging/Label'),('315.30429','Roasted Red Pepper Aged Cheddar 24 oz','Packaging/Label'),('315.3043','Fig Spread 24 oz','Packaging/Label'),('315.30437','Fig Spread 7 oz','Packaging/Label'),('315.30438','Hatch Green Chile Aged Cheddar 24 oz','Packaging/Label'),('315.30442','Organic Lemon Turmeric Hummus 8 oz','Packaging/Label'),('315.30444','Organic Beet Balsamic Hummus 8 oz','Packaging/Label'),('315.30456','Original Moose Mini Label','Packaging/Label'),('315.30457','Lemon Turmeric Moose Mini Label','Packaging/Label'),('315.30458','Red Pepper Moose Mini Label','Packaging/Label'),('315.30459','OTG Lemon Turmeric Dome Label','Packaging/Label'),('315.30465','Basil Pesto 12 oz','Packaging/Label'),('315.30466','Truffled Riccota Dip 7 oz','Packaging/Label'),('315.30467','Artichoke Parmesan Sprd CO 7 oz','Packaging/Label'),('315.30468','Roasted Onion Cheddar Dip 7 oz','Packaging/Label'),('315.30469','Buffalo Cheddar Dip 24 oz label','Packaging/Label'),('315.30472','Truffled Ricotta 24 oz Label','Packaging/Label'),('315.30473','Parm Asiago 24 oz Label','Packaging/Label'),('315.30475','Hatch MEXICO 24 oz Label','Packaging/Label'),('325.9006','9006  ZEBRA 4X6','Packaging');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bluemooseboulder1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05 16:32:22
