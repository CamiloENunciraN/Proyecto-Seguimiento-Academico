CREATE DATABASE  IF NOT EXISTS `acompanamiento_academico` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `acompanamiento_academico`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: acompanamiento_academico
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividad` (
  `idActividad` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(300) DEFAULT NULL,
  `Detalles` varchar(300) DEFAULT NULL,
  `Fecha_Realizacion` date DEFAULT NULL,
  `Hora_Realizacion` varchar(10) DEFAULT NULL,
  `myMateria` int DEFAULT NULL,
  PRIMARY KEY (`idActividad`),
  KEY `myActividadXMateria_idx` (`myMateria`),
  CONSTRAINT `myActividadXMateria` FOREIGN KEY (`myMateria`) REFERENCES `materia` (`idMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `Codigo` varchar(10) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `ID` varchar(45) DEFAULT NULL,
  `Contrasena` varchar(12) DEFAULT NULL,
  `mySesion` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `mySesion_idx` (`mySesion`),
  CONSTRAINT `mySesionXAdministrador` FOREIGN KEY (`mySesion`) REFERENCES `sesion` (`idSesion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `Codigo` varchar(10) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `ID` varchar(45) DEFAULT NULL,
  `Contrasena` varchar(12) DEFAULT NULL,
  `mySesion` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `mySesion_idx` (`mySesion`),
  CONSTRAINT `mySesionXDocente` FOREIGN KEY (`mySesion`) REFERENCES `sesion` (`idSesion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `Codigo` varchar(10) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `ID` varchar(45) DEFAULT NULL,
  `Contrasena` varchar(12) DEFAULT NULL,
  `mySesion` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `mySesionXEstudiante_idx` (`mySesion`),
  CONSTRAINT `mySesionXEstudiante` FOREIGN KEY (`mySesion`) REFERENCES `sesion` (`idSesion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantexgrupo`
--

DROP TABLE IF EXISTS `estudiantexgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantexgrupo` (
  `idGrupo` int NOT NULL,
  `idEstudiante` varchar(10) NOT NULL,
  PRIMARY KEY (`idGrupo`,`idEstudiante`),
  KEY `myEstudiante_idx` (`idEstudiante`),
  CONSTRAINT `myEstudianteXGrupo` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiante` (`Codigo`),
  CONSTRAINT `myGrupoXEstudiante` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantexgrupo`
--

LOCK TABLES `estudiantexgrupo` WRITE;
/*!40000 ALTER TABLE `estudiantexgrupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiantexgrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `idGrupo` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `myActividad` int DEFAULT NULL,
  PRIMARY KEY (`idGrupo`),
  KEY `myActividad_idx` (`myActividad`),
  CONSTRAINT `myActividadXGrupo` FOREIGN KEY (`myActividad`) REFERENCES `actividad` (`idActividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informe`
--

DROP TABLE IF EXISTS `informe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informe` (
  `idInforme` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Fecha_generacion` date DEFAULT NULL,
  `myUsuario` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idInforme`),
  KEY `myAdministrador_idx` (`myUsuario`),
  CONSTRAINT `myInformeXAdministrador` FOREIGN KEY (`myUsuario`) REFERENCES `administrador` (`Codigo`),
  CONSTRAINT `myInformeXDocente` FOREIGN KEY (`myUsuario`) REFERENCES `docente` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informe`
--

LOCK TABLES `informe` WRITE;
/*!40000 ALTER TABLE `informe` DISABLE KEYS */;
/*!40000 ALTER TABLE `informe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informexactividad`
--

DROP TABLE IF EXISTS `informexactividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informexactividad` (
  `idInforme` int NOT NULL,
  `idActividad` int NOT NULL,
  PRIMARY KEY (`idInforme`,`idActividad`),
  KEY `myActividad_idx` (`idActividad`),
  CONSTRAINT `myActividadXInforme` FOREIGN KEY (`idActividad`) REFERENCES `actividad` (`idActividad`),
  CONSTRAINT `myInformeXActividad` FOREIGN KEY (`idInforme`) REFERENCES `informe` (`idInforme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informexactividad`
--

LOCK TABLES `informexactividad` WRITE;
/*!40000 ALTER TABLE `informexactividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `informexactividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informexgrupo`
--

DROP TABLE IF EXISTS `informexgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informexgrupo` (
  `idInforme` int NOT NULL,
  `idGrupo` int NOT NULL,
  PRIMARY KEY (`idInforme`,`idGrupo`),
  KEY `myGrupo_idx` (`idGrupo`),
  CONSTRAINT `myGrupoXInforme` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idGrupo`),
  CONSTRAINT `myInformeXGrupo` FOREIGN KEY (`idInforme`) REFERENCES `informe` (`idInforme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informexgrupo`
--

LOCK TABLES `informexgrupo` WRITE;
/*!40000 ALTER TABLE `informexgrupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `informexgrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informexmateria`
--

DROP TABLE IF EXISTS `informexmateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informexmateria` (
  `idInforme` int NOT NULL,
  `idMateria` int NOT NULL,
  PRIMARY KEY (`idInforme`,`idMateria`),
  KEY `myMateria_idx` (`idMateria`),
  CONSTRAINT `myInformeXMateria` FOREIGN KEY (`idInforme`) REFERENCES `informe` (`idInforme`),
  CONSTRAINT `myMateriaXInforme` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informexmateria`
--

LOCK TABLES `informexmateria` WRITE;
/*!40000 ALTER TABLE `informexmateria` DISABLE KEYS */;
/*!40000 ALTER TABLE `informexmateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `idMateria` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Horario` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `myDocente` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idMateria`),
  KEY `myDocente_idx` (`myDocente`),
  CONSTRAINT `myDocenteXMateria` FOREIGN KEY (`myDocente`) REFERENCES `docente` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiaxestudiante`
--

DROP TABLE IF EXISTS `materiaxestudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiaxestudiante` (
  `idMateria` int NOT NULL,
  `idEstudiante` varchar(10) NOT NULL,
  PRIMARY KEY (`idMateria`,`idEstudiante`),
  KEY `myMateria_idx` (`idMateria`),
  KEY `myEstudiante_idx` (`idEstudiante`),
  CONSTRAINT `myEstudianteXMateria` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiante` (`Codigo`),
  CONSTRAINT `myMateriaXEstudiante` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiaxestudiante`
--

LOCK TABLES `materiaxestudiante` WRITE;
/*!40000 ALTER TABLE `materiaxestudiante` DISABLE KEYS */;
/*!40000 ALTER TABLE `materiaxestudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiaxsemestre`
--

DROP TABLE IF EXISTS `materiaxsemestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiaxsemestre` (
  `idMateria` int NOT NULL,
  `idSEmestre` int NOT NULL,
  PRIMARY KEY (`idMateria`,`idSEmestre`),
  KEY `mySemestre_idx` (`idSEmestre`),
  CONSTRAINT `myMateriaXSemestre` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`),
  CONSTRAINT `mySemestreXMateria` FOREIGN KEY (`idSEmestre`) REFERENCES `semestre` (`idSemestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiaxsemestre`
--

LOCK TABLES `materiaxsemestre` WRITE;
/*!40000 ALTER TABLE `materiaxsemestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `materiaxsemestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestre`
--

DROP TABLE IF EXISTS `semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semestre` (
  `idSemestre` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `Fecha_inico` date DEFAULT NULL,
  `Fecha_final` date DEFAULT NULL,
  PRIMARY KEY (`idSemestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestre`
--

LOCK TABLES `semestre` WRITE;
/*!40000 ALTER TABLE `semestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `semestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sesion`
--

DROP TABLE IF EXISTS `sesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sesion` (
  `idSesion` int NOT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `Ingreso` datetime(6) DEFAULT NULL,
  `Expiracion` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`idSesion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesion`
--

LOCK TABLES `sesion` WRITE;
/*!40000 ALTER TABLE `sesion` DISABLE KEYS */;
/*!40000 ALTER TABLE `sesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_actividad`
--

DROP TABLE IF EXISTS `sub_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_actividad` (
  `idSub_Actividad` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(300) DEFAULT NULL,
  `Detalles` varchar(300) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `Fecha_Realizacion` date DEFAULT NULL,
  `Hora_Realizacion` varchar(10) DEFAULT NULL,
  `myGrupo` int DEFAULT NULL,
  PRIMARY KEY (`idSub_Actividad`),
  KEY `myGrupo_idx` (`myGrupo`),
  CONSTRAINT `myGrupoXSubActividad` FOREIGN KEY (`myGrupo`) REFERENCES `grupo` (`idGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_actividad`
--

LOCK TABLES `sub_actividad` WRITE;
/*!40000 ALTER TABLE `sub_actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_actividad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-20 18:40:08
