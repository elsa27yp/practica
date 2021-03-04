-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2021 a las 02:50:47
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `registro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `nempresa` text COLLATE utf8_spanish_ci NOT NULL,
  `correo` text COLLATE utf8_spanish_ci NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellidos`, `telefono`, `nempresa`, `correo`, `idEmpresa`) VALUES
(1, 'Elsa', 'YacÃ³n Pichol', '12121212', 'cacao', 'elsayaconpichol@gmail.com', 3),
(3, 'Armando E.', 'Eleazar Urizar', '7897-6543', 'Microsoft', 'armandoe@gmail.com', 2),
(6, 'Wilber Uriel', 'Perez Reyes', '45678765', 'Telus', 'wilu22@gmail.com', 7),
(7, 'Marvin Israel', 'Porfirio Figueroa', '78654323', 'Electronix', 'marvin@gmail.com', 6),
(8, 'Martinez Luis', 'Lares', '7897-6543', 'Web Digital', 'jramirez@cacao.gty', 2),
(9, 'Emerson', 'YacÃ³n Pichol', '45454545', 'cacao', 'elsayaconpichol@gmail.com', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE IF NOT EXISTS `empresas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `sitiow` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `correo` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `nombre`, `sitiow`, `direccion`, `correo`) VALUES
(2, 'Microsoft ', 'https://microsoft.com', 'Guatemala Zona 3', 'microsoft@micro.gt'),
(5, 'Electronix', 'www.electronicaxela.com', 'Quetzaltenango zona 3. 4-12', 'electro@gmail.com'),
(6, 'Web Digital', 'www.webdigital.com', 'Quetzaltenango zona 1, calle 3', 'webdigital@gmail.com'),
(7, 'cacao.gt', 'https://cacao.gt', 'Quetzaltenango zona 9, 5-89', 'jramirez@cacao.gty'),
(8, 'Elsa S.A', 'www.sa.com', 'Quiche', 'sa@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`usuario`, `password`) VALUES
('Elsa', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `contra` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contra`) VALUES
(1, 'Elsa', '112233');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
