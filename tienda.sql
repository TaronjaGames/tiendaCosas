-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.19 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para tienda
CREATE DATABASE IF NOT EXISTS `tienda` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tienda`;


-- Volcando estructura para tabla tienda.articulo
CREATE TABLE IF NOT EXISTS `articulo` (
  `idArticulo` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombreArticulo` varchar(50) DEFAULT NULL,
  `descripcionArticulo` text,
  `precioArticulo` decimal(10,0) unsigned DEFAULT NULL,
  `idCategoria` int(10) unsigned DEFAULT NULL,
  `idPlataforma` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idArticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla tienda.articulo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;


-- Volcando estructura para tabla tienda.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCategoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla tienda.categoria: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;


-- Volcando estructura para tabla tienda.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCliente` varchar(50) NOT NULL,
  `dniCliente` varchar(50) DEFAULT NULL,
  `emailCliente` varchar(50) DEFAULT NULL,
  `apellido1Cliente` varchar(50) DEFAULT NULL,
  `apellido2Cliente` varchar(50) DEFAULT NULL,
  `loginCliente` varchar(50) DEFAULT NULL,
  `passwordCliente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla tienda.cliente: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;


-- Volcando estructura para tabla tienda.detallepedido
CREATE TABLE IF NOT EXISTS `detallepedido` (
  `idDetallePedido` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idArticulo` int(11) unsigned DEFAULT NULL,
  `cantidadArticulo` int(11) DEFAULT NULL,
  `precioArticulo` decimal(10,0) unsigned DEFAULT NULL,
  `idPedido` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idDetallePedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla tienda.detallepedido: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detallepedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallepedido` ENABLE KEYS */;


-- Volcando estructura para tabla tienda.noticia
CREATE TABLE IF NOT EXISTS `noticia` (
  `idNoticia` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tituloNoticia` varchar(100) DEFAULT NULL,
  `textoNoticia` text,
  `imagenNoticia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idNoticia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla tienda.noticia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
INSERT INTO `noticia` (`idNoticia`, `tituloNoticia`, `textoNoticia`, `imagenNoticia`) VALUES
	(1, 'Tierra Media : Shadow Of Mordor', 'Una nueva aventura de acción ambientada en el universo de El Señor de los Anillos en la que tomaremos el control de Talion, un misterioso guerrero que se adentra en', 'img/noticias/ShadowOfMordor.jpg'),
	(2, 'Minecraft tiene nuevo dueño', 'La empresa creadora del videojuego Minecraft, la sueca Mojang, ha anunciado que ha sido adquirida por el gigante estadounidense Microsoft por 2.500 millones de dólares (1.935.000.000 euros aproximadamente).Los fundadores de la empresa, grandes ganadores en esta operación, han anunciado su salida de la misma en la página web de Mojang. La operación aún está pendiente de las condiciones habituales de cierre y del análisis de los organismos reguladores, por lo que la compañía confía en que se pueda cerrar a finales de este año. Asimismo, Microsoft estima que la operación empezará a ser rentable a partir del próximo año fiscal.', 'img/noticias/minecraft.jpg'),
	(3, 'Destiny', 'Un videojuego de acción y aventura donde los usuarios crean y hacen evolucionar a su personaje para convertirse en leyendas de su propia historia por salvar a la Tierra.', 'img/noticias/Destiny.jpg'),
	(4, 'Alien Isolation', 'Creative Assembly regresa a las raíces de la saga Alien en una entrega que recupera la esencia de la primera película, dirigida por Ridley Scott. Un survival horror en primera persona en el que controlamos a Amanda Ripley quince años después de la desaparición de su madre.', 'img/noticias/alien.jpg');
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;


-- Volcando estructura para tabla tienda.pago
CREATE TABLE IF NOT EXISTS `pago` (
  `idPago` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) unsigned DEFAULT NULL,
  `fechaPago` date DEFAULT NULL,
  `cantidadPago` decimal(10,0) unsigned DEFAULT NULL,
  PRIMARY KEY (`idPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla tienda.pago: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;


-- Volcando estructura para tabla tienda.pedido
CREATE TABLE IF NOT EXISTS `pedido` (
  `idPedido` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fechaPedido` date DEFAULT NULL,
  `idCliente` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`idPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla tienda.pedido: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;


-- Volcando estructura para tabla tienda.plataforma
CREATE TABLE IF NOT EXISTS `plataforma` (
  `idPlataforma` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePlataforma` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPlataforma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla tienda.plataforma: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plataforma` DISABLE KEYS */;
/*!40000 ALTER TABLE `plataforma` ENABLE KEYS */;


-- Volcando estructura para tabla tienda.seccion
CREATE TABLE IF NOT EXISTS `seccion` (
  `idSeccion` int(11) NOT NULL AUTO_INCREMENT,
  `nombreSeccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idSeccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla tienda.seccion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `seccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `seccion` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
