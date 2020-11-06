-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: restaurante
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `idadministrador` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'Brayan Martinez','976747953','brayan@gmail.com','admin','brayanadm'),(2,'Frank Piñin','98562358','frank@gmail.com','admin','frankadm'),(3,'Marko Arrunategui','982365895','marko@gmail.com','admin','markoadm'),(1,'Brayan Martinez','976747953','brayan@gmail.com','admin','brayanadm'),(2,'Frank Piñin','98562358','frank@gmail.com','admin','frankadm'),(3,'Marko Arrunategui','982365895','marko@gmail.com','admin','markoadm'),(1,'Brayan Martinez','976747953','brayan@gmail.com','admin','brayanadm'),(2,'Frank Piñin','98562358','frank@gmail.com','admin','frankadm'),(3,'Marko Arrunategui','982365895','marko@gmail.com','admin','markoadm'),(1,'Brayan Martinez','976747953','brayan@gmail.com','admin','brayanadm'),(2,'Frank Piñin','98562358','frank@gmail.com','admin','frankadm'),(3,'Marko Arrunategui','982365895','marko@gmail.com','admin','markoadm'),(1,'Brayan Martinez','976747953','brayan@gmail.com','admin','brayanadm'),(2,'Frank Piñin','98562358','frank@gmail.com','admin','frankadm'),(3,'Marko Arrunategui','982365895','marko@gmail.com','admin','markoadm'),(1,'Brayan Martinez','976747953','brayan@gmail.com','admin','brayanadm'),(2,'Frank Piñin','98562358','frank@gmail.com','admin','frankadm'),(3,'Marko Arrunategui','982365895','marko@gmail.com','admin','markoadm'),(1,'Brayan Martinez','976747953','brayan@gmail.com','admin','brayanadm'),(2,'Frank Piñin','98562358','frank@gmail.com','admin','frankadm'),(3,'Marko Arrunategui','982365895','marko@gmail.com','admin','markoadm'),(1,'Brayan Martinez','976747953','brayan@gmail.com','admin','brayanadm'),(2,'Frank Piñin','98562358','frank@gmail.com','admin','frankadm'),(3,'Marko Arrunategui','982365895','marko@gmail.com','admin','markoadm');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bebida_pedido`
--

DROP TABLE IF EXISTS `bebida_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bebida_pedido` (
  `idbebida_pedido` int NOT NULL AUTO_INCREMENT,
  `nombreBebida` varchar(45) NOT NULL,
  `cantidadBebida` int NOT NULL,
  `precioBebida` double NOT NULL,
  `montoBebida` double NOT NULL,
  `idbebidas` int DEFAULT NULL,
  PRIMARY KEY (`idbebida_pedido`),
  KEY `idbebidas` (`idbebidas`),
  CONSTRAINT `idbebidas` FOREIGN KEY (`idbebidas`) REFERENCES `bebidas` (`idbebidas`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bebida_pedido`
--

