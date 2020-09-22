-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 17-Set-2020 às 19:17
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `banco002`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `versao` int(11) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `dataCadastro` datetime DEFAULT NULL,
  `imagem` longblob,
  `salario` decimal(14,2) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `peso` decimal(7,3) DEFAULT NULL,  
  `altura` decimal(4,2) DEFAULT NULL,  
  `sobreNome` varchar(50) DEFAULT NULL,
  `corOlhos` varchar(30) DEFAULT NULL,
  `corPele` varchar(30) DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43;



INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha`, `versao`, `ativo`, `dataCadastro`, `imagem`, `salario`, `celular`, `nascimento`, `sexo`,`altura`,`sobreNome`,`corOlhos`,`corPele`,`endereco`) VALUES
(43, 'Chaves', 'cha', 'abc', 1, '1', '2020-01-01 21:43:47', '', '0.01', '00000', '1943-01-01', 'm',1.60,'Barril','preto','branco','México');
