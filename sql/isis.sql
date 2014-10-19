-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2014 a las 04:21:18
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `isis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_cortes`
--

CREATE TABLE IF NOT EXISTS `caja_cortes` (
  `id_corte` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `total_en_caja` float NOT NULL,
  PRIMARY KEY (`id_corte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_n_o`
--

CREATE TABLE IF NOT EXISTS `caja_n_o` (
  `id_caja_n_o` int(11) NOT NULL AUTO_INCREMENT,
  `id_corte` int(11) NOT NULL,
  `folio_nota` int(11) NOT NULL,
  `folio_orden` int(11) NOT NULL,
  PRIMARY KEY (`id_caja_n_o`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE IF NOT EXISTS `inventario` (
  `id_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `material` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `peso` int(11) NOT NULL,
  `tamaño` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `cant_max` int(11) NOT NULL,
  `cant_actual` int(11) NOT NULL,
  `letra_inv` char(1) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_inventario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `material`, `peso`, `tamaño`, `cant_max`, `cant_actual`, `letra_inv`) VALUES
(1, 'Couche', 150, 'Tabloide', 5000, 4000, 'A'),
(2, 'Couche', 200, 'Tabloide', 5000, 1900, 'B'),
(3, 'Couche', 250, 'Tabloide', 5000, 4500, 'C'),
(4, 'Couche', 300, 'Tabloide', 5000, 809, 'D'),
(5, 'Opalina', 90, 'Tabloide', 4000, 3600, 'E'),
(6, 'Opalina', 250, 'Tabloide', 4000, 109, 'F'),
(7, 'Autoaderible', 350, 'Tabloide', 2000, 1803, 'G');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_n`
--

CREATE TABLE IF NOT EXISTS `lista_n` (
  `id_lista_n` int(11) NOT NULL AUTO_INCREMENT,
  `folio_nota` int(11) NOT NULL,
  `cant_inv` float NOT NULL,
  `letra_inv` char(1) NOT NULL,
  `cant_nota` float NOT NULL,
  `descripscion_nota` text NOT NULL,
  `p_unitario` float DEFAULT NULL,
  `importe` float NOT NULL,
  PRIMARY KEY (`id_lista_n`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_o`
--

CREATE TABLE IF NOT EXISTS `lista_o` (
  `id_lista_o` int(11) NOT NULL AUTO_INCREMENT,
  `folio_orden` int(11) NOT NULL,
  `cant_inv` float NOT NULL,
  `letra_inv` char(1) NOT NULL,
  `cant_orden` float NOT NULL,
  `descripscion_orden` text NOT NULL,
  `p_unitario` float DEFAULT NULL,
  `importe` float NOT NULL,
  PRIMARY KEY (`id_lista_o`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_orden_taller`
--

CREATE TABLE IF NOT EXISTS `lista_orden_taller` (
  `id_lista_orden_taller` int(11) NOT NULL AUTO_INCREMENT,
  `folio_orden taller` int(11) NOT NULL,
  `cant` float NOT NULL,
  `color` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pasta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tinta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_lista_orden_taller`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
  `folio_nota` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `cliente` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `domicilio` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `e-mail` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `subtotal` float NOT NULL,
  `iva` float NOT NULL,
  `total` float NOT NULL,
  `anticipo` float NOT NULL,
  `saldo` float NOT NULL,
  `total_letra` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `tipo` char(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`folio_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE IF NOT EXISTS `orden` (
  `folio_orden` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `cliente` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `domicilio` int(11) DEFAULT NULL,
  `e-mail` int(11) DEFAULT NULL,
  `subtotal` float NOT NULL,
  `anticipo` float NOT NULL,
  `saldo` float NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  PRIMARY KEY (`folio_orden`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes_taller`
--

CREATE TABLE IF NOT EXISTS `ordenes_taller` (
  `folio_orden_taller` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_libro_doc` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre` text NOT NULL,
  `telefono` text NOT NULL,
  `dia_recepcion` datetime NOT NULL,
  `dia_entreg` datetime NOT NULL,
  `recibio` text NOT NULL,
  `subtotal` float NOT NULL,
  `anticipo` float NOT NULL,
  `resta` float NOT NULL,
  `notas` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`folio_orden_taller`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
