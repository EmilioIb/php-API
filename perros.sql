-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-02-2023 a las 20:22:42
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `perros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

CREATE TABLE `colores` (
  `id_color` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colores`
--

INSERT INTO `colores` (`id_color`, `nombre`) VALUES
(1, 'Negro'),
(2, 'Blanco'),
(3, 'Cafe'),
(4, 'Amarillo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perros`
--

CREATE TABLE `perros` (
  `id_perro` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `raza` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perros`
--

INSERT INTO `perros` (`id_perro`, `nombre`, `raza`, `color`) VALUES
(1, 'Joselito', '1', '2'),
(2, 'Perdit', '2', '1'),
(3, 'Slinky', '3', '4'),
(4, 'Toto', '4', '1'),
(5, 'Uggie', '5', '3'),
(6, 'Nana', '6', '4'),
(7, 'Lassie', '7', '3'),
(8, 'Balto', '8', '3'),
(9, 'Marley', '9', '4'),
(10, 'Laika', '10', '1'),
(11, 'Benji', '11', '3'),
(12, 'Goofy', '12', '2'),
(13, 'Lady', '13', '2'),
(14, 'Ladado', '14', '2'),
(15, 'Bolt', '15', '4'),
(16, 'Sandy', '2', '4'),
(17, 'Puffy', '4', '3'),
(18, 'Penny', '6', '2'),
(19, 'Scooby', '4', '4'),
(20, 'Winn D', '6', '2'),
(21, 'Cometa', '14', '4'),
(22, 'Mancha', '1', '1'),
(23, 'Krypto', '1', '4'),
(24, 'Foo-Fo', '13', '1'),
(25, 'Goofy', '4', '4'),
(26, 'Chip', '8', '2'),
(27, 'Bruise', '8', '3'),
(28, 'Jofi', '8', '4'),
(29, 'Einstein', '2', '4'),
(30, 'Heidi', '2', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `razas`
--

CREATE TABLE `razas` (
  `id_raza` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `razas`
--

INSERT INTO `razas` (`id_raza`, `nombre`) VALUES
(1, 'Galgo'),
(2, 'Galgo'),
(3, 'Corgi'),
(4, 'Husky Siberiano'),
(5, 'Shar Pei'),
(6, 'Chihuahua'),
(7, 'Dalmata'),
(8, 'Bull Terrier'),
(9, 'Beagle'),
(10, 'Bulldog frances'),
(11, 'Caniche'),
(12, 'Bulldog ingles'),
(13, 'Collie'),
(14, 'Doberman'),
(15, 'Criollo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colores`
--
ALTER TABLE `colores`
  ADD PRIMARY KEY (`id_color`);

--
-- Indices de la tabla `perros`
--
ALTER TABLE `perros`
  ADD PRIMARY KEY (`id_perro`);

--
-- Indices de la tabla `razas`
--
ALTER TABLE `razas`
  ADD PRIMARY KEY (`id_raza`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colores`
--
ALTER TABLE `colores`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `perros`
--
ALTER TABLE `perros`
  MODIFY `id_perro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `razas`
--
ALTER TABLE `razas`
  MODIFY `id_raza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
