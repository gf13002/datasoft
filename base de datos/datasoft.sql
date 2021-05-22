-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2021 a las 16:48:33
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datasoft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesos_usuario`
--

CREATE TABLE `accesos_usuario` (
  `idacc` int(11) NOT NULL,
  `idopc` int(11) NOT NULL,
  `idusr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `accesos_usuario`
--

INSERT INTO `accesos_usuario` (`idacc`, `idopc`, `idusr`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 4, 2),
(4, 1, 3),
(5, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones_menu`
--

CREATE TABLE `opciones_menu` (
  `idopc` int(10) NOT NULL,
  `etiqueta` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `comando` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(3) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `opciones_menu`
--

INSERT INTO `opciones_menu` (`idopc`, `etiqueta`, `comando`, `estado`) VALUES
(1, 'Mantenimiento de Usuarios', 'WebApplication1/menu.jsp/#', 'act'),
(2, 'Mantenimiento de Opciones', 'WebApplication1/menu.jsp/#', 'ina'),
(3, 'Mantenimiento de Roles', 'WebApplication1/menu.jsp/#', 'act'),
(4, 'Mantenimiento de Permisos', 'WebApplication1/menu.jsp/#', 'act');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusr` int(11) NOT NULL,
  `codigo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusr`, `codigo`, `nombre`, `clave`) VALUES
(2, 'jperez', 'Juan Pérez  ', '12345'),
(3, 'mrecinos', 'Mónica Recinos ', '54321');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesos_usuario`
--
ALTER TABLE `accesos_usuario`
  ADD PRIMARY KEY (`idacc`),
  ADD KEY `idopc` (`idopc`),
  ADD KEY `idusr` (`idusr`);

--
-- Indices de la tabla `opciones_menu`
--
ALTER TABLE `opciones_menu`
  ADD PRIMARY KEY (`idopc`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusr`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesos_usuario`
--
ALTER TABLE `accesos_usuario`
  MODIFY `idacc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `opciones_menu`
--
ALTER TABLE `opciones_menu`
  MODIFY `idopc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accesos_usuario`
--
ALTER TABLE `accesos_usuario`
  ADD CONSTRAINT `accesos_usuario_ibfk_1` FOREIGN KEY (`idusr`) REFERENCES `usuarios` (`idusr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `accesos_usuario_ibfk_2` FOREIGN KEY (`idopc`) REFERENCES `opciones_menu` (`idopc`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
