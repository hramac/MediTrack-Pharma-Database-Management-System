-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: meditrack
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `bills`
--
DROP database IF EXISTS MEDITRACK;
CREATE DATABASE MEDITRACK;
USE MEDITRACK;
DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `bill_id` mediumint NOT NULL,
  `employee_id` mediumint DEFAULT NULL,
  `customer_id` mediumint NOT NULL,
  `bill_type` varchar(15) NOT NULL,
  `bill_date` date NOT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `fk_Bills_Employees1_idx` (`employee_id`),
  KEY `fk_Bills_customers1_idx` (`customer_id`),
  CONSTRAINT `fk_Bills_customers1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `fk_Bills_Employees1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,8,495,'Assisted','2023-04-01'),(2,12,527,'Assisted','2023-04-01'),(3,8,504,'Assisted','2023-04-02'),(4,9,513,'Assisted','2023-04-02'),(5,3,511,'Assisted','2023-04-03'),(6,3,491,'Assisted','2023-04-03'),(7,3,524,'Assisted','2023-04-04'),(8,12,521,'Assisted','2023-04-04'),(9,12,503,'Assisted','2023-04-05'),(10,12,494,'Assisted','2023-04-05'),(11,1,502,'Assisted','2023-04-06'),(12,5,525,'Assisted','2023-04-06'),(13,6,512,'Assisted','2023-04-07'),(14,6,532,'Assisted','2023-04-07'),(15,6,488,'Assisted','2023-04-08'),(16,7,523,'Assisted','2023-04-08'),(17,7,529,'Assisted','2023-04-09'),(18,7,517,'Assisted','2023-04-09'),(19,7,530,'Assisted','2023-04-10'),(20,7,507,'Assisted','2023-04-10'),(21,9,496,'Assisted','2023-04-11'),(22,1,516,'Assisted','2023-04-11'),(23,11,533,'Assisted','2023-04-12'),(24,15,499,'Assisted','2023-04-12'),(25,2,485,'Assisted','2023-04-13'),(26,2,505,'Assisted','2023-04-13'),(27,2,526,'Assisted','2023-04-14'),(28,2,528,'Assisted','2023-04-14'),(29,5,514,'Assisted','2023-04-15'),(30,5,492,'Assisted','2023-04-15'),(31,5,508,'Assisted','2023-04-16'),(32,5,520,'Assisted','2023-04-16'),(33,5,509,'Assisted','2023-04-17'),(34,13,519,'Assisted','2023-04-17'),(35,13,484,'Assisted','2023-04-18'),(36,13,518,'Assisted','2023-04-18'),(37,8,491,'Assisted','2023-04-19'),(38,8,530,'Assisted','2023-04-19'),(39,8,486,'Assisted','2023-04-20'),(40,1,533,'Assisted','2023-04-20'),(41,1,497,'Assisted','2023-04-21'),(42,1,533,'Assisted','2023-04-22'),(43,1,530,'Assisted','2023-04-23'),(44,12,498,'Assisted','2023-04-24'),(45,12,505,'Assisted','2023-04-25'),(46,12,530,'Assisted','2023-04-26'),(47,12,501,'Assisted','2023-04-27'),(48,14,491,'Assisted','2023-04-28'),(49,14,523,'Assisted','2023-04-29'),(50,14,486,'Assisted','2023-04-30');
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) NOT NULL,
  `company_phone` varchar(20) NOT NULL,
  `company_email` varchar(45) NOT NULL,
  `company_street_address` varchar(45) NOT NULL,
  `company_city` varchar(30) NOT NULL,
  `company_state` varchar(30) NOT NULL,
  `company_zip_code` varchar(5) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9484 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1057,'GenoSys Pharma','(876) 543-2109','genosyspharma@gmail.com','987 Cedar Avenue','Greendale','Texas','75201'),(1062,'GenoPharm Research','(988) 833-2118','genopharm@gmail.com','810 Pinecone Street','Forestville','Texas','60657'),(1998,'NovaPharm Industries','(543) 210-9876','novapharm@gmail.com','986 Magnolia Street','Hampton','Illinois','75204'),(2417,'MedicoBio Sciences','(102) 938-4753','medicobiosci@gmail.com','795 Elmwood Avenue','Newport','California','30342'),(2425,'BioGenetics Therapeutics','(986) 767-5598','biogenetics@gmail.com','825 Juniper Avenue','Pleasantville','Oregon','10011'),(2436,'Proxima Pharmaceuticals','(456) 789-0123','proxima@gmail.com','369 Willow Street','Lexington','Ohio','60647'),(3146,'ProMedica Industries','(789) 012-3457','promedica@gmail.com','907 Magnolia Grove','Bristol','Georgia','94109'),(3159,'Vitality BioSciences','(867) 530-9124','vitalitybiosci@gmail.com','147 Spruce Lane','Springfield','Pennsylvania','98101'),(3659,'Vitalis Laboratories','(987) 654-3212','vitalislabs@gmail.com','184 Acacia Lane','Sheridan','Florida','30318'),(3704,'Panacea Pharmaceuticals','(787) 118-4377','panaceapharma@gmail.com','970 Redwood Road','Hudson','Texas','60622'),(3721,'PharmaQuest Innovations','(876) 873-4521','pharmaquest@gmail.com','789 Oak Lane','Rockville','New York','94110'),(4597,'HealthQuest Therapeutics','(876) 543-2101','healthquest@gmail.com','243 Cedarwood Avenue','Kingsville','Ohio','85004'),(4827,'PharmaPlus Solutions','(135) 792-4680','pharmaplus@gmail.com','618 Laurel Street','Carver','Texas','33131'),(4829,'HealthPrime Laboratories','(234) 567-8901','healthprime@gmail.com','258 Birch Lane','Auburn','Arizona','85001'),(5849,'MediPharm Solutions','(123) 456-7890','medipharm@gmail.com','23 Main Street','Brooksville','California','90210'),(5867,'BioSolutions Rx','(854) 123-4008','biosolutionsrx@gmail.com','214 Sycamore Avenue','Trenton','Colorado','30328'),(5981,'CureTech Industries','(996) 721-3852','curetech@gmail.com','536 Cypress Lane','Windsor','Massachusetts','94117'),(6072,'CureAll Therapeutics','(102) 938-4756','cureallthera@gmail.com','852 Ash Avenue','Westbrook','Michigan','33139'),(6398,'MediCore Therapeutics','(987) 654-3210','medicore@gmail.com','654 Pine Street','Riverton','California','10001'),(6968,'VitalCure Pharmaceuticals','(456) 789-0126','vitalcure@gmail.com','352 Birchwood Street','Marshall','North Carolina','75230'),(7152,'AdvancedMed Labs','(667) 543-2156','advancedmed@gmail.com','392 Fir Street','Fairfield','Washington','85003'),(7264,'MediSurg Innovations','(982) 105-6179','medisurginnov@gmail.com','567 Dogwood Road','Franklin','California','90036'),(7384,'MedicaGen Research','(321) 098-7654','medicagen@gmail.com','753 Poplar Road','Cedarville','New Jersey','94103'),(7743,'BioTech Innovations','(789) 012-3456','biotechinnov@gmail.com','741 Walnut Road','Fairhaven','Georgia','90245'),(8110,'VitalMed Pharmaceuticals','(123) 123-1234','vitalmedpharma@gmail.com','321 Maple Road','Ashland','Florida','30303'),(8431,'MedicoGenix Sciences','(646) 963-3490','medicobio@gmail.com','279 Hemlock Road','Jeffersonville','California','75209'),(8593,'BioTech Solutions','(234) 567-8908','biotechsolutions@gmail.com','674 Willowbrook Lane','Woodbury','Illinois','10013'),(9160,'BioNova Pharmaceuticals','(246) 801-3579','bionovapharma@gmail.com','943 Beech Avenue','Oakwood','New York','98104'),(9265,'BioGenix Laboratories','(987) 654-3210','biogenixlabs@gmail.com','456 Elm Avenue','Silverton','Texas','60613'),(9483,'Pharmalife Innovations','(452) 210-0984','pharmalife@gmail.com','635 Chestnut Lane','Crestwood','California','90046');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` mediumint NOT NULL,
  `customer_first_name` varchar(30) NOT NULL,
  `customer_last_name` varchar(30) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_dob` date NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (456,'Liam','Smith','987-665-3451','1990-02-15'),(457,'Emma','Johnson','555-982-7361','1985-11-28'),(458,'Noah','Williams','223-719-5840','2001-06-03'),(459,'Olivia','Jones','678-402-9165','1998-09-20'),(460,'Mason','Brown','941-563-8270','1976-04-12'),(461,'Ava','Davis','384-625-9013','1982-08-05'),(462,'Sophia','Miller','817-309-4762','1995-01-09'),(463,'Logan','Wilson','490-187-5624','1979-07-24'),(464,'Isabella','Taylor','672-543-0198','1988-03-17'),(465,'Lucas','Anderson','912-856-3740','2000-10-31'),(466,'Mia','Thomas','357-601-9248','1993-05-22'),(467,'Henry','Jackson','648-935-2071','1987-12-07'),(468,'Charlotte','White','189-427-3560','1974-03-19'),(469,'Benjamin','Harris','736-590-1824','1992-08-02'),(470,'Amelia','Martin','208-346-5791','1986-01-13'),(471,'Ethan','Thompson','459-721-0836','1997-04-27'),(472,'Harper','Garcia','615-894-3720','1978-09-08'),(473,'Samuel','Martinez','370-182-9546','1984-06-11'),(474,'Evelyn','Robinson','903-421-5687','2002-01-14'),(475,'Alexander','Clark','536-870-4912','1991-11-25'),(476,'Abigail','Rodriguez','791-603-8452','1983-05-18'),(477,'James','Lewis','462-817-3905','1977-10-29'),(478,'Emily','Lee','825-349-6170','1999-03-23'),(479,'Daniel','Walker','279-501-4683','1975-12-16'),(480,'Elizabeth','Hall','670-928-1543','1989-07-07'),(481,'Michael','Allen','419-365-8720','1996-02-21'),(482,'Avery','Young','584-726-3019','1981-09-04'),(483,'Jackson','Hernandez','167-982-5340','1973-04-08'),(484,'Ella','King','320-657-9148','1994-11-11'),(485,'Sebastian','Wright','849-273-5061','1980-06-25'),(486,'Scarlett','Lopez','293-460-7185','1972-01-28'),(487,'Joseph','Scott','527-819-4360','1992-07-03'),(488,'Grace','Green','796-352-0814','1986-12-26'),(489,'David','Adams','104-583-9276','1979-05-30'),(490,'Chloe','Baker','673-291-0458','1991-10-13'),(491,'Samuel','Gonzalez','945-618-3720','1983-03-07'),(492,'Victoria','Nelson','218-437-6951','1976-08-10'),(493,'William','Carter','370-501-4296','1988-01-02'),(494,'Penelope','Mitchell','568-930-1472','1974-06-15'),(495,'Aiden','Perez','712-459-8036','1997-11-18'),(496,'Madison','Roberts','458-671-9320','1985-04-21'),(497,'Gabriel','Turner','813-290-4567','1977-09-02'),(498,'Lily','Phillips','105-374-8296','1999-02-24'),(499,'Oliver','Campbell','596-781-0432','1981-07-17'),(500,'Zoey','Parker','328-015-4976','1973-12-30'),(501,'Anthony','Evans','647-328-9150','1995-05-03'),(502,'Layla','Edwards','185-064-3927','1982-10-06'),(503,'Matthew','Collins','739-502-1864','1978-03-09'),(504,'Nora','Stewart','276-814-5309','1990-08-22'),(505,'Elijah','Sanchez','913-647-2850','1984-01-05'),(506,'Riley','Morris','541-329-0768','2001-06-08'),(507,'Andrew','Rogers','368-078-4952','1998-09-15'),(508,'Brooklyn','Reed','702-156-8349','1976-04-18'),(509,'Nathan','Cook','195-802-3647','1982-08-11'),(510,'Audrey','Morgan','638-510-9472','1995-01-14'),(511,'Isaac','Bell','917-328-0654','1979-07-27'),(512,'Savannah','Murphy','426-590-1837','1988-03-20'),(513,'Owen','Bailey','839-271-5046','2000-11-02'),(514,'Hannah','Rivera','257-610-3948','1993-05-25'),(515,'Julian','Cooper','704-938-5217','1987-12-10'),(516,'Claire','Richardson','315-482-0976','1974-03-22'),(517,'Ryan','Cox','750-195-8632','1992-08-05'),(518,'Ellie','Howard','846-329-5710','1986-01-16'),(519,'Caleb','Ward','136-458-9270','1997-05-01'),(520,'Stella','Torres','492-701-3856','1978-09-12'),(521,'Jeremiah','Peterson','805-619-2348','1984-06-15'),(522,'Natalie','Gray','307-948-5126','2002-01-18'),(523,'Connor','Ramirez','682-537-0194','1991-11-30'),(524,'Leah','James','924-861-3507','1983-05-23'),(525,'Landon','Watson','362-194-5087','1977-11-05'),(526,'Violet','Brooks','570-923-1468','1999-03-27'),(527,'Josiah','Kelly','951-680-3754','1975-12-20'),(528,'Lucy','Sanders','719-536-0428','1989-07-11'),(529,'Jonathan','Price','804-293-1567','1996-02-25'),(530,'Skylar','Bennett','237-508-9164','1981-09-08'),(531,'Christian','Wood','876-614-3290','1973-04-12'),(532,'Peyton','Barnes','719-588-0428','1994-11-15'),(533,'Isaac','Ross','805-619-9848','1980-06-28'),(534,'Kennedy','Henderson','846-905-5710','1972-02-01'),(535,'Evan','Coleman','766-458-9270','1992-07-08');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `doctor_id` int NOT NULL,
  `doctor_first_name` varchar(45) NOT NULL,
  `doctor_last_name` varchar(45) NOT NULL,
  `doctor_street_address` varchar(45) NOT NULL,
  `doctor_city` varchar(45) NOT NULL,
  `doctor_state` varchar(45) NOT NULL,
  `doctor_zipcode` varchar(45) NOT NULL,
  `doctor_phone` varchar(20) NOT NULL,
  `doctor_specialty` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'David','Lee','123 Maple Street','Eldora','Maryland','20712','(123) 456-7890','Cardiology'),(2,'Addison','Hernandez','456 Oak Avenue','Maridia','Maryland','20734','(987) 654-3210','Cardiology'),(3,'Andrew','Brown','789 Pine Road','Astoria','Maryland','20751','(234) 567-8901','Cardiology'),(4,'Emma','Johnson','321 Cedar Lane','Solara','Maryland','20763','(678) 901-2345','Cardiology'),(5,'Victoria','Thomas','654 Elm Court','Creston','Maryland','20778','(012) 345-6789','Dermatology'),(6,'Benjamin','Lee','987 Birch Avenue','Veridian','Maryland','20785','(876) 543-2109','Dermatology'),(7,'Sofia','Rodriguez','234 Walnut Street','Oakwood','Maryland','20792','(456) 789-0123','Dermatology'),(8,'Ethan','Patel','567 Spruce Lane','Serenview','Maryland','20707','(890) 123-4567','Orthopedics'),(9,'Noah','Wilson','890 Ash Road','Lexington','Maryland','20724','(210) 987-6543','Orthopedics'),(10,'Audrey','Taylor','432 Willow Court','Marigold','Maryland','20747','(543) 210-9876','Orthopedics'),(11,'Caleb','Anderson','765 Poplar Avenue','Eldenfield','Maryland','20756','(765) 432-1098','Orthopedics'),(12,'Avery','Johnson','098 Juniper Lane','Willowbrook','Maryland','20769','(321) 098-7654','Neurology'),(13,'Jack','Davis','543 Sycamore Street','Aurora','Maryland','20781','(654) 321-0987','Neurology'),(14,'Zoey','Martinez','876 Chestnut Road','Silverstone','Maryland','20796','(987) 654-3210','Neurology'),(15,'Brandon','Garcia','210 Fir Court','Crestview','Maryland','20703','(234) 567-8901','Neurology');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugs`
--

DROP TABLE IF EXISTS `drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugs` (
  `drug_id` mediumint NOT NULL,
  `company_id` int NOT NULL,
  `drug_name` varchar(45) NOT NULL,
  `drug_type` varchar(45) NOT NULL,
  `drug_dose` varchar(45) NOT NULL,
  `drug_price` float NOT NULL,
  PRIMARY KEY (`drug_id`),
  KEY `fk_Drugs_Companies1_idx` (`company_id`),
  CONSTRAINT `fk_Drugs_Companies1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs`
--

LOCK TABLES `drugs` WRITE;
/*!40000 ALTER TABLE `drugs` DISABLE KEYS */;
INSERT INTO `drugs` VALUES (1296,3704,'Oseltamivir','Antihyperlipidemics','20ml',32.5),(1385,1062,'Travoprost','Estrogens','650mg',37.2),(1394,9160,'Insulin Lispro','Anticonvulsants','10ml',48.45),(1438,5849,'Spironolactone','Gastrointestinal agents','250 mg',49.5),(1472,7384,'Liraglutide','Anticonvulsants','10ml',49.6),(1536,9265,'Paroxetine','Antiviral drugs','10ml',40.9),(1539,8431,'Lorazepam','Antivirals','300 mg',31.4),(1587,9265,'Dexlansoprazole','Anticonvulsants','10ml',42.1),(1607,2425,'Ibuprofen','Anticonvulsants','50mg',31.25),(1659,3704,'Acyclovir','Antidiabetics','20ml',45.2),(1675,6072,'Rosuvastatin','Narcotics','300 mg',31.8),(1753,8110,'Benazepril','Hormonal contraceptives','50 mg',36.2),(1759,1057,'Fentanyl','Hypnotics','20ml',40.9),(1764,4597,'Warfarin','Hypnotics','20ml',48.8),(1835,4597,'Meclizine','Immunosuppressants','20ml',36.1),(1836,3704,'Nitrofurantoin','Immunosuppressants','20ml',36.6),(1863,6072,'Roflumilast','Antidepressant-antipsychotics','300 mg',49.6),(1975,9483,'Fexofenadine','Antifungals','650mg',31.5),(1978,3721,'Baclofen','Antidepressant-antipsychotics','100mg',49.5),(2167,9483,'Mometasone','Estrogens','650mg',33.45),(2176,7264,'Buspirone','Immunosuppressants','50 mg',31.4),(2184,8431,'Furosemide','Antiviral drugs','300 mg',37.95),(2187,3721,'Clobetasol','Hypnotics','100mg',32.3),(2194,1057,'Citalopram','Antihyperlipidemics','20ml',49.9),(2197,8110,'Lisinopril','Antivirals','50 mg',33.7),(2317,8110,'Dexmethylphenidate','Estrogens','50 mg',42.1),(2385,8431,'Gemfibrozil','Narcotics','300 mg',48.45),(2497,6072,'Thyroid','Corticosteroids','300 mg',34.4),(2516,3659,'Risedronate','Hypnotics','100mg',43.35),(2593,3146,'Latanoprost','Antipyretics','50mg',39.95),(2741,4829,'Varenicline','Gastrointestinal agents','400 mg',35.5),(2793,2417,'Mirtazepine','Antivirals','300 mg',36.1),(2867,3159,'Temazepam','Antidiabetics','250 mg',47.8),(2891,8110,'Enalapril','Hormonal contraceptives','50 mg',49.6),(2895,7384,'Cyclobenzaprine','Anticonvulsants','10ml',42.3),(2943,9483,'Hydrochlorothiazide','Antipyretics','650mg',34.75),(2957,2417,'Tamsulosin','Antidepressant-antipsychotics','300 mg',42.1),(2973,4829,'Febuxostat','Antidiabetics','400 mg',33.7),(2985,8431,'Triamcinolone','Antidepressants','300 mg',45.2),(3125,3659,'Irbesartan','Gastrointestinal agents','100mg',47.65),(3157,5981,'Budesonide','Antidepressants','650mg',33.45),(3196,7264,'Penicillin','Antipyretics','50 mg',36.1),(3271,7743,'Clopidogrel','Anticoagulants','50mg',35.65),(3274,5867,'Nabumetone','Hormonal contraceptives','50 mg',34.4),(3276,6072,'Phenytoin','Bronchodilators','300 mg',40.9),(3285,3146,'Oxycodone/APAP','Antifungals','50mg',39.75),(3524,1998,'Celecoxib','Muscle relaxants','100mg',39.75),(3645,2417,'Ropinirole','Antiviral drugs','300 mg',39.95),(3674,4597,'Amitriptyline','Anticoagulants','20ml',31.95),(3679,5981,'Memantine','Antidepressant-antipsychotics','650mg',47.9),(3719,5867,'Sildenafil','Hormonal contraceptives','50 mg',36.6),(3721,6072,'Aripiprazole','Antipyretics','300 mg',46.35),(3816,9160,'Trazodone','Nonsteroidal anti-inflammatory drugs (NSAIDs)','10ml',46.55),(3817,1057,'Ranitidine','Antidiabetics','20ml',49.6),(3845,8593,'Terazosin','Corticosteroids','400 mg',47.65),(3846,3704,'Lomitapide','Antidiabetics','20ml',34.4),(3864,1998,'Topiramate','Antipyretics','100mg',49.15),(3892,8110,'Hydralazine','Antipyretics','50 mg',39.95),(3928,3146,'Methadone','Antithrombotics','50mg',36.1),(3942,8110,'Olanzapine','Antipyretics','50 mg',40.9),(3948,6072,'Fluconazole','Antidepressants','300 mg',36.6),(3956,9265,'Hydrocodone/APAP','Antivirals','10ml',45.8),(4128,4827,'Diazepam','Gastrointestinal agents','250 mg',41.55),(4172,1998,'Azithromycin','Gastrointestinal agents','100mg',32.95),(4268,9265,'Olopatadine','Nonsteroidal anti-inflammatory drugs (NSAIDs)','10ml',45.7),(4297,5981,'Venlafaxine','Antidiabetics','650mg',37.2),(4329,7264,'Tramadol','Estrogens','50 mg',43.25),(4371,3146,'Alendronate','Antifungals','50mg',45.7),(4385,3704,'Carvedilol','Antiviral drugs','20ml',49.25),(4521,2436,'Atomoxetine','Antivirals','650mg',37.95),(4579,3659,'Cefuroxime','Muscle relaxants','100mg',31.7),(4582,4597,'Ketoconazole','Antiviral drugs','20ml',34.1),(4591,3721,'Clonazepam','Antivirals','100mg',47.45),(4628,2436,'Nortriptyline','Nonsteroidal anti-inflammatory drugs (NSAIDs)','650mg',31.85),(4721,2425,'Clindamycin','Anticoagulants','50mg',41.9),(4732,7152,'Methotrexate','Beta blockers','400 mg',39.75),(4759,2417,'Niacin','Bronchodilators','300 mg',45.7),(4961,8593,'Amlodipine','Anticoagulants','400 mg',32.5),(4968,9160,'Estrogen','Nonsteroidal anti-inflammatory drugs (NSAIDs)','10ml',34.1),(4985,4829,'Pravastatin','Antihistamines','400 mg',47.8),(5048,2436,'Montelukast','Corticosteroids','650mg',47.2),(5126,7743,'Verapamil','Antipyretics','50mg',42.1),(5173,7743,'Diltiazem','Antidepressants','50mg',31.25),(5198,4597,'Prednisone','Antivirals','20ml',39.95),(5218,3704,'Metformin','Immunosuppressants','20ml',36.3),(5297,7152,'Tizanidine','Antivirals','400 mg',43.15),(5319,1998,'Methylprednisolone','Narcotics','100mg',33.9),(5346,2425,'Oxybutynin','Anticoagulants','50mg',32.5),(5361,4829,'Cephalexin','Beta blockers','400 mg',38.75),(5364,5867,'Diclofenac','Antipyretics','50 mg',31.25),(5369,6398,'Divalproex','Corticosteroids','650mg',35.5),(5394,6398,'Lovastatin','Antipyretics','650mg',37.95),(5432,5867,'Valacyclovir','Antivirals','50 mg',32.5),(5437,6968,'Quetiapine','Antivirals','650mg',45.2),(5479,6398,'Tolterodine','Immunosuppressants','650mg',31.85),(5482,1062,'Sitagliptin','Hypnotics','650mg',43.75),(5491,7264,'Metoclopramide','Antidepressant-antipsychotics','50 mg',34.1),(5493,7384,'Phentermine','Antipyretics','10ml',34.4),(5623,3146,'Sumatriptan','Antifungals','50mg',34.1),(5643,9265,'Benztropine','Nonsteroidal anti-inflammatory drugs (NSAIDs)','10ml',31.95),(5647,6968,'Minocycline','Antidepressant-antipsychotics','650mg',43.75),(5746,8431,'Doxazosin','Antipyretics','300 mg',41.9),(5793,4827,'Omeprazole','Antidepressants','250 mg',31.1),(5794,5849,'Risperidone','Antidepressants','250 mg',32.3),(5798,5867,'Codeine / APAP','Antipyretics','50 mg',45.2),(5864,6398,'Esomeprazole','Antimalarials','650mg',41.15),(5893,1998,'Nebivolol','Anticonvulsants','100mg',47.8),(5897,8431,'Atenolol','Antihistamines','300 mg',34.1),(5974,4827,'Guiafenesin','Bronchodilators','250 mg',37.2),(6239,7743,'Fluoxetine','Anticoagulants','50mg',34.4),(6327,4829,'Dicyclomine','Anticoagulants','400 mg',31.85),(6341,6968,'Lisdexamfetamine','Antihyperlipidemics','650mg',32.3),(6354,7384,'Escitalopram','Vasodilators','10ml',44.9),(6418,7152,'Pregabalin','Corticosteroids','400 mg',31.7),(6435,4827,'Rivastigmine','Vasodilators','250 mg',33.45),(6457,3159,'Levofloxacin','Vasodilators','250 mg',49.15),(6519,6968,'Pantoprazole','Nonsteroidal anti-inflammatory drugs (NSAIDs)','650mg',35.5),(6523,3146,'Vitamin D','Anticonvulsants','50mg',31.95),(6547,3159,'Potassium','Bronchodilators','250 mg',35.7),(6548,3721,'Amoxicillin','Antipyretics','100mg',42.6),(6589,6398,'Mupirocin','Hypnotics','650mg',32.3),(6734,2425,'Amphetamine /','Antidepressants','50mg',36.6),(6735,6398,'Enoxaparin','Antidepressant-antipsychotics','650mg',33.7),(6813,3159,'Bupropion','Hypnotics','250 mg',43.15),(6821,2425,'Dabigatran','Antacids','50mg',45.2),(6831,1062,'Olmesartan','Corticosteroids','650mg',48.5),(6854,3659,'Clarithromycin','Narcotics','100mg',37.2),(6918,5981,'Colchicine','Corticosteroids','650mg',31.7),(6924,7264,'Methocarbamol','Antipyretics','50 mg',48.45),(6928,6398,'Meloxicam','Vasodilators','650mg',31.4),(6941,5849,'Fluticasone','Antidiabetics','250 mg',40.9),(6948,3159,'Pramipexole','Vasodilators','250 mg',31.85),(6951,9265,'Vardenafil','Antipyretics','10ml',39.95),(6998,8431,'Dolo 650','Antivirals','300 mg',32.5),(7124,1057,'Pioglitazone','Immunosuppressants','20ml',31.25),(7128,9483,'Eszopiclone','Antimalarials','650mg',39.75),(7146,7384,'Etanercept','Antiviral drugs','10ml',31.25),(7149,8593,'Metronidazole','Antihistamines','400 mg',43.75),(7164,7152,'Nitroglycerine','Antihistamines','400 mg',49.15),(7196,1057,'Dutasteride','Antivirals','20ml',42.1),(7198,6072,'Ramipril','Corticosteroids','300 mg',31.25),(7231,3659,'Allopurinol','Antidepressant-antipsychotics','100mg',42.65),(7264,3721,'Glyburide','Antifungals','100mg',33.7),(7312,1057,'Atorvastatin','Antidiabetics','20ml',38.4),(7359,7152,'Sertraline','Antihistamines','400 mg',43.9),(7392,9160,'Oxycodone','Antipyretics','10ml',36.8),(7418,5849,'Adalimumab','Anticonvulsants','250 mg',43.75),(7523,7152,'Carisoprodol','Antimalarials','400 mg',37.4),(7642,3659,'Valsartan','Antitussives','100mg',34.4),(7649,3721,'Buprenorphine / Naloxone','Anticonvulsants','100mg',31.85),(8137,1998,'Ticagrelor','Antifungals','100mg',37.95),(8154,2436,'Gabapentin','Antidepressants','650mg',32.8),(8164,8593,'Solifenacin','Antimalarials','400 mg',42.65),(8214,9160,'Lansoprazole','Antitussives','10ml',41.9),(8273,9265,'Alprazolam','Antipyretics','10ml',31.7),(8276,8593,'Doxycycline','Antidiabetics','400 mg',32.3),(8361,2436,'Insulin Glargine','Antipyretics','650mg',47.8),(8432,2436,'Clotrimazole','Antihyperlipidemics','650mg',33.7),(8519,7743,'Lamotrigine','Antifungals','50mg',40.9),(8562,9483,'Ondansetron','Vasodilators','650mg',49.15),(8574,2425,'Insulin Aspart','Antifungals','50mg',48.45),(8597,1062,'Duloxetine','Antidepressant-antipsychotics','650mg',35.6),(8672,5867,'Methylphenidate','Immunosuppressants','50 mg',40.4),(8679,9160,'Glipizide','Vasodilators','10ml',31.4),(8713,2436,'Insulin Detemir','Bronchodilators','650mg',43.15),(8721,4827,'Ezetimibe','Anticonvulsants','250 mg',47.65),(8723,5849,'Levothyroxine','Hypnotics','250 mg',37.25),(8726,5849,'Naproxen','Vasodilators','250 mg',35.5),(8743,8110,'Benzonatate','Vasodilators','50 mg',45.7),(8765,5867,'Albuterol','Antidepressant-antipsychotics','50 mg',48.6),(8923,3159,'Metoprolol','Bronchodilators','250 mg',39.35),(8941,7743,'Bisoprolol','Antifungals','50mg',49.6),(9153,6968,'Raloxifene','Antidiabetics','650mg',42.65),(9165,2425,'Digoxin','Antithrombotics','50mg',31.6),(9183,5981,'Dextroamphetamine','Antipyretics','650mg',49.15),(9184,7384,'Rivaroxaban','Antitussives','10ml',32.5),(9187,8593,'Clonidine','Gastrointestinal agents','400 mg',49.5),(9214,6968,'Testosterone','Muscle relaxants','650mg',49.5),(9236,4829,'Famotidine','Antivirals','400 mg',37.95),(9253,7384,'Cetirizine','Antivirals','10ml',36.6),(9263,1998,'Quinapril','Antivirals','100mg',43.15),(9265,1057,'Propranolol','Anticoagulants','20ml',45.7),(9267,2417,'Phenazopyridine','Antihistamines','300 mg',31.95),(9273,4597,'Lurasidone','Antiviral drugs','20ml',31.4),(9278,4827,'Desvenlafaxine','Bronchodilators','250 mg',31.7),(9357,3159,'Rabeprazole','Antihyperlipidemics','250 mg',37.95),(9371,3704,'Ciprofloxacin','Antiviral drugs','20ml',41.9),(9382,7152,'Cefdinir','Antifungals','400 mg',33.45),(9427,9483,'Nifedipine','Antipyretics','650mg',43.15),(9437,7743,'Tiotropium','Antacids','50mg',44.6),(9438,5981,'Zolpidem','Muscle relaxants','650mg',49.4),(9485,4829,'Simvastatin','Antifungals','400 mg',46.9),(9486,3721,'Moxifloxacin','Antitussives','100mg',35.5),(9621,9483,'Saxagliptin','Immunosuppressants','650mg',47.8),(9685,1062,'Losartan','Antipyretics','650mg',42.65),(9712,2417,'Promethazine','Corticosteroids','300 mg',33.45),(9721,5849,'Triamterene/HCTZ','Antihyperlipidemics','250 mg',33.7),(9754,5981,'Tadalifil','Bronchodilators','650mg',39.75),(9763,7264,'Folic Acid','Vasodilators','50 mg',31.95),(9764,1062,'Finasteride','Antifungals','650mg',47.65);
/*!40000 ALTER TABLE `drugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_Id` mediumint NOT NULL,
  `employee_first_name` varchar(30) NOT NULL,
  `employee_last_name` varchar(30) NOT NULL,
  `employee_phone` varchar(20) NOT NULL,
  `employee_street_address` varchar(45) NOT NULL,
  `employee_city` varchar(30) NOT NULL,
  `employee_state` varchar(30) NOT NULL,
  `employee_zip_code` varchar(10) NOT NULL,
  `employee_type` varchar(15) NOT NULL,
  PRIMARY KEY (`employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Olivia','Smith','(555) 123-4567','123 Main Street','Willowville','Maryland','20712','Full Time'),(2,'Liam','Johnson','(987) 654-3210','456 Elm Avenue','Cedarwood','Maryland','20745','Full Time'),(3,'Sophia','Williams','(123) 456-7890','789 Oak Lane','Cedarwood','Maryland','20745','Full Time'),(4,'Noah','Jones','(789) 012-3456','321 Maple Road','Cedarwood','Maryland','20745','Full Time'),(5,'Ava','Brown','(456) 789-0123','987 Pine Street','Maplewood','Maryland','20770','Full Time'),(6,'Jackson','Davis','(321) 654-0987','654 Cedar Avenue','Pineville','Maryland','20774','Full Time'),(7,'Isabella','Miller','(876) 543-2109','890 Walnut Lane','Pineville','Maryland','20774','Full Time'),(8,'Lucas','Wilson','(234) 567-8901','234 Birch Road','Cherryville','Maryland','20782','Full Time'),(9,'Mia','Taylor','(901) 234-5678','567 Willow Street','Cherryville','Maryland','20782','Part Time'),(10,'Aiden','Anderson','(678) 901-2345','901 Spruce Avenue','Cherryville','Maryland','20782','Part Time'),(11,'Amelia','Thomas','(345) 678-9012','345 Cherry Lane','Ashford','Maryland','20736','Part Time'),(12,'Ethan','Jackson','(789) 456-1230','678 Poplar Road','Ashford','Maryland','20736','Part Time'),(13,'Harper','White','(512) 345-6789','012 Ash Street','Ashford','Maryland','20736','Part Time'),(14,'Oliver','Harris','(567) 890-1234','567 Sycamore Avenue','Sprucefield','Maryland','20706','Part Time'),(15,'Charlotte','Martin','(901) 234-5678','890 Chestnut Lane','Sprucefield','Maryland','20706','Part Time');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurances`
