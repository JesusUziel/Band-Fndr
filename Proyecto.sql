-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `banda`
--

DROP TABLE IF EXISTS `banda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banda` (
  `idBanda` int(11) NOT NULL AUTO_INCREMENT,
  `nomBanda` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `experiencia` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `idGenero` int(11) DEFAULT NULL,
  `idImagenBanda` int(11) DEFAULT NULL,
  PRIMARY KEY (`idBanda`),
  KEY `BG_idx` (`idGenero`),
  KEY `BI_idx` (`idImagenBanda`),
  CONSTRAINT `BG` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idGenero`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `BI` FOREIGN KEY (`idImagenBanda`) REFERENCES `imagenbanda` (`idImagenBanda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banda`
--

LOCK TABLES `banda` WRITE;
/*!40000 ALTER TABLE `banda` DISABLE KEYS */;
INSERT INTO `banda` VALUES (2,'Hell cats','Apuuu',2,NULL),(4,'Whiss','ganas de morir',3,NULL),(5,'Pussycatssdsad','dasdsadasdwergwefwgwffefew',1,NULL),(6,'Hola','hjdjhgfdhghjdhjhgjdhfjhj',4,NULL),(7,'Hola2','jhhjhjhjjhjhjh',6,NULL),(8,'kjjjjk','jkjkjkghjkghhjghghgh',1,NULL),(10,'Mago de Oz','ihkjhjshjfgshgfsh',2,NULL),(11,'Loosers ','xfdxvfxdfds\r\n\r\n\r\nfs\r\nf\r\nsd\r\nf\r\nsd\r\nf\r\nsd\r\nf\r\nsd\r\nf\r\nsdf\r\nsd\r\nf\r\nsd\r\nfsd',3,NULL),(12,'Locochones','wqimwwcwevwevwev',2,NULL),(13,'Locochones','inwvunwunvwev wiefiwjefijwef iwjefwjefj9wjef iwefwef',2,NULL),(25,'Niguini','micowcwecwec woeowekfwef wovowekvowe wovkwoevwev',10,NULL),(49,'Los Lalos','uvuvuvueueucuvuvuvuvu wicijsicwejcvwe ewferver ververv',4,NULL),(50,'Pochoclos','ibcvweibvwe wevniwvwev wioejvwieevjwe viwjveiwev wievjiwevwev',8,2),(51,'lokistrokis','qwhbfwyebfwe wuefhuwehf wefjewhufwuef wuehfuhwef',8,13),(52,'queloca','ewfvefewfwe fwenfiwjeif aiufwejfnewbf wefhusehfhsef',3,7);
/*!40000 ALTER TABLE `banda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bandaevento`
--

DROP TABLE IF EXISTS `bandaevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bandaevento` (
  `idBanda` int(11) DEFAULT NULL,
  `idEvento` int(11) DEFAULT NULL,
  KEY `idBanda` (`idBanda`),
  KEY `bandaevento_ibfk_2_idx` (`idEvento`),
  CONSTRAINT `bandaevento_ibfk_1` FOREIGN KEY (`idBanda`) REFERENCES `banda` (`idBanda`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bandaevento_ibfk_2` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`idEvento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bandaevento`
--

LOCK TABLES `bandaevento` WRITE;
/*!40000 ALTER TABLE `bandaevento` DISABLE KEYS */;
INSERT INTO `bandaevento` VALUES (4,2),(5,2),(4,9),(4,9),(4,6),(2,6),(5,4),(5,6);
/*!40000 ALTER TABLE `bandaevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bandagenero`
--

DROP TABLE IF EXISTS `bandagenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bandagenero` (
  `idBanda` int(11) DEFAULT NULL,
  `idGenero` int(11) DEFAULT NULL,
  KEY `idBanda` (`idBanda`),
  KEY `idGenero` (`idGenero`),
  CONSTRAINT `bandagenero_ibfk_1` FOREIGN KEY (`idBanda`) REFERENCES `banda` (`idBanda`),
  CONSTRAINT `bandagenero_ibfk_2` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bandagenero`
--

LOCK TABLES `bandagenero` WRITE;
/*!40000 ALTER TABLE `bandagenero` DISABLE KEYS */;
/*!40000 ALTER TABLE `bandagenero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `idEvento` int(11) NOT NULL AUTO_INCREMENT,
  `nomEvento` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `fechaEvento` date DEFAULT NULL,
  `horaEvento` time DEFAULT NULL,
  `imagen` varchar(75) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ubicacion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idEvento`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (2,'Color Fest','2017-12-31','12:00:00',NULL,NULL,NULL),(3,'Color Party','2017-12-24','18:30:00','fondos de pantala hd 3.jpg','jhjhjhdjfghjdfhjhgjfhjhjdfhjghjdgfjdhj','jdfsjfsjfshfjhdjshfjdshjfhjshhfjds'),(4,'Color Party2','2017-12-30','12:00:00','fondos de pantala hd 3.jpg','hhjghfhghfhgfhdghfhghghghghjghjgjhghjgh','hhjhjdfghjdggfhdsghhgfdh'),(5,'Expo Batiz','2017-07-15','00:00:00','fondos de pantala hd 3.jpg','ghghghghghghfhggdffgddfsfd','hjhjhghghghghgghghg'),(6,'Expo Batiz','2017-07-15','00:00:00','fondos de pantala hd 3.jpg','ghghghghghghfhggdffgddfsfd','hjhjhghghghghgghghg'),(7,'Expo Batiz','2017-05-07','12:00:00','fondos de pantala hd 3.jpg','yffdhjfdfjhfgjhfhgfhhjghjyg','hjhjjhjhjhhghjgjhj'),(8,'HOLA','2010-07-06','13:00:00','fondos de pantala hd 3.jpg','HJHJHJGHHGFHGHCFGGH','HJHJJJHJHJHJH'),(9,'Hola 2','2017-05-09','22:00:00','fondos de pantala hd 3.jpg','jkjgfdbjfjhdfgjkrdjghdfkhgjhdfkj','jkjdfklshkjdsklfdskj'),(12,'fdsfdsfds','2034-12-19','14:34:00','','432432432','432432'),(13,'dsfdsfds','2036-11-19','15:24:00','','ewrewrewrw','rewrewr'),(14,'dfdsf','2017-12-23','14:01:00',NULL,'432432432432','432432432');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL,
  `genero` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Classic Rock'),(2,'Rock'),(3,'Hard Rock'),(4,'Alternative Rock'),(5,'Grunge'),(6,'Punk'),(7,'Pop'),(8,'Metal'),(9,'Clasica'),(10,'Blues'),(11,'Jazz'),(12,'Instrumental');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenbanda`
--

DROP TABLE IF EXISTS `imagenbanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagenbanda` (
  `idImagenBanda` int(11) NOT NULL,
  `nombreImagenB` varchar(45) DEFAULT NULL,
  `rutaImagenB` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idImagenBanda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenbanda`
--

LOCK TABLES `imagenbanda` WRITE;
/*!40000 ALTER TABLE `imagenbanda` DISABLE KEYS */;
INSERT INTO `imagenbanda` VALUES (1,'Game Town','ImagenesGrupos/GameMusicTown.jpg'),(2,'Radiacion','ImagenesGrupos/FireMan.jpg'),(3,'Ultra Violin','ImagenesGrupos/UltraViolin.jpg'),(4,'Saxofon','ImagenesGrupos/SaxofonIns.jpg'),(5,'Vigil WN','ImagenesGrupos/VigilRSS.jpg'),(6,'En el Cosmos','ImagenesGrupos/CosmosFlor.png'),(7,'Cosmos de Sagan','ImagenesGrupos/CosmosCarlSagan.gif'),(8,'La Tierra','ImagenesGrupos/LaTierra.jpg'),(9,'El Oseano','ImagenesGrupos/BajoElMar.jpg'),(10,'Arbol en Blanco','ImagenesGrupos/ArbolBN.jpg'),(11,'Jugando Mario','ImagenesGrupos/GamerMario.jpg'),(12,'Alma de la Ceniza','ImagenesGrupos/Souls.jpg'),(13,'The Grid','ImagenesGrupos/TheGrid.jpg'),(14,'Pluma de Colores','ImagenesGrupos/ColorsPlum.jpg'),(15,'Explosion de Color','ImagenesGrupos/Explosion.jpg'),(16,'El Craneo','ImagenesGrupos/RossBones.jpg'),(17,'Dos Plumas','ImagenesGrupos/MapOfNZ.jpg'),(18,'Simbolos','ImagenesGrupos/HidunSimbol.jpg'),(19,'Cowboy','ImagenesGrupos/JuegoTradicional.jpg'),(20,'Bulldozer','ImagenesGrupos/PayDayDos.jpg'),(21,'MediEvil','ImagenesGrupos/Medievil.jpg'),(22,'Gato y Reptil','ImagenesGrupos/GatosMalos.jpg'),(23,'Ultra Soldado','ImagenesGrupos/SoldadoMilitar.jpg'),(24,'COF Zombies','ImagenesGrupos/CallOfDutyZ.jpg');
/*!40000 ALTER TABLE `imagenbanda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenperfiles`
--

DROP TABLE IF EXISTS `imagenperfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagenperfiles` (
  `idImagenPerfiles` int(11) NOT NULL,
  `nomImagen` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rutaImagen` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idImagenPerfiles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenperfiles`
--

LOCK TABLES `imagenperfiles` WRITE;
/*!40000 ALTER TABLE `imagenperfiles` DISABLE KEYS */;
INSERT INTO `imagenperfiles` VALUES (1,'Caballero de Marfil','ImagenesUsuario/CaballeroDeMarfil.jpg'),(2,'Artorias','ImagenesUsuario/Artorias.png'),(3,'Auto Clasico','ImagenesUsuario/AutoClasico.jpg'),(4,'El Monte Athos','ImagenesUsuario/ElMonteAthos.jpg'),(5,'Ford GT','ImagenesUsuario/FordGT.jpg'),(6,'Gael Caballero Esclavo','ImagenesUsuario/GaelCaballero.jpg'),(7,'John Marston','ImagenesUsuario/GameIMG.png'),(8,'General Grievous','ImagenesUsuario/GeneralG.gif'),(9,'Gwyn Lord of Cinder','ImagenesUsuario/GwynSoulOfCinder.jpg'),(10,'Halo','ImagenesUsuario/Halos.png'),(11,'Droide Imperial','ImagenesUsuario/ImperialDroid.gif'),(12,'Jugo de Naranja','ImagenesUsuario/Jugo.png'),(13,'Kylo Ren','ImagenesUsuario/KailoRen.gif'),(14,'Lamborghini','ImagenesUsuario/Lamborgini.jpg'),(15,'Lobo Pintura','ImagenesUsuario/Lobos.jpg'),(16,'Darth Vader','ImagenesUsuario/MascaraDarthVader.gif'),(17,'Shadows for Silence','ImagenesUsuario/MirandaMeeks.jpg'),(18,'Nameless King','ImagenesUsuario/NamelessKing.jpg'),(19,'Ornstein Caza Dragones','ImagenesUsuario/Ornstein.jpg'),(20,'Pluma Azul','ImagenesUsuario/PlumaAzul.jpg'),(21,'Pokemones Generacion I','ImagenesUsuario/PokemonesGeneracionUno.png'),(22,'Resting Giant','ImagenesUsuario/RestingGiant.jpg'),(23,'Scifi','ImagenesUsuario/Scifi.jpg'),(24,'Sif','ImagenesUsuario/Sif.jpg'),(25,'Soldado Halo','ImagenesUsuario/Soldado.png'),(26,'Soul of Cinder','ImagenesUsuario/SoulOfCinder.jpg'),(27,'Spiderman','ImagenesUsuario/Spiderman.png'),(28,'Spiderman Fondo Black','ImagenesUsuario/SpidermanOscuro.png'),(29,'Despertar de Yhorm','ImagenesUsuario/TumbaDeYhorm.jpg'),(30,'Universo en Mente','ImagenesUsuario/UniversoExpandido.jpg'),(31,'Venon y Spiderman','ImagenesUsuario/Venon.png'),(32,'Zamasu Fusionado','ImagenesUsuario/ZamasuFusion.png');
/*!40000 ALTER TABLE `imagenperfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrumento`
--

DROP TABLE IF EXISTS `instrumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrumento` (
  `idInstrumento` int(11) NOT NULL,
  `nombreInstru` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idInstrumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrumento`
--

LOCK TABLES `instrumento` WRITE;
/*!40000 ALTER TABLE `instrumento` DISABLE KEYS */;
INSERT INTO `instrumento` VALUES (1,'Guitarra'),(2,'Voz'),(3,'Bateria'),(4,'Bajo'),(5,'Teclado'),(6,'Flauta');
/*!40000 ALTER TABLE `instrumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrumentousuario`
--

DROP TABLE IF EXISTS `instrumentousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrumentousuario` (
  `idUsu` int(11) DEFAULT NULL,
  `idInstrumento` int(11) DEFAULT NULL,
  KEY `idUsu_idx` (`idUsu`),
  KEY `idInstrumento_idx` (`idInstrumento`),
  CONSTRAINT `idInstrumento` FOREIGN KEY (`idInstrumento`) REFERENCES `instrumento` (`idInstrumento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idUsu` FOREIGN KEY (`idUsu`) REFERENCES `usuario` (`idUsu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrumentousuario`
--

LOCK TABLES `instrumentousuario` WRITE;
/*!40000 ALTER TABLE `instrumentousuario` DISABLE KEYS */;
INSERT INTO `instrumentousuario` VALUES (1,3),(2,1),(3,4);
/*!40000 ALTER TABLE `instrumentousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temas`
--

DROP TABLE IF EXISTS `temas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temas` (
  `idTemas` int(11) NOT NULL AUTO_INCREMENT,
  `nomTemas` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idTemas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temas`
--

LOCK TABLES `temas` WRITE;
/*!40000 ALTER TABLE `temas` DISABLE KEYS */;
/*!40000 ALTER TABLE `temas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temasbanda`
--

DROP TABLE IF EXISTS `temasbanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temasbanda` (
  `idBanda` int(11) DEFAULT NULL,
  `idTemas` int(11) DEFAULT NULL,
  KEY `idBanda` (`idBanda`),
  KEY `idTemas` (`idTemas`),
  CONSTRAINT `temasbanda_ibfk_1` FOREIGN KEY (`idBanda`) REFERENCES `banda` (`idBanda`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `temasbanda_ibfk_2` FOREIGN KEY (`idTemas`) REFERENCES `temas` (`idTemas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temasbanda`
--

LOCK TABLES `temasbanda` WRITE;
/*!40000 ALTER TABLE `temasbanda` DISABLE KEYS */;
/*!40000 ALTER TABLE `temasbanda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temasusuario`
--

DROP TABLE IF EXISTS `temasusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temasusuario` (
  `idUsu` int(11) DEFAULT NULL,
  `idTemas` int(11) DEFAULT NULL,
  KEY `idUsu` (`idUsu`),
  KEY `idTemas` (`idTemas`),
  CONSTRAINT `temasusuario_ibfk_1` FOREIGN KEY (`idUsu`) REFERENCES `usuario` (`idUsu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `temasusuario_ibfk_2` FOREIGN KEY (`idTemas`) REFERENCES `temas` (`idTemas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temasusuario`
--

LOCK TABLES `temasusuario` WRITE;
/*!40000 ALTER TABLE `temasusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `temasusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsu` int(11) NOT NULL AUTO_INCREMENT,
  `nomUsu` varchar(30) DEFAULT NULL COMMENT '.',
  `apaterno` varchar(15) DEFAULT NULL,
  `amaterno` varchar(15) DEFAULT NULL,
  `nickname` varchar(25) DEFAULT NULL COMMENT '.',
  `contrasenaUsu` varchar(20) DEFAULT NULL COMMENT '.',
  `correo` varchar(45) DEFAULT NULL COMMENT '.',
  `domicilioUsu` varchar(150) DEFAULT NULL COMMENT '.',
  `fechaNac` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL COMMENT '.',
  `tipoUsu` int(11) DEFAULT NULL COMMENT '.',
  `descripUsu` varchar(200) DEFAULT NULL COMMENT '.',
  `idInstrumento` int(11) DEFAULT NULL,
  `idBanda` int(11) DEFAULT NULL,
  `idImagenPerfiles` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsu`),
  KEY `Maicol_idx` (`idInstrumento`),
  KEY `Jorge_idx` (`idBanda`),
  KEY `Diego_idx` (`idImagenPerfiles`),
  CONSTRAINT `Diego` FOREIGN KEY (`idImagenPerfiles`) REFERENCES `imagenperfiles` (`idImagenPerfiles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Jorge` FOREIGN KEY (`idBanda`) REFERENCES `banda` (`idBanda`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Maicol` FOREIGN KEY (`idInstrumento`) REFERENCES `instrumento` (`idInstrumento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Jorge','Estrada','Alcantara','Hola','JDB1199','yors2008@live.com.mx','Cecyt9','1999-09-11','M',2,'Admin',4,NULL,NULL),(2,'Diego','Martinez','Benitez','DiegoryBHouse','Diegory26','balterson26@gmail.com','Cecyt9','2000-08-26','M',2,'Admin',1,NULL,NULL),(3,'Cristopher','Ortiz','Barrera','deadpoolspidey','REACH888','deadpool888@hotmail.com','Cecyt9','1999-10-04','M',2,'Admin',3,NULL,NULL),(4,'Said','Chacon','Gonzalez','Saidok','band','saidok.rocker@gmail.com','Cecyt9','2000-05-05','M',2,'Admin',5,NULL,NULL),(5,'Michael','Huerta','Ramirez','maximosantana','kinect123','fitox.metallica@gmail.com','Cecyt9','1999-12-19','M',2,'Hola soy goku',1,NULL,NULL),(66,'Julio','Cesar','Chavez','malvibra','kurda2000','blackbeer@outlook.com','Calle cerrada no 23','2000-11-20','M',1,'jajaja al goma',2,NULL,NULL),(67,'Jorge','Chavez','JR','malvibra3','hola2000','hola@live.com','hola','1999-11-17','M',1,'hghgfggjgfhgf',2,NULL,NULL),(68,'Pablo','Escobar','Gonzo','Gonzalery','Labanda$norte1','bandukis@gmail.com','Lago Tota','1999-09-15','M',1,'Somos sanguinarios locos y londiados nos gusta mataaaarrr, a dar lebantones prro',1,NULL,NULL),(69,'Sacarizas','Valencia','Forja','Sacatonton','Lala$rola1','sacamocos@outlook.com','Quetimporta','2000-07-15','M',1,'la banda norteÃ±a los carros del aÃ±o las buenas pleves las traigo a mi lado papus ',4,NULL,NULL),(70,'Pancho','Perez','Lordes','Panchoclo','Labandukis$1','noprocd@yoquese.quit','yanomanchesno','2000-06-10','M',1,'Hola me llamo quetimporta, ahhh te la creistes we xddd, pues es mi primer dia en este lugar y espero pasarla bien ',4,NULL,NULL),(71,'Pilas','Cables','Redes','Pipilas','Pilasmax$2','duwncun@dowm.oce','kmecwmcwcwec','2000-10-13','M',1,'bbvuervuer erueurhfuehfer uefuerhrfuef uheferhfuehf isjiwufw ehfiwfhiwehf ',3,NULL,NULL),(72,'DonÃ±a','Papuss','Lolos','paparapa','Labanda$1','dafefsfeesf@fefef.dwd','efwefafewfwef','1996-08-14','M',1,'vsfewfnewinfiwuenfwef wefnuhewfiuewfnsjfknkewjef uiwfehiwefiowenfinweiufiuewf ewfwfwefewfwe',2,NULL,1),(73,'Dios','Mexico','Madre','canchas123','Kinect123!','fitox.metallica@gmail.com.mx','nose xd','1999-02-20','M',1,'dgjiodhjgldfjgod',1,NULL,1),(74,'Papas','Dhhqsad','Pdiwjd','Ppapas','Labiblia$1','isdnvnse@kjcij.com','fjiwejfiewjfjiewf','1999-06-15','M',1,'wkfnoefjioewjfiojew woefniowejfoesofcwekjfn wi0efjioejfijewf',4,NULL,6),(75,'Joge','Puto','Envidioso','Jogecamate','Elmarrano$1','Jogemarrano@hotmail.com','Joge se la come','1987-05-10','F',1,'Soy bien puÃ±etas y envidioso, siempre estoy tragando verga cuando mis compaÃ±eros estan muriendo',2,NULL,31),(76,'Gonsalo','Antonios','Pinedas','Pinistri','Labiblia$1','uhudhqwdh@jncc.com','fjweijfinwcqifj','2000-08-08','M',1,'vsjviavcksdsviof auouhvoiajviojaicv iohfioajiojsdv ioshdvoijsdvoijsdv ioadjviosjdviojsdiov ',3,NULL,2),(77,'Diosito','Mamario','Puvsuvn','Keins','Labiblia$1','nacunacu@acnia.com','ancancin','2000-08-12','M',1,'vmsi0vjisdjvijsdv sdkvjisdjvisjdv ksdjvisdjviojdsv svjiods',5,NULL,13),(78,'Rondoc','Lawel','Parkes','Pasary','Labiblia$1','nwnuvenw@ewefw.com','cwevwedfascewf','2000-08-15','M',1,'vsvscnisncijsnc iju9vhsiunvisdv ususdvs9dv suvh9sdjvisdvsdv',4,NULL,NULL),(79,'Dario','Panches','Ramirez','LupasTres','Banda$1','svbyusbdv@efna.com','nfcienciewcwfcewf','1998-10-14','M',1,'jsdnvuuhvwev wufiuwehfu9jwv iwejf9hwuhfdwenfwe wjefiwefew',1,NULL,3);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyecto'
--

--
-- Dumping routines for database 'proyecto'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizar1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar1`(IN nick VARCHAR(70))
BEGIN
DECLARE id INT;
SELECT idUsu INTO id FROM usuario ORDER BY idUsu DESC LIMIT 1;
UPDATE usuario SET nickname = nick WHERE idUsu = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `busquedaimplacable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `busquedaimplacable`(in ins INT(11))
BEGIN
select nickname,imagen,descripUsu,correo from usuario where idInstrumento=ins;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearGrupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crearGrupo`(IN nom VARCHAR(30), IN des VARCHAR(150),IN gen INT(11))
BEGIN
	INSERT INTO banda(nomBanda, experiencia, idGenero) VALUES (nom, des, gen);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearGrupoDos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crearGrupoDos`(IN ideB INT)
BEGIN
DECLARE id INT;
SELECT idBanda INTO id FROM banda ORDER BY idBanda DESC LIMIT 1;
UPDATE banda SET  idImagenBanda = ideB WHERE idBanda = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ImagenUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ImagenUsuario`(IN nick VARCHAR(25))
begin
select imagen  from usuario where nickname = 'nick';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `imgusu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `imgusu`(in nick varchar(25))
BEGIN
select imagen from usuario where nickname = nick;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarInsUsu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarInsUsu`(IN usu INT, IN ins INT)
BEGIN
INSERT INTO instrumentousuario(idUsu, idInstrumento) VALUES (usu,ins);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pasoDos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pasoDos`(IN img VARCHAR(70), IN des VARCHAR(200),in ins INT(11))
BEGIN
DECLARE id INT;
SELECT idUsu INTO id FROM usuario ORDER BY idUsu DESC LIMIT 1;
UPDATE usuario SET imagen = img, descripUsu = des, idInstrumento = ins WHERE idUsu = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar`(IN nom VARCHAR(30),IN pat VARCHAR(15), IN mat VARCHAR(15),IN nick VARCHAR(25),IN pwd VARCHAR(20),
IN cor VARCHAR(45),IN dom VARCHAR(150),IN fec DATE, IN sex CHAR)
BEGIN
INSERT INTO usuario(nomUsu,apaterno,amaterno,nickname,contrasenaUsu,correo,domicilioUsu,fechaNac,sexo,tipoUsu)
VALUES(nom,pat,mat,nick,pwd,cor,dom,fec,sex,1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar2`(IN des VARCHAR(200), IN img VARCHAR(70))
BEGIN 
INSERT INTO usuario(descripUsu,imagen)
Values(des, img);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrarbanda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrarbanda`(in nom varchar(45),in des varchar(45), in gen varchar(45))
BEGIN
insert into banda (nomBanda,experiencia,genero) values(nom,des,gen);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `regPasoDos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `regPasoDos`(IN des VARCHAR(200),in ins INT(11))
BEGIN
DECLARE id INT;
SELECT idUsu INTO id FROM usuario ORDER BY idUsu DESC LIMIT 1;
UPDATE usuario SET descripUsu = des, idInstrumento = ins WHERE idUsu = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `regPasoTres` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `regPasoTres`(IN ide INT)
BEGIN
DECLARE id INT;
SELECT idUsu INTO id FROM usuario ORDER BY idUsu DESC LIMIT 1;
UPDATE usuario SET  idImagenPerfiles = ide WHERE idUsu = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SeleccionarInstrumentos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SeleccionarInstrumentos`(IN ins INT)
begin
SELECT u.nomUsu, i.nombreInstru FROM instrumento i INNER JOIN instrumentousuario d
ON d.idInstrumento = i.idInstrumento INNER JOIN usuario u ON u.idUsu = d.idUsu WHERE d.idInstrumento = ins;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spHola` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spHola`()
BEGIN
    
		select 'Hola!' as Mensaje;
    
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tipo`(IN nick VARCHAR(25))
BEGIN
SELECT tipoUsu FROM usuario WHERE nickname = nick;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `validarLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `validarLogin`(IN usu VARCHAR(45), IN pwd VARCHAR(45))
BEGIN
SELECT * FROM  usuario u WHERE u.nickname = usu AND u.contrasenaUsu = pwd;
END ;;
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

-- Dump completed on 2018-05-14  1:57:38
