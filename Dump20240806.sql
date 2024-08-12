CREATE DATABASE  IF NOT EXISTS `comercio` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `comercio`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: comercio
-- ------------------------------------------------------
-- Server version	5.7.39-log

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `IDCLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(30) NOT NULL,
  `SEXO` enum('M','F') NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `CPF` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IDCLIENTE`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  UNIQUE KEY `CPF` (`CPF`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'JOAO','M','JOAOA@IG.COM','76567587887'),(2,'CARLOS','M','CARLOSA@IG.COM',NULL),(3,'ANA','F',NULL,'456545678'),(4,'CLARA','F',NULL,'5687766856'),(5,'JORGE','M','JORGE@IG.COM','8756547688'),(6,'CELIA','M','JCELIA@IG.COM','5767876889'),(7,'JOICE','F','JOICE@GMAIL.COM','55412256'),(8,'FLAVIO','M','FLAVIO@IG.COM','4657765'),(9,'ANDRE','M','ANDRE@GLOBO.COM','7687567'),(10,'GIOVANA','F',NULL,'0876655'),(11,'KARLA','M','KARLA@GMAIL.COM','545676778'),(12,'DANIELE','M','DANIELE@GMAIL.COM','43536789'),(13,'LORENA','M',NULL,'774557887'),(14,'EDUARDO','M',NULL,'54376457'),(15,'ANTONIO','F','ANTONIO@IG.COM','12436767'),(16,'ANTONIO','M','ANTONIO@UOL.COM','3423565'),(17,'ELAINE','M','ELAINE@GLOBO.COM','32567763'),(18,'CARMEM','M','CARMEM@IG.COM','787832213'),(19,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `IDENDERECO` int(11) NOT NULL AUTO_INCREMENT,
  `RUA` varchar(30) NOT NULL,
  `BAIRRO` varchar(30) NOT NULL,
  `CIDADE` varchar(30) NOT NULL,
  `ESTADO` char(2) NOT NULL,
  `ID_CLIENTE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDENDERECO`),
  UNIQUE KEY `ID_CLIENTE` (`ID_CLIENTE`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'RUA ANTONIO SA','CENTRO','B. HORIZONTE','MG',4),(2,'RUA CAPITAO HERMES','CENTRO','RIO DE JANEIRO','RJ',1),(3,'RUA PRES VARGAS','JARDINS','SAO PAULO','SP',3),(4,'RUA ALFANDEGA','ESTACIO','RIO DE JANEIRO','RJ',2),(5,'RUA DO OUVIDOR','FLAMENGO','RIO DE JANEIRO','RJ',6),(6,'RUA URUGUAIANA','CENTRO','VITORIA','ES',5),(8,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9),(9,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10),(10,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11),(11,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12),(12,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13),(13,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14),(14,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15),(15,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16),(16,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17),(17,'RUA DA LAPA','LAPA','SAO PAULO','SP',18),(18,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `IDTELEFONE` int(11) NOT NULL AUTO_INCREMENT,
  `TIPO` enum('RES','COM','CEL') NOT NULL,
  `NUMERO` varchar(10) NOT NULL,
  `ID_CLIENTE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDTELEFONE`),
  KEY `ID_CLIENTE` (`ID_CLIENTE`),
  CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'CEL','78458743',5),(2,'RES','56576876',5),(3,'CEL','87866896',1),(4,'COM','54768899',2),(5,'RES','99667587',1),(6,'CEL','78989765',3),(7,'CEL','99766676',3),(8,'COM','66687899',1),(9,'RES','89986668',5),(10,'CEL','88687909',2),(11,'RES','68976565',9),(12,'CEL','99656675',9),(13,'CEL','33567765',11),(14,'CEL','88668786',11),(15,'COM','55689654',11),(16,'COM','88687979',12),(17,'COM','88965676',13),(18,'CEL','89966809',15),(19,'COM','88679978',16),(20,'CEL','99655768',17),(21,'RES','89955665',18),(22,'RES','77455786',19),(23,'RES','89766554',19);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_relatorio`
--

DROP TABLE IF EXISTS `v_relatorio`;
/*!50001 DROP VIEW IF EXISTS `v_relatorio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_relatorio` AS SELECT 
 1 AS `IDCLIENTE`,
 1 AS `NOME`,
 1 AS `EMAIL`,
 1 AS `SEXO`,
 1 AS `CPF`,
 1 AS `TIPO`,
 1 AS `NUMERO`,
 1 AS `RUA`,
 1 AS `BAIRRO`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(30) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `VENDAS` float(10,5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'ANTONIO','ANTONIO@VENDAS.COM.BR',10000.00000),(2,'MARIA','MARIA@VENDAS.COM.BR',20000.00000),(3,'BIANCA','BIANCA@VENDAS.COM.BR',30000.00000),(4,'MARCOS','MARCOS@VENDAS.COM.BR',50000.00000),(5,'ROBERTO','ROBERTO@VENDAS.COM.BR',60000.00000),(6,'AMANDA','ANTONIO@VENDAS.COM.BR',61000.00000);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `v_relatorio`
--

/*!50001 DROP VIEW IF EXISTS `v_relatorio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_relatorio` AS select `c`.`IDCLIENTE` AS `IDCLIENTE`,`c`.`NOME` AS `NOME`,ifnull(`c`.`EMAIL`,'Email NÃO INFORMADO') AS `EMAIL`,`c`.`SEXO` AS `SEXO`,`c`.`CPF` AS `CPF`,`t`.`TIPO` AS `TIPO`,`t`.`NUMERO` AS `NUMERO`,`e`.`RUA` AS `RUA`,`e`.`BAIRRO` AS `BAIRRO` from ((`cliente` `c` join `telefone` `t` on((`c`.`IDCLIENTE` = `t`.`ID_CLIENTE`))) join `endereco` `e` on((`c`.`IDCLIENTE` = `e`.`ID_CLIENTE`))) */;
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

-- Dump completed on 2024-08-06 14:06:58