--

DROP TABLE IF EXISTS `insurances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurances` (
  `insurance_id` mediumint NOT NULL,
  `customer_id` mediumint NOT NULL,
  `insurance_company_name` varchar(45) DEFAULT NULL,
  `insurance_start_date` date DEFAULT NULL,
  `insurance_end_date` date DEFAULT NULL,
  `policy_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`insurance_id`),
  UNIQUE KEY `insurance_id_UNIQUE` (`insurance_id`),
  KEY `fk_Insurances_customers1_idx` (`customer_id`),
  CONSTRAINT `fk_Insurances_customers1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurances`
--

LOCK TABLES `insurances` WRITE;
/*!40000 ALTER TABLE `insurances` DISABLE KEYS */;
INSERT INTO `insurances` VALUES (664,515,'Sentinel Assurance','2019-03-10','2024-01-09','1002387'),(665,490,'ShieldGuard Insurance','2019-06-02','2024-02-17','5621390'),(666,472,'PrimeCoverage','2019-09-17','2024-03-22','7825064'),(667,480,'LibertySecure','2019-12-05','2024-04-07','4092751'),(668,493,'ShieldGuard Insurance','2020-02-22','2024-05-15','6238406'),(669,464,'LibertySecure','2020-05-09','2024-06-23','9184523'),(670,523,'Sentinel Assurance','2020-08-31','2024-07-11','3576129'),(671,511,'PrimeCoverage','2020-11-18','2024-08-28','6748932'),(672,468,'Sentinel Assurance','2021-01-03','2024-09-14','8270465'),(673,474,'Prosperity Insurance Group','2021-04-21','2024-10-02','1509247'),(674,516,'ShieldGuard Insurance','2021-07-12','2024-11-20','4381750'),(675,503,'LibertySecure','2021-10-06','2024-12-08','7810593'),(676,487,'Sentinel Assurance','2021-12-27','2022-01-21','5692384'),(677,484,'Prosperity Insurance Group','2022-03-18','2025-02-13','3069581'),(678,520,'ShieldGuard Insurance','2022-06-08','2025-03-28','7156049'),(679,501,'LibertySecure','2022-09-23','2022-04-16','4932810'),(680,517,'Sentinel Assurance','2022-12-10','2025-05-25','6289374'),(681,497,'Prosperity Insurance Group','2023-02-27','2025-06-03','8412756'),(682,518,'Integrity Insurance Co.','2023-05-15','2025-07-17','3568092'),(683,474,'Sentinel Assurance','2023-08-04','2025-08-09','9103465'),(684,457,'Prosperity Insurance Group','2019-10-22','2025-09-22','2728460'),(685,469,'ShieldGuard Insurance','2020-01-09','2025-10-12','6309254'),(686,514,'Sentinel Assurance','2014-04-02','2025-11-29','8047132'),(687,524,'Integrity Insurance Co.','2014-07-17','2025-12-17','5129763'),(688,522,'Prosperity Insurance Group','2020-10-11','2026-01-30','7390156'),(689,500,'PrimeCoverage','2021-12-29','2026-02-22','4930672'),(690,472,'Sentinel Assurance','2020-03-23','2026-03-10','6719843'),(691,529,'Prosperity Insurance Group','2018-06-13','2026-04-28','2385197'),(692,525,'ShieldGuard Insurance','2019-09-28','2026-05-14','7850236'),(693,526,'Integrity Insurance Co.','2021-12-15','2026-06-26','6487102'),(694,508,'Prosperity Insurance Group','2021-02-02','2026-07-20','9271563'),(695,502,'Sentinel Assurance','2020-04-20','2022-08-05','3150728'),(696,492,'Prosperity Insurance Group','2016-07-11','2026-09-13','6824190'),(697,508,'Prosperity Insurance Group','2021-10-05','2022-10-01','4608132'),(698,507,'Sentinel Assurance','2020-12-24','2026-11-18','8296104'),(699,515,'Integrity Insurance Co.','2017-03-15','2026-12-06','5473961'),(700,488,'Prosperity Insurance Group','2017-06-05','2022-01-19','7612309'),(701,496,'ShieldGuard Insurance','2017-09-20','2027-02-09','4025186'),(702,484,'PrimeCoverage','2017-12-07','2022-03-27','6159248'),(703,483,'Sentinel Assurance','2018-02-24','2027-04-15','9023471'),(704,503,'LibertySecure','2018-05-12','2022-05-24','3589426'),(705,519,'PrimeCoverage','2018-08-02','2027-06-01','7264103'),(706,474,'ShieldGuard Insurance','2018-10-20','2022-07-15','4937812'),(707,465,'Integrity Insurance Co.','2019-01-06','2022-08-07','6281509'),(708,518,'LibertySecure','2019-04-01','2027-09-20','8473690'),(709,462,'Sentinel Assurance','2019-07-16','2027-10-10','3125684'),(710,511,'Integrity Insurance Co.','2019-10-10','2027-11-27','6710935'),(711,489,'ShieldGuard Insurance','2021-12-28','2027-12-15','5297148'),(712,511,'LibertySecure','2020-03-22','2028-01-28','7940216'),(713,461,'Sentinel Assurance','2019-06-12','2028-02-20','6158924');
/*!40000 ALTER TABLE `insurances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventories` (
  `inventory_id` mediumint NOT NULL,
  `drug_id` mediumint NOT NULL,
  `inventory_quantity` int NOT NULL,
  `expiry_date` date NOT NULL,
  `cost_price_per_unit` float NOT NULL,
  PRIMARY KEY (`inventory_id`),
  KEY `fk_Inventories_Drugs_idx` (`drug_id`),
  CONSTRAINT `fk_Inventories_Drugs` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`drug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
INSERT INTO `inventories` VALUES (1,8723,50,'2023-10-15',13.25),(2,3956,52,'2024-07-28',18.5),(3,6548,61,'2023-12-05',26.8),(4,2197,57,'2024-03-19',11.7),(5,5864,97,'2023-09-22',29.15),(6,7312,83,'2024-06-07',14.4),(7,9485,60,'2024-01-10',19.9),(8,3271,75,'2023-11-30',12.65),(9,5048,80,'2024-02-14',21.2),(10,1675,61,'2023-10-01',15.8),(11,8923,65,'2024-05-12',17.35),(12,6354,88,'2023-12-20',28.9),(13,4172,64,'2024-03-04',10.95),(14,8765,97,'2023-09-10',25.6),(15,2943,75,'2024-06-21',16.75),(16,5218,52,'2024-01-25',20.3),(17,7359,92,'2023-11-14',13.9),(18,1607,78,'2024-02-28',27.45),(19,9438,96,'2023-10-07',11.25),(20,2184,88,'2024-05-17',24.7),(21,5793,76,'2023-12-28',15.45),(22,3816,87,'2024-03-11',18.1),(23,7642,75,'2023-09-15',22.55),(24,4329,79,'2024-06-28',12.4),(25,8597,73,'2024-01-31',29.8),(26,1764,97,'2023-11-20',10.6),(27,4961,80,'2024-03-01',23.25),(28,3285,89,'2023-10-11',14.9),(29,5437,87,'2024-05-23',19.35),(30,9712,99,'2023-12-31',26.7),(31,6941,63,'2024-03-16',11.5),(32,8273,59,'2023-09-20',28.05),(33,4591,54,'2024-06-04',16.2),(34,1753,95,'2024-01-07',21.65),(35,6928,56,'2023-11-26',13.3),(36,2194,76,'2024-02-10',27.75),(37,5361,85,'2023-10-05',10.15),(38,9437,96,'2024-05-15',25.4),(39,8154,75,'2023-12-24',17.55),(40,3721,80,'2024-03-07',20.1),(41,6547,92,'2023-09-12',14.7),(42,2895,62,'2024-06-25',29.05),(43,5319,87,'2024-01-28',12.8),(44,8672,84,'2023-11-17',23.45),(45,1975,77,'2024-03-03',15.1),(46,4385,86,'2023-09-27',18.65),(47,7523,72,'2024-06-10',22),(48,9165,84,'2024-01-13',13.75),(49,3679,83,'2023-11-03',29.2),(50,5897,86,'2024-02-17',10.35),(51,4128,57,'2023-10-03',24.9),(52,7392,85,'2024-05-19',16.05),(53,2516,56,'2023-12-21',19.6),(54,9763,61,'2024-03-05',27.95),(55,6831,77,'2023-09-13',11.8),(56,5198,62,'2024-06-26',28.35),(57,8276,54,'2024-01-29',17),(58,4371,89,'2023-11-18',21.45),(59,6519,77,'2024-03-02',14.1),(60,2957,58,'2023-09-28',26.55),(61,9721,65,'2024-06-11',10.8),(62,1536,66,'2024-01-14',23.15),(63,7649,59,'2023-11-04',15.8),(64,2891,63,'2024-02-18',18.35),(65,5394,55,'2023-10-04',21.8),(66,7124,97,'2024-05-20',12.05),(67,4985,72,'2023-12-22',29.45),(68,6239,87,'2024-03-06',11.2),(69,8713,85,'2023-09-14',24.65),(70,3948,60,'2024-06-27',16.3),(71,6457,71,'2024-01-30',19.85),(72,9184,80,'2023-11-19',27.2),(73,3524,78,'2024-03-03',10.45),(74,5798,76,'2023-09-29',28.9),(75,2167,74,'2024-06-12',17.55),(76,9371,58,'2024-01-15',22),(77,6418,62,'2023-11-05',14.65),(78,8574,66,'2024-02-19',29),(79,4297,87,'2023-10-06',12.75),(80,1539,65,'2024-05-21',23.4),(81,8721,76,'2023-12-23',15.95),(82,4968,80,'2024-03-07',18.5),(83,7231,67,'2023-09-16',20.95),(84,3196,62,'2024-06-28',13.2),(85,5482,80,'2024-01-31',28.65),(86,3674,88,'2023-11-20',11.9),(87,9187,78,'2024-03-02',24.35),(88,2593,98,'2023-09-25',16.5),(89,6341,56,'2022-06-10',19.05),(90,4759,71,'2022-01-12',26.4),(91,8726,68,'2023-10-30',10.7),(92,1587,67,'2022-02-26',27.15),(93,7264,90,'2023-12-29',17.8),(94,3942,99,'2022-03-14',22.25),(95,5479,51,'2023-09-18',14.8),(96,3817,76,'2022-06-30',29.25),(97,9236,85,'2022-02-02',12),(98,5173,59,'2023-11-22',23.65),(99,8361,83,'2022-03-04',15.3),(100,2497,70,'2023-09-28',18.85),(101,6813,71,'2022-06-11',21.3),(102,9253,88,'2022-01-14',13.45),(103,3864,65,'2023-10-01',28.8),(104,5432,89,'2022-02-03',11.05),(105,7128,54,'2023-12-05',24.5),(106,1659,95,'2022-03-19',16.65),(107,9382,61,'2023-09-22',20.8),(108,4721,98,'2022-06-07',13.1),(109,6918,68,'2022-01-10',27.55),(110,2385,67,'2023-11-30',10.25),(111,5974,95,'2022-02-14',25.7),(112,8679,85,'2023-10-19',17.85),(113,3125,74,'2022-05-01',22.3),(114,5491,61,'2023-12-10',15.95),(115,9685,89,'2022-03-24',29.35),(116,1835,57,'2023-09-26',11.6),(117,7149,80,'2024-06-08',23.85),(118,6523,94,'2024-01-11',16),(119,9214,70,'2023-10-31',19.55),(120,3645,83,'2024-02-27',26.9),(121,5794,88,'2023-12-30',10.95),(122,4268,52,'2024-03-15',28.4),(123,9486,91,'2023-09-17',18.05),(124,2317,91,'2024-06-29',21.5),(125,6735,90,'2024-02-01',14.15),(126,1759,76,'2023-11-21',29.6),(127,6327,59,'2024-03-03',12.35),(128,8941,78,'2023-09-24',23.9),(129,4521,91,'2024-06-09',15.55),(130,7198,91,'2024-01-13',18.1),(131,2867,98,'2023-10-29',21.55),(132,5493,96,'2024-02-25',13.8),(133,9263,60,'2023-12-28',29.2),(134,3719,62,'2024-03-13',11.45),(135,8562,71,'2023-09-19',24.8),(136,1296,96,'2024-06-01',16.95),(137,4732,83,'2024-01-04',19.5),(138,6821,70,'2023-11-15',26.85),(139,3157,66,'2024-02-29',10.75),(140,5746,67,'2023-12-26',27.3),(141,9278,68,'2024-03-11',17.95),(142,1394,77,'2023-09-21',22.4),(143,6854,79,'2024-06-06',14.05),(144,2176,55,'2024-01-09',29.4),(145,9764,89,'2023-10-02',12.15),(146,4582,82,'2024-02-05',24.6),(147,8164,70,'2023-12-08',15.75),(148,3928,60,'2024-03-22',18.3),(149,5647,94,'2023-09-23',20.75),(150,9267,72,'2024-06-03',13.4),(151,1438,80,'2025-01-05',28.85),(152,6951,77,'2025-02-10',11),(153,2187,98,'2025-03-17',25.45),(154,8743,62,'2025-04-22',17.6),(155,5369,82,'2025-05-27',21.05),(156,7196,77,'2025-06-30',26.4),(157,2973,85,'2025-08-05',10.55),(158,8519,94,'2025-09-10',27),(159,4628,71,'2025-10-15',18.65),(160,1863,89,'2025-11-20',23.1),(161,9357,63,'2025-12-25',14.75),(162,7146,72,'2025-01-30',29.15),(163,5893,67,'2025-03-07',12.9),(164,3274,55,'2025-04-11',24.25),(165,9427,57,'2025-05-16',16.4),(166,1836,68,'2025-06-21',19.95),(167,7164,95,'2025-07-26',21.8),(168,5346,54,'2025-08-31',13.65),(169,9754,89,'2025-10-05',28.1),(170,2985,77,'2025-11-10',11.85),(171,6435,88,'2025-12-15',25.2),(172,8214,85,'2025-01-20',17.35),(173,4579,98,'2025-02-25',22.8),(174,6924,64,'2025-04-01',27.25),(175,1385,95,'2025-05-06',10.4),(176,9273,54,'2025-06-11',29.55),(177,3845,60,'2025-07-16',19.25),(178,5623,71,'2025-08-21',23.7),(179,9153,88,'2025-09-26',14.35),(180,2793,68,'2025-10-31',28.6),(181,7418,67,'2025-12-06',12.55),(182,5643,57,'2025-01-11',25.9),(183,1978,80,'2025-02-16',16.55),(184,3892,88,'2025-03-23',20.1),(185,6589,62,'2025-04-28',21.95),(186,9265,65,'2025-06-03',13.1),(187,2741,92,'2025-07-08',29.35),(188,5126,82,'2025-08-13',11.3),(189,8432,80,'2025-09-18',24.75),(190,3276,78,'2025-10-23',18.2),(191,6948,75,'2025-11-28',22.65),(192,1472,81,'2025-12-31',27.1),(193,8137,66,'2025-02-03',10.65),(194,5364,87,'2025-03-10',28.3),(195,9621,92,'2025-04-15',17.45),(196,3846,98,'2025-05-20',21.9),(197,5297,90,'2025-06-25',14.55),(198,6734,68,'2025-07-30',29.5),(199,9183,75,'2025-09-04',12.2),(200,6998,81,'2025-10-09',24.65);
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medications`
--

DROP TABLE IF EXISTS `medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medications` (
  `medication_id` int NOT NULL,
  `prescription_id` mediumint NOT NULL,
  `medication_name` varchar(45) NOT NULL,
  PRIMARY KEY (`medication_id`,`prescription_id`),
  KEY `fk_medication_Prescriptions1_idx` (`prescription_id`),
  CONSTRAINT `fk_medication_Prescriptions1` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`prescription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medications`
--

LOCK TABLES `medications` WRITE;
/*!40000 ALTER TABLE `medications` DISABLE KEYS */;
/*!40000 ALTER TABLE `medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `prescription_id` mediumint NOT NULL,
  `customer_id` mediumint NOT NULL,
  `doctor_id` int NOT NULL,
  `prescribing_date` date NOT NULL,
  PRIMARY KEY (`prescription_id`),
  KEY `fk_Prescriptions_customers1_idx` (`customer_id`),
  KEY `fk_Prescriptions_Doctors1_idx` (`doctor_id`),
  CONSTRAINT `fk_Prescriptions_customers1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `fk_Prescriptions_Doctors1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` VALUES (133,495,1,'2023-04-01'),(134,527,1,'2023-04-01'),(135,504,1,'2023-04-02'),(136,513,5,'2023-04-02'),(137,511,5,'2023-04-03'),(138,491,5,'2023-04-03'),(139,524,8,'2023-04-04'),(140,521,7,'2023-04-04'),(141,503,7,'2023-04-05'),(142,494,7,'2023-04-05'),(143,502,9,'2023-04-06'),(144,525,9,'2023-04-06'),(145,512,9,'2023-04-07'),(146,532,13,'2023-04-07'),(147,488,13,'2023-04-08'),(148,523,13,'2023-04-08'),(149,529,14,'2023-04-09'),(150,517,14,'2023-04-09'),(151,530,14,'2023-04-10'),(152,507,14,'2023-04-10'),(153,496,14,'2023-04-11'),(154,516,14,'2023-04-11'),(155,533,14,'2023-04-12'),(156,499,15,'2023-04-12'),(157,485,15,'2023-04-13'),(158,505,15,'2023-04-13'),(159,526,15,'2023-04-14'),(160,528,15,'2023-04-14'),(161,514,15,'2023-04-15'),(162,492,12,'2023-04-15'),(163,508,12,'2023-04-16'),(164,520,12,'2023-04-16'),(165,509,12,'2023-04-17'),(166,519,12,'2023-04-17'),(167,484,12,'2023-04-18'),(168,518,12,'2023-04-18'),(169,491,2,'2023-04-19'),(170,530,2,'2023-04-19'),(171,486,2,'2023-04-20'),(172,533,2,'2023-04-20'),(173,497,2,'2023-04-21'),(174,533,3,'2023-04-22'),(175,530,3,'2023-04-23'),(176,498,3,'2023-04-24'),(177,505,3,'2023-04-25'),(178,530,6,'2023-04-26'),(179,501,6,'2023-04-27'),(180,491,6,'2023-04-28'),(181,523,6,'2023-04-29'),(182,486,6,'2023-04-30');
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `query1_remaining_stock`
--

DROP TABLE IF EXISTS `query1_remaining_stock`;
/*!50001 DROP VIEW IF EXISTS `query1_remaining_stock`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query1_remaining_stock` AS SELECT 
 1 AS `drug_id`,
 1 AS `drug_name`,
 1 AS `inventory_quantity`,
 1 AS `sale_quantity`,
 1 AS `remaining_stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query2_profitability`
--

DROP TABLE IF EXISTS `query2_profitability`;
/*!50001 DROP VIEW IF EXISTS `query2_profitability`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query2_profitability` AS SELECT 
 1 AS `drug_id`,
 1 AS `drug_name`,
 1 AS `company_name`,
 1 AS `drug_price`,
 1 AS `cost_price_per_unit`,
 1 AS `sale_quantity`,
 1 AS `final_selling_price`,
 1 AS `final_cost_price`,
 1 AS `net_profit_percentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query3_top_performing_customers`
--

DROP TABLE IF EXISTS `query3_top_performing_customers`;
/*!50001 DROP VIEW IF EXISTS `query3_top_performing_customers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query3_top_performing_customers` AS SELECT 
 1 AS `bill_ID`,
 1 AS `customer_name`,
 1 AS `bill_date`,
 1 AS `total_quantity`,
 1 AS `total_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query4_inventory_expiry`
--

DROP TABLE IF EXISTS `query4_inventory_expiry`;
/*!50001 DROP VIEW IF EXISTS `query4_inventory_expiry`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query4_inventory_expiry` AS SELECT 
 1 AS `drug_name`,
 1 AS `expiry_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query5_best_performing_employees`
--

DROP TABLE IF EXISTS `query5_best_performing_employees`;
/*!50001 DROP VIEW IF EXISTS `query5_best_performing_employees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query5_best_performing_employees` AS SELECT 
 1 AS `employee_id`,
 1 AS `employee_name`,
 1 AS `bills_generated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query6_doctor_consultacy`
--

DROP TABLE IF EXISTS `query6_doctor_consultacy`;
/*!50001 DROP VIEW IF EXISTS `query6_doctor_consultacy`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query6_doctor_consultacy` AS SELECT 
 1 AS `doctor_id`,
 1 AS `doctor_name`,
 1 AS `customer_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query7_insurance_expiry`
--

DROP TABLE IF EXISTS `query7_insurance_expiry`;
/*!50001 DROP VIEW IF EXISTS `query7_insurance_expiry`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query7_insurance_expiry` AS SELECT 
 1 AS `customer_name`,
 1 AS `date_visited`,
 1 AS `insurance_end_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `drug_id` mediumint NOT NULL,
  `bill_id` mediumint NOT NULL,
  `sale_quantity` varchar(45) NOT NULL,
  PRIMARY KEY (`drug_id`,`bill_id`),
  KEY `fk_Sales_Drugs1_idx` (`drug_id`),
  KEY `fk_Sales_Bills1_idx` (`bill_id`),
  CONSTRAINT `fk_Sales_Bills1` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`bill_id`),
  CONSTRAINT `fk_Sales_Drugs1` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`drug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1536,26,'8'),(1536,27,'3'),(1539,37,'7'),(1587,42,'1'),(1675,4,'4'),(1753,12,'1'),(1764,9,'6'),(1764,10,'2'),(1975,19,'9'),(2167,34,'2'),(2184,7,'4'),(2194,13,'2'),(2497,48,'7'),(2516,24,'10'),(2593,40,'10'),(2891,27,'10'),(2895,17,'10'),(2943,6,'10'),(2957,26,'6'),(3196,38,'6'),(3271,3,'9'),(3285,10,'8'),(3524,33,'45'),(3524,34,'6'),(3674,39,'8'),(3674,40,'3'),(3679,22,'6'),(3721,16,'8'),(3816,8,'13'),(3817,45,'8'),(3948,32,'11'),(3956,1,'2'),(4128,23,'8'),(4172,5,'8'),(4297,36,'5'),(4329,9,'6'),(4371,25,'4'),(4385,20,'1'),(4591,12,'9'),(4759,41,'7'),(4968,38,'1'),(4985,29,'9'),(5048,4,'1'),(5173,47,'10'),(5173,48,'5'),(5198,25,'9'),(5218,6,'5'),(5319,18,'5'),(5319,19,'7'),(5361,14,'3'),(5394,28,'5'),(5432,50,'2'),(5437,10,'3'),(5479,45,'2'),(5482,39,'2'),(5793,8,'2'),(5864,2,'10'),(5897,23,'2'),(6239,30,'1'),(6341,40,'5'),(6354,4,'2'),(6418,35,'3'),(6457,32,'45'),(6519,26,'13'),(6547,17,'3'),(6548,1,'8'),(6548,2,'3'),(6813,48,'9'),(6831,24,'7'),(6928,13,'4'),(6941,11,'5'),(7124,28,'7'),(7128,50,'3'),(7231,38,'4'),(7264,43,'4'),(7264,44,'6'),(7312,3,'5'),(7359,6,'7'),(7359,7,'9'),(7392,23,'3'),(7523,21,'4'),(7642,9,'15'),(8273,12,'7'),(8276,25,'1'),(8574,35,'10'),(8597,9,'3'),(8713,31,'4'),(8721,37,'9'),(8723,1,'6'),(8726,41,'9'),(8765,6,'3'),(8923,4,'6'),(9165,22,'3'),(9184,32,'46'),(9236,46,'3'),(9253,49,'1'),(9253,50,'4'),(9371,35,'8'),(9437,14,'6'),(9437,15,'2'),(9438,7,'1'),(9485,3,'7'),(9712,11,'10'),(9721,26,'2'),(9763,24,'5');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `query1_remaining_stock`
--

/*!50001 DROP VIEW IF EXISTS `query1_remaining_stock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query1_remaining_stock` AS select `drugs`.`drug_id` AS `drug_id`,`drugs`.`drug_name` AS `drug_name`,`inventories`.`inventory_quantity` AS `inventory_quantity`,sum(`sales`.`sale_quantity`) AS `sale_quantity`,(`inventories`.`inventory_quantity` - sum(`sales`.`sale_quantity`)) AS `remaining_stock` from ((`drugs` join `inventories` on((`drugs`.`drug_id` = `inventories`.`drug_id`))) join `sales` on((`drugs`.`drug_id` = `sales`.`drug_id`))) group by `drugs`.`drug_id`,`drugs`.`drug_name`,`inventories`.`inventory_quantity` order by `remaining_stock` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query2_profitability`
--

/*!50001 DROP VIEW IF EXISTS `query2_profitability`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query2_profitability` AS with `drug_sales` as (select `d`.`drug_id` AS `drug_id`,`d`.`drug_name` AS `drug_name`,`c`.`company_name` AS `company_name`,`d`.`drug_price` AS `drug_price`,`i`.`cost_price_per_unit` AS `cost_price_per_unit`,sum(`s`.`sale_quantity`) AS `sale_quantity`,sum((`s`.`sale_quantity` * `d`.`drug_price`)) AS `final_selling_price`,sum((`s`.`sale_quantity` * `i`.`cost_price_per_unit`)) AS `final_cost_price` from (((`drugs` `d` join `sales` `s` on((`d`.`drug_id` = `s`.`drug_id`))) join `companies` `c` on((`d`.`company_id` = `c`.`company_id`))) join `inventories` `i` on((`d`.`drug_id` = `i`.`drug_id`))) group by `d`.`drug_id`,`d`.`drug_name`,`c`.`company_name`,`d`.`drug_price`,`i`.`cost_price_per_unit`) select `drug_sales`.`drug_id` AS `drug_id`,`drug_sales`.`drug_name` AS `drug_name`,`drug_sales`.`company_name` AS `company_name`,`drug_sales`.`drug_price` AS `drug_price`,`drug_sales`.`cost_price_per_unit` AS `cost_price_per_unit`,`drug_sales`.`sale_quantity` AS `sale_quantity`,round(`drug_sales`.`final_selling_price`,2) AS `final_selling_price`,round(`drug_sales`.`final_cost_price`,2) AS `final_cost_price`,round((((`drug_sales`.`final_selling_price` - `drug_sales`.`final_cost_price`) / `drug_sales`.`final_selling_price`) * 100),2) AS `net_profit_percentage` from `drug_sales` order by round((((`drug_sales`.`final_selling_price` - `drug_sales`.`final_cost_price`) / `drug_sales`.`final_selling_price`) * 100),2) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query3_top_performing_customers`
--

/*!50001 DROP VIEW IF EXISTS `query3_top_performing_customers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query3_top_performing_customers` AS select `sales`.`bill_id` AS `bill_ID`,concat(`customers`.`customer_first_name`,' ',`customers`.`customer_last_name`) AS `customer_name`,`bills`.`bill_date` AS `bill_date`,sum(`sales`.`sale_quantity`) AS `total_quantity`,round(sum((`sales`.`sale_quantity` * `drugs`.`drug_price`)),2) AS `total_price` from (((`sales` join `drugs` on((`sales`.`drug_id` = `drugs`.`drug_id`))) join `bills` on((`sales`.`bill_id` = `bills`.`bill_id`))) join `customers` on((`bills`.`customer_id` = `customers`.`customer_id`))) group by `sales`.`bill_id` order by `total_price` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query4_inventory_expiry`
--

/*!50001 DROP VIEW IF EXISTS `query4_inventory_expiry`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query4_inventory_expiry` AS select `drugs`.`drug_name` AS `drug_name`,`inventories`.`expiry_date` AS `expiry_date` from (`inventories` join `drugs` on((`inventories`.`drug_id` = `drugs`.`drug_id`))) where (`inventories`.`expiry_date` < curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query5_best_performing_employees`
--

/*!50001 DROP VIEW IF EXISTS `query5_best_performing_employees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query5_best_performing_employees` AS with `cte` as (select `e`.`employee_Id` AS `employee_id`,concat(`e`.`employee_first_name`,' ',`e`.`employee_last_name`) AS `employee_name`,count(`b`.`employee_id`) AS `bills_generated` from (`bills` `b` join `employees` `e` on((`b`.`employee_id` = `e`.`employee_Id`))) group by `b`.`employee_id`) select `cte`.`employee_id` AS `employee_id`,`cte`.`employee_name` AS `employee_name`,`cte`.`bills_generated` AS `bills_generated` from `cte` where (`cte`.`bills_generated` > (select avg(`cte`.`bills_generated`) from `cte`)) order by `cte`.`bills_generated` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query6_doctor_consultacy`
--

/*!50001 DROP VIEW IF EXISTS `query6_doctor_consultacy`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query6_doctor_consultacy` AS select `prescriptions`.`doctor_id` AS `doctor_id`,concat(`doctors`.`doctor_first_name`,' ',`doctors`.`doctor_last_name`) AS `doctor_name`,count(distinct `prescriptions`.`customer_id`) AS `customer_count` from (`prescriptions` join `doctors` on((`prescriptions`.`doctor_id` = `doctors`.`doctor_id`))) group by `prescriptions`.`doctor_id` having (0 <> count(distinct `prescriptions`.`customer_id`)) order by `customer_count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query7_insurance_expiry`
--

/*!50001 DROP VIEW IF EXISTS `query7_insurance_expiry`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query7_insurance_expiry` AS select concat(`customers`.`customer_first_name`,' ',`customers`.`customer_last_name`) AS `customer_name`,`bills`.`bill_date` AS `date_visited`,`insurances`.`insurance_end_date` AS `insurance_end_date` from ((`customers` join `bills` on((`customers`.`customer_id` = `bills`.`customer_id`))) join `insurances` on((`customers`.`customer_id` = `insurances`.`customer_id`))) group by `customer_name`,`bills`.`bill_date`,`insurances`.`insurance_end_date` having (`bills`.`bill_date` > `insurances`.`insurance_end_date`) order by `insurances`.`insurance_end_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-08 14:10:56