LOCK TABLES `bebida_pedido` WRITE;
/*!40000 ALTER TABLE `bebida_pedido` DISABLE KEYS */;
INSERT INTO `bebida_pedido` VALUES (1,'CRISTAL',7,6,42,NULL),(2,'PILSEN',2,7,14,NULL),(3,'PILSEN',1,7,7,NULL),(4,'CUSQUEÑA',1,8,8,NULL),(5,'CRISTAL',2,6,12,NULL),(6,'CRISTAL',2,6,12,NULL),(7,'CUSQUEÑA',1,8,8,NULL),(8,'CRISTAL',1,6,6,NULL),(9,'PILSEN',1,7,7,NULL),(10,'PILSEN',1,7,7,NULL),(11,'CRISTAL',2,6,12,NULL),(12,'PILSEN',1,7,7,NULL),(13,'CRISTAL',1,6,6,NULL),(14,'CUSQUEÑA',1,8,8,NULL),(15,'PILSEN',1,7,7,NULL),(16,'CRISTAL',1,6,6,NULL),(17,'CRISTAL',2,6,12,NULL),(18,'CRISTAL',2,6,12,NULL),(19,'CRISTAL',1,6,6,NULL),(20,'PILSEN',1,7,7,NULL),(21,'CRISTAL',2,6,12,NULL),(22,'PILSEN',1,7,7,NULL),(23,'CUSQUEÑA',2,8,16,NULL),(24,'CRISTAL',1,6,6,NULL),(25,'CRISTAL',2,6,12,NULL),(26,'CRISTAL',1,6,6,NULL),(27,'CRISTAL',1,6,6,NULL),(28,'CRISTAL',2,6,12,NULL),(29,'GASEOSA PERSONAL',1,3,3,NULL),(30,'CUSQUEÑA',1,8,8,NULL),(31,'CRISTAL',4,6,24,NULL),(32,'PILSEN',1,7,7,NULL),(33,'CRISTAL',3,6,18,NULL),(34,'PILSEN',1,7,7,NULL),(35,'CUSQUEÑA',2,8,16,NULL),(36,'GASEOSA PERSONAL',3,3,9,NULL),(37,'GASEOSA DE LITRO Y MEDIO',6,8,48,NULL),(38,'JUGO SURTIDO',2,8,16,NULL),(39,'JUGO PAPAYA',1,5,5,NULL),(40,'CRISTAL',2,6,12,NULL),(41,'CRISTAL',2,6,12,NULL),(42,'CUSQUEÑA',1,8,8,NULL),(43,'CRISTAL',1,6,6,NULL),(44,'CRISTAL',1,6,6,NULL),(45,'PILSEN',1,7,7,NULL),(46,'CUSQUEÑA',1,8,8,NULL),(47,'GASEOSA PERSONAL',2,3,6,NULL),(48,'GASEOSA DE LITRO Y MEDIO',3,8,24,NULL),(49,'JUGO SURTIDO',2,8,16,NULL),(50,'JUGO PAPAYA',1,5,5,NULL),(51,'CRISTAL',1,6,6,NULL),(52,'CRISTAL',2,6,12,NULL),(53,'CRISTAL',1,6,6,NULL),(54,'CUSQUEÑA',4,8,32,NULL),(55,'CRISTAL',2,6,12,NULL),(56,'CRISTAL',1,6,6,NULL),(57,'CRISTAL',2,6,12,NULL),(58,'GASEOSA PERSONAL',2,3,6,NULL),(59,'PILSEN',2,7,14,NULL),(60,'CRISTAL',1,6,6,NULL),(61,'CRISTAL',1,6,6,NULL),(62,'CRISTAL',1,6,6,NULL),(63,'CRISTAL',1,6,6,NULL),(64,'CRISTAL',1,6,6,NULL),(65,'CRISTAL',1,6,6,NULL),(66,'CRISTAL',1,6,6,NULL),(67,'CRISTAL',1,6,6,NULL),(68,'CRISTAL',1,6,6,NULL),(69,'PILSEN',1,7,7,NULL),(70,'CRISTAL',1,6,6,NULL),(71,'CRISTAL',1,6,6,NULL),(72,'CRISTAL',1,6,6,NULL),(73,'PILSEN',1,7,7,NULL),(74,'GASEOSA PERSONAL',1,3,3,NULL),(75,'JUGO SURTIDO',1,8,8,NULL),(76,'CRISTAL',1,6,6,NULL),(77,'CUSQUEÑA',1,8,8,NULL),(78,'PILSEN',1,7,7,NULL),(79,'PILSEN',1,7,7,NULL),(80,'CRISTAL',1,6,6,NULL),(81,'PILSEN',2,7,14,NULL),(82,'PILSEN',3,7,21,NULL),(83,'JUGO SURTIDO',4,8,32,NULL),(84,'PILSEN',1,7,7,NULL),(85,'CUSQUEÑA',2,8,16,NULL),(86,'GASEOSA DE LITRO Y MEDIO',4,8,32,NULL),(87,'CRISTAL',2,6,12,NULL),(88,'CRISTAL',2,6,12,NULL),(89,'CUSQUEÑA',5,8,40,NULL),(90,'PILSEN',1,7,7,NULL),(91,'CRISTAL',1,6,6,NULL),(92,'PILSEN',2,7,14,NULL),(93,'CUSQUEÑA',6,8,48,NULL),(94,'CRISTAL',2,6,12,NULL),(95,'GASEOSA DE LITRO Y MEDIO',2,8,16,NULL),(96,'JUGO SURTIDO',2,8,16,NULL),(97,'CUSQUEÑA',2,8,16,NULL),(98,'CRISTAL',1,6,6,NULL),(99,'GASEOSA PERSONAL',1,3,3,NULL),(100,'CUSQUEÑA',2,8,16,NULL),(101,'GASEOSA DE LITRO Y MEDIO',5,8,40,NULL),(102,'CRISTAL',1,6,6,NULL),(103,'GASEOSA PERSONAL',1,3,3,NULL),(104,'PILSEN',2,7,14,NULL),(105,'CRISTAL',1,6,6,NULL),(106,'PILSEN',1,7,7,NULL),(107,'CRISTAL',1,6,6,NULL),(108,'CUSQUEÑA',2,8,16,NULL),(109,'PILSEN',1,7,7,NULL),(110,'JUGO SURTIDO',1,8,8,NULL),(111,'PILSEN',2,7,14,NULL),(112,'CRISTAL',1,6,6,NULL),(113,'GASEOSA PERSONAL',2,3,6,NULL),(114,'CUSQUEÑA',1,8,8,NULL),(115,'CRISTAL',1,6,6,NULL),(116,'JUGO PAPAYA',1,5,5,NULL),(117,'PILSEN',2,7,14,NULL),(118,'GASEOSA DE LITRO Y MEDIO',2,8,16,NULL),(119,'PILSEN',1,7,7,NULL),(120,'GASEOSA PERSONAL',2,3,6,NULL),(121,'GASEOSA DE LITRO Y MEDIO',2,8,16,NULL),(122,'PILSEN',2,7,14,NULL),(123,'CUSQUEÑA',1,8,8,NULL),(124,'CRISTAL',4,6,24,NULL),(125,'CRISTAL',2,6,12,NULL),(126,'CRISTAL',5,6,30,NULL),(127,'CUSQUEÑA',1,8,8,NULL),(128,'CRISTAL',1,6,6,NULL),(129,'PILSEN',1,7,7,NULL);
/*!40000 ALTER TABLE `bebida_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bebidas`
--

DROP TABLE IF EXISTS `bebidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bebidas` (
  `idbebidas` int NOT NULL AUTO_INCREMENT,
  `nombreBebida` varchar(45) NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`idbebidas`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bebidas`
--

LOCK TABLES `bebidas` WRITE;
/*!40000 ALTER TABLE `bebidas` DISABLE KEYS */;
INSERT INTO `bebidas` VALUES (1,'CRISTAL',6),(2,'PILSEN',7),(3,'CUSQUEÑA',8),(4,'GASEOSA PERSONAL',3),(5,'GASEOSA 1 1/2 LITRO',8),(6,'JUGO SURTIDO',8),(7,'JUGO PAPAYA',5);
/*!40000 ALTER TABLE `bebidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boleta`
--

DROP TABLE IF EXISTS `boleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boleta` (
  `idboleta` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `telefono` varchar(10) NOT NULL,
  `atendidoPor` varchar(50) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `subTotal` double NOT NULL,
  `igv` double NOT NULL,
  `montoTotal` double NOT NULL,
  PRIMARY KEY (`idboleta`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleta`
--

LOCK TABLES `boleta` WRITE;
/*!40000 ALTER TABLE `boleta` DISABLE KEYS */;
INSERT INTO `boleta` VALUES (1,'Rocio Cardenas','78569823','976859325','Brayan Martinez','17-07-2019',26,4.68,30.68),(2,'Ana Villegas','75896325','963258963','Frank Piñin','16-07-2019',26,4.68,30.68),(3,'Jose Cordova','0735698','976859235','Frank Piñin','13-07-2019',26,4.68,30.68),(4,'Melissa Anton','75214589','985623547','Marko Arrunategui','17-07-2019',26,4.68,30.68),(5,'Maria Castro','75823698','985623568','Brayan Martinez','15-07-2019',114,20.52,134.52),(6,'Samantha Diaz','72554895','978569823','Brayan Martinez','17-07-2019',51,9.18,60.18),(7,'Carlos Salazar','03698526','978562358','Marko Arrunategui','16-07-2019',107,19.26,126.26),(8,'Juan Martinez','75895623','985625417','Marko Arrunategui','10-07-2019',260,46.8,306.8),(9,'Brayan Martinez','72472698','975895685','Brayan Martinez','17-07-2019',102,18.36,120.36),(10,'Alejando Sanchez','72457698','985632478','Marko Arrunategui','16-07-2019',292,52.56,344.56),(11,'Rodrigo Leon','72457239','976859236','Brayan Martinez','17-07-2019',167,30.06,197.06),(12,'Kevin Flores','72457240','968574112','Brayan Martinez','17-07-2019',26,4.68,30.68),(13,'Salvador Rojas','72458965','976859235','Brayan Martinez','17-07-2019',169,30.42,199.42),(14,'Miguel Fernandez','72589662','978562358','Marko Arrunategui','17-07-2019',278,50.04,328.04),(15,'Rafael Mamani','72457239','978569265','Brayan Martinez','17-07-2019',204,36.72,240.72),(16,'Aron Perez','75482369','978568922','Frank Piñin','17-07-2019',41,7.38,48.38),(17,'Saul Rojas','72548956','978562358','Marko Arrunategui','17-07-2019',84,15.12,99.12),(18,'Ismael Lopes','78596256','975862359','Frank Piñin','17-07-2019',131,23.58,154.58),(19,'Raquel Garcia','77245895','976856325','Frank Piñin','14-07-2019',65,11.7,76.7),(20,'Pablo Rodriguez','72457239','987456322','Brayan Martinez','16-07-2019',54,9.72,63.72),(21,'Jenifer Carrasco','72458265','978562356','Frank Piñin','17-07-2019',156,28.08,184.08),(22,'Andre Risco','72458598','975862358','Frank Piñin','17-07-2019',57,10.26,67.26),(23,'Gustavo Canova','72457239','989856685','Brayan Martinez','17-07-2019',72,12.96,84.96),(24,'Sebastian Alvarado','03658956','978523654','Marko Arrunategui','17-07-2019',70,12.6,82.6),(25,'Carlos Benites','75896325','985624156','Brayan Martinez','17-07-2019',89,16.02,105.02);
/*!40000 ALTER TABLE `boleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idclientes` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `ruc` varchar(11) DEFAULT NULL,
  `telefono` varchar(11) NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idclientes`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Maria Benites','00000000','10754578975','976749582','Maria@gmail.com','Sullana'),(2,'Jenifer Carrasco','72458265','00000000000','978562356','Sin especificar','Sin especificar'),(3,'Andre Risco','72458598','00000000000','975862358','Sin especificar','Sin especificar'),(4,'Gustavo Canova','72457239','00000000000','989856685','Sin especificar','Sin especificar'),(5,'Sebastian Alvarado','03658956','00000000000','978523654','Sin especificar','Sin especificar'),(6,'Carlos Benites','75896325','00000000000','985624156','Sin especificar','Sin especificar'),(7,'Juana Avila','00000000','10256585425','975865235','juana@gmail.com','Sullana'),(8,'Pepe Ojeda','00000000','13216546545','976568652','pepe@gmail.com','Piura'),(9,'Rocio Quedena','00000000','11231564645','974845645','rocio@gmail.com','Piura'),(10,'Teresa Ortiz','00000000','10256556587','978653265','teresa@gmail.com','Chiclayo'),(11,'Anthony Reyes','00000000','10325652389','978562365','Anthony@gmail.com','catacaos'),(12,'Ismael Lopez','00000000','10256589568','975864582','ismael@gmail.com','Sechura'),(13,'Hector Yesang','00000000','10256235698','976856235','Hector@gmail.com','Piura'),(14,'Alexis Castro','00000000','10256895232','975865235','alexis@gmail.com','Morropon'),(15,'Mario Rosales','00000000','10256325895','976585235','mario@gmail.com','bellavista'),(16,'Harold Guzman','00000000','10265982356','985623659','harold@gmail.com','Marcavelica'),(17,'Roberto Salazar','00000000','10036589523','975865235','roberto@gmail.com','Sullana'),(18,'Walther Espinoza','00000000','10256525255','975865985','walther@gmail.com','castilla'),(19,'Frank Castillo','00000000','10256328595','975865326','frank@gmail.com','Piura'),(20,'Luis Nunuera','00000000','12503265986','986532145','luis@gmail.com','Sullana'),(21,'Frey Diaz','00000000','10256523565','978562358','frey@gmail.com','castilla'),(22,'Alisson Rodrigues','00000000','10256235652','978565235','alisson@gmail.com','sullana'),(23,'Vania Dioses','00000000','11025689562','978563568','vania@gmail.com','Lambayeque'),(24,'Jack delgado','00000000','10256235698','975862556','jack@gmail.com','piura'),(25,'Kevin Martinez','00000000','12025652356','976856231','kevin@gmail.com','Piura'),(26,'Diana Ojeda','00000000','10256328589','976748562','diana@gmail.com','sullana'),(27,'Reynaldo Zapata','00000000','10256325896','975896325','rey@gmail.com','castilla'),(28,'David Ojeda','00000000','1025632582','978562356','david6@gmail.com','marcavelica'),(29,'Daniel Juarez','00000000','1025632568','978562356','daniel@gmail.com','Catacaos'),(30,'Jose Niño','00000000','10258965236','985623589','jose@gmail.com','Piura'),(31,'Elian cordova','00000000','1025632568','975862356','elian@gmail.com','sullana');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `idfactura` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) NOT NULL,
  `montoTotal` double NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `ruc` varchar(11) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `subTotal` double NOT NULL,
  `atendidoPor` varchar(45) NOT NULL,
  PRIMARY KEY (`idfactura`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,'17-07-2019',120.36,'Sullana','10256585425','juana@gmail.com','Juana Avila','975865235',102,'Brayan Martinez'),(2,'17-07-2019',97.94,'Piura','13216546545','pepe@gmail.com','Pepe Ojeda','976568652',83,'Brayan Martinez'),(3,'17-07-2019',30.68,'Piura','11231564645','rocio@gmail.com','Rocio Quedena','974845645',26,'Frank Piñin'),(4,'17-07-2019',87.32,'Chiclayo','10256556587','teresa@gmail.com','Teresa Ortiz','978653265',74,'Marko Arrunategui'),(5,'17-07-2019',48.38,'catacaos','10325652389','Anthony@gmail.com','Anthony Reyes','978562365',41,'Frank Piñin'),(6,'14-07-2019',43.66,'Sechura','10256589568','ismael@gmail.com','Ismael Lopez','975864582',37,'Prueba'),(7,'17-07-2019',90.86,'Piura','10256235698','Hector@gmail.com','Hector Yesang','976856235',77,'Marko Arrunategui'),(8,'16-07-2019',116.82,'Morropon','10256895232','alexis@gmail.com','Alexis Castro','975865235',99,'Brayan Martinez'),(9,'13-07-2019',103.84,'bellavista','10256325895','mario@gmail.com','Mario Rosales','976585235',88,'Marko Arrunategui'),(10,'16-07-2019',93.22,'Marcavelica','10265982356','harold@gmail.com','Harold Guzman','985623659',79,'Marko Arrunategui'),(11,'16-07-2019',102.66,'Sullana','10036589523','roberto@gmail.com','Roberto Salazar','975865235',87,'Frank Piñin'),(12,'17-07-2019',123.9,'castilla','10256525255','walther@gmail.com','Walther Espinoza','975865985',105,'Marko Arrunategui'),(13,'17-07-2019',59,'Piura','10256328595','frank@gmail.com','Frank Castillo','975865326',50,'Brayan Martinez'),(14,'16-07-2019',64.9,'Sullana','12503265986','luis@gmail.com','Luis Nunuera','986532145',55,'Brayan Martinez'),(15,'17-07-2019',0,'castilla','10256523565','frey@gmail.com','Frey Diaz','978562358',0,'Brayan Martinez'),(16,'17-07-2019',62.54,'sullana','10256235652','alisson@gmail.com','Alisson Rodrigues','978565235',53,'Marko Arrunategui'),(17,'09-07-2019',29.5,'Lambayeque','11025689562','vania@gmail.com','Vania Dioses','978563568',25,'Frank Piñin'),(18,'10-07-2019',153.4,'piura','10256235698','jack@gmail.com','Jack delgado','975862556',130,'Marko Arrunategui'),(19,'17-07-2019',70.8,'Piura','12025652356','kevin@gmail.com','Kevin Martinez','976856231',60,'Frank Piñin'),(20,'16-07-2019',23.6,'sullana','10256328589','diana@gmail.com','Diana Ojeda','976748562',20,'Brayan Martinez'),(21,'06-07-2019',53.1,'castilla','10256325896','rey@gmail.com','Reynaldo Zapata','975896325',45,'Frank Piñin'),(22,'17-07-2019',0,'marcavelica','1025632582','david6@gmail.com','David Ojeda','978562356',0,'Marko Arrunategui'),(23,'17-07-2019',112.1,'Catacaos','1025632568','daniel@gmail.com','Daniel Juarez','978562356',95,'Brayan Martinez'),(24,'16-07-2019',71.98,'Piura','10258965236','jose@gmail.com','Jose Niño','985623589',61,'Frank Piñin'),(25,'17-07-2019',37.76,'sullana','1025632568','elian@gmail.com','Elian cordova','975862356',32,'Frank Piñin');
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesero`
--

DROP TABLE IF EXISTS `mesero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesero` (
  `idmesero` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `numeroMesero` int NOT NULL,
  PRIMARY KEY (`idmesero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesero`
--

LOCK TABLES `mesero` WRITE;
/*!40000 ALTER TABLE `mesero` DISABLE KEYS */;
INSERT INTO `mesero` VALUES (1,'Brayan Martinez','985623658','brayan@gmail.com','mesero','brayanmsr',1),(2,'Frank Piñin','978568953','frank@gmail.com','mesero','frankmsr',2),(3,'Marko Arrunategui','975856325','marko@gmail.com','nesero','markomsr',3);
/*!40000 ALTER TABLE `mesero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idpedido` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `cantidad` int NOT NULL,
  `precio` double NOT NULL,
  `Monto` double NOT NULL,
  `numeropedido` int NOT NULL,
  PRIMARY KEY (`idpedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plato_pedido`
--

DROP TABLE IF EXISTS `plato_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plato_pedido` (
  `idplato_pedido` int NOT NULL AUTO_INCREMENT,
  `nombrePlato` varchar(45) NOT NULL,
  `idplatos` int DEFAULT NULL,
  `cantidadPlato` int NOT NULL,
  `precioPlato` double NOT NULL,
  `montoPlato` double NOT NULL,
  PRIMARY KEY (`idplato_pedido`),
  KEY `idPlatos` (`idplatos`),
  CONSTRAINT `idPlatos` FOREIGN KEY (`idplatos`) REFERENCES `platos` (`idplatos`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plato_pedido`
--

LOCK TABLES `plato_pedido` WRITE;
/*!40000 ALTER TABLE `plato_pedido` DISABLE KEYS */;
INSERT INTO `plato_pedido` VALUES (1,'CHICARRON DE PESCADO',NULL,1,25,25),(2,'BISTEC A LO POBRE',NULL,2,30,60),(3,'AJI DE GALLINA',NULL,2,20,40),(4,'LOMO SALTADO',NULL,1,30,30),(5,'CHICARRON DE PESCADO',NULL,1,25,25),(6,'LOMO SALTADO',NULL,2,30,60),(7,'CHICARRON DE PESCADO',NULL,3,25,75),(8,'ARROZ CON MARISCOS',NULL,2,25,50),(9,'CHICARRON DE PESCADO',NULL,1,25,25),(10,'LOMO SALTADO',NULL,1,30,30),(11,'CHICARRON DE PESCADO',NULL,1,25,25),(12,'CHICARRON DE PESCADO',NULL,1,25,25),(13,'CHICARRON DE PESCADO',NULL,1,25,25),(14,'CHICARRON DE PESCADO',NULL,1,25,25),(15,'CEVICHE',NULL,2,20,40),(16,'CHICARRON DE PESCADO',NULL,1,25,25),(17,'CAUSA RELLENA',NULL,1,25,25),(18,'ARROZ CON MARISCOS',NULL,1,25,25),(19,'BISTEC A LO POBRE',NULL,1,30,30),(20,'SUDADO DE PESCADO',NULL,1,25,25),(21,'LOMO SALTADO',NULL,1,30,30),(22,'LOMO SALTADO',NULL,1,30,30),(23,'ARROZ CON MARISCOS',NULL,1,25,25),(24,'ARROZ CON MARISCOS',NULL,1,25,25),(25,'SUDADO DE PESCADO',NULL,1,25,25),(26,'ARROZ CON MARISCOS',NULL,1,25,25),(27,'CHICARRON DE PESCADO',NULL,1,25,25),(28,'LOMO SALTADO',NULL,1,30,30),(29,'CHICARRON DE PESCADO',NULL,2,25,50),(30,'ARROZ CON MARISCOS',NULL,2,25,50),(31,'LOMO SALTADO',NULL,1,30,30),(32,'AJI DE GALLINA',NULL,1,20,20),(33,'CAUSA RELLENA',NULL,2,25,50),(34,'BISTEC A LO POBRE',NULL,1,30,30),(35,'BISTEC A LO POBRE',NULL,1,30,30),(36,'CHICARRON DE PESCADO',NULL,3,25,75),(37,'ARROZ CON MARISCOS',NULL,2,25,50),(38,'CHICARRON DE PESCADO',NULL,1,25,25),(39,'LOMO SALTADO',NULL,1,30,30),(40,'ARROZ CON MARISCOS',NULL,1,25,25),(41,'BISTEC A LO POBRE',NULL,1,30,30),(42,'AJI DE GALLINA',NULL,2,20,40),(43,'CAUSA RELLENA',NULL,1,25,25),(44,'SUDADO DE PESCADO',NULL,2,25,50),(45,'BISTEC A LO POBRE',NULL,2,30,60),(46,'ARROZ CON MARISCOS',NULL,2,25,50),(47,'CHICARRON DE PESCADO',NULL,2,25,50),(48,'CHICARRON DE PESCADO',NULL,2,25,50),(49,'AJI DE GALLINA',NULL,1,20,20),(50,'CHICARRON DE PESCADO',NULL,2,25,50),(51,'LOMO SALTADO',NULL,3,30,90),(52,'ARROZ CON MARISCOS',NULL,1,25,25),(53,'BISTEC A LO POBRE',NULL,2,30,60),(54,'AJI DE GALLINA',NULL,5,20,100),(55,'CAUSA RELLENA',NULL,2,25,50),(56,'SUDADO DE PESCADO',NULL,1,25,25),(57,'LOMO SALTADO',NULL,1,30,30),(58,'BISTEC A LO POBRE',NULL,1,30,30),(59,'ARROZ CON MARISCOS',NULL,1,25,25),(60,'ARROZ CON MARISCOS',NULL,2,25,50),(61,'LOMO SALTADO',NULL,2,30,60),(62,'LOMO SALTADO',NULL,1,30,30),(63,'LOMO SALTADO',NULL,1,30,30),(64,'ARROZ CON MARISCOS',NULL,1,25,25),(65,'SUDADO DE PESCADO',NULL,1,25,25),(66,'CHICARRON DE PESCADO',NULL,4,25,100),(67,'LOMO SALTADO',NULL,1,30,30),(68,'BISTEC A LO POBRE',NULL,1,30,30),(69,'LOMO SALTADO',NULL,1,30,30),(70,'CHICARRON DE PESCADO',NULL,1,25,25),(71,'CHICARRON DE PESCADO',NULL,1,25,25),(72,'CHICARRON DE PESCADO',NULL,1,25,25),(73,'LOMO SALTADO',NULL,1,30,30),(74,'CHICARRON DE PESCADO',NULL,1,25,25),(75,'LOMO SALTADO',NULL,1,30,30),(76,'CHICARRON DE PESCADO',NULL,1,25,25),(77,'CHICARRON DE PESCADO',NULL,2,25,50),(78,'LOMO SALTADO',NULL,1,30,30),(79,'CHICARRON DE PESCADO',NULL,1,25,25),(80,'CHICARRON DE PESCADO',NULL,1,25,25),(81,'ARROZ CON MARISCOS',NULL,1,25,25),(82,'CHICARRON DE PESCADO',NULL,1,25,25),(83,'CHICARRON DE PESCADO',NULL,1,25,25),(84,'LOMO SALTADO',NULL,2,30,60),(85,'ARROZ CON MARISCOS',NULL,1,25,25),(86,'BISTEC A LO POBRE',NULL,1,30,30),(87,'CAUSA RELLENA',NULL,2,25,50),(88,'SUDADO DE PESCADO',NULL,2,25,50),(89,'CHICARRON DE PESCADO',NULL,1,25,25),(90,'LOMO SALTADO',NULL,1,30,30),(91,'ARROZ CON MARISCOS',NULL,2,25,50),(92,'BISTEC A LO POBRE',NULL,1,30,30),(93,'CHICARRON DE PESCADO',NULL,2,25,50),(94,'ARROZ CON MARISCOS',NULL,2,25,50),(95,'CHICARRON DE PESCADO',NULL,1,25,25),(96,'CHICARRON DE PESCADO',NULL,3,25,75),(97,'CEVICHE',NULL,1,20,20),(98,'CEVICHE',NULL,1,20,20),(99,'AJI DE GALLINA',NULL,5,20,100),(100,'LOMO SALTADO',NULL,1,30,30),(101,'CAUSA RELLENA',NULL,3,25,75),(102,'CHICARRON DE PESCADO',NULL,1,25,25),(103,'LOMO SALTADO',NULL,1,30,30),(104,'ARROZ CON MARISCOS',NULL,1,25,25),(105,'CAUSA RELLENA',NULL,3,25,75),(106,'SUDADO DE PESCADO',NULL,2,25,50),(107,'CEVICHE',NULL,2,20,40),(108,'CHICARRON DE PESCADO',NULL,1,25,25),(109,'CAUSA RELLENA',NULL,1,25,25),(110,'CHICARRON DE PESCADO',NULL,1,25,25),(111,'BISTEC A LO POBRE',NULL,3,30,90),(112,'AJI DE GALLINA',NULL,5,20,100),(113,'SUDADO DE PESCADO',NULL,1,25,25),(114,'CEVICHE',NULL,3,20,60),(115,'ARROZ CON MARISCOS',NULL,4,25,100),(116,'CEVICHE',NULL,1,20,20),(117,'LOMO SALTADO',NULL,1,30,30),(118,'CAUSA RELLENA',NULL,3,25,75),(119,'SUDADO DE PESCADO',NULL,2,25,50),(120,'CEVICHE',NULL,4,20,80),(121,'CHICARRON DE PESCADO',NULL,3,25,75),(122,'ARROZ CON MARISCOS',NULL,3,25,75),(123,'CEVICHE',NULL,4,20,80),(124,'AJI DE GALLINA',NULL,4,20,80),(125,'ARROZ CON MARISCOS',NULL,1,25,25),(126,'SUDADO DE PESCADO',NULL,3,25,75),(127,'CEVICHE',NULL,1,20,20),(128,'CHICARRON DE PESCADO',NULL,3,25,75),(129,'AJI DE GALLINA',NULL,1,20,20),(130,'CHICARRON DE PESCADO',NULL,1,25,25),(131,'CEVICHE',NULL,3,20,60),(132,'LOMO SALTADO',NULL,1,30,30),(133,'CEVICHE',NULL,1,20,20),(134,'AJI DE GALLINA',NULL,1,20,20),(135,'CEVICHE',NULL,2,20,40),(136,'LOMO SALTADO',NULL,2,30,60),(137,'ARROZ CON MARISCOS',NULL,2,25,50),(138,'CHICARRON DE PESCADO',NULL,1,25,25),(139,'CAUSA RELLENA',NULL,1,25,25),(140,'CHICARRON DE PESCADO',NULL,1,25,25),(141,'SUDADO DE PESCADO',NULL,1,25,25),(142,'CHICARRON DE PESCADO',NULL,1,25,25),(143,'BISTEC A LO POBRE',NULL,1,30,30),(144,'CEVICHE',NULL,1,20,20),(145,'CHICARRON DE PESCADO',NULL,1,25,25),(146,'LOMO SALTADO',NULL,1,30,30),(147,'CEVICHE',NULL,2,20,40),(148,'ARROZ CON MARISCOS',NULL,2,25,50),(149,'CHICARRON DE PESCADO',NULL,3,25,75),(150,'CEVICHE',NULL,1,20,20),(151,'SUDADO DE PESCADO',NULL,1,25,25),(152,'BISTEC A LO POBRE',NULL,1,30,30),(153,'CAUSA RELLENA',NULL,1,25,25),(154,'BISTEC A LO POBRE',NULL,1,30,30),(155,'LOMO SALTADO',NULL,1,30,30),(156,'ARROZ CON MARISCOS',NULL,1,25,25),(157,'AJI DE GALLINA',NULL,3,20,60),(158,'CAUSA RELLENA',NULL,1,25,25),(159,'BISTEC A LO POBRE',NULL,1,30,30),(160,'CAUSA RELLENA',NULL,2,25,50),(161,'BISTEC A LO POBRE',NULL,1,30,30),(162,'SUDADO DE PESCADO',NULL,1,25,25),(163,'CHICARRON DE PESCADO',NULL,2,25,50),(164,'ARROZ CON MARISCOS',NULL,1,25,25),(165,'CHICARRON DE PESCADO',NULL,3,25,75),(166,'LOMO SALTADO',NULL,1,30,30),(167,'CEVICHE',NULL,1,20,20),(168,'BISTEC A LO POBRE',NULL,1,30,30),(169,'SUDADO DE PESCADO',NULL,1,25,25),(170,'CEVICHE',NULL,1,20,20),(171,'SUDADO DE PESCADO',NULL,1,25,25),(172,'ARROZ CON MARISCOS',NULL,1,25,25),(173,'CHICARRON DE PESCADO',NULL,2,25,50),(174,'AJI DE GALLINA',NULL,4,20,80),(175,'LOMO SALTADO',NULL,2,30,60),(176,'CEVICHE',NULL,1,20,20),(177,'AJI DE GALLINA',NULL,1,20,20),(178,'CAUSA RELLENA',NULL,1,25,25),(179,'ARROZ CON MARISCOS',NULL,3,25,75),(180,'AJI DE GALLINA',NULL,1,20,20),(181,'LOMO SALTADO',NULL,1,30,30),(182,'ARROZ CON MARISCOS',NULL,1,25,25),(183,'CAUSA RELLENA',NULL,1,25,25);
/*!40000 ALTER TABLE `plato_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platos`
--

DROP TABLE IF EXISTS `platos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platos` (
  `idplatos` int NOT NULL AUTO_INCREMENT,
  `nombrePlato` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  PRIMARY KEY (`idplatos`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platos`
--

LOCK TABLES `platos` WRITE;
/*!40000 ALTER TABLE `platos` DISABLE KEYS */;
INSERT INTO `platos` VALUES (1,'CEVICHE','20'),(2,'CHICARRON DE PESCADO','25'),(3,'LOMO SALTADO','30'),(4,'ARROZ CON MARISCOS','25'),(5,'BISTEC A LO POBRE','30'),(6,'AJI DE GALLINA','20'),(7,'CAUSA RELLENA','25'),(8,'SUDADO DE PESCADO','25');
/*!40000 ALTER TABLE `platos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `tipoNivel` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Victor','admin','Victor cortez','vc@gmail.com','57578332','Administrador'),(2,'Eddy','admin','Victor Sis','vs@gmail.com','29384736','Mesero'),(3,'Juan','admin','Rene Cortez','rec@gmail.com','98562358','Administrador '),(4,'Pedro','admin','Rene sis','rs@gmail.com','32738298','Mesero'),(5,'Pablo','mesero','Victor CortezS','vrs@gmail.com','27232211','Mesero'),(6,'Rene','mesero','Victor Rene Cortez ','vrc@gmail.com','09887632','Administrador'),(7,'Marvin','mesero','Victor Cortez Sis ','vcs@gmail.com','12252343','Mesero');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'restaurante'
--

--
-- Dumping routines for database 'restaurante'
--
/*!50003 DROP PROCEDURE IF EXISTS `buscarAdm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarAdm`(`buscar` CHAR(20))
SELECT
  *
FROM
  administrador
WHERE
  nombre LIKE buscar$$ ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarBoleta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarBoleta`(`buscar` CHAR(20))
SELECT
  *
FROM
  boleta
WHERE
  nombre LIKE buscar$$ ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarCliente`(`buscar` CHAR(20))
SELECT
  *
FROM
  clientes
WHERE
  nombre LIKE buscar$$ ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarFactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarFactura`(`buscar` CHAR(20))
SELECT
  *
FROM
  factura
WHERE
  nombre LIKE buscar$$ ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarMesero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarMesero`(`buscar` CHAR(20))
SELECT
  *
FROM
  mesero
WHERE
  nombre LIKE buscar$$ ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-05 22:05:25
