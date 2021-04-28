-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Abr-2021 às 15:49
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aula`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ganhadores_oscar`
--

CREATE TABLE `ganhadores_oscar` (
  `categoria` varchar(40) DEFAULT NULL,
  `ganhador` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ganhadores_oscar`
--

INSERT INTO `ganhadores_oscar` (`categoria`, `ganhador`) VALUES
('Melhor filme', 'Nomadland'),
('Melhor atriz', 'Frances McDormand - Nomadland'),
('Melhor ator', 'Anthony Hopkins - Meu pai'),
('Melhor direção', 'Chloé Zhao - Nomadland'),
('Melhor atriz coadjuvante', 'Youn Yuh-jung - Minari'),
('Melhor ator coadjuvante', 'Daniel Kaluuya - Judas e o messias negro'),
('Melhor filme internacional', 'Druk - Mais uma rodada (Dinamarca)'),
('Melhor roteiro adaptado', 'Meu pai'),
('Melhor roteiro original', 'Bela vingança'),
('Melhor figurino', 'A voz suprema do blues'),
('Melhor trilha sonora', 'Soul'),
('Melhor animação', 'Soul'),
('Melhor curta de animação', 'If anything happens I love you'),
('Melhor curta-metragem em live action', 'Two distant strangers'),
('Melhor documentário', 'My octopus teacher'),
('Melhor documentário de curta-metragem', 'Colette'),
('Melhor som', 'O som do silêncio'),
('Canção original', 'Fight for you - Judas e o messias negro'),
('Maquiagem e cabelo', 'A voz suprema do blues'),
('Efeitos visuais', 'Tenet'),
('Melhor fotografia', 'Mank'),
('Melhor edição', 'O som do silêncio'),
('Melhor design de produção', 'Mank');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
