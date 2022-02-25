-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 25, 2022 at 01:15 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `jgreenco_score`
--

-- --------------------------------------------------------

--
-- Table structure for table `score_historico`
--
DROP TABLE score_historico;
CREATE TABLE `score_historico` (
  `his_ID` bigint NOT NULL,
  `his_cpf` varchar(14) DEFAULT NULL COMMENT 'Cpf ou cnpj',
  `his_nome` varchar(100) DEFAULT NULL,
  `his_grupo` tinyint(1) DEFAULT NULL COMMENT 'Classifica o grau de parentesco ou se é o próprio aluno',
  `his_nome_aluno` varchar(100) DEFAULT NULL COMMENT 'Nome do Aluno',
  `his_IDcolegio` int DEFAULT NULL,
  `his_numeroboleto` varchar(100) DEFAULT NULL,
  `his_data_historico` date DEFAULT NULL COMMENT 'Data da Dívida',
  `his_valor_historico` decimal(10,2) DEFAULT NULL COMMENT 'valor da divida',
  `his_descricao_historico` varchar(1000) DEFAULT NULL COMMENT 'Descrição detalha a composição da divida',
  `his_data_insercao` date DEFAULT NULL COMMENT 'Dia que a divida foi lançada no sistema',
  `his_pagamento_historico` date DEFAULT NULL COMMENT 'Data do Pagamento da divida',
  `his_valor_pagamento` decimal(10,2) DEFAULT NULL COMMENT 'valor do pagamento da divida',
  `his_descricao_pagamento` varchar(1000) DEFAULT NULL COMMENT 'Descrição detalha a a composição do pagamento da divida',
  `his_status` tinyint(1) DEFAULT '1' COMMENT '0-Paga;1-aberto;2-em pagamento'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score_historico`
--

INSERT INTO `score_historico` (`his_ID`, `his_cpf`, `his_nome`, `his_grupo`, `his_nome_aluno`, `his_IDcolegio`, `his_numeroboleto`, `his_data_historico`, `his_valor_historico`, `his_descricao_historico`, `his_data_insercao`, `his_pagamento_historico`, `his_valor_pagamento`, `his_descricao_pagamento`, `his_status`) VALUES
(1, '37395090071', 'Responsavel 1', 7, 'Aluno 1', 101, NULL, '2021-08-01', '1000.00', 'mes jan/abril', '2021-08-03', NULL, '0.00', '', 0),
(2, '18243110011', 'Responsavel 2', 9, 'Aluno 2', 96, NULL, '2021-08-02', '2000.00', '3 meses', '2021-08-01', '2021-08-19', '2200.00', 'tudo pago', 0),
(4, '44232821350', 'Andreai', 8, 'Paulo', 101, NULL, '2021-08-01', '1000.00', 'jun', '2021-09-01', NULL, '0.00', '', 0),
(7, '21604654376', 'Andreia', 8, 'Patr', 96, NULL, '2021-07-01', '900.00', 'jul', '2021-09-01', NULL, '0.00', '', 1),
(9, '95248263999', 'resp 2', 7, 'Aluno 5', 101, NULL, '2021-07-05', '679.00', 'jun', '2021-09-01', NULL, '0.00', '', 1),
(10, '95248263999', 'resp 2', 7, 'Aluno 6', 101, NULL, '2021-07-05', '679.00', 'jun', '2021-09-01', NULL, '0.00', '', 1),
(11, '70887885608', 'resp 3', 7, 'Aluno 7', 96, NULL, '2021-07-05', '700.00', 'jun', '2021-09-01', '2021-09-01', '300.00', 'set', 2),
(12, '12345678903', 'maria jose da silva', NULL, 'Aluno 1', 96, NULL, '2021-10-09', '531.00', NULL, '2021-09-06', NULL, NULL, NULL, 1),
(13, '12345678903', 'maria jose da silva', NULL, 'Aluno 1', 96, '9000', '2021-10-09', '531.00', NULL, '2021-09-06', '2021-10-09', '530.90', NULL, 1),
(14, '12345678903', 'maria jose da silva', NULL, 'Aluno 1', 96, '9001', '2021-11-09', '531.00', NULL, '2021-09-06', NULL, NULL, NULL, 1),
(15, '12345678903', 'maria jose da silva', NULL, 'Aluno 1', 96, '8000', '2021-10-09', '530.90', NULL, '2021-09-07', '2021-10-09', '530.90', NULL, 0),
(17, '12345678903', 'maria jose da silva', NULL, 'Aluno 1', 96, '7000', '2021-10-09', '530.90', NULL, '2021-09-07', '2021-10-09', '530.90', NULL, 0),
(18, '01234567890', 'Antonia', NULL, '', 96, '6000', '2021-10-09', '530.20', NULL, '2021-09-07', '2021-10-09', '530.20', NULL, 0),
(19, '01234567890', 'Antonia', NULL, '', 96, '5000', '2021-10-09', '530.20', NULL, '2021-09-07', '2021-10-09', '530.20', NULL, 0),
(20, '01234567890', 'Antonia', NULL, '', 96, '4000', '2021-10-09', '530.20', NULL, '2021-09-07', '2021-10-09', '530.20', NULL, 0),
(21, '01234567890', 'Antonia', NULL, '', 96, '3000', '2021-10-09', '530.20', NULL, '2021-09-07', '2021-10-09', '530.20', NULL, 0),
(23, '01234567890', 'Antonia', NULL, 'Alfredo', 96, '2000', '2021-10-09', '530.20', NULL, '2021-09-10', '2021-10-09', '530.20', NULL, 0),
(24, '01234567890', 'Antonia', NULL, 'Alfredo', 96, '1000', '2021-10-09', '530.20', NULL, '2021-09-10', NULL, NULL, NULL, 1),
(25, '13263762338', 'Resp 21', NULL, 'Aluno 21', 96, '210000', '2021-09-01', '300.00', NULL, '2021-09-24', NULL, '0.00', NULL, 1),
(26, '12345678903', 'maria jose da silva', NULL, 'Aluno 1', 96, '2000', '2021-10-09', '530.90', NULL, '2021-09-24', '2021-10-09', '530.90', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `score_historico`
--
ALTER TABLE `score_historico`
  ADD PRIMARY KEY (`his_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `score_historico`
--
ALTER TABLE `score_historico`
  MODIFY `his_ID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

