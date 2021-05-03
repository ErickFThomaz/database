-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.18-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para livros
CREATE DATABASE IF NOT EXISTS `livros` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `livros`;

-- Copiando estrutura para tabela livros.autor
CREATE TABLE IF NOT EXISTS `autor` (
  `autor_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `nasc` date DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`autor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela livros.autor: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` (`autor_id`, `nome`, `endereco`, `nasc`, `country`) VALUES
	(1, 'J. K. Rowling', '3227 Fairmont Avenue', '1965-07-31', 'UK'),
	(2, 'Gillian Flynn', '2103 Randall Drive', NULL, 'USA'),
	(3, 'Veríssimo', '27801 Rocky Mount', NULL, 'Brasil'),
	(4, 'Neil Gaiman', '77301 Cut And Shoot', NULL, 'UK'),
	(5, 'Clive Baker', '2496 Rose Avenue', NULL, 'USA'),
	(6, 'Rodrigo Polesso', '3788 Wetzel Lane', NULL, 'Brasil'),
	(7, 'Ruy Ohtake', '2710 Bobcat Drive', NULL, 'Brasil');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;

-- Copiando estrutura para tabela livros.editora
CREATE TABLE IF NOT EXISTS `editora` (
  `ediotra_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ediotra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela livros.editora: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `editora` DISABLE KEYS */;
INSERT INTO `editora` (`ediotra_id`, `nome`, `telefone`) VALUES
	(1, 'Rocco', '202-555-0171, 202-555-0134'),
	(2, 'Intriseca', '202-555-0187'),
	(3, 'Lero-lero', '202-555-0154'),
	(4, 'Editora Dark Sense', '202-555-0143'),
	(5, 'Editora Gente', '202-555-0185'),
	(6, 'Instituto Tomie Ohtake', '202-555-0110');
/*!40000 ALTER TABLE `editora` ENABLE KEYS */;

-- Copiando estrutura para tabela livros.estante
CREATE TABLE IF NOT EXISTS `estante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `livro_id` int(11) DEFAULT NULL,
  `datec` date DEFAULT NULL,
  `buystate` int(11) DEFAULT NULL,
  `rating` enum('Muito bom','Gostei','Mais ou Menos','Não gostei','Não li') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela livros.estante: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `estante` DISABLE KEYS */;
INSERT INTO `estante` (`id`, `livro_id`, `datec`, `buystate`, `rating`) VALUES
	(1, 1, '2005-03-02', 0, 'Muito bom'),
	(2, 2, '2005-04-22', 1, 'Gostei'),
	(3, 3, '2022-01-04', 0, 'Não li'),
	(4, 4, '2005-02-06', 1, 'Muito bom'),
	(5, 5, '2002-07-20', 1, 'Gostei'),
	(6, 6, '2017-01-02', 1, 'Não gostei'),
	(7, 7, '2020-03-29', 0, 'Não li'),
	(8, 8, '2009-02-06', 1, 'Mais ou Menos'),
	(9, 9, '2016-06-03', 0, 'Não li'),
	(10, 10, '2014-10-24', 1, 'Não gostei');
/*!40000 ALTER TABLE `estante` ENABLE KEYS */;

-- Copiando estrutura para tabela livros.gereno
CREATE TABLE IF NOT EXISTS `gereno` (
  `genero_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`genero_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela livros.gereno: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `gereno` DISABLE KEYS */;
INSERT INTO `gereno` (`genero_id`, `nome`) VALUES
	(1, 'Fantasia'),
	(2, 'Suspense'),
	(3, 'Comédia'),
	(4, 'Auto-Ajuda'),
	(5, 'Ficção Científica');
/*!40000 ALTER TABLE `gereno` ENABLE KEYS */;

-- Copiando estrutura para tabela livros.livros
CREATE TABLE IF NOT EXISTS `livros` (
  `livro_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `genero` int(11) DEFAULT NULL,
  `pagenum` int(10) DEFAULT NULL,
  `editora` int(10) DEFAULT NULL,
  `autor` int(10) DEFAULT NULL,
  `dataplubicacao` date DEFAULT NULL,
  `valor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`livro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela livros.livros: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` (`livro_id`, `nome`, `genero`, `pagenum`, `editora`, `autor`, `dataplubicacao`, `valor`) VALUES
	(1, 'Harry Potter e a Pedra Filosofal', 1, 368, 1, 1, '2007-02-03', '20,9'),
	(2, 'Harry Potter e o Prisioneiro de Azkaban', 1, 598, 1, 1, '2012-02-04', '18,79'),
	(3, 'Harry Potter e a Ordem da Fênix', 1, 798, 1, 1, '2005-08-03', '50,36'),
	(4, 'Harry Potter e a Câmara Secreta', 1, 328, 1, 1, '2019-04-23', '15,21'),
	(5, 'Garota Exemplar', 2, 128, 2, 2, '2000-03-02', '60,23'),
	(6, 'Diálogos Impossíveis', 3, 208, 3, 3, '2002-12-23', '10'),
	(7, 'Harry Potter e o Prisioneiro de Azkaban', 1, 368, 1, 4, '2001-05-12', '20,9'),
	(8, 'Arafat', 2, 158, 4, 5, '1978-03-21', '17,16'),
	(9, 'Este não é mais um livro de dieta', 4, 988, 5, 6, '2020-03-03', '9,81'),
	(10, 'Atenção Plena: Mindfulness', 5, 122, 6, 7, '2021-03-04', '20,55');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
