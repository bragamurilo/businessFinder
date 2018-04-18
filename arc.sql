-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Abr-2018 às 22:18
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`) VALUES
(1, 'arca', '417107fd9ee5cebd564932faec926ceb');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `titulo`) VALUES
(1, 'Auto'),
(2, 'Beauty and Fitness'),
(3, 'Entertainment'),
(4, 'Food and Dining'),
(5, 'Health'),
(6, 'Sports'),
(7, 'Travel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id`, `nome`) VALUES
(1, 'Bauru'),
(2, 'Arealva'),
(3, 'São Paulo'),
(4, 'Florianópolis ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(250) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `descricao` text NOT NULL,
  `slug` varchar(100) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id`, `titulo`, `telefone`, `endereco`, `cep`, `cidade`, `estado`, `descricao`, `slug`, `id_categoria`) VALUES
(1, 'Siege - Solutions', '(14) 98110-6196', 'Rua Eufrauzino Fernandes do Prado, 205', '17160000', 'Arealva', 'SP', 'Siege é um empresa de desenvolvimento de sites, sistemas, que busca sempre a satisfação do cliente.', 'siege-solutions', 5),
(2, 'Academia Xplode', '1212121212', 'Rua dos birl, 13', '17160555', 'Arealva', 'SP', 'A melhor academia de Arealva', 'academia-xplode', 2),
(3, 'Clínica Méidca', '1212121212', 'Rua dos medicos, 205', '19257000', 'Bauru', 'SP', 'A melhor clínica de Bauru e região', 'Clinica-Meidca', 5),
(4, 'Lanchonete do Xande', '12234343412', 'Av. Julio Prestes, 44', '19884444', 'Bauru', 'SP', 'A melhor lanchonete de todas', 'Lanchonete-do-Xande', 4),
(5, 'Auto Elétrica São João', '1212121212', 'Rua dos mecanicos, 9090', '74874878', 'São Paulo', 'SP', 'A melhor Mecânica de todos os tempos', 'Auto-Eletrica-Sao-Joao', 1),
(6, 'Agência de Viagens Teco Teco', '1212121212', 'Rua dos viajantes, 7070', '12121212', 'Florianópolis ', 'SC', 'Venha perder o seu dinheiro', 'Agencia-de-Viagens-Teco-Teco', 7),
(7, 'Cinema Dom Quixote', '12121212', 'Rua dos cineastas, 1414', '47476818', 'São Pualo', 'SP', 'O melhor cinema que você verá na sua vida', 'Cinema-Dom-Quixote', 3),
(8, 'Clube de Apoio aos Futebol', '12121212', 'Rua dos clubistas, 5398', '12121212', 'São Paulo', 'SP', 'O maior clube que joga com você', 'Clube-de-Apoio-aos-Futebol', 6),
(9, 'Pastelaria do cheiro bom', '1212121212', 'Rua dos comedores, 54', '97477154', 'Florianópolis', 'SC', 'O maior pastel da cidade', 'Pastelaria-do-cheiro-bom', 4),
(10, 'Bar dona Maria', '12121212', 'Getulio Vargas, 4533', '97477154', 'Bauru', 'SP', 'O bar mais movimentado de Bauru!', 'Bar-dona-Maria', 4),
(11, 'Açaí da Barra', '12121212', 'Getulio Vargas, 4533', '97477154', 'Bauru', 'SP', 'O açaí mais gostoso e fresco da região', 'Acai-da-Barra', 4),
(12, 'Mercado do Balaco Baco', '12121212', 'Rua dos compradores, 7474', '12121212', 'Florianópolis ', 'SC', 'Os preços mais baixos da região', 'Mercado-do-Balaco-Baco', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL,
  `codigo_ibge` varchar(4) NOT NULL,
  `sigla` char(2) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `dtm_lcto` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`id_estado`, `codigo_ibge`, `sigla`, `nome`, `dtm_lcto`) VALUES
(1, '12', 'AC', 'Acre', '2018-04-18 18:59:41'),
(2, '27', 'AL', 'Alagoas', '2018-04-18 18:59:41'),
(3, '13', 'AM', 'Amazonas', '2018-04-18 18:59:42'),
(4, '16', 'AP', 'Amapá', '2018-04-18 18:59:42'),
(5, '29', 'BA', 'Bahia', '2018-04-18 18:59:42'),
(6, '23', 'CE', 'Ceará', '2018-04-18 18:59:42'),
(7, '53', 'DF', 'Distrito Federal', '2018-04-18 18:59:42'),
(8, '32', 'ES', 'Espírito Santo', '2018-04-18 18:59:42'),
(9, '52', 'GO', 'Goiás', '2018-04-18 18:59:42'),
(10, '21', 'MA', 'Maranhão', '2018-04-18 18:59:42'),
(11, '31', 'MG', 'Minas Gerais', '2018-04-18 18:59:42'),
(12, '50', 'MS', 'Mato Grosso do Sul', '2018-04-18 18:59:42'),
(13, '51', 'MT', 'Mato Grosso', '2018-04-18 18:59:42'),
(14, '15', 'PA', 'Pará', '2018-04-18 18:59:42'),
(15, '25', 'PB', 'Paraíba', '2018-04-18 18:59:43'),
(16, '26', 'PE', 'Pernambuco', '2018-04-18 18:59:43'),
(17, '22', 'PI', 'Piauí', '2018-04-18 18:59:43'),
(18, '41', 'PR', 'Paraná', '2018-04-18 18:59:43'),
(19, '33', 'RJ', 'Rio de Janeiro', '2018-04-18 18:59:43'),
(20, '24', 'RN', 'Rio Grande do Norte', '2018-04-18 18:59:43'),
(21, '11', 'RO', 'Rondônia', '2018-04-18 18:59:43'),
(22, '14', 'RR', 'Roraima', '2018-04-18 18:59:43'),
(23, '43', 'RS', 'Rio Grande do Sul', '2018-04-18 18:59:43'),
(24, '42', 'SC', 'Santa Catarina', '2018-04-18 18:59:43'),
(25, '28', 'SE', 'Sergipe', '2018-04-18 18:59:43'),
(26, '35', 'SP', 'São Paulo', '2018-04-18 18:59:43'),
(27, '17', 'TO', 'Tocantins', '2018-04-18 18:59:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indexes for table `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
