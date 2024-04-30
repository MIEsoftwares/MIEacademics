-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: academicsDB
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `genero` enum('Masculino','Feminino','Outro') DEFAULT NULL,
  `CEP` char(9) CHARACTER SET utf8mb4 NOT NULL DEFAULT '00000-000',
  `numero_telefone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` char(14) CHARACTER SET utf8mb4 NOT NULL DEFAULT '000.000.000-00',
  `curso` enum('Informatica','Enfermagem','Biotecnologia','ADM','Publicidade') NOT NULL,
  `turma_medio` varchar(10) DEFAULT NULL,
  `id_matricula` int NOT NULL,
  `nome_responsavel` varchar(75) DEFAULT NULL,
  `turma_curso` varchar(10) DEFAULT NULL,
  `RA` varchar(45) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'João da Silva','2005-05-15','Masculino','12345000','11987654321','joao.silva@email.com','12345678900','Informatica','A',1234,'Maria da Silva','INF01','2023001','senha123'),(2,'Maria Oliveira','2006-10-20','Feminino','54321000','11999999999','maria.oliveira@email.com','98765432100','Enfermagem','B',5678,'Ana Oliveira','ENF02','2023002','senha456'),(3,'Pedro Santos','2004-08-10','Masculino','98765000','11888888888','pedro.santos@email.com','45678912300','Biotecnologia',NULL,9876,NULL,NULL,'2023003','senha789'),(4,'Carla Lima','2007-02-18','Feminino','24680000','11777777777','carla.lima@email.com','98765432101','ADM',NULL,6543,NULL,NULL,'2023004','senha101'),(5,'Lucas Souza','2003-12-05','Masculino','13579000','11666666666','lucas.souza@email.com','12398745600','Publicidade','C',3210,'Fernanda Souza','PUB01','2023005','senha202');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `genero` enum('Masculino','Feminino','Não Binário','Outros','Prefiro não dizer') DEFAULT NULL,
  `CEP` varchar(9) CHARACTER SET utf8mb4 NOT NULL DEFAULT '00000-000',
  `numero_telefone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` char(14) CHARACTER SET utf8mb4 NOT NULL DEFAULT '000.000.000-00',
  `materia` enum('Matematica','Biologia') NOT NULL,
  `coordenador` tinyint(1) DEFAULT NULL,
  `RA` varchar(45) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` VALUES (1,'Carlos Souza','1980-03-10','Masculino','09876000','11888888888','carlos.souza@email.com','11122233344','Matematica',1,'PROF01','senha123'),(2,'Juliana Santos','1990-08-25','Feminino','65432109','11777777777','juliana.santos@email.com','55566677788','Biologia',NULL,'PROF02','senha456'),(3,'Fernando Oliveira','1975-05-12','Masculino','12345600','11666666666','fernando.oliveira@email.com','99988877766','Biologia',NULL,'PROF03','senha789'),(4,'Patricia Lima','1985-12-05','Feminino','98765432','11999999999','patricia.lima@email.com','12398745601','Matematica',NULL,'PROF04','senha101');
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;

--
-- Dumping routines for database 'academicsDB'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2024-03-31 22:26:17
=======
-- Dump completed on 2024-03-31 22:26:17