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


-- Copiando estrutura do banco de dados para db_estoque
CREATE DATABASE IF NOT EXISTS `db_estoque` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_estoque`;

-- Copiando estrutura para tabela db_estoque.tb_categoria
CREATE TABLE IF NOT EXISTS `tb_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(30) NOT NULL,
  `data_cadastro` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `categoria` (`categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela db_estoque.tb_categoria: ~12 rows (aproximadamente)
INSERT INTO `tb_categoria` (`id`, `categoria`, `data_cadastro`) VALUES
	(1, 'Eletrônico', '2020-07-29 19:26:06'),
	(2, 'Eletrodoméstico', '2020-07-29 19:26:21'),
	(3, 'Móveis', '2020-07-29 19:26:35'),
	(4, 'Vestuário', '2020-07-29 19:26:45'),
	(5, 'Utensílios Domésticos ', '2020-07-29 21:00:50'),
	(6, 'Cozinha', '2020-07-29 21:02:04'),
	(7, 'Cama, mesa e banho', '2020-07-29 21:02:13'),
	(8, 'Automotivo', '2020-09-03 20:24:45'),
	(9, 'Artesanato', '2020-09-03 20:35:04'),
	(10, 'Moda', '2020-09-03 20:54:55'),
	(11, 'Games', '2020-09-03 21:09:33'),
	(12, 'Livros', '2022-05-25 19:27:41');

-- Copiando estrutura para tabela db_estoque.tb_produto
CREATE TABLE IF NOT EXISTS `tb_produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) NOT NULL,
  `fabricante` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `data` date NOT NULL,
  `valor` float(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `nome_upload` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `tb_produto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela db_estoque.tb_produto: ~50 rows (aproximadamente)
INSERT INTO `tb_produto` (`id`, `produto`, `fabricante`, `id_categoria`, `data`, `valor`, `quantidade`, `nome_upload`) VALUES
	(1, 'Celular Moto G8', 'Motorola', 1, '2020-08-04', 1200.00, 22, 'b14fed3c488c083de9f9d16c4106c54a.jpg'),
	(2, 'Cama Solteiro Bau', 'Dani Framar Branco', 3, '2020-08-04', 629.00, 10, 'c388a4964c3fb3322783a576bc73a149.jpg'),
	(3, 'Liquidificador', 'Britânia', 2, '2020-08-04', 179.00, 19, 'e0f284d005d83bbcdc220e69d9b419f4.jpg'),
	(4, 'Ideapad S145', 'Lenovo', 1, '2020-08-04', 2199.00, 8, '14314447394f02fd501cf97d19edf1e4.jpg'),
	(5, 'IPhone 11', 'Apple', 1, '2020-08-06', 4000.00, 13, '6183ca365c1299446ab41662860e9efd.jpg'),
	(6, 'Samsung Galaxy A30s', 'Samsung', 2, '2020-08-13', 1399.00, 24, 'c512a8802cdec98053ae1226742f2cd6.jpg'),
	(8, 'Smart TV 4K LED 50” 50TU8000', 'Samsung ', 1, '2020-09-03', 2373.00, 30, '3d5cb8f08dc76dc2f3f0dd169cba7d35.jpg'),
	(10, 'Lava Roupas', 'Brastemp', 2, '2022-05-17', 1899.00, 0, 'ed3413a6854456d8a4a3360f38e54e57.jpg'),
	(11, 'Ferro a Vapor', 'Mallory', 2, '2022-05-17', 70.00, 7, 'e2f60a790663fe2e4ed44a35f930324b.jpg'),
	(12, 'PS4', 'Playstation', 11, '2022-05-17', 5000.00, 5, '0b29ab0b78e5a8aef6b7f129cbe27d1e.jpg'),
	(13, 'Lego Batman', 'LEGO', 11, '2022-05-17', 260.00, 13, '6b1575e0b97babc0105cdfa40e10c6b9.jpg'),
	(15, 'Painel Sala Para TV', 'Turim', 3, '2022-05-25', 179.00, 10, '8f219c1815700eb8576d40b8fc845b92.jpg'),
	(16, 'Notebook Gamer AN515-55-58UJ Nitro 5 Intel Core i5', 'Acer', 1, '2022-05-25', 4654.00, 20, 'd53cba40ea945f711cd07dadfe9c7ec5.jpg'),
	(17, 'Cafeteira Nescafe Dolce Gusto Mini Me Preta Automá', 'Cafés Nestle', 2, '2022-05-25', 499.00, 10, '9b566599a31e39693830ff34169aec69.jpg'),
	(18, 'Red Dead Redemption 2 - Xbox-One', 'Rockstar Games', 11, '2022-05-25', 150.00, 13, '8c495c33e23bb1ba70d13b305d317b06.jpg'),
	(19, 'Apple Watch Series 7', 'Apple', 1, '2022-05-25', 4800.00, 7, '19c6e06d5ec1181f2888f4c561c7e571.jpg'),
	(20, 'Smartphone Samsung Galaxy S22 128GB Preto 5G - 8GB', 'sansung', 1, '2022-05-25', 5670.00, 1, '06d3c5fc24bddbbbe56f7abed7bd349b.jpg'),
	(21, 'PC Gamer', 'EasyPC', 1, '2022-05-25', 5000.00, 10, 'f2edac8b21a4c84f8a1143fa8e2893ec.png'),
	(22, 'Kit Instalação A Gás Mangueira 1,20mt', 'Guiga Gás', 6, '2022-05-25', 162.00, 47, '0e450b1957783fa3d3428e20931d626a.jpg'),
	(23, 'iphone 13 pro max', 'apple', 1, '2022-05-25', 6500.00, 1, '4202dafa4fd3b8c486c73d615e8cec44.jpg'),
	(24, 'Lava e Seca Smart LG 11 kg Black', 'LG', 2, '2022-05-25', 4887.00, 10, '57544f0be83c5a197d4ea230e238c4bf.jpg'),
	(25, 'Teclado Preto Inteligente Trio Bluetooth EJ-B3400', 'Samsung', 1, '2022-05-25', 334.00, 148, 'd370804d6962528e7b7452fc9e0de660.jpg'),
	(26, 'Câmera Instantânea Fujifilm Instax Mini 9 - Branco', 'Fujifilm', 1, '2022-05-25', 300.00, 10, '53a72c7dcc212f65ff9df9864ee8e251.jpg'),
	(27, 'Box Livros Edição Especial - Harry Potter Exclusiv', 'Rocco', 12, '2022-05-25', 142.00, 3, 'a8d14f25b92741c70cc696d6fd4b9108.jpg'),
	(28, 'One Piece Vol. 100', 'Shonen Jump', 12, '2022-05-25', 98.00, 6, '473137556a4f154c8a67ded6ad77b5af.png'),
	(29, 'Xbox Series X', 'Microsoft', 11, '2022-05-25', 4500.00, 13, 'e0b42a0fa6a3be87e4247b6709bdc613.jpg'),
	(30, 'whisky royal salute 21 anos the malts blend 700ml ', 'chivas', 9, '2022-05-25', 1540.00, 21, '5ef1bc8bfc7740726aaa5b375eb2fa63.jpg'),
	(31, 'Whisky Johnnie Walker Blue Label 750ml', 'Johnnie Walker', 6, '2022-05-25', 899.00, 2, '3f5251517f3f3dd2f0ce232789af71f7.jpg'),
	(32, 'Funko Pop! Harry Potter Patronus Severus Snape 128', 'Funko', 11, '2022-05-25', 124.00, 3, 'af4c944f27c6f129ab0b63692bc235ae.jpg'),
	(33, 'Espelho Redondo Decorativo', 'MEV MIRROR', 2, '2022-05-25', 150.00, 5, '10003fd21d0135ca1bd3facc0a989388.jpg'),
	(34, 'Hunter X Hunter - Vol. 1', 'Shonen Jump', 12, '2022-05-25', 97.00, 7, 'e5610845044d1211ec51b3469c929c00.jpg'),
	(35, 'Funko Pop Harry Potter Severus Snape 05', 'Funko', 11, '2022-05-25', 140.00, 3, '4b2adcb9c95b71eee245a89edbfa3679.jpg'),
	(36, 'Harry Potter Lord Voldemort Funko Pop Exclusive', 'Funko', 11, '2022-05-25', 190.00, 1, 'baab05fccece006746d50b2d3a8331ae.jpg'),
	(37, 'Smartphone Samsung Galaxy A12 64GB Azul 4G - Octa-', 'sansung', 1, '2022-05-25', 1108.00, 1, '90716fedcee4fbd378327a72febbef6a.jpg'),
	(38, 'Cooktop 5 Bocas Mondial a Gás GLP Preto - CTG-02', 'mondial', 2, '2022-05-25', 446.00, 7, 'c374d7517c1a27f12cc2598fa00809fe.jpg'),
	(39, 'Smartphone Moto G60 128 GB 4GB RAM XT2135', 'Motorola', 1, '2022-05-25', 2500.00, 5, '8c551174cef6f0aada4d44f676776a22.jpg'),
	(40, 'Controle Xbox Series X', 'Microsoft', 11, '2022-05-25', 450.00, 13, '521fe3cf45b6cca17c62ae68ac974125.png'),
	(41, 'Pop Funko 76 Hedwig Harry Potter', 'Funko', 11, '2022-05-25', 130.00, 3, '1bdb1778fc84f2e49f8fe38acd9eaf69.jpg'),
	(42, 'Bicicleta Elétrica', 'Ecobikes', 8, '2021-05-25', 5249.00, 10, '30e8c8b1404f837ff14edb211d54037e.jpg'),
	(43, 'HD Servidor Seagate Exos X16 16TB SATA 6Gb/s 7200R', 'Seagate', 2, '2021-05-25', 3491.00, 15, '88e7d6f2f19f8a8a032787579903d1ab.jpg'),
	(44, 'Funko POP Harry Potter - Harry Potter', 'Funko', 11, '2022-05-25', 399.00, 10, '861e91ec5f525806d36e06b43bb72e0d.jpg'),
	(45, 'Computador ', 'Fácil', 1, '2022-05-25', 1889.00, 1, '3c07ae226af23bf6592dcdc250f1d2c2.jpg'),
	(46, 'Fullmetal Alchemist Volume 1:', 'Shonen Jump', 12, '2022-05-25', 78.00, 8, '61691237e1595b885b85235e05d35718.jpg'),
	(47, 'Trena a Laser 40m', 'Bosch', 5, '2022-05-25', 422.00, 0, 'a327c72ec3cd814913b7c65892314055.jpg'),
	(48, 'Kit Gamer Completo', 'Exbom', 1, '2022-05-25', 154.00, 1, '5144d1dd90112c0be93604040111ebfa.jpg'),
	(49, 'O monge e o executivo', 'Sextante', 12, '2022-05-25', 19.00, 89, '081a27881ee82f6ac91197e3a329f9f6.jpg'),
	(50, 'Monitor Gamer ', 'lg', 1, '2022-05-25', 1.12, 2, '2583e5458b66a656caf8df6748dd629d.jpg'),
	(51, 'Headset Hyperx Xbox', 'Hyperx', 11, '2022-05-25', 150.00, 13, '5cb1c825af6b7d212e0d8fb0e4df66f2.jpg'),
	(52, 'Câmera Polaroid', 'GRACO', 1, '2022-05-25', 1353.00, 1, '913246aa6a52284a57646c37712b38e3.jpg'),
	(53, 'A Garota Dinamarquesa', 'Rocco', 12, '2022-05-25', 38.00, 9, '91ed56d72ad80346c61db6f37803de3a.jpg');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
