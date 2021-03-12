-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: imprimir
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `asegurador`
--

DROP TABLE IF EXISTS `asegurador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asegurador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_asegurador` varchar(50) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asegurador`
--

LOCK TABLES `asegurador` WRITE;
/*!40000 ALTER TABLE `asegurador` DISABLE KEYS */;
INSERT INTO `asegurador` VALUES (1,' C.S.G. Penta Security S.A. ','96.683.120-0','Av. el Bosque Norte N° 0440 P. 7 Of. 702, Santiago'),(2,'Chilena Consolidada Seguros Generales S.A.','99.037.000-1','Pedro de Valdivia N° 195, Santiago'),(3,'MAPFRE Seguros',' 96.508.210-7 ','Av. I. Goyenechea 3520 , Las Condes Stgo.'),(4,'Royal & Sundance Alliance','',''),(5,'RSA Seguros Chile S.A.','99.017.000-2','Av. Providencia Nº 1760 Piso 3');
/*!40000 ALTER TABLE `asegurador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cobertura_afectada`
--

DROP TABLE IF EXISTS `cobertura_afectada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cobertura_afectada` (
  `id` int(11) NOT NULL,
  `cobertura` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cobertura_afectada`
--

LOCK TABLES `cobertura_afectada` WRITE;
/*!40000 ALTER TABLE `cobertura_afectada` DISABLE KEYS */;
INSERT INTO `cobertura_afectada` VALUES (1,'DP'),(2,'RC'),(3,'ROBO');
/*!40000 ALTER TABLE `cobertura_afectada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corredor`
--

DROP TABLE IF EXISTS `corredor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corredor` (
  `id_corredor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_corredor` varchar(40) DEFAULT NULL,
  `rut` varchar(14) DEFAULT NULL,
  `fono` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_corredor`)
) ENGINE=MyISAM AUTO_INCREMENT=565 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corredor`
--

LOCK TABLES `corredor` WRITE;
/*!40000 ALTER TABLE `corredor` DISABLE KEYS */;
INSERT INTO `corredor` VALUES (2,'A y C Corredores de Seguros','','','','ayc','1a2a3a4a'),(63,'Bice Corredores','','','',NULL,NULL),(4,'Carlos Rivera',NULL,NULL,NULL,NULL,NULL),(239,'Productora de seguros Aconcagua','','','','',''),(6,'Corredores de Segur Prat Larroulet',NULL,NULL,NULL,NULL,NULL),(7,'Eulufi Ltda.',NULL,NULL,NULL,NULL,NULL),(8,'Enlace corredores de Seguros',NULL,NULL,NULL,NULL,NULL),(9,'Falabella Pro ',NULL,NULL,NULL,NULL,NULL),(97,'Luis Rebolledo Arriagada','','','',NULL,NULL),(11,'Manukian y Cía. Ltda',NULL,NULL,NULL,NULL,NULL),(12,'Mario Cerna ','','98374461','','',''),(13,'Michelle Fellay S.',NULL,NULL,NULL,NULL,NULL),(14,'Raúl Montes y Cía. Ltda.','','','','raul123','raul123'),(15,'Security',NULL,NULL,NULL,NULL,NULL),(16,'Segi Chile',NULL,NULL,NULL,NULL,NULL),(17,'Willis Insurance Services S.A.',NULL,NULL,NULL,NULL,NULL),(35,'Gonzalo Oscar Brunet Lachaise','','','',NULL,NULL),(37,'Luis Arturo Ibarra y Cía. Ltda.','','','',NULL,NULL),(36,'Raimundo Garcia de la Huerta y Cía. Ltda','','','',NULL,NULL),(96,'Corredora de Seguros Security','','','',NULL,NULL),(31,'Huentequeo Saez Carlos Omar','77766030-6','','',NULL,NULL),(32,'Cesar Vallejo M. y Cia Ltda.','77775020-8','','',NULL,NULL),(33,'Gabriel Contreras Herrera','','','',NULL,NULL),(34,'Aguilera C. Elizabeth','','','',NULL,NULL),(38,'Arnoldo Alfonso Pincheira Soto','','','',NULL,NULL),(39,'Global Corp Ltda.','','2462301','',NULL,NULL),(40,'Juan Cura Seda','','98019067','cristobalcuraseda@gmail.com','',''),(41,'Rosa Muller Acevedo','','','',NULL,NULL),(42,'Oscar Chacano B.','','93180304','',NULL,NULL),(43,'Guillermo Campos','','','',NULL,NULL),(45,'Juan Francisco Cerda Olea','','','',NULL,NULL),(103,'Banco Estado Corredores de Seguros','','','','',''),(47,'Silvia Rodriguez','','','',NULL,NULL),(48,'Fernando Padilla Torres','','','',NULL,NULL),(49,'BANCO BICE','97.080.000-K','','',NULL,NULL),(50,'Manuel Herrera Ossa','','','',NULL,NULL),(51,'Nelson Padilla Torres','','','',NULL,NULL),(52,'Alvaro Pacheco G.','','','',NULL,NULL),(53,'Santander Corredora de Seguros','','','',NULL,NULL),(54,'Soc. Nexo Corr. de Seguros y Cía. Ltda.','','','',NULL,NULL),(55,'Carrasco Mauricio','','','',NULL,NULL),(56,'Francisco Rodríguez y Cía.','','','','franrod','franrod'),(57,'Quiroz Néstor ','','','',NULL,NULL),(58,'Maria Baladrino','','','',NULL,NULL),(59,'Kaufmann Corredores','','','',NULL,NULL),(60,'Orellana Navarrete Leticia','','','',NULL,NULL),(61,'Hoger y Cia Ltda. Seguros','','','hogerseguros@hotmail.com','',''),(62,'Hans Joachim Huschke Lange','','45-911500','',NULL,NULL),(64,'Parrish Varela Marques','','','',NULL,NULL),(66,'Francisco Hening Figueroa','','','',NULL,NULL),(67,'Marietta Truan Laff','','','',NULL,NULL),(68,'Garnham y Cía. Ltda.','','','',NULL,NULL),(69,'Acuña Cautiño Maria Ester','','','',NULL,NULL),(70,'Toconao Ltda.','','','',NULL,NULL),(71,'Chacano Oscar','','','',NULL,NULL),(72,'Benedicto Hernan Alarcon Muñoz','','','',NULL,NULL),(73,'Productora de Seguros Centinel','','','',NULL,NULL),(74,'Alarconm','','','',NULL,NULL),(75,'Alarcon Muñoz Victor','','','','',''),(76,'González Sanles Verónica','','','',NULL,NULL),(78,'Liberona Pineda Guillermo ','','','',NULL,NULL),(79,'Justo Alonso Díaz','','90997123','justo.seguros@gmail.com','',''),(80,'Pedro Acevedo Del Real','','81741060','','',''),(81,'Zavelev Seguros','','','',NULL,NULL),(82,'Las Condes Productora de Seguros','','','',NULL,NULL),(83,'Salazar Diez Juan Carlos','','','',NULL,NULL),(84,'Prieto y Cia. ','','','',NULL,NULL),(85,'Proince Corredores de Seguros.','','','',NULL,NULL),(86,'M.S.T.C Corredores de Seguros','','','',NULL,NULL),(87,'Christian Jhonatan Gomez ','','','',NULL,NULL),(88,'Lobos Muñoz Jose M.','','','',NULL,NULL),(89,'Andres Luis Lavin Burgos','','','',NULL,NULL),(90,'María Cisterna Ortiz','','','',NULL,NULL),(91,'Ivor Fierro Bustos','','','',NULL,NULL),(92,'Vacaro y Porter Ltda.','','','',NULL,NULL),(93,'Arturo Zúñiga y Cía. Ltda.','','','',NULL,NULL),(94,'Leticia Orellana Navarrete','','','',NULL,NULL),(95,'Alfredo Koserak Martínez','','','',NULL,NULL),(98,'Patricio Edgardo Barrera Moral','','','','',''),(99,'Eliana Veloso Sáez','','','','',''),(100,'Ricardo Bauer Lissner','','','','',''),(101,'Pedro Gonzalez Rebolledo','','','','',''),(102,'Eduardo Sanhueza Oliva','','','','',''),(104,'Tone Siebert Rodolfo Walterio.','','','','',''),(105,'María Quiñones Mora','','','','',''),(106,'María Cecchi y Cía. Ltda.','','','','',''),(107,'Jaime Torres Contreras','','97782157','jsegurospenta@hotmail.com','',''),(108,'Rene H. Pérez S. Martín','','','','',''),(111,'Margarita Sáez Martínez','','','','',''),(112,'Renato Valderrama Del Pino','','','','',''),(113,'Luis Pradenas San Martín','','','','',''),(114,'Ana Rudet Krause Rojas','','','','',''),(115,'Soc. Com. Prod. de Seguros Volcán Llaima','','','','',''),(116,'Conosur Corredores de Seguros Ltda.','','','','',''),(117,'Mildred Almendras','','','','',''),(118,'Angel R. Mendoza Rodríguez','','','','',''),(119,'Penta Security S.A.','','','','',''),(226,'Marcela Irribarra Luengo','','','','',''),(121,'Atacama Corredores de Seguros','','','','',''),(122,'Eliana Puelma Vaillant','','','','',''),(123,'Cosepro Ltda.','','','','',''),(125,'Jovita Pacheco Barria','','','','',''),(126,'Soc. Acuña y Quiroga','','','','',''),(127,'Sociedad Acuña y Quiroga Ltda.','','','','',''),(128,'Carmen Gloria Gómez Bravo','','','','',''),(129,'Gladys Contrera muñoz','','','','',''),(130,'René Henning Contreras','','','','',''),(131,'BBVA Corr. Técnica de Seguros','','','','',''),(132,'Jorge Niedmann Matamala','','','','',''),(516,'Compara OnLine Corredora De Seguros SPA','','','','',''),(135,'Jorge Jara Jorquera','','95099945','j_jarajorquera@hotmail.com','',''),(137,'Diego Muñoz González','','','','',''),(138,'Ramón Augosto Pescador','','','','',''),(139,'Juan Carlos Latorre','','','','',''),(141,'Iris Fuentealba Suazo','','','','',''),(142,'Alianza Corredores de Seguros','','','','',''),(143,'Verónica González Sanles','','','','',''),(144,'Luis Orbenes Cofré','','','','',''),(145,'Lidia Rodríguez Herrera','','','','',''),(146,'Corredora de Seguros Rosselot y Me.','','','','',''),(147,'Augusto Pescador Dominguez','','','','',''),(148,'Verónica Elizabeth Fehrmann','','','','',''),(149,'Ricardo Cousiño Urzúa','','','smarquez@ans.cl','',''),(150,'Luis Henríquez Henríquez','','','','',''),(151,'Alexis Pino Peña','','','','',''),(152,'Claudia Carvajal Paredes','','','','',''),(153,'Eduardo Matus Panguilef','','','','',''),(154,'Berkhoff Hornig Jürgen Olaf','8.609.060-0','','','',''),(155,'Levican y Tobar Corredores de Seguros','','','','',''),(156,'Cristobal Bugmamn','','','','',''),(157,'Paulina Moreno Cordova','','','','',''),(158,'Carlos Fuentes','','','','',''),(159,'Marsh S.A corredores de seguros','','','','',''),(160,'Alexis Aguillón','','','','',''),(161,'Nexo corredores de seguro','','','','',''),(162,'Patricia Caceres Arrate','','','','',''),(163,'Jorge Neira Waschtendorff','','','','',''),(164,'Patricio Kuhn Artigues','','','','',''),(165,'S.C.S. Sta. María de los Ángeles','','','','',''),(166,'Astrid Simpfendorfer Witting','','','','',''),(167,'Renato Sepúlveda Vivallos','','','','',''),(168,'Wilhelm P. Sonia','','','','',''),(169,'Carla Riffo Fernández','','','','',''),(171,'Stranger & Lewin Corredores de Seguros','','','','',''),(172,'BURGOS PARDO MARCELINO','','','','',''),(173,'Rodrigo Hernández','','','','',''),(174,'Marco Navarrete Gajardo','','','','',''),(175,'Mora Azócar Cristián ','','','','',''),(176,'Carlos Le Roy Aparicio','','','','',''),(177,'Paulette Carrere V.','','','','',''),(178,'Fidel Rivas Osses','','','','',''),(221,'RSG Risk Solutions Group Chile','','','','',''),(180,'Oscar Inostroza Inostroza','','','','',''),(181,'Paredes Rojas Gastón Damián','','','','',''),(182,'Soc. Com. Coalsur Ltda.','','','','',''),(183,'Prod. Seguros Mario Cerna','','','','',''),(184,'Otárola Sepúlveda Alicia','','','','',''),(185,'Chávez Molina Sonia del Pilar','','','','',''),(186,'Germán Andrés Marquard Rosales','','','','',''),(187,'Christian Marcelo Muñoz','','','','',''),(188,'Brunilda Susperreguy','','','','',''),(189,'Paz Gloria Alvarado Rojas','','','','',''),(190,'Andrés Díaz Egaña','','','','',''),(191,'Alfredo Harrison','','','','',''),(192,'Servicios Financieros y de Seguros S.A.','','','','',''),(193,'Baninter Corredores de Seguros.','','','','',''),(194,'Gustavo Arturo Spoerer O`Reilly','','','','',''),(195,'Soc. de Corretaje de Seguros Ruiz- Tagle','','','','',''),(196,'Victoria E. Reyes Vásquez','','','','',''),(197,'Sergio Valenzuela Orellana','','','','',''),(198,'Carlos Escobar Peralta','','','','',''),(199,'Luis Ortiz Luna','','','','',''),(200,'Sippa Oyarce Gladys','','','','',''),(201,'Innova Corredores de Seguros Ltda.','','','','',''),(202,'Sud Americano Corredores de Seguros','','','','',''),(203,'Angelo Alexis Jerez Saavedra','','','','',''),(204,'Cárdenas Sixto','','','','',''),(206,'María Cuevas Hoffmann','','','','',''),(207,'Guillermo Liberona Pineda','','','','',''),(208,'Mauricio Carrasco Marin','','','','',''),(209,'DMG Corredora de Seguros ltda.','','','','',''),(210,'Nissen Mariannne','','','','',''),(211,'Magfalda Moñoz','','','','',''),(213,'BCI Corredores de Seguros S. A.','','','','',''),(214,'Espinoza Arroyo Gonzalo','','','','',''),(215,'2M Corredores de Seguros Ltda.','','','','',''),(216,'María Aravena S.','','','','',''),(217,'Alicia Covarrubias Calderón','','','','',''),(218,'Hodges Rubilar Marianela','','','','',''),(320,'Corredores de Seguros La Polar','','','','',''),(219,'Remberto Adasme Inostroza','','','','',''),(220,'Cristian Mora Azocar','','','','',''),(222,'Mardones Acevedo María del Carmen','','','','',''),(223,'Carmen Nualart González','','','','',''),(224,'Jessica Aguilera García','','','','',''),(225,'Cristina Espejo González','','','','',''),(229,'Ramón Alejandro De La Barra','','','','',''),(228,'Eduardo Fuentes Bórquez','','','','',''),(230,'Lautaro Hodges Soto','','','','',''),(231,'René Valderrama y Cía. Ltda.','','','','',''),(232,'Héctor Correa Brito','','','','',''),(233,'Avanza Trust Corredores de Seguros Ltda.','','','','',''),(234,'Rolando Palma Yañez','','','','',''),(235,'Omar Montenegro V','','','','',''),(236,'Erika Mellado Morales','','','','',''),(237,'IMC Corredores de Seguros S. A.','','','','',''),(238,'Colemont Fusión Corredores de Seguros','','','','',''),(240,'Productora de Seguros Ferreccio y Ferrec','','','','',''),(241,'Sebastian Lyon y Cía. Ltda.','','','','',''),(242,'Corredora de Seg. Ripley Ltda.','','','','',''),(243,'Daniel Meneses Amashta','','','','',''),(244,'Michel Leyton Andaur','','','','',''),(245,'Dardante Córdoba Espinoza','','','','',''),(246,'Felipe Edwards Ross y Cía. Ltda.','','','','',''),(247,'Concha Carrasco Tania','','','','',''),(248,'Ximena Ulloa Donoso','','','','',''),(249,'Eduardo Concha Prudant','','','','',''),(250,'Corredora de Seguros La Cámara','','','','',''),(251,'Helia Eyzaguirre Morales','','','','',''),(252,'Brito Araya Carmen Gloria','','','','',''),(253,'Claude & Compañía Corredores de Seguros','','','','',''),(254,'Salazar y Asociados','','','','',''),(255,'Cecilia Bengoa','','','','',''),(256,'Agustín Pacheco Torres','','','','',''),(257,'Elizabeth Manríquez A.','','','','',''),(258,'Sergio Marquez Molina','','','','',''),(259,'José Larraín Villamil y Cía.','','','','',''),(260,'Rudi Navarrete Monsalves','','','','',''),(261,'Domingo Jesús Jimenez Garcia','','','','',''),(262,'José Villouta Fuentealba','','','','',''),(263,'Antonio Guzmán','','','','',''),(264,'Presto Corr. de Seguros y Gestión Financ','','','','',''),(265,'Patricia Pinto y Cía. Ltda.','','','','',''),(266,'Marcela Philimon Granado','','','','',''),(267,'Hector San Martin Rebolledo ','','','','',''),(268,'Luis Ibarra y Cia Ltda','','','','',''),(269,'Ramón González','','','','',''),(270,'Gastón Paredes Rojas','','','','',''),(271,'Carlos Martinez Erices','','','','',''),(272,'María  Montesino Parra','','','','',''),(273,'Domingo Bordones Díaz','','','','',''),(274,'Sergio Donoso Jimenez','','','','',''),(275,'José Oyarzun Alcazar','','','','',''),(276,'Inmobiliaria Sergio Escobar y Cia Ltda','','','','',''),(277,'Gustavo Montes y Cia Ltda','','','','',''),(278,'Daniela Benavente Jimenez','','','','',''),(279,'Ana Carolina Bizama Cabala','','','','',''),(280,'José Fariya Reyes','','','','',''),(281,'Juan Latorre Cerda','','','','',''),(282,'Mario Vargas Duque','','','','',''),(283,'Juan Pablo Maira Capellini','','','','',''),(284,'Corredora de Seguros Ripley Ltda','','','','',''),(285,'Scotia Corredora de Seguros ','','','','',''),(286,'Bernardita Gschwind y Cia Ltda','','','','',''),(287,'Gonzalo Borja González','','','','',''),(288,'Banco Falabella','','','','',''),(289,'T.A.S. Corredores de Seguros','','','','',''),(290,'Jose Lobos Muñoz','','','','',''),(291,'Rogelio Bustamante Videla','','','','',''),(292,'Elizabeth Aguilera','','','','',''),(293,'María Antonieta Ruedi Silva','','','','',''),(294,'Jose Loncomilla Soto','','','','',''),(295,'Gladys Contreras Muñoz','','','','',''),(296,'Alexis Aguillón Sepúlveda','','','','',''),(297,'Tania Concha Carrasco','','','','',''),(298,'Astorga correa y asociados ltda','','','','',''),(299,'Enrique Ruiz-Tagle Metzner','','','','',''),(301,'Maria Veronica Cherit kettlun','','','','',''),(302,'Maria Veronica Cherit Kettlun','','','','',''),(303,'Maria Veronica Cherit Kettlun','','','','',''),(304,'Soc.de productores de Seguros Vaccaro','','','','',''),(305,'Alicia del Carmen Otarola Sepulveda.','','','','',''),(306,'Crstina Mercedes Espejo Gónzalez.','','','','',''),(308,'Cristina Mercedes Espejo Gonzalez','','','','',''),(309,'Alda Victoria Ortiz Arriegada.','','','','',''),(313,'Gillermina Filomena Lel Leal','','','','',''),(314,'Guillermina Filomena Leal Leal','','','','',''),(315,'Alexis Eloins Pino Peña','','','','',''),(317,'Maria Ester Acuña Cuitiño','','','','',''),(321,'Rosario Sanles Galleguillos','','','','',''),(319,'Aon Risk Services (Chile) S.A','','','','',''),(322,'Corredores se Seguros Best Brokers','','','','',''),(323,'MCA Chile Corredores de Seguro','','','','',''),(324,'Marco Antonio Nallear Macera','','','','',''),(325,'Bel Productores de Seguros Limitada','','','','',''),(326,'Progreso Corredores de Seguros Limitada','','','','',''),(422,'Productora de Seguros Eulufi Ltda.','','041-2912398','meulufi@eulufi.cl','',''),(328,'Casagrande Corredores de Seguros Ltda','','','','',''),(329,'Margen Odette Lemp Campos','','','','',''),(337,'Isabel Laura Bejares Albonico','','','','',''),(362,'Corredores de Seguros Hoger y Cía. Ltda.','','','hogerseguros@surnet.cl','',''),(339,'Manuel Herrera Ossa','','','','',''),(341,'Corredores de Seguros Centinela','','','','',''),(342,'Carolina Ulloa Valdieso','','','','',''),(344,'Productora de Seguros Jorge Acuna Derick','','','','',''),(345,'Munita y Bauerle Corredores de Seguros','','','','',''),(363,'Pablo Daniel Torres Leyton','','','','',''),(347,'Seguros Falabella Corredores','96.847.200-3','','','',''),(348,'Maria Eugenia Correa y Cia Ltda','','','','',''),(349,'José Villanueva Sáez','','','','',''),(350,'Carme Brito Araya','','','','',''),(351,'Carlos Elias González Silva','84.730.900-8','','','',''),(352,'Obreci Corredores de Seguros Ltda','','','','',''),(353,'H.B Corredores de Seguros Limitada','','','','',''),(354,'Soc. Productora de Seguros Raimundo Garc','','','','',''),(355,'Cristina Mena Jaramillo','','','','',''),(356,'Alicia Cortes Figueroa','','','','',''),(357,'María Hernández Poblete','','','','',''),(358,'Luis Washington Leyton Nieto ','','','','',''),(359,'Carlos Martínez Corredores de Seguros E.','','','','',''),(360,'Laura Zapata Valderrama','','','','',''),(361,'Maria Eugenia Soto Pino y Cia. Ltda','','','','',''),(364,'Carlos Enrique Sagredo Mora','','','','',''),(365,'Marianela González Faundez','','','','',''),(366,'Juan Ignacio Souper Muyiz','','','','',''),(367,'Zaira Alejandra Villena Salgado','','','','',''),(368,'María Veronica Spoerer Coster','','','','',''),(369,'Corredores de Seguros Rosita Lewin y Com','','','','',''),(370,'Penta Security','','','','',''),(371,'Rodrigo Ignacio Mosquera Saez','','','','',''),(372,'Los Maitenes Corredores de Seguros Ltda.','','','','',''),(373,'Directo','9.468.795-0','','','',''),(374,'Stein y Cía. Ltda.','','','','',''),(375,'Marco Navarrete Gajardo','','','','',''),(376,'Daly y Cía Ltda','','','','',''),(377,'Corredora de Seguros Ripley Ltda.','','','','',''),(378,'Corredora de seguros Undurraga Ltda.','','','','',''),(379,'Corredora de Seg. Undurraga','','','','',''),(380,'Productora de Seguros Centinela Ltda','','','','',''),(381,'Jorge Novoa Ossa y Cía','','','','',''),(382,'Andrea Victoria Morales Castro','','','','',''),(383,'Felipe Paul y Cía Ltda.','','','','',''),(384,'Presto Corredores de Seguros y Gestión F','','','','',''),(385,'Claudio Diego Salazar López','','','','',''),(386,'Patagonia Corredores de Seguros ','','','','',''),(387,'Antonio Marti Contreras Llinos','','','','',''),(388,'José Omar Moreno Concha','','','','',''),(389,'Reinaldo Erwin Lemp Villagrán ','','','','',''),(390,'Juan Heriberto Maulen Maulen','','','','',''),(391,'Cono Sur Corredores de Seguros Ltda. ','','','','',''),(392,'Edith Reyes Vásquez','','','','',''),(393,'Susan Lisbeth Schifferli Coloma','','','','',''),(394,'Marcelo Adrian Caro Vargas','','','','',''),(395,'Jorge Manoli Nazal','9.171.277-6','','','',''),(396,'Nolfa Pizarro Vargas','','','','',''),(397,'San Martín y Cía. Ltda. Productora de Se','','','','',''),(398,'Elba del Carmen Bustamante Medina','','','','',''),(399,'Marsh S.A. Corredores de Seguros','','','','',''),(400,'Corredora de Seguros Felipe Ureta y Cía.','','','','',''),(401,'Yerco Alain Alvear Araya ','','','','',''),(402,'Prod. de Seg. Francisco Schroder y Cía.','','','','',''),(403,'Orbital JLT Corredores ','','','','',''),(404,'Maldonado Díaz Eduardo Enrique','10.759.100-9','','','',''),(405,'Marcelo Claudio Klenner Zambrano','','','','',''),(406,'LILIENFELD CORREDORES DE SEGUROS LTDA.','','','','',''),(407,'Mandiola e Hijo Sociedad de Responsabili','','','','',''),(408,'René Pérez San Martín','','','','',''),(409,'Reinaldo Lemp Villagrán','','','','',''),(410,'Arturo Spoerer OReilly','','','','',''),(411,'María Schaffer Niclischer','','','','',''),(412,'Agustín Parra Ramos','','','','',''),(413,'Roberto Rebolledo Aguilera','','','','',''),(414,'Grime Araya Acosta','','','','',''),(415,'Christian Jhonatan Gómez Calero','','','','',''),(416,'María Luisa Abasolo Sorrel','','','','',''),(417,'Asesores de Seguros Cayul y Martínez Lim','','','','',''),(418,'Ana Carolina Bizama Cabala','','','','',''),(419,'YANETT THONE BITTNER ','','','','',''),(420,'Leonel Iván Leal Paredes','','','','',''),(421,'Marcelo Caro Vargas','','','','',''),(423,'Alicia CortÃ©s Figueroa','','','','',''),(424,'Marta Parra MuÃ±oz','','','','',''),(425,'MarÃ­a AngÃ©lica CatalÃ¡n Ojeda','','','','',''),(426,'Luis Alberto AlarcÃ³n Silva','','','','',''),(427,'Mesos Corredores de Seguros Ltda','','','','',''),(428,'Elba Bustamante Medina','','','','',''),(429,'Ana RodrÃ­guez Herrera','','','','',''),(431,'Carlos Jaque Cuevas','','88289829','cfjaque@gmail.com','',''),(432,'Corredores de Seguros GeneraciÃ³n Ltda.','','','','',''),(433,'Sociedad Royal AyM Corredores Ltda.','','','','',''),(434,'Bareyre Corredores de Seguros Ltda.','','','','',''),(435,'MarÃ­a Vargas Otarola','','','','',''),(436,'Stefano Binimelis Salazar','','','','',''),(437,'Claudio CÃ¡ceres Torres','','','','',''),(438,'Guillermo AcuÃ±a Villegas','','','','',''),(439,'VerÃ³nica Ãngela Mickelsen Bertetti','','','','',''),(440,'Marcela DÃ­az Lara','','','','',''),(441,'Juan Cisternas Patillo','','','','',''),(442,'Camila Pacheco VelÃ¡squez','','','','',''),(443,'CORREDORES INTEGRADOS DE SEGUROS S.P.A.','','','','',''),(444,'Macarena SepÃºlveda Echague','','','','',''),(445,'Marcelo Patricio Vera Jimenez','','','','',''),(446,'Jose Ignacio Castellano Bahamondes','','','','',''),(447,'Corredora de seguros A and C Ltda','','','','',''),(448,'Francisco Rodriguez Productora de Seguro','','','','',''),(449,'Patricia Aliana Gajardo Banegas','','','','',''),(450,'Transeguros Corredores de Seguros Ltda.','','','','',''),(451,'Del Villar y Cia Corredores de Seguros','','','','',''),(452,'Sociedad Quiroga e Hijos Ltda.','','','','',''),(453,'DPG RISK Corredores de Seguros Spa','','','','',''),(454,'Corredores de Seguros Beytia Rosende y C','','','','',''),(455,'Maria Veronica Fernandez MuÃ±oz','','','','',''),(456,'Guillermo Holmberg Barra','','','','',''),(457,'Gladys Ximena Perez Estay','','','','',''),(458,'San Martin y Lopez Corredores de Seguros','','','','',''),(459,'Manuel Rubio PeÃ±aloza','','','','',''),(460,'Violeta Arriagada YÃ¡Ã±ez','','','','',''),(461,'Corredora de Seguros Omar Rosas GarcÃ­a ','','','','',''),(462,'Juan Eduard IÃ±iguez Gonzalez','','','','',''),(463,'Valerie Antilef Lopez','','','','',''),(464,'Montealto Corredores de Seguros Ltda. ','','','','',''),(465,'Jurgen Berkhoff Hornig','','','','',''),(466,'Maria Antonieta Ruedi Silva','','','','',''),(467,'Maria Silvana Quezada Fica','','','','',''),(468,'JosÃ© AndrÃ©s Silva Brinck','','','','',''),(469,'Fanny Batricia Juffe Medina','','','','',''),(470,'Omar Antonio Rosas Monardes','','','','',''),(471,'Juan SepÃºlveda HernÃ¡ndez ','','','','',''),(472,'Patricia Gajardo B','','','','',''),(473,'Daniela Quezada Gomez','','','','',''),(474,'Alejandra Villena Salgado Zaira','','','','',''),(475,'Mauricio Marcos Rivera Romero EIRL','','','','',''),(476,'Corredores de Seguros Latorre y CÃ­a.','','','','',''),(477,'Pedro Nolasco Santana LÃ³pez','','','','',''),(478,'Elena Leyton Villagra ','','','','',''),(479,'Gian Paolo de Larderel Eyquem ','','','','',''),(480,'Ricardo Rothmann Toro ','','','','',''),(481,'Patricio Kuhn Artigues','6.830.602','','','',''),(482,'Edith Alejandra Bezama Segura ','','','','',''),(483,'Alan Galvez Hurtado ','','','','',''),(484,'MarÃ­a Cisterna OrtÃ­z','','','','',''),(485,'Macarena Susana Olivero GonzÃ¡lez','','','','',''),(486,'Gonzalo Valenzuela Moreno ','','','','',''),(487,'VÃ­ctor Jorquera Aqueveque','','','','',''),(488,'MarÃ­a Luisa QuiÃ±ones Mora ','','','','',''),(489,'Marta Jeannette Quintas Harriet ','','','','',''),(490,'Sociedad Comercial Coalsur Ltda.','','','','',''),(491,'Safety Corredores de Seguros Ltda. ','','','','',''),(492,'HÃ©ctor Arenas Aguilera','','','','',''),(493,'Nelly GutiÃ©rrez ChÃ¡vez','','','','',''),(494,'Oscar Guillermo Bustos Rojas','11.900.848-4','','','',''),(495,'Garby Baier EcheverrÃ­a','','','','',''),(496,'MarÃ­a Aravena S. ','','','','',''),(497,'Productores y Corredores de Seguros GPL ','','','','',''),(498,'Carla Bustos Padilla ','','','','',''),(499,'Eduardo Colvin Trucco ','','','','',''),(500,'Mauricio Alejandro Martel Uribe','','','','',''),(501,'Andrea Souper MuÃ±oz','','','','',''),(502,'Seguros Falabella Corredores Ltda.','','','','',''),(503,'Cura Seda Juan CristÃ³bal','','','','',''),(504,'MarÃ­a Carmen Cordero','','','','',''),(505,'Alfonso Hormazabal DurÃ¡n','','','','',''),(506,'Rodrigo Mosquera SÃ¡ez','','','','',''),(507,'Jorge Villarroel RamÃ­rez','','','','',''),(508,'Humberto Segundo Aravena TillerÃ­a','','','','',''),(509,'THB Chile Corredores de Seguros ','','','','',''),(510,'Juan Carlos Vega GonzÃ¡lez ','','','','',''),(511,'Mario Bahamondes LÃ³pez','','','','',''),(512,'Rodrigo Saavedra Ramos EIRL','','','','',''),(513,'Marcelo Troncoso Sandoval ','','','','',''),(514,'Manuel Jara Girard','','','','',''),(515,'EGR Corredora de Seguros S.A.','','','','',''),(517,'Rosa Merino Bravo ','','','','',''),(518,'MarÃ­a Elena Alid Aleuy','','','','',''),(519,'BARRERA BAEZ PATRICIO ENRIQUE','','','','',''),(520,'LATORRE Y CIA. CORREDORES DE SEGUROS LTD','','','','',''),(521,'ELFERT URTUBIA INGEBORG GRETI','','','','',''),(522,'Claudia Isabel Solar Barra','','','','',''),(523,'Marco Alex Arteaga MuÃ±oz','','','','',''),(524,'Etchepare y Honorato Ltda.','','','','',''),(525,'Gaston Andres Herrera Mendez','','','','',''),(526,'Susana De Las Mercedes Cerda','','','','',''),(527,'Lorena Guisselle Fernandez Rojas','','','','',''),(528,'Alex Arteaga MuÃ±oz','','','','',''),(529,'Luis Salazar Parra','','','','',''),(530,'Sebastiana Troncoso Saldias','','','','',''),(531,'Mok Corredores de Seguros LTDA.','','','','',''),(532,'Bernardita Gschwind y CompaÃ±Ã­a','','','','',''),(533,'Luisa Mella Suazo','','','','',''),(534,'Rolando Vera Rivas','','','','',''),(535,'Soc. Productora de Seguros del Sur Ltda.','','','','',''),(536,'BOVEM Corredores de Seguros SPA','','','','',''),(537,'Corredores de Seguros ABM Ltda.','','','','',''),(538,'Soc. Productora de Seguros Mario Cerna y','','','','',''),(539,'Marina Echague Rojas','','','','',''),(540,'Carlos Rozas Candia','','','','',''),(541,'Luis Eduardo GÃ³mez Morales','','','','',''),(542,'AndrÃ©s Smith y CÃ­a. Ltda.','','','','',''),(543,'Ureta y FernÃ¡ndez Corredores de Seguros','','','','',''),(544,'JIMENEZ DURCOROY PAULA','','','','',''),(545,'MCH SENIOR CORREDORES DE SEGUROS LIMITAD','','','','',''),(546,'Marina Echague Rojas','','','','',''),(547,'Stranger Lewin Corredores. de Seguros Lt','','','','',''),(548,'SION Y ASOCIADOS CORREDORES DE SEGUROS L','','','','',''),(549,'CERNA AGUILERA JESSICA NICOLE','','','','',''),(550,'CENCOSUD CORREDORES DE SEGUROS Y SERVICI','','','','',''),(551,'Montenegro Valdes Eliana Eugenia','','','','',''),(552,'Rosalia de las mercedes Saavedra Ortiz','','','','',''),(553,'Rosalia de las mercedes Saavedra Ortiz','','','','',''),(554,'Echeverria Bravo Maria Veronica','','','','',''),(555,'Silva y Asociados Ltda','','','','',''),(556,'AcuÃ±a CuitiÃ±o Maria Ester','','','','',''),(557,'Soc.Comercial Productora de Seguros Volc','','','','',''),(558,'RHL CORREDORES DE SEGUROS SPA','','','','',''),(559,'RaÃºl Silva BastÃ­as','','','','',''),(560,'Alberto Oyarzun Scholtbach Corredor de s','','','','',''),(561,'REBOLLEDO AGUILERA ROBERTO ADOLFO','','','','',''),(562,'Cecilia BenÃ­tez Pino ','','','','',''),(563,'Mariela del Pilar Vidal Quevedo ','','','','',''),(564,'Rafael Blanco Bauerle','','','','','');
/*!40000 ALTER TABLE `corredor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejecutivo`
--

DROP TABLE IF EXISTS `ejecutivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejecutivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ejecutivo` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejecutivo`
--

LOCK TABLES `ejecutivo` WRITE;
/*!40000 ALTER TABLE `ejecutivo` DISABLE KEYS */;
INSERT INTO `ejecutivo` VALUES (1,'Carlos Contreras ','ccontreras.artigues.seguros@gmail.com'),(2,'Marcelo Cisternas Moraga','marcelo.artigues.seguros@gmail.com'),(3,'Marco Cabrera Méndez','marco.artigues.seguros@gmail.com'),(4,'Mario Artigues Bordessolles','mario.artigues.seguros@gmail.com'),(5,'Mario Hernán Artigues Cisternas ','mhernan.artigues.seguros@gmail.com'),(6,'Naggely Cisternas Moraga','naggely.artigues.seguros@gmail.com'),(7,'Samuel Ramírez ','samuel.artigues.seguros@gmail.com'),(8,'','');
/*!40000 ALTER TABLE `ejecutivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liquidacion`
--

DROP TABLE IF EXISTS `liquidacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liquidacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(22) NOT NULL,
  `1_asignado` date DEFAULT NULL,
  `2_dias_en_la_oficina` text NOT NULL,
  `3_factura_n` text NOT NULL,
  `4_valor` text NOT NULL,
  `5_pagado` date DEFAULT NULL,
  `6_fecha` date DEFAULT NULL,
  `7_ingreso_cia` date DEFAULT NULL,
  `8_informe_liquidacion` text NOT NULL,
  `9_ademdium` text NOT NULL,
  `10_n_liquidacion` varchar(223) NOT NULL,
  `11_vehiculos_motorizados` text NOT NULL,
  `12_fecha_informe_estado_3_parcial` date DEFAULT NULL,
  `13_fecha_informe_estado_4_final` date DEFAULT NULL,
  `14_cobertura_afectada` text NOT NULL,
  `15_deducible` text NOT NULL,
  `perdida_bajo_deducible` text NOT NULL,
  `16_ejecutivo_asignado` text NOT NULL,
  `17_email_ejecutivo` text NOT NULL,
  `18_provision_estimada` text NOT NULL,
  `19_uf` text NOT NULL,
  `20_nombre_asegurador` text NOT NULL,
  `21_sucursal` text NOT NULL,
  `22_corredora` text NOT NULL,
  `23_fono2` text NOT NULL,
  `24_email2` text NOT NULL,
  `25_n_siniestro` text NOT NULL,
  `26_poliza` text NOT NULL,
  `27_endoso` text NOT NULL,
  `28_item` text NOT NULL,
  `29_fecha_desde` date DEFAULT NULL,
  `30_fecha_hasta` date DEFAULT NULL,
  `31_nombre_asegurado` text NOT NULL,
  `32_rut_asegurado` text NOT NULL,
  `33_direccion_asegurado` text NOT NULL,
  `34_fono_asegurado` varchar(22) NOT NULL,
  `35_email_asegurado` varchar(33) NOT NULL,
  `36_contratante_usuario` text NOT NULL,
  `37_rut_contratante` varchar(22) NOT NULL,
  `38_direccion_contratante` varchar(66) NOT NULL,
  `39_fono_contratante` varchar(22) NOT NULL,
  `40_email_contratante` text NOT NULL,
  `41_materia_asegurada` text NOT NULL,
  `42_marca_materia_asegurada` text NOT NULL,
  `43_modelo_materia_asegurada` text NOT NULL,
  `44_patente_materia_asegurada` text NOT NULL,
  `45_ano_materia_asegurada` text NOT NULL,
  `46_serie_motor_materia_asegurada` text NOT NULL,
  `47_chais_materia_asegurada` text NOT NULL,
  `48_monto_uf_asegurado_materia_asegurada` text NOT NULL,
  `49_valor_comercialuf_materia_asegurada` text NOT NULL,
  `50_prorateo` text NOT NULL,
  `51_cia_porcentaje` text NOT NULL,
  `52_aseg_porcentaje` text NOT NULL,
  `53_lugar_del_siniestro` text NOT NULL,
  `54_fecha_del_siniestro` date DEFAULT NULL,
  `55_fecha_de_denuncia_cia` date DEFAULT NULL,
  `56_fecha_asignacion_liquidador` date DEFAULT NULL,
  `57_conductor_consignado` text NOT NULL,
  `58_direccion_conductor` text NOT NULL,
  `59_licencia_n_antecedentes_general` text NOT NULL,
  `60_clase_antecedentes_general` text NOT NULL,
  `61_vigencia_de_control` text NOT NULL,
  `62_fecha_contacto_antecedentes_general` date DEFAULT NULL,
  `perona_contacto` text NOT NULL,
  `63_hora_de_contacto` date DEFAULT NULL,
  `64_fecha_inspeccion` date DEFAULT NULL,
  `65_fecha_recepcion_repuestos` date DEFAULT NULL,
  `66_emisor_presupuestos` text NOT NULL,
  `67_fecha_cotizacion_repuesto` date DEFAULT NULL,
  `68_fecha_recepcion_cot_repuestos` date DEFAULT NULL,
  `69_fecha_orden_de_compra_repuestos` date DEFAULT NULL,
  `70_fecha_orden_de_trabajo_a_taller` date DEFAULT NULL,
  `71_tercer_afectado` text NOT NULL,
  `72_patente_tercer_afectado` text NOT NULL,
  `73_email_terceros` text NOT NULL,
  `74_fono_terceros` text NOT NULL,
  `75_fecha_inspeccion_terceros` text NOT NULL,
  `76_documentos_pendientes_para_definir` text NOT NULL,
  `77_select_documentos_pendiente_para_definir` text NOT NULL,
  `78_imagenes1` text NOT NULL,
  `79_imagenes2` text NOT NULL,
  `80_imagenes3` text NOT NULL,
  `81_imagenes4` text NOT NULL,
  `82_imagenes5` text NOT NULL,
  `imagen6` text NOT NULL,
  `imagen7` text NOT NULL,
  `imagen8` text NOT NULL,
  `imagen9` text NOT NULL,
  `imagen10` text NOT NULL,
  `imagen11` text NOT NULL,
  `imagen12` text NOT NULL,
  `imagen13` text NOT NULL,
  `imagen14` text NOT NULL,
  `imagen15` text NOT NULL,
  `texto1` text NOT NULL,
  `texto2` text NOT NULL,
  `texto3` text NOT NULL,
  `texto4` text NOT NULL,
  `texto5` text NOT NULL,
  `texto6` text NOT NULL,
  `texto7` text NOT NULL,
  `texto8` text NOT NULL,
  `texto9` text NOT NULL,
  `texto10` text NOT NULL,
  `texto11` text NOT NULL,
  `texto12` text NOT NULL,
  `texto13` text NOT NULL,
  `texto14` text NOT NULL,
  `texto15` text NOT NULL,
  `83_descripcion_del_siniestro` text NOT NULL,
  `84_tipificacion_del_siniestro` text NOT NULL,
  `85_select_constancia_parte` text NOT NULL,
  `86_alcoholemia` text NOT NULL,
  `87_garantia` text NOT NULL,
  `88_inspeccion_y_antecedentes` text NOT NULL,
  `89_la_materia_inspeccionada` text NOT NULL,
  `90_causa_determinada_siniestro` text NOT NULL,
  `recomendacion` text NOT NULL,
  `sin_cobertura` text NOT NULL,
  `91_tipo_perdida` text NOT NULL,
  `92_cotizaciones_neto` text NOT NULL,
  `93_detalle1` text NOT NULL,
  `94_detalle2` text NOT NULL,
  `95_detalle3` text NOT NULL,
  `96_detalle4` text NOT NULL,
  `97_detalle5` text NOT NULL,
  `98_m_o_directa_taller1` text NOT NULL,
  `99_m_o_directa_taller2` text NOT NULL,
  `100_m_o_directa_taller3` text NOT NULL,
  `101_m_o_directa_taller4` text NOT NULL,
  `102_m_o_directa_taller5` text NOT NULL,
  `103_m_o_trabajos_externos1` text NOT NULL,
  `104_m_o_trabajos_externos2` text NOT NULL,
  `105_m_o_trabajos_externos3` text NOT NULL,
  `106_m_o_trabajos_externos4` text NOT NULL,
  `107_m_o_trabajos_externos5` text NOT NULL,
  `108_materiales_estimados1` text NOT NULL,
  `109materiales_estimados2` text NOT NULL,
  `110_materiales_estimados3` text NOT NULL,
  `111_materiales_estimados4` text NOT NULL,
  `112_materiales_estimados5` text NOT NULL,
  `113_repuestos1` text NOT NULL,
  `114_repuestos2` text NOT NULL,
  `115_repuestos3` text NOT NULL,
  `116_repuestos4` text NOT NULL,
  `117_repuestos5` text NOT NULL,
  `118_blanco1_1` text NOT NULL,
  `119_blanco1_2` text NOT NULL,
  `120_blanco1_3` text NOT NULL,
  `121_blanco1_4` text NOT NULL,
  `122_blanco1_5` text NOT NULL,
  `123_blanco2_1` text NOT NULL,
  `124_blanco2_2` text NOT NULL,
  `125_blanco2_3` text NOT NULL,
  `126_blanco2_4` text NOT NULL,
  `127_blanco2_5` text NOT NULL,
  `128_total_neto1` text NOT NULL,
  `129_total_neto2` text NOT NULL,
  `130_total_neto3` text NOT NULL,
  `131_total_neto4` text NOT NULL,
  `132_total_neto5` text NOT NULL,
  `133_determinacion_perdidas` text NOT NULL,
  `134_valorizacion_inicial` text NOT NULL,
  `135_adicional` text NOT NULL,
  `136_determinacion` text NOT NULL,
  `137_ajustado` text NOT NULL,
  `subtotal` text NOT NULL,
  `138_observaciones` text NOT NULL,
  `139_indemnizacion` text NOT NULL,
  `140_docuemntos_de_la_carpeta` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liquidacion`
--

LOCK TABLES `liquidacion` WRITE;
/*!40000 ALTER TABLE `liquidacion` DISABLE KEYS */;
INSERT INTO `liquidacion` VALUES (1,'Alex','2019-09-28','1','123456','33400',NULL,'2019-09-28','2019-09-23','1','','00001','','2019-09-27','2019-09-27','','<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Final.</p>\n<p>Agregamos algo mas para ver que pasa, algo mas para ver que pasa algo mas para ver que pasa algo mas para ver que pasa algo mas para ver que pasa algo mas para ver que pasa algo mas para ver que pasa..... final2</p>','1','2','marcelo@corro.cl','200000','24','1','concepcion','215','3455554455','juan@corro.cl','00002','12221','2222','choque','2019-09-02','2019-09-10','juan perez','13098876-2','las quilas 736','23232323','juan@correos.com','sofia perez','14987765-2','las herias 3443','234567','sofia@corro.com','materi asignad x','xxxxx','chevrolet','df fg 45','año materia asignas xxx','sdf45555ff','wefwfrf 444','1000','2000','','25','75','calle caupolican ','2019-09-02','2019-09-03','2019-09-11','luis perez','','34fgg455','sdfsdfsd sdfsdf','345676','2019-09-02','matias perez',NULL,'2019-09-09','2019-09-04','andares perez','2019-09-25','2019-09-27','2019-09-27','2019-09-30','Mario Perez','ddr5455','mario','3456655','34433222','','choque por alcance','11 (1).jpg','auto-chocado-1200x545_c.jpg','como-reparar-un-auto-chocado-de-frente8.jpg','e7ornro6jeil628pnq8pncl3l2_201803170905015aadad2de2295.jpg','file_20180103175555.jpg','','','','','','','','','','','parte principal daño total','','','choque costado ','','','','','','','','','','','','<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Final.</p>','<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Final.</p>','si parte','si','no','<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Final.</p>','33333','choque por distraido','2','Sin Cobertura','1','','Artihues','taller 2','taller 3','taller 4','taller 5','23423','22222','222222','333333','44444','32423','55555','5555','55555','55566','46554654','66667','777766','44455','456786','45645','334544','456755','56789','45666','4564','345665','34345','345345','5345','5464','34534','43554','435435','435345','5464','435345','453453','435345','4534534','<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Final.</p>','2222','3333','5555','666677','4444','<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Final.</p>','<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Final.</p>','<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma Prueba del Sistema soft de Artiues liquidadores en la nueva plataforma</p>\n<p>Final.</p>');
/*!40000 ALTER TABLE `liquidacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liquidacion_rvarios`
--

DROP TABLE IF EXISTS `liquidacion_rvarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liquidacion_rvarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(22) NOT NULL,
  `1_asignado` date DEFAULT NULL,
  `2_dias_en_la_oficina` text NOT NULL,
  `3_factura_n` text NOT NULL,
  `4_valor` text NOT NULL,
  `5_pagado` date DEFAULT NULL,
  `6_fecha` date DEFAULT NULL,
  `7_ingreso_cia` date DEFAULT NULL,
  `8_informe_liquidacion` text NOT NULL,
  `9_ademdium` text NOT NULL,
  `10_n_liquidacion` varchar(223) NOT NULL,
  `ramo` text NOT NULL,
  `otro` text NOT NULL,
  `11_vehiculos_motorizados` text NOT NULL,
  `12_fecha_informe_estado_3_parcial` date DEFAULT NULL,
  `13_fecha_informe_estado_4_final` date DEFAULT NULL,
  `14_cobertura_afectada` text NOT NULL,
  `15_deducible` text NOT NULL,
  `16_ejecutivo_asignado` text NOT NULL,
  `17_email_ejecutivo` text NOT NULL,
  `18_provision_estimada` text NOT NULL,
  `19_uf` text NOT NULL,
  `20_nombre_asegurador` text NOT NULL,
  `21_sucursal` text NOT NULL,
  `22_corredora` text NOT NULL,
  `23_fono2` text NOT NULL,
  `24_email2` text NOT NULL,
  `25_n_siniestro` text NOT NULL,
  `26_poliza` text NOT NULL,
  `27_endoso` text NOT NULL,
  `28_item` text NOT NULL,
  `29_fecha_desde` date DEFAULT NULL,
  `30_fecha_hasta` date DEFAULT NULL,
  `31_nombre_asegurado` text NOT NULL,
  `32_rut_asegurado` text NOT NULL,
  `33_direccion_asegurado` text NOT NULL,
  `34_fono_asegurado` varchar(22) NOT NULL,
  `35_email_asegurado` varchar(33) NOT NULL,
  `36_contratante_usuario` text NOT NULL,
  `37_rut_contratante` varchar(22) NOT NULL,
  `38_direccion_contratante` varchar(66) NOT NULL,
  `39_fono_contratante` varchar(22) NOT NULL,
  `40_email_contratante` text NOT NULL,
  `41_materia_asegurada` text NOT NULL,
  `42_marca_materia_asegurada` text NOT NULL,
  `43_modelo_materia_asegurada` text NOT NULL,
  `44_patente_materia_asegurada` text NOT NULL,
  `45_ano_materia_asegurada` text NOT NULL,
  `46_serie_motor_materia_asegurada` text NOT NULL,
  `47_chais_materia_asegurada` text NOT NULL,
  `48_monto_uf_asegurado_materia_asegurada` text NOT NULL,
  `49_valor_comercialuf_materia_asegurada` text NOT NULL,
  `50_prorateo` text NOT NULL,
  `51_cia_porcentaje` text NOT NULL,
  `52_aseg_porcentaje` text NOT NULL,
  `53_lugar_del_siniestro` text NOT NULL,
  `54_fecha_del_siniestro` date DEFAULT NULL,
  `55_fecha_de_denuncia_cia` date DEFAULT NULL,
  `56_fecha_asignacion_liquidador` date DEFAULT NULL,
  `57_conductor_consignado` text NOT NULL,
  `58_direccion_conductor` text NOT NULL,
  `59_licencia_n_antecedentes_general` text NOT NULL,
  `60_clase_antecedentes_general` text NOT NULL,
  `61_vigencia_de_control` text NOT NULL,
  `62_fecha_contacto_antecedentes_general` date DEFAULT NULL,
  `63_hora_de_contacto` date DEFAULT NULL,
  `64_fecha_inspeccion` date DEFAULT NULL,
  `65_fecha_recepcion_repuestos` date DEFAULT NULL,
  `66_emisor_presupuestos` text NOT NULL,
  `67_fecha_cotizacion_repuesto` date DEFAULT NULL,
  `68_fecha_recepcion_cot_repuestos` date DEFAULT NULL,
  `69_fecha_orden_de_compra_repuestos` date DEFAULT NULL,
  `70_fecha_orden_de_trabajo_a_taller` date DEFAULT NULL,
  `71_tercer_afectado` text NOT NULL,
  `72_patente_tercer_afectado` text NOT NULL,
  `73_email_terceros` text NOT NULL,
  `74_fono_terceros` text NOT NULL,
  `75_fecha_inspeccion_terceros` text NOT NULL,
  `76_documentos_pendientes_para_definir` text NOT NULL,
  `77_select_documentos_pendiente_para_definir` text NOT NULL,
  `78_imagenes1` text NOT NULL,
  `79_imagenes2` text NOT NULL,
  `80_imagenes3` text NOT NULL,
  `81_imagenes4` text NOT NULL,
  `82_imagenes5` text NOT NULL,
  `83_descripcion_del_siniestro` text NOT NULL,
  `84_tipificacion_del_siniestro` text NOT NULL,
  `85_select_constancia_parte` text NOT NULL,
  `86_alcoholemia` text NOT NULL,
  `87_garantia` text NOT NULL,
  `88_inspeccion_y_antecedentes` text NOT NULL,
  `89_la_materia_inspeccionada` text NOT NULL,
  `90_causa_determinada_siniestro` text NOT NULL,
  `91_tipo_perdida` text NOT NULL,
  `92_cotizaciones_neto` text NOT NULL,
  `93_detalle1` text NOT NULL,
  `94_detalle2` text NOT NULL,
  `95_detalle3` text NOT NULL,
  `96_detalle4` text NOT NULL,
  `97_detalle5` text NOT NULL,
  `98_m_o_directa_taller1` text NOT NULL,
  `99_m_o_directa_taller2` text NOT NULL,
  `100_m_o_directa_taller3` text NOT NULL,
  `101_m_o_directa_taller4` text NOT NULL,
  `102_m_o_directa_taller5` text NOT NULL,
  `103_m_o_trabajos_externos1` text NOT NULL,
  `104_m_o_trabajos_externos2` text NOT NULL,
  `105_m_o_trabajos_externos3` text NOT NULL,
  `106_m_o_trabajos_externos4` text NOT NULL,
  `107_m_o_trabajos_externos5` text NOT NULL,
  `108_materiales_estimados1` text NOT NULL,
  `109materiales_estimados2` text NOT NULL,
  `110_materiales_estimados3` text NOT NULL,
  `111_materiales_estimados4` text NOT NULL,
  `112_materiales_estimados5` text NOT NULL,
  `113_repuestos1` text NOT NULL,
  `114_repuestos2` text NOT NULL,
  `115_repuestos3` text NOT NULL,
  `116_repuestos4` text NOT NULL,
  `117_repuestos5` text NOT NULL,
  `118_blanco1_1` text NOT NULL,
  `119_blanco1_2` text NOT NULL,
  `120_blanco1_3` text NOT NULL,
  `121_blanco1_4` text NOT NULL,
  `122_blanco1_5` text NOT NULL,
  `123_blanco2_1` text NOT NULL,
  `124_blanco2_2` text NOT NULL,
  `125_blanco2_3` text NOT NULL,
  `126_blanco2_4` text NOT NULL,
  `127_blanco2_5` text NOT NULL,
  `128_total_neto1` text NOT NULL,
  `129_total_neto2` text NOT NULL,
  `130_total_neto3` text NOT NULL,
  `131_total_neto4` text NOT NULL,
  `132_total_neto5` text NOT NULL,
  `133_determinacion_perdidas` text NOT NULL,
  `134_valorizacion_inicial` text NOT NULL,
  `135_adicional` text NOT NULL,
  `136_determinacion` text NOT NULL,
  `137_ajustado` text NOT NULL,
  `138_observaciones` text NOT NULL,
  `139_indemnizacion` text NOT NULL,
  `140_docuemntos_de_la_carpeta` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liquidacion_rvarios`
--

LOCK TABLES `liquidacion_rvarios` WRITE;
/*!40000 ALTER TABLE `liquidacion_rvarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `liquidacion_rvarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perdida_bajo_deducible`
--

DROP TABLE IF EXISTS `perdida_bajo_deducible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perdida_bajo_deducible` (
  `id` int(11) NOT NULL,
  `perdida` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perdida_bajo_deducible`
--

LOCK TABLES `perdida_bajo_deducible` WRITE;
/*!40000 ALTER TABLE `perdida_bajo_deducible` DISABLE KEYS */;
INSERT INTO `perdida_bajo_deducible` VALUES (1,'Perdida Bajo Deducible');
/*!40000 ALTER TABLE `perdida_bajo_deducible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ramo`
--

DROP TABLE IF EXISTS `ramo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ramo` (
  `id` int(11) NOT NULL,
  `ramo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ramo`
--

LOCK TABLES `ramo` WRITE;
/*!40000 ALTER TABLE `ramo` DISABLE KEYS */;
INSERT INTO `ramo` VALUES (1,'Equipos Móviles'),(2,'Equipos Electrónicos'),(3,'Robo'),(4,'Cristales'),(5,'Accidentes Personales'),(6,'Incendio');
/*!40000 ALTER TABLE `ramo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recomendacion`
--

DROP TABLE IF EXISTS `recomendacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recomendacion` (
  `id` int(11) NOT NULL,
  `recomendacion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recomendacion`
--

LOCK TABLES `recomendacion` WRITE;
/*!40000 ALTER TABLE `recomendacion` DISABLE KEYS */;
INSERT INTO `recomendacion` VALUES (1,'Con Recomendación de Pago'),(2,'Sin Recomendación de Pago');
/*!40000 ALTER TABLE `recomendacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_apps`
--

DROP TABLE IF EXISTS `sec_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_apps` (
  `app_name` varchar(128) NOT NULL,
  `app_type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`app_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_apps`
--

LOCK TABLES `sec_apps` WRITE;
/*!40000 ALTER TABLE `sec_apps` DISABLE KEYS */;
INSERT INTO `sec_apps` VALUES ('form_corredor','form',''),('form_ejecutivo','form',''),('form_liquidacion','form',''),('from_liquidacion_rvarios','form',''),('grid_corredor','cons',''),('grid_ejecutivo','cons',''),('grid_liquidacion','cons',''),('menu','menu',''),('pdfreport_liquidacion','reportpdf',''),('pdfreport_liquidacion_1','reportpdf',''),('pdfreport_liquidacion_2','reportpdf',''),('app_change_pswd','contr','Security Application'),('app_form_add_users','form','Security Application'),('app_form_edit_users','form','Security Application'),('app_form_sec_apps','form','Security Application'),('app_form_sec_users_apps','form','Security Application'),('app_grid_sec_apps','cons','Security Application'),('app_grid_sec_users','cons','Security Application'),('app_grid_sec_users_apps','cons','Security Application'),('app_search_sec_users','contr','Security Application'),('app_Login','contr','Security Application'),('app_retrieve_pswd','contr','Security Application'),('app_sync_apps','contr','Security Application');
/*!40000 ALTER TABLE `sec_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_users`
--

DROP TABLE IF EXISTS `sec_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_users` (
  `login` varchar(255) NOT NULL,
  `pswd` varchar(255) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` varchar(1) DEFAULT NULL,
  `activation_code` varchar(32) DEFAULT NULL,
  `priv_admin` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_users`
--

LOCK TABLES `sec_users` WRITE;
/*!40000 ALTER TABLE `sec_users` DISABLE KEYS */;
INSERT INTO `sec_users` VALUES ('admin','c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec','Admin','admin@admin.com','Y',NULL,'Y');
/*!40000 ALTER TABLE `sec_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_users_apps`
--

DROP TABLE IF EXISTS `sec_users_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_users_apps` (
  `login` varchar(255) NOT NULL,
  `app_name` varchar(128) NOT NULL,
  `priv_access` varchar(1) DEFAULT NULL,
  `priv_insert` varchar(1) DEFAULT NULL,
  `priv_delete` varchar(1) DEFAULT NULL,
  `priv_update` varchar(1) DEFAULT NULL,
  `priv_export` varchar(1) DEFAULT NULL,
  `priv_print` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`login`,`app_name`),
  KEY `sec_users_apps_ibfk_2` (`app_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_users_apps`
--

LOCK TABLES `sec_users_apps` WRITE;
/*!40000 ALTER TABLE `sec_users_apps` DISABLE KEYS */;
INSERT INTO `sec_users_apps` VALUES ('admin','form_corredor','Y','Y','Y','Y','Y','Y'),('admin','form_ejecutivo','Y','Y','Y','Y','Y','Y'),('admin','form_liquidacion','Y','Y','Y','Y','Y','Y'),('admin','from_liquidacion_rvarios','Y','Y','Y','Y','Y','Y'),('admin','grid_corredor','Y','N','N','N','Y','Y'),('admin','grid_ejecutivo','Y','N','N','N','Y','Y'),('admin','grid_liquidacion','Y','N','N','N','Y','Y'),('admin','menu','Y','N','N','N','N','N'),('admin','pdfreport_liquidacion','Y','N','N','N','N','N'),('admin','pdfreport_liquidacion_1','Y','N','N','N','N','N'),('admin','pdfreport_liquidacion_2','Y','N','N','N','N','N'),('admin','app_change_pswd','Y','N','N','N','N','N'),('admin','app_form_add_users','Y','Y','Y','Y','Y','Y'),('admin','app_form_edit_users','Y','Y','Y','Y','Y','Y'),('admin','app_form_sec_apps','Y','Y','Y','Y','Y','Y'),('admin','app_form_sec_users_apps','Y','Y','Y','Y','Y','Y'),('admin','app_grid_sec_apps','Y','N','N','N','Y','Y'),('admin','app_grid_sec_users','Y','N','N','N','Y','Y'),('admin','app_grid_sec_users_apps','Y','N','N','N','Y','Y'),('admin','app_search_sec_users','Y','N','N','N','N','N'),('admin','app_Login','Y','N','N','N','N','N'),('admin','app_retrieve_pswd','Y','N','N','N','N','N'),('admin','app_sync_apps','Y','N','N','N','N','N');
/*!40000 ALTER TABLE `sec_users_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_informe`
--

DROP TABLE IF EXISTS `tipo_informe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_informe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_informe` varchar(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_informe`
--

LOCK TABLES `tipo_informe` WRITE;
/*!40000 ALTER TABLE `tipo_informe` DISABLE KEYS */;
INSERT INTO `tipo_informe` VALUES (1,'Informe de Liquidación'),(2,'Ademdum');
/*!40000 ALTER TABLE `tipo_informe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-09 20:28:41
