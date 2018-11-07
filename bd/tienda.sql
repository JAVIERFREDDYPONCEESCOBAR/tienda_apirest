-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 06-10-2018 a las 22:10:27
-- Versión del servidor: 5.6.38
-- Versión de PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `tienda`
--
CREATE DATABASE IF NOT EXISTS `tienda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras_usuario`
--

DROP TABLE IF EXISTS `compras_usuario`;
CREATE TABLE `compras_usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha_compra` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `total_compra` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tienda_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

DROP TABLE IF EXISTS `inventario`;
CREATE TABLE `inventario` (
  `sku` int(11) NOT NULL,
  `No. disponible` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `color` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Productos`
--

DROP TABLE IF EXISTS `Productos`;
CREATE TABLE `Productos` (
  `sku` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `categoria` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `Productos`
--

INSERT INTO `Productos` (`sku`, `nombre`, `categoria`, `p_id`) VALUES
(123, 'licuadora', 'electrodomesticos', 0),
(232, 'aliminio 23cm', 'metales', 0),
(234, 'caja para motos', 'automotriz', 0),
(542, 'refrigerador', 'electrodomesticos', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendas`
--

DROP TABLE IF EXISTS `tiendas`;
CREATE TABLE `tiendas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ubicacion` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `logo` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `prodcut_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tiendas`
--

INSERT INTO `tiendas` (`id`, `nombre`, `ubicacion`, `logo`, `prodcut_id`) VALUES
(1, 'sucursal 1', 'pachuca', 'imagenes/pachuca.png', 0),
(2, 'sucursal 2', 'zacatecas', 'imagenes/zacatecas.png', 0),
(3, 'sucursal 3', 'sonora', 'imagenes/sonora.png', 0),
(4, 'sucursal 4', 'veracruz', 'imagenes/veracruz.png', 0),
(5, 'sucursal 5', 'puebla', 'imagenes/puebla.png', 0),
(6, 'sucursal 6', 'monterrey', 'imagenes/monterrey.png', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
CREATE TABLE `Usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contrasena` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `departamento` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(300) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ciudad` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`id_usuario`, `nombre`, `apellidos`, `contrasena`, `email`, `departamento`, `telefono`, `direccion`, `ciudad`) VALUES
(1, 'mario', 'ponce', '12345', 'mario@gmail.com', '', '', '', ''),
(2, 'freddy', 'ponce', '12345', 'freddy@gmail.com', '', '', '', ''),
(3, 'margarita', 'escobar', '12345', 'margarita@gmail.com', '', '', '', ''),
(4, 'pedro', 'perez', '12345', 'pedro@gmail.com', '', '', '', ''),
(5, 'raul', 'perez', '12345', 'raul@gmail.com', '', '', '', ''),
(6, 'jose', 'perez', '12345', 'jose@gmail.com', '', '', '', ''),
(7, 'benito', 'escobar', '12345', 'benito@gmail.com', '', '', '', ''),
(8, 'sara', 'perez', '12345', 'sara@gmail.com', '', '', '', ''),
(9, 'gustavo', 'perez', '12345', 'gustavo@gmail.com', '', '', '', ''),
(10, 'leti', 'perez', '12345', 'leti@gmail.com', '', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras_usuario`
--
ALTER TABLE `compras_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `tienda_id` (`tienda_id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`sku`),
  ADD KEY `sku` (`sku`);

--
-- Indices de la tabla `Productos`
--
ALTER TABLE `Productos`
  ADD PRIMARY KEY (`sku`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `logo` (`logo`),
  ADD KEY `prodcut_id` (`prodcut_id`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras_usuario`
--
ALTER TABLE `compras_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras_usuario`
--
ALTER TABLE `compras_usuario`
  ADD CONSTRAINT `compras_usuario_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Usuarios` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`sku`) REFERENCES `Productos` (`sku`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tiendas`
--
ALTER TABLE `tiendas`
  ADD CONSTRAINT `tiendas_ibfk_1` FOREIGN KEY (`prodcut_id`) REFERENCES `Productos` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;
