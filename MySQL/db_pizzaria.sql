-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.22-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para db_pizzaria
CREATE DATABASE IF NOT EXISTS `db_pizzaria` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_pizzaria`;

-- Copiando estrutura para tabela db_pizzaria.tb_pizzas
CREATE TABLE IF NOT EXISTS `tb_pizzas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sabor` varchar(40) NOT NULL,
  `ingredientes` varchar(50) NOT NULL,
  `valor` float(6,2) NOT NULL,
  `tamanho` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela db_pizzaria.tb_pizzas: ~3 rows (aproximadamente)
INSERT INTO `tb_pizzas` (`id`, `sabor`, `ingredientes`, `valor`, `tamanho`) VALUES
	(1, 'Calabresa', 'Mussarela e Calabresa', 39.00, 'G'),
	(2, '2 queijos', 'Mussarela e Catupiry', 32.00, 'G'),
	(3, 'Mussarela', 'Mussarela', 29.00, 'G');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
