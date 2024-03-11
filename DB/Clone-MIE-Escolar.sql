CREATE DATABASE  IF NOT EXISTS `mieescolar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mieescolar`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: mieescolar
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `genero` enum('Masculino','Feminino','Outro') DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `numero_telefone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autorizacoesconsentimentosalunos`
--

DROP TABLE IF EXISTS `autorizacoesconsentimentosalunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autorizacoesconsentimentosalunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `autorizacao_atividades_extracurriculares` tinyint(1) DEFAULT NULL,
  `consentimento_excursao_escolar` tinyint(1) DEFAULT NULL,
  `consentimento_uso_imagem_aluno` tinyint(1) DEFAULT NULL,
  `aluno_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aluno_id` (`aluno_id`),
  CONSTRAINT `autorizacoesconsentimentosalunos_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autorizacoesconsentimentosalunos`
--

LOCK TABLES `autorizacoesconsentimentosalunos` WRITE;
/*!40000 ALTER TABLE `autorizacoesconsentimentosalunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `autorizacoesconsentimentosalunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacoesdesempenhoprofessores`
--

DROP TABLE IF EXISTS `avaliacoesdesempenhoprofessores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacoesdesempenhoprofessores` (
  `AvaliacaoID` int NOT NULL AUTO_INCREMENT,
  `ProfessorID` int DEFAULT NULL,
  `AnoAvaliacao` year DEFAULT NULL,
  `Classificacao` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`AvaliacaoID`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `avaliacoesdesempenhoprofessores_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `professores` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacoesdesempenhoprofessores`
--

LOCK TABLES `avaliacoesdesempenhoprofessores` WRITE;
/*!40000 ALTER TABLE `avaliacoesdesempenhoprofessores` DISABLE KEYS */;
/*!40000 ALTER TABLE `avaliacoesdesempenhoprofessores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificacoescredenciaisprofessores`
--

DROP TABLE IF EXISTS `certificacoescredenciaisprofessores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificacoescredenciaisprofessores` (
  `CertificadoID` int NOT NULL AUTO_INCREMENT,
  `ProfessorID` int DEFAULT NULL,
  `CertificadoNome` varchar(100) DEFAULT NULL,
  `Instituicao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CertificadoID`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `certificacoescredenciaisprofessores_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `professores` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificacoescredenciaisprofessores`
--

LOCK TABLES `certificacoescredenciaisprofessores` WRITE;
/*!40000 ALTER TABLE `certificacoescredenciaisprofessores` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificacoescredenciaisprofessores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatoemergenciaalunos`
--

DROP TABLE IF EXISTS `contatoemergenciaalunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contatoemergenciaalunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_contato_emergencia` varchar(100) DEFAULT NULL,
  `relacao_com_aluno` varchar(50) DEFAULT NULL,
  `numero_telefone_contato_emergencia` varchar(15) DEFAULT NULL,
  `aluno_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aluno_id` (`aluno_id`),
  CONSTRAINT `contatoemergenciaalunos_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatoemergenciaalunos`
--

LOCK TABLES `contatoemergenciaalunos` WRITE;
/*!40000 ALTER TABLE `contatoemergenciaalunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contatoemergenciaalunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatosemergenciaprofessores`
--

DROP TABLE IF EXISTS `contatosemergenciaprofessores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contatosemergenciaprofessores` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ProfessorID` int DEFAULT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Parentesco` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `contatosemergenciaprofessores_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `professores` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatosemergenciaprofessores`
--

LOCK TABLES `contatosemergenciaprofessores` WRITE;
/*!40000 ALTER TABLE `contatosemergenciaprofessores` DISABLE KEYS */;
/*!40000 ALTER TABLE `contatosemergenciaprofessores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinaslecionadasprofessores`
--

DROP TABLE IF EXISTS `disciplinaslecionadasprofessores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplinaslecionadasprofessores` (
  `DisciplinaID` int NOT NULL AUTO_INCREMENT,
  `ProfessorID` int DEFAULT NULL,
  `Disciplina` varchar(100) DEFAULT NULL,
  `NivelEnsino` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DisciplinaID`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `disciplinaslecionadasprofessores_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `professores` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinaslecionadasprofessores`
--

LOCK TABLES `disciplinaslecionadasprofessores` WRITE;
/*!40000 ALTER TABLE `disciplinaslecionadasprofessores` DISABLE KEYS */;
/*!40000 ALTER TABLE `disciplinaslecionadasprofessores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentacaolegalprofessores`
--

DROP TABLE IF EXISTS `documentacaolegalprofessores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentacaolegalprofessores` (
  `DocumentoID` int NOT NULL AUTO_INCREMENT,
  `ProfessorID` int DEFAULT NULL,
  `RG` varchar(20) DEFAULT NULL,
  `CPF` varchar(20) DEFAULT NULL,
  `ComprovanteResidencia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DocumentoID`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `documentacaolegalprofessores_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `professores` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentacaolegalprofessores`
--

LOCK TABLES `documentacaolegalprofessores` WRITE;
/*!40000 ALTER TABLE `documentacaolegalprofessores` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentacaolegalprofessores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experienciaprofissionalprofessores`
--

DROP TABLE IF EXISTS `experienciaprofissionalprofessores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experienciaprofissionalprofessores` (
  `ExperienciaID` int NOT NULL AUTO_INCREMENT,
  `ProfessorID` int DEFAULT NULL,
  `Empresa` varchar(100) DEFAULT NULL,
  `Cargo` varchar(100) DEFAULT NULL,
  `PeriodoTrabalho` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ExperienciaID`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `experienciaprofissionalprofessores_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `professores` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experienciaprofissionalprofessores`
--

LOCK TABLES `experienciaprofissionalprofessores` WRITE;
/*!40000 ALTER TABLE `experienciaprofissionalprofessores` DISABLE KEYS */;
/*!40000 ALTER TABLE `experienciaprofissionalprofessores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacaoacademicaprofessores`
--

DROP TABLE IF EXISTS `formacaoacademicaprofessores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formacaoacademicaprofessores` (
  `FormacaoID` int NOT NULL AUTO_INCREMENT,
  `ProfessorID` int DEFAULT NULL,
  `Graduacao` varchar(100) DEFAULT NULL,
  `Mestrado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`FormacaoID`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `formacaoacademicaprofessores_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `professores` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacaoacademicaprofessores`
--

LOCK TABLES `formacaoacademicaprofessores` WRITE;
/*!40000 ALTER TABLE `formacaoacademicaprofessores` DISABLE KEYS */;
/*!40000 ALTER TABLE `formacaoacademicaprofessores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historicoescolaralunos`
--

DROP TABLE IF EXISTS `historicoescolaralunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historicoescolaralunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disciplinas_cursadas` varchar(200) DEFAULT NULL,
  `notas_medias` varchar(100) DEFAULT NULL,
  `frequencia_aulas` varchar(50) DEFAULT NULL,
  `conclusao_certificados` varchar(200) DEFAULT NULL,
  `aluno_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aluno_id` (`aluno_id`),
  CONSTRAINT `historicoescolaralunos_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historicoescolaralunos`
--

LOCK TABLES `historicoescolaralunos` WRITE;
/*!40000 ALTER TABLE `historicoescolaralunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `historicoescolaralunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarioscalendarioprofessores`
--

DROP TABLE IF EXISTS `horarioscalendarioprofessores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarioscalendarioprofessores` (
  `HorarioID` int NOT NULL AUTO_INCREMENT,
  `ProfessorID` int DEFAULT NULL,
  `DiaSemana` varchar(20) DEFAULT NULL,
  `HorarioInicio` time DEFAULT NULL,
  `HorarioFim` time DEFAULT NULL,
  PRIMARY KEY (`HorarioID`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `horarioscalendarioprofessores_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `professores` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarioscalendarioprofessores`
--

LOCK TABLES `horarioscalendarioprofessores` WRITE;
/*!40000 ALTER TABLE `horarioscalendarioprofessores` DISABLE KEYS */;
/*!40000 ALTER TABLE `horarioscalendarioprofessores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacoesacademicasalunos`
--

DROP TABLE IF EXISTS `informacoesacademicasalunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacoesacademicasalunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ano_escolar` int DEFAULT NULL,
  `series_anteriores` varchar(100) DEFAULT NULL,
  `resultados_exames_padronizados` varchar(100) DEFAULT NULL,
  `aluno_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aluno_id` (`aluno_id`),
  CONSTRAINT `informacoesacademicasalunos_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacoesacademicasalunos`
--

LOCK TABLES `informacoesacademicasalunos` WRITE;
/*!40000 ALTER TABLE `informacoesacademicasalunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `informacoesacademicasalunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacoescontratuaisprofessores`
--

DROP TABLE IF EXISTS `informacoescontratuaisprofessores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacoescontratuaisprofessores` (
  `ContratoID` int NOT NULL AUTO_INCREMENT,
  `ProfessorID` int DEFAULT NULL,
  `DataContratacao` date DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  `Beneficios` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ContratoID`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `informacoescontratuaisprofessores_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `professores` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacoescontratuaisprofessores`
--

LOCK TABLES `informacoescontratuaisprofessores` WRITE;
/*!40000 ALTER TABLE `informacoescontratuaisprofessores` DISABLE KEYS */;
/*!40000 ALTER TABLE `informacoescontratuaisprofessores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacoesmedicasalunos`
--

DROP TABLE IF EXISTS `informacoesmedicasalunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacoesmedicasalunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `informacoes_alergias` varchar(200) DEFAULT NULL,
  `condicoes_medicas_cronicas` varchar(200) DEFAULT NULL,
  `medicamentos_prescritos` varchar(200) DEFAULT NULL,
  `restricoes_alimentares` varchar(200) DEFAULT NULL,
  `informacoes_vacinacao` varchar(200) DEFAULT NULL,
  `aluno_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aluno_id` (`aluno_id`),
  CONSTRAINT `informacoesmedicasalunos_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacoesmedicasalunos`
--

LOCK TABLES `informacoesmedicasalunos` WRITE;
/*!40000 ALTER TABLE `informacoesmedicasalunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `informacoesmedicasalunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricularegistroalunos`
--

DROP TABLE IF EXISTS `matricularegistroalunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricularegistroalunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero_matricula_aluno` int DEFAULT NULL,
  `data_matricula` date DEFAULT NULL,
  `turma_grupo_curso` varchar(50) DEFAULT NULL,
  `aluno_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aluno_id` (`aluno_id`),
  CONSTRAINT `matricularegistroalunos_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricularegistroalunos`
--

LOCK TABLES `matricularegistroalunos` WRITE;
/*!40000 ALTER TABLE `matricularegistroalunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `matricularegistroalunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professores` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL,
  `Sexo` enum('Masculino','Feminino','Não Binário','Outros','Prefiro não dizer') DEFAULT NULL,
  `EstadoCivil` varchar(20) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

LOCK TABLES `professores` WRITE;
/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registropagamentosalunos`
--

DROP TABLE IF EXISTS `registropagamentosalunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registropagamentosalunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pagamentos_mensalidades` decimal(10,2) DEFAULT NULL,
  `taxas_escolares` decimal(10,2) DEFAULT NULL,
  `aluno_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aluno_id` (`aluno_id`),
  CONSTRAINT `registropagamentosalunos_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registropagamentosalunos`
--

LOCK TABLES `registropagamentosalunos` WRITE;
/*!40000 ALTER TABLE `registropagamentosalunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `registropagamentosalunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registroscomportamentodisciplinaalunos`
--

DROP TABLE IF EXISTS `registroscomportamentodisciplinaalunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registroscomportamentodisciplinaalunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `incidentes_disciplinares` varchar(200) DEFAULT NULL,
  `avisos_suspensoes` varchar(200) DEFAULT NULL,
  `aluno_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aluno_id` (`aluno_id`),
  CONSTRAINT `registroscomportamentodisciplinaalunos_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registroscomportamentodisciplinaalunos`
--

LOCK TABLES `registroscomportamentodisciplinaalunos` WRITE;
/*!40000 ALTER TABLE `registroscomportamentodisciplinaalunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `registroscomportamentodisciplinaalunos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-10 21:16:42
