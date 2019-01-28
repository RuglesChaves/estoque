-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24-Jan-2019 às 21:12
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `novo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `baixar`
--

CREATE TABLE `baixar` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `quantidade` text,
  `fornecedor` varchar(50) DEFAULT NULL,
  `baixa` int(11) NOT NULL,
  `os` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `usuario` text NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `baixar`
--

INSERT INTO `baixar` (`id`, `nome`, `quantidade`, `fornecedor`, `baixa`, `os`, `tipo`, `usuario`, `data`) VALUES
(1, 'FONTE DE 7.8V / 3.5A', NULL, NULL, 0, 0, '', 'jardel', '2018-01-02'),
(2, 'PLACA BRA CANCELA MEDIA P/ ADESIVO', NULL, NULL, 1, 1, '', 'jardel', '2018-01-10'),
(3, 'PLACA PEQUENA BRA C/ ADESIVO', NULL, NULL, 1, 1, '', 'jardel', '21-01-2018'),
(4, 'PLACA BRA CANCELA GRANDE', NULL, NULL, 0, 111111, '', 'jardel', '20-01-2018'),
(5, 'PLACA BRA CANCELA MEDIA C/ ARREBITE', NULL, NULL, 1, 1, '', 'jardel', '20-01-2018'),
(6, 'PLACA BRA CANCELA MEDIA C ARREBITE', NULL, NULL, 1, 1, '', 'jardel', '20-01-2018'),
(7, 'CONTROLE IMECOTRON DIVERSOS', NULL, NULL, 0, 0, '', 'jardel', '20-01-2018'),
(8, 'IMPRESSORA TERMICA DO ORION COM GUILHOTINA', NULL, NULL, 0, 0, '', 'jardel', '20-01-2018'),
(9, 'SILICONE DE ALTA TEMPERATURA', NULL, NULL, 0, 0, '', 'jardel', '20-01-2018'),
(10, 'SILICONE DE ALTA TEMPERATURA', NULL, NULL, 0, 0, '', 'jardel', '25-01-2018'),
(11, 'IMPRESSORA TÃ‰RMICA P TOTEN BRA', NULL, NULL, 0, 0, '', 'jardel', '20-01-2018'),
(12, 'PLACA ELETRÃ”NICA DA CANCELA BRA', NULL, NULL, 1, 100, '', 'jardel', '20-01-2018'),
(13, 'IMPRESSORA TÃ‰RMICA P TOTEN BRA', NULL, NULL, 1, 2, '', 'fernando', '20-01-2018'),
(14, 'LAÃ‡O INDUTIVO 2 X 2 X 2,5 M', NULL, NULL, 1, 0, '', 'max', '20-01-2018');

-- --------------------------------------------------------

--
-- Estrutura da tabela `erro`
--

CREATE TABLE `erro` (
  `cod` varchar(50) DEFAULT NULL,
  `desc` text,
  `solucao` varchar(50) DEFAULT NULL,
  `baixa` int(11) NOT NULL,
  `os` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `erro`
--

INSERT INTO `erro` (`cod`, `desc`, `solucao`, `baixa`, `os`, `tipo`, `id`, `data`) VALUES
(NULL, 'sdsdsdsdsdsd', NULL, 0, 0, '', 0, '2017-02-10 21:18:07'),
(NULL, 'sdsdsdsdsdsd', NULL, 0, 0, '', 0, '2017-02-10 21:18:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `id` int(5) NOT NULL,
  `nome` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `quantidade` text CHARACTER SET latin1,
  `fornecedor` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `baixa` int(11) NOT NULL,
  `os` int(11) NOT NULL,
  `tipo` varchar(50) CHARACTER SET latin1 NOT NULL,
  `empresa` text CHARACTER SET latin1 NOT NULL,
  `usuario` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id`, `nome`, `quantidade`, `fornecedor`, `baixa`, `os`, `tipo`, `empresa`, `usuario`) VALUES
