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


-- Copiando estrutura do banco de dados para db_locadora
CREATE DATABASE IF NOT EXISTS `db_locadora` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_locadora`;

-- Copiando estrutura para tabela db_locadora.tb_titulo
CREATE TABLE IF NOT EXISTS `tb_titulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `tempo` char(3) NOT NULL,
  `ano` char(4) NOT NULL,
  `diretor` varchar(30) NOT NULL,
  `valor` float(6,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela db_locadora.tb_titulo: ~5 rows (aproximadamente)
INSERT INTO `tb_titulo` (`id`, `tipo`, `titulo`, `categoria`, `tempo`, `ano`, `diretor`, `valor`) VALUES
	(1, 'filme', 'Moyo Shoyo 2', 'Terror', '120', '2022', 'Pablo Escobar', 9.90),
	(2, 'filme', 'Rock 4', 'Fantasia e Investigação', '40', '2016', 'Sylvester Stallone', 12.90),
	(3, 'serie', 'Ben 10', 'Desenho Animado', '20', '2014', 'Pablo Escobar', 12.90),
	(4, 'filme', 'One Piece Strong Word', 'Animação Japonesa', '110', '2019', 'Pablo Escobar', 12.90),
	(5, 'anime', 'Hunter x Hunter', 'Animação Japonesa', '20', '2001', 'Pablo Escobar', 12.90),
	(6, 'filme', 'Matrix', 'Ação', '150', '1999', 'Magalhaes', 200.99);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
