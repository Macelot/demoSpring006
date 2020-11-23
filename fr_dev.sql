-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 23/11/2018 às 21:11
-- Versão do servidor: 10.1.26-MariaDB-0+deb9u1
-- Versão do PHP: 7.1.20-1+0~20180725103315.2+stretch~1.gbpd5b650

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fr_dev`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `foto` longblob NOT NULL,
  `dataCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticia`
--

CREATE TABLE `noticia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `conteudo` varchar(255) NOT NULL,
  `foto` longblob NOT NULL,
  `dataCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(30) NOT NULL,
  `preco` decimal(7,2) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `fabricante` varchar(20) NOT NULL,
  `datafabricacao` date NOT NULL,
  `origem` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblAbastece`
--

CREATE TABLE `tblAbastece` (
  `id` int(11) NOT NULL,
  `qrcode` text,
  `device` varchar(100) DEFAULT NULL,
  `tipoCombustivel` varchar(100) DEFAULT NULL,
  `operador` varchar(100) DEFAULT NULL,
  `funcionario` varchar(100) DEFAULT NULL,
  `quantComb` decimal(13,3) DEFAULT NULL,
  `valorCobrado` decimal(13,3) DEFAULT NULL,
  `hash` text,
  `secretaria` varchar(100) DEFAULT NULL,
  `placa` varchar(20) DEFAULT NULL,
  `dataAtual` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblAbastece001`
--

CREATE TABLE `tblAbastece001` (
  `id` int(11) NOT NULL,
  `funcionario` varchar(100) NOT NULL,
  `quantComb` decimal(13,3) NOT NULL,
  `valorCobrado` decimal(13,3) NOT NULL,
  `dataAtual` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblAtividade`
--

CREATE TABLE `tblAtividade` (
  `tblAtividade_id` int(11) NOT NULL,
  `tblAtividade_Usuario` int(11) NOT NULL,
  `tblAtividade_lat` decimal(17,5) NOT NULL,
  `tblAtividade_lng` decimal(18,5) NOT NULL,
  `tblAtividade_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblAtividadeBKP0`
--

CREATE TABLE `tblAtividadeBKP0` (
  `tblAtividade_id` int(11) NOT NULL,
  `tblAtividade_Usuario` int(11) NOT NULL,
  `tblAtividade_lat` decimal(17,5) NOT NULL,
  `tblAtividade_lng` decimal(18,5) NOT NULL,
  `tblAtividade_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblCargo`
--

CREATE TABLE `tblCargo` (
  `tblCargo_id` int(11) NOT NULL,
  `tblCargo_descricao` varchar(45) DEFAULT NULL,
  `tblCargo_usuario` int(11) NOT NULL,
  `tblCargo_versao` int(11) NOT NULL DEFAULT '1',
  `tblCargo_dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tblCargo_dataAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblColaborador`
--

CREATE TABLE `tblColaborador` (
  `tblColaborador_id` int(11) NOT NULL,
  `tblColaborador_matricula` varchar(30) DEFAULT NULL,
  `tblColaborador_nome` varchar(30) DEFAULT NULL,
  `tblColaborador_email` varchar(50) DEFAULT NULL,
  `tblColaborador_telefone` varchar(55) DEFAULT NULL,
  `tblColaborador_senha` varchar(10) DEFAULT NULL,
  `tblColaborador_salario` float(10,2) DEFAULT NULL,
  `tblColaborador_cargo` varchar(30) DEFAULT NULL,
  `tblColaborador_foto` longblob,
  `tblColaborador_IdCargo_tblCargo` int(11) DEFAULT NULL,
  `tblColaborador_observacoes` text,
  `tblColaborador_logins` int(11) NOT NULL DEFAULT '0',
  `tblColaborador_versao` int(11) NOT NULL DEFAULT '1',
  `tblColaborador_dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tblColaborador_usuarioCadastro` int(11) DEFAULT NULL,
  `tblColaborador_dataAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tblColaborador_usuarioAlteracao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblDepartamento`
--

CREATE TABLE `tblDepartamento` (
  `tblDepartamento_id` int(11) NOT NULL,
  `tblDepartamento_descricao` varchar(45) DEFAULT NULL,
  `tblDepartamento_versao` int(11) NOT NULL DEFAULT '1',
  `tblDepartamento_dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tblDepartamento_dataAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblLogin`
--

CREATE TABLE `tblLogin` (
  `tblLogin_id` int(11) NOT NULL,
  `tblLogin_usuario` varchar(50) NOT NULL,
  `tblLogin_senha` varchar(50) NOT NULL,
  `tblLogin_qtd` int(11) NOT NULL,
  `tblLogin_ultimo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblLoginRealizado`
--

CREATE TABLE `tblLoginRealizado` (
  `tblLoginRealizado_id` int(11) NOT NULL,
  `tblLoginRealizado_idLogin` varchar(50) NOT NULL,
  `tblLoginRealizado_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblPlanilhaEndereco`
--

CREATE TABLE `tblPlanilhaEndereco` (
  `tblPlanilhaEndereco_id` int(11) NOT NULL,
  `tblPlanilhaEndereco_nome` varchar(255) DEFAULT NULL,
  `tblPlanilhaEndereco_file` mediumblob,
  `tblPlanilhaEndereco_versao` int(11) NOT NULL DEFAULT '1',
  `tblPlanilhaEndereco_dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tblPlanilhaEndereco_usuarioCadastro` int(11) DEFAULT NULL,
  `tblPlanilhaEndereco_dataAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tblPlanilhaEndereco_usuarioAlteracao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblQuadrante`
--

CREATE TABLE `tblQuadrante` (
  `tblQuadrante_id` int(11) NOT NULL,
  `tblQuadrante_nome` varchar(30) DEFAULT NULL,
  `tblQuadrante_points` longtext,
  `tblQuadrante_ordem` varchar(50) DEFAULT NULL,
  `tblQuadrante_desabilitar` varchar(10) NOT NULL DEFAULT 'não',
  `tblQuadrante_versao` int(11) NOT NULL DEFAULT '1',
  `tblQuadrante_dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tblQuadrante_usuarioCadastro` int(11) NOT NULL,
  `tblQuadrante_dataAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tblQuadrante_usuarioAlteracao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblRotaRealizadas`
--

CREATE TABLE `tblRotaRealizadas` (
  `tblRotaRealizadas_id` int(11) NOT NULL,
  `tblRotaRealizadas_idRota` int(11) NOT NULL,
  `tblRotaRealizadas_idStartRoute` int(11) NOT NULL,
  `tblRotaRealizadas_idMotorista` int(11) NOT NULL,
  `tblRotaRealizadas_idVeiculo` int(11) NOT NULL,
  `tblRotaRealizadas_key` varchar(255) NOT NULL,
  `tblRotaRealizadas_lati` decimal(17,15) NOT NULL,
  `tblRotaRealizadas_longi` decimal(18,15) NOT NULL,
  `tblRotaRealizadas_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblStartRoute`
--

CREATE TABLE `tblStartRoute` (
  `tblStartRoute_id` int(11) NOT NULL,
  `tblStartRoute_idRota` int(11) NOT NULL,
  `tblStartRoute_idMotorista` int(11) NOT NULL,
  `tblStartRoute_idVeiculo` int(11) NOT NULL,
  `tblStartRoute_key` varchar(255) NOT NULL,
  `tblStartRoute_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tblStartRoute_stop` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblUsuario`
--

CREATE TABLE `tblUsuario` (
  `tblUsuario_id` int(11) NOT NULL,
  `tblUsuario_nome` varchar(30) DEFAULT NULL,
  `tblUsuario_email` varchar(50) DEFAULT NULL,
  `tblUsuario_telefone` varchar(55) DEFAULT NULL,
  `tblUsuario_senha` varchar(10) DEFAULT NULL,
  `tblUsuario_salario` float(10,2) DEFAULT NULL,
  `tblUsuario_cargo` varchar(30) DEFAULT NULL,
  `tblUsuario_foto` longblob,
  `tblUsuario_idGerente_tblUsuario` int(11) DEFAULT NULL,
  `tblUsuario_IdCargo_tblCargo` int(11) DEFAULT NULL,
  `tblUsuario_observacoes` text,
  `tblUsuario_sexo` varchar(10) DEFAULT NULL,
  `tblUsuario_dias` varchar(51) DEFAULT NULL,
  `tblUsuario_raca` varchar(15) DEFAULT NULL,
  `tblUsuario_versao` int(11) NOT NULL DEFAULT '1',
  `tblUsuario_dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tblUsuario_usuarioCadastro` int(11) DEFAULT NULL,
  `tblUsuario_dataAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tblUsuario_usuarioAlteracao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblUsuario_has_tblDepartamento`
--

CREATE TABLE `tblUsuario_has_tblDepartamento` (
  `id` int(11) NOT NULL,
  `tblUsuario_tblUsuario_id` int(11) NOT NULL,
  `tblDepartamento_tblDepartamento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_drivingdistance2s`
--

CREATE TABLE `tbl_drivingdistance2s` (
  `id` int(11) NOT NULL,
  `distance` varchar(50) NOT NULL,
  `distancevalue` float NOT NULL,
  `time_` varchar(50) NOT NULL,
  `duracao` int(11) DEFAULT NULL,
  `origem` varchar(255) NOT NULL,
  `destino` varchar(255) NOT NULL,
  `segundos` varchar(255) NOT NULL,
  `tm` varchar(50) NOT NULL,
  `url` text NOT NULL,
  `dc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ativo` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_geocode`
--

CREATE TABLE `tbl_geocode` (
  `id` int(11) NOT NULL,
  `lati` decimal(17,15) NOT NULL,
  `longi` decimal(18,15) NOT NULL,
  `formatted_address` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_rotas`
--

CREATE TABLE `tbl_rotas` (
  `id` int(11) NOT NULL,
  `tabela1` longtext NOT NULL,
  `tabela1Volta` longtext,
  `mapa1` longtext,
  `ro1` longtext NOT NULL,
  `ra1` longtext,
  `ro1Volta` longtext,
  `ra1Volta` longtext,
  `latlngOriginal` text NOT NULL,
  `stopsCollection` text NOT NULL,
  `legs` longtext NOT NULL,
  `nomeRota` varchar(100) NOT NULL,
  `nomeRotaVolta` longtext,
  `usuario` varchar(20) NOT NULL,
  `dc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ativo` int(11) NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_rotasBKP4`
--

CREATE TABLE `tbl_rotasBKP4` (
  `id` int(11) NOT NULL,
  `tabela1` longtext NOT NULL,
  `tabela1Volta` longtext,
  `mapa1` longtext,
  `ro1` longtext NOT NULL,
  `ra1` longtext,
  `ro1Volta` longtext,
  `ra1Volta` longtext,
  `latlngOriginal` text NOT NULL,
  `stopsCollection` text NOT NULL,
  `legs` longtext NOT NULL,
  `nomeRota` varchar(100) DEFAULT NULL,
  `nomeRotaVolta` longtext,
  `usuario` varchar(20) NOT NULL,
  `dc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ativo` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_rotas_sap`
--

CREATE TABLE `tbl_rotas_sap` (
  `id` int(11) NOT NULL,
  `tabela1` longtext NOT NULL,
  `tabela1Volta` longtext,
  `mapa1` longtext,
  `ro1` longtext NOT NULL,
  `ra1` longtext,
  `ro1Volta` longtext,
  `ra1Volta` longtext,
  `latlngOriginal` text NOT NULL,
  `stopsCollection` text NOT NULL,
  `legs` longtext NOT NULL,
  `nomeRota` varchar(100) NOT NULL,
  `nomeRotaVolta` longtext,
  `usuario` varchar(20) NOT NULL,
  `dc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ativo` int(11) NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL DEFAULT '1',
  `dataCadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  `dataAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tblAbastece`
--
ALTER TABLE `tblAbastece`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tblAbastece001`
--
ALTER TABLE `tblAbastece001`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tblAtividade`
--
ALTER TABLE `tblAtividade`
  ADD PRIMARY KEY (`tblAtividade_id`);

--
-- Índices de tabela `tblAtividadeBKP0`
--
ALTER TABLE `tblAtividadeBKP0`
  ADD PRIMARY KEY (`tblAtividade_id`);

--
-- Índices de tabela `tblCargo`
--
ALTER TABLE `tblCargo`
  ADD PRIMARY KEY (`tblCargo_id`);

--
-- Índices de tabela `tblColaborador`
--
ALTER TABLE `tblColaborador`
  ADD PRIMARY KEY (`tblColaborador_id`),
  ADD KEY `tblColaborador_id` (`tblColaborador_id`);

--
-- Índices de tabela `tblDepartamento`
--
ALTER TABLE `tblDepartamento`
  ADD PRIMARY KEY (`tblDepartamento_id`),
  ADD KEY `tblDepartamento_id` (`tblDepartamento_id`);

--
-- Índices de tabela `tblLogin`
--
ALTER TABLE `tblLogin`
  ADD PRIMARY KEY (`tblLogin_id`);

--
-- Índices de tabela `tblLoginRealizado`
--
ALTER TABLE `tblLoginRealizado`
  ADD PRIMARY KEY (`tblLoginRealizado_id`);

--
-- Índices de tabela `tblPlanilhaEndereco`
--
ALTER TABLE `tblPlanilhaEndereco`
  ADD PRIMARY KEY (`tblPlanilhaEndereco_id`),
  ADD KEY `tblPlanilhaEndereco_id` (`tblPlanilhaEndereco_id`);

--
-- Índices de tabela `tblQuadrante`
--
ALTER TABLE `tblQuadrante`
  ADD PRIMARY KEY (`tblQuadrante_id`),
  ADD KEY `tblQuadrante_id` (`tblQuadrante_id`);

--
-- Índices de tabela `tblRotaRealizadas`
--
ALTER TABLE `tblRotaRealizadas`
  ADD PRIMARY KEY (`tblRotaRealizadas_id`);

--
-- Índices de tabela `tblStartRoute`
--
ALTER TABLE `tblStartRoute`
  ADD PRIMARY KEY (`tblStartRoute_id`);

--
-- Índices de tabela `tblUsuario`
--
ALTER TABLE `tblUsuario`
  ADD PRIMARY KEY (`tblUsuario_id`),
  ADD KEY `tblUsuario_id` (`tblUsuario_id`);

--
-- Índices de tabela `tblUsuario_has_tblDepartamento`
--
ALTER TABLE `tblUsuario_has_tblDepartamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Índices de tabela `tbl_drivingdistance2s`
--
ALTER TABLE `tbl_drivingdistance2s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `origem` (`origem`),
  ADD KEY `destino` (`destino`),
  ADD KEY `segundos` (`segundos`),
  ADD KEY `tm` (`tm`);

--
-- Índices de tabela `tbl_geocode`
--
ALTER TABLE `tbl_geocode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address` (`address`),
  ADD KEY `id` (`id`);

--
-- Índices de tabela `tbl_rotas`
--
ALTER TABLE `tbl_rotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT de tabela `tblAbastece`
--
ALTER TABLE `tblAbastece`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT de tabela `tblAbastece001`
--
ALTER TABLE `tblAbastece001`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT de tabela `tblAtividade`
--
ALTER TABLE `tblAtividade`
  MODIFY `tblAtividade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=939;
--
-- AUTO_INCREMENT de tabela `tblAtividadeBKP0`
--
ALTER TABLE `tblAtividadeBKP0`
  MODIFY `tblAtividade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=903;
--
-- AUTO_INCREMENT de tabela `tblCargo`
--
ALTER TABLE `tblCargo`
  MODIFY `tblCargo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `tblColaborador`
--
ALTER TABLE `tblColaborador`
  MODIFY `tblColaborador_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `tblDepartamento`
--
ALTER TABLE `tblDepartamento`
  MODIFY `tblDepartamento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `tblLogin`
--
ALTER TABLE `tblLogin`
  MODIFY `tblLogin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `tblLoginRealizado`
--
ALTER TABLE `tblLoginRealizado`
  MODIFY `tblLoginRealizado_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;
--
-- AUTO_INCREMENT de tabela `tblPlanilhaEndereco`
--
ALTER TABLE `tblPlanilhaEndereco`
  MODIFY `tblPlanilhaEndereco_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de tabela `tblQuadrante`
--
ALTER TABLE `tblQuadrante`
  MODIFY `tblQuadrante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de tabela `tblRotaRealizadas`
--
ALTER TABLE `tblRotaRealizadas`
  MODIFY `tblRotaRealizadas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;
--
-- AUTO_INCREMENT de tabela `tblStartRoute`
--
ALTER TABLE `tblStartRoute`
  MODIFY `tblStartRoute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de tabela `tblUsuario`
--
ALTER TABLE `tblUsuario`
  MODIFY `tblUsuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;
--
-- AUTO_INCREMENT de tabela `tblUsuario_has_tblDepartamento`
--
ALTER TABLE `tblUsuario_has_tblDepartamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `tbl_drivingdistance2s`
--
ALTER TABLE `tbl_drivingdistance2s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29267;
--
-- AUTO_INCREMENT de tabela `tbl_geocode`
--
ALTER TABLE `tbl_geocode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2422;
--
-- AUTO_INCREMENT de tabela `tbl_rotas`
--
ALTER TABLE `tbl_rotas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
