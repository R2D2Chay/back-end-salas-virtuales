-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-09-2023 a las 15:09:14
-- Versión del servidor: 8.0.34
-- Versión de PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `digita683_oficina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Jugador`
--

CREATE TABLE `Jugador` (
  `id` int NOT NULL,
  `clave` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `avatar` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `entidad` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Jugador`
--

INSERT INTO `Jugador` (`id`, `clave`, `avatar`, `entidad`) VALUES
(1, '123', 'pppp', 'ducoc'),
(2, 'soa', 'https://models.readyplayer.me/63111dc3666e9239d904f006.glb', 'amigos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Rooms`
--

CREATE TABLE `Rooms` (
  `id` int NOT NULL,
  `entidad` varchar(100) NOT NULL,
  `materia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Rooms`
--

INSERT INTO `Rooms` (`id`, `entidad`, `materia`) VALUES
(1, 'amigos', 'enrollarpitos1'),
(2, 'amigos', 'Algebra'),
(3, 'amigos', 'Calculo'),
(4, 'amigos', 'Física'),
(5, 'amigos', 'Programación'),
(6, 'ducoc', 'inferno'),
(7, 'ducoc', 'heaven');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Jugador`
--
ALTER TABLE `Jugador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clave_2` (`clave`);

--
-- Indices de la tabla `Rooms`
--
ALTER TABLE `Rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entidaddes` (`entidad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Jugador`
--
ALTER TABLE `Jugador`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Rooms`
--
ALTER TABLE `Rooms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