(4, 'PLACA BRA CANCELA GRANDE', '27', 'BRA PARKING ', 0, 111111, 'EQUIPAMENTOS', 'TOTALSEG', 'jardel'),
(6, 'PLACA PEQUENA BRA C/ ADESIVO', '25', 'BRA PARKING ', 1, 1, 'EQUIPAMENTOS', 'TOTALSEG', 'jardel'),
(9, 'LEITOR DE CÃ“DIGO DE BARRAS PEQUENO', '3', 'BRA PARKING ', 0, 0, 'COMPONENTES', 'BRA PARKING', ''),
(10, 'SILICONE DE ALTA TEMPERATURA', '2', 'OUTROS', 0, 0, 'EQUIPAMENTOS', 'TOTALSEG', 'jardel'),
(11, 'BOBINA TÃ‰RMICA BRA', '7', 'BRA PARKING ', 0, 0, 'COMPONENTES', 'BRA PARKING', ''),
(13, 'PLACA DE CANCELA IMECOTRON', '4', 'IMECONTRON', 0, 0, 'COMPONENTES', 'BRA PARKING', ''),
(14, 'CONTROLE IMECOTRON DIVERSOS', '14', 'IMECONTRON', 0, 0, 'EQUIPAMENTOS', 'TOTALSEG', 'jardel'),
(15, 'MOTOR IMECOTRON PARA 127V', '2', 'IMECONTRON', 0, 0, 'COMPONENTES', 'BRA PARKING', ''),
(16, 'IMPRESSORA TÃ‰RMICA P TOTEN BRA', '1', 'BRA PARKING ', 1, 2, 'EQUIPAMENTOS', 'BRA PARKING', 'fernando'),
(17, 'FONTE DE 15V CENTRAL DE ALARME MAUSER ', '2', 'MAUSER', 0, 0, 'PECAS', 'MAUSER', ''),
(18, 'PLACA TRANSMISSORA TX COM DEFEITO', '2', 'MAUSER ', 0, 0, 'PECAS', 'MAUSER', ''),
(19, 'PLACA RECEPTORA RX COM DEFEITO', '2', 'MAUSER', 0, 0, 'COMPONENTES', 'MAUSER', ''),
(20, 'BUZZER PARA ANTENA ', '20', 'MAUSER', 0, 0, 'PECAS', 'MAUSER', ''),
(21, 'RELÃ“GIO DE PONTO IDNOX LT BIO C/ DEFEITO', '1', 'DIXI', 0, 0, 'EQUIPAMENTOS', 'DIXI', ''),
(22, 'RELÃ“GIO DE PONTO IDNOX LT BIO ', '2', 'DIXI', 0, 0, 'EQUIPAMENTOS', 'DIXI', ''),
(26, 'CENTRAL TRANSFORME P/ 3 SENSORES C/ DEFEITO', '6', 'MAUSER', 0, 0, 'EQUIPAMENTOS', 'MAUSER', ''),
(27, 'TABLE TOP ', '5', 'MAUSER', 0, 0, 'COMPONENTES', 'MAUSER', ''),
(30, 'SENSOR PAL MAUSER', '5', 'MAUSER', 0, 0, 'COMPONENTES', 'MAUSER', ''),
(31, 'CONTROLE DA CENTRAL TRANSFORME AZUL', '5', 'MAUSER ', 0, 0, 'COMPONENTES', 'MAUSER', ''),
(32, 'CONTROLE DA CENTRAL TRANSFORME VERMELHO', '5', 'MAUSER', 0, 0, 'COMPONENTES', 'MAUSER', ''),
(33, 'POWER CORD CONVENCIONAL ', '5', 'MAUSER', 0, 0, 'COMPONENTES', 'MAUSER', ''),
(34, 'PLACA DO RELÃ“GIO DE PONTO VELTI', '1', 'VELTI', 0, 0, 'COMPONENTES', 'VELTI', ''),
(35, 'DISPLAY GRÃFICO P/ RELÃ“GIO VELTI', '1', 'VELTI', 0, 0, 'COMPONENTES', 'VELTI', ''),
(36, 'MODULO BIOMÃ‰TRICO P/ RELÃ“GIO VELTI C DEFEITO', '2', 'VELTI', 0, 0, 'EQUIPAMENTOS', 'VELTI', ''),
(37, 'POWER CORD PARA I PHONE', '5', 'MAUSER', 0, 0, 'COMPONENTES', 'MAUSER', ''),
(38, 'PLACA DO PRISMA I', '1', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(39, 'PLACA DO PRISMA R04', '2', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(40, 'PLACA DO PRISMA R02', '4', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(41, 'PLACA DO PRISMA R01', '1', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(42, 'PLACA EXTENSORA', '2', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(43, 'PLACA DO PRIMME PONTO ', '3', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(44, 'PLACA CATIMEC GRANDE KRAKEN ', '4', 'TOTALSEG ', 0, 0, 'EQUIPAMENTOS', 'TOTALSEG', 'jardel'),
(45, 'PLACA CATIMEC PEQUENA', '1', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(46, 'PLACA DO PRISMA J', '2', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(47, 'PLACA DO PRISMA F', '3', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(48, 'SENSOR DO DIA PLUS ', '17', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(49, 'PLACA DO PRIMME ACESSO CATRACA ', '4', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(50, 'PLACA DO PRISMA R03', '2', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(51, 'PLACA DO ORION 5 SF', '1', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(52, 'PLACA DO PRISMA E', '2', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(53, 'PLACA DO PRISMA H', '1', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(54, 'MOLA DO TORNIQUETE ', '7', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(55, 'PROTEÃ‡ÃƒO CONTRA CHUVA DO ARGOS', '4', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(56, 'MEMBRANA DO TECLADO DE CATRACA ', '17', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(57, 'MEMBRANA DO TECLADO DO PRISMA', '19', 'TOTALSEG ', 1, 1, 'PECAS', 'TOTALSEG', 'jardel'),
(58, 'PLACA DO TECLADO DO ORION', '5', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(59, 'PLACA DO TECLADO DE CATRACA', '5', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(60, 'TECLADO DO TOTEN HENRY ', '1', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(61, 'PLACA CORTE DE BATERIA ORION 6 6V ', '4', 'TOTALSEG ', 0, 0, 'EQUIPAMENTOS', 'TOTALSEG', ''),
(62, 'PLACA CORTE DE BATERIA ACESSO SF ', '14', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(63, 'TAMPA DA LEITORA DE CARTÃƒO DE CATRACA', '14', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(64, 'ESPAÃ‡ADOR DO LEITOR DE PROXIMIDADE CATRACA', '20', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(65, 'LEITORA DE CARTÃƒO RFID CATRACA', '0', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(66, 'FITA DE IMPRESSÃƒO DO PLUS AZUL', '16', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(67, 'FITA DE IMPRESSÃƒO DO PLUS PRETA', '11', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', ''),
(69, 'LEITOR MIFARE CATRACA', '2', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(70, 'SENSOR DE PAPEL DO PRISMA HENRY', '5', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(71, 'BATERIA CR2032 HENRY', '3', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(72, 'TAMBOR DE FECHADURA DO PRISMA COMPLETO HENRY', '2', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(73, 'LEITORA DE CARTÃƒO RFID CATRACA 7X HENRY', '13', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(74, 'SENSOR DO DIA PLUS HENRY', '8', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(75, 'CHAVE LIGA DESLIGA HENRY', '6', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(76, 'SENSOR DO COFRE DA CATRACA HENRY', '1', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(77, 'IMPRESSORA TÃ‰RMICA DO PRISMA HENRY', '8', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(78, 'DISPLAY MONOCROMÃTICO RELÃ“GIO HENRY ', '1', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(79, 'TIBBO HENRY', '2', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(80, 'DISPLAY MONOCROMÃTICO CATRACA HENRY ', '1', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(81, 'PLACA EXTENSORA HENRY', '2', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(82, 'PLACA PICTOGRAMA HENRY', '1', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(83, 'FONTE DE 7.8V / 3.5A', '8', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(84, 'CHAVE LIGA DESLIGA ', '15', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(85, 'CAIXA DE ACRÃLICO DO ARGOS ', '1', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(86, 'PLACA DO PRISMA R02 HENRY', '5', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(87, 'PLACA DO PRIMME SF RELÃ“GIO HENRY', '1', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(88, 'PLACA DO PRISMA J HENRY', '2', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(89, 'MODULO CONVERSOR SERIAL/ TCPIP HENRY', '3', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(90, 'MODULO BIOMÃ‰TRICO DE 4M 8X HENRY', '3', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(91, 'ROLETE DA IMPRESSORA DO PRISMA HENRY', '9', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(92, 'CAIXA FONTE DO PRIMME SF ', '4', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(93, 'PLACA DO ORION 5 SEM MEMORIA ', '2', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(94, 'PLACA DO ORION 6A COM MEMORIA ', '2', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(95, 'PLACA DO ORION 6B SEM MEMORIA ', '3', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(96, 'PLACA DO ORION 6B COM MEMORIA', '5', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(97, 'PLACA DO ORION 6D COM MEMORIA ', '2', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(98, 'IMPRESSORA DO ORION SEM GUILHOTINA HENRY', '2', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(99, 'IMPRESSORA DO ORION COM GUILHOTINA HENRY', '6', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(100, 'FONTE DE 7.8V / 2A HENRY', '3', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(101, 'FONTE 14.5V 2A HENRY', '3', 'HENRY', 0, 0, 'PECAS', 'HENRY', 'jardel'),
(102, 'FONTE DE 12V ', '22', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(103, 'FONTE DE 14.5V 2A ', '3', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(104, 'FONTE DE 14.5V 4.5A GRANDE', '2', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(105, 'IMPRESSORA DO PRISMA ', '2', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(106, 'IMPRESSORA DO HEXA ', '1', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(107, 'CAIXA FONTE DO PRISMA ', '8', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(108, 'CAIXA FONTE DO ORION 6 6V', '1', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(109, 'FITA DE IMPRESSÃƒO DO VEGA', '3', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(110, 'IMPRESSORA TERMICA DO ORION COM GUILHOTINA', '2', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(111, 'PLACA DO PRIMME ACESSO SF CATRACA', '2', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(112, 'PLACA ELETRÃ”NICA DO TOTEN BRA', '0', 'BRA PARKING ', 0, 0, 'COMPONENTES', 'BRA PARKING', 'jardel'),
(113, 'PLACA ELETRÃ”NICA DA CANCELA BRA', '0', 'BRA PARKING ', 1, 100, 'PECAS', 'BRA PARKING', 'jardel'),
(114, 'LEITORA DE CARTÃƒO RFID GRANDE TOTEN BRA', '0', 'BRA PARKING ', 0, 0, 'PECAS', 'BRA PARKING', 'jardel'),
(115, 'SENSOR DE PAPEL DO PRISMA ', '7', 'TOTALSEG ', 0, 0, 'PECAS', 'TOTALSEG', 'jardel'),
(116, 'asas1', '1', '11111', 0, 0, 'EQUIPAMENTOS', 'TOTALSEG', 'jardel'),
(117, 'jajajaja', '10', 'sasasas', 0, 0, 'EQUIPAMENTOS', 'TOTALSEG', 'jardel'),
(118, 'LEITOR DE CÃ“DIGO DE BARRAS PEQUENO', '3', 'BRA PARKING ', 0, 0, 'EQUIPAMENTOS', 'TOTALSEG', 'jardel');

--
-- Acionadores `estoque`
--
DELIMITER $$
CREATE TRIGGER `BAIXA` BEFORE UPDATE ON `estoque` FOR EACH ROW INSERT INTO `baixar`(`baixa`, os, nome, usuario) VALUES (new.baixa, new.os, new.nome, new.usuario)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id` int(11) NOT NULL,
  `fornecedor` text NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id`, `fornecedor`, `data`, `usuario`) VALUES
(1, 'HENRY', '2017-02-08 20:06:42', 0),
(2, 'MAUSER', '2017-02-08 20:06:47', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `usuario_email` varchar(20) NOT NULL,
  `usuario_senha` varchar(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `nome`, `usuario_email`, `usuario_senha`, `status`) VALUES
(1, 'JARDEL', 'JARDEL', 'jardel', 'BLOQUEADO'),
(4, 'rugles', 'rugles', 'rugles', 'LIBERADO'),
(8, 'MAX', 'MAX', 'max', 'BLOQUEADO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `numeros`
--

CREATE TABLE `numeros` (
  `id` int(11) NOT NULL,
  `codigo` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `numeros`
--

INSERT INTO `numeros` (`id`, `codigo`) VALUES
(4, 11111111);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id` int(5) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `quantidade` text,
  `fornecedor` varchar(50) DEFAULT NULL,
  `baixa` int(11) NOT NULL,
  `os` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `empresa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id`, `nome`, `quantidade`, `fornecedor`, `baixa`, `os`, `tipo`, `empresa`) VALUES
(1, 'Bateria', '10', 'TOTALSEG', 0, 1, 'EQUIPAMENTOS', 'TOTALSEG'),
(2, 'qqqqqqqqqqqqqq', '11', '11111111111', 0, 1, 'EQUIPAMENTOS', 'TOTALSEG'),
(3, 'qqqqq', '1', 'eeeeeeeeee', 0, 0, 'EQUIPAMENTOS', 'TOTALSEG');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(50) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nivel` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `cadastro` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha`, `email`, `nivel`, `ativo`, `cadastro`) VALUES
(1, 'JARDEL', 'JARDEL', 'jardel', 'usuario@demo.com.br', 1, 1, '2017-02-08 08:30:20'),
(2, 'fernando', 'fernando', 'fernando', 'admin@demo.com.br', 2, 1, '2017-02-08 08:30:20'),
(6, 'mas', 'mas', '2563', '', 1, 1, '0000-00-00 00:00:00'),
(5, '58', '58', '2596', '', 1, 1, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baixar`
--
ALTER TABLE `baixar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `numeros`
--
ALTER TABLE `numeros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD KEY `nivel` (`nivel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baixar`
--
ALTER TABLE `baixar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `numeros`
--
ALTER TABLE `numeros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
