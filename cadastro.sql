-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/11/2024 às 03:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadclientes`
--

CREATE TABLE `cadclientes` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `CPF` varchar(11) DEFAULT NULL,
  `Nacionalidade` varchar(50) DEFAULT NULL,
  `EstadoCivil` varchar(50) DEFAULT NULL,
  `Profissao` varchar(50) DEFAULT NULL,
  `Endereco` varchar(50) NOT NULL,
  `DataNascimento` date DEFAULT NULL,
  `TelFixo` varchar(15) NOT NULL,
  `Celular` varchar(11) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadfuncionarios`
--

CREATE TABLE `cadfuncionarios` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Perfil` varchar(100) DEFAULT NULL,
  `NumOAB` varchar(9) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Senha` varchar(50) DEFAULT NULL,
  `Telefone` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadprocesso`
--

CREATE TABLE `cadprocesso` (
  `Id` int(11) NOT NULL,
  `Data` date DEFAULT NULL,
  `Horario` time DEFAULT NULL,
  `NumProcesso` varchar(25) DEFAULT NULL,
  `Vara` varchar(50) DEFAULT NULL,
  `Cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadtarefas`
--

CREATE TABLE `cadtarefas` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Descricao` varchar(100) DEFAULT NULL,
  `MensagemAlerta` varchar(50) DEFAULT NULL,
  `UsuarioResponsavel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadclientes`
--
ALTER TABLE `cadclientes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `TelFixo` (`TelFixo`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `Celular` (`Celular`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Índices de tabela `cadfuncionarios`
--
ALTER TABLE `cadfuncionarios`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Telefone` (`Telefone`),
  ADD UNIQUE KEY `NumOAB` (`NumOAB`);

--
-- Índices de tabela `cadprocesso`
--
ALTER TABLE `cadprocesso`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `cadtarefas`
--
ALTER TABLE `cadtarefas`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadclientes`
--
ALTER TABLE `cadclientes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadfuncionarios`
--
ALTER TABLE `cadfuncionarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadprocesso`
--
ALTER TABLE `cadprocesso`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadtarefas`
--
ALTER TABLE `cadtarefas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
