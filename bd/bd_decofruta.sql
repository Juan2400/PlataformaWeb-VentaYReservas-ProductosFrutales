-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2025 a las 09:11:43
-- Versión del servidor: 11.4.5-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_decofruta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(200) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `descripcion`) VALUES
(1, 'Detalles Personalizados', 'Categoría para productos personalizados para ocasiones especiales.'),
(2, 'Cumpleaños', 'Categoría destinada a productos y servicios específicos para celebraciones de cumpleaños.'),
(3, 'Platos a la carta', 'Categoría que incluye una variedad de platos preparados según el pedido del cliente.'),
(4, '¡Los más pedidos!', 'Categoría con los productos y servicios más populares entre los clientes.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras_productos`
--

CREATE TABLE `compras_productos` (
  `id_salida` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `compras_productos`
--

INSERT INTO `compras_productos` (`id_salida`, `cantidad`, `id_usuario`, `id_producto`) VALUES
(1, 5, 3, 1),
(2, 10, 3, 6),
(5, 1, 3, 1),
(6, 1, 3, 1),
(7, 1, 3, 1),
(10, 3, 4, 4),
(11, 3, 4, 8),
(12, 4, 4, 8),
(13, 5, 4, 8),
(14, 6, 4, 8),
(15, 7, 4, 8),
(16, 8, 4, 8),
(17, 9, 4, 8),
(18, 10, 4, 8),
(19, 2, 4, 1),
(20, 3, 4, 1),
(21, 4, 4, 1),
(30, 5, 4, 8),
(31, 2, 4, 7),
(32, 6, 4, 8),
(33, 2, 4, 7),
(34, 7, 4, 8),
(35, 2, 4, 7),
(36, 7, 4, 8),
(38, 7, 4, 8),
(39, 4, 4, 7),
(40, 8, 4, 8),
(41, 4, 4, 7),
(42, 9, 4, 8),
(43, 4, 4, 7),
(44, 8, 4, 8),
(45, 4, 4, 7),
(46, 7, 4, 8),
(47, 4, 4, 7),
(48, 8, 4, 8),
(49, 4, 4, 7),
(50, 8, 4, 8),
(51, 5, 4, 7),
(52, 8, 4, 8),
(53, 4, 4, 7),
(54, 5, 4, 1),
(55, 6, 4, 1),
(56, 7, 4, 1),
(57, 8, 4, 1),
(58, 9, 4, 1),
(59, 10, 4, 1),
(60, 11, 4, 1),
(61, 12, 4, 1),
(62, 13, 4, 1),
(63, 14, 4, 1),
(64, 15, 4, 1),
(65, 16, 4, 1),
(66, 17, 4, 1),
(67, 18, 4, 1),
(68, 19, 4, 1),
(69, 20, 4, 1),
(113, 3, 4, 1),
(124, 2, 4, 3),
(125, 2, 4, 4),
(128, 2, 4, 3),
(129, 3, 4, 3),
(130, 4, 4, 3),
(133, 1, 4, 2),
(134, 2, 4, 2),
(135, 3, 4, 2),
(136, 4, 4, 2),
(137, 5, 4, 2),
(149, 2, 4, 5),
(150, 1, 4, 6),
(169, 2, 4, 3),
(170, 2, 4, 4),
(173, 2, 4, 14),
(174, 2, 4, 15),
(175, 3, 4, 7),
(176, 2, 4, 8),
(177, 2, 4, 9),
(178, 3, 4, 7),
(179, 3, 4, 8),
(180, 2, 4, 9),
(181, 3, 4, 7),
(182, 3, 4, 8),
(183, 3, 4, 9),
(184, 3, 4, 7),
(185, 4, 4, 8),
(186, 3, 4, 9),
(187, 3, 4, 7),
(188, 4, 4, 8),
(189, 4, 4, 9),
(190, 4, 4, 7),
(191, 4, 4, 8),
(192, 4, 4, 9),
(193, 2, 4, 11),
(194, 2, 4, 12),
(195, 4, 4, 7),
(196, 4, 4, 8),
(197, 4, 4, 7),
(198, 4, 4, 8),
(199, 4, 4, 9),
(200, 4, 4, 10),
(201, 4, 4, 2),
(202, 3, 4, 5),
(203, 4, 4, 6),
(204, 2, 4, 2),
(205, 2, 4, 5),
(206, 2, 4, 6),
(207, 1, 4, 2),
(208, 2, 4, 5),
(209, 1, 4, 6),
(210, 1, 4, 7),
(211, 2, 4, 8),
(212, 1, 4, 9),
(215, 1, 5, 4),
(216, 1, 5, 5),
(217, 2, 5, 5),
(218, 1, 5, 6),
(219, 1, 5, 6),
(220, 2, 5, 6),
(221, 1, 5, 6),
(222, 2, 5, 6),
(223, 1, 5, 9),
(224, 1, 5, 6),
(225, 1, 5, 9),
(226, 1, 5, 8),
(227, 1, 5, 8),
(228, 1, 5, 10),
(229, 4, 5, 10),
(230, 1, 5, 7),
(231, 1, 5, 8),
(232, 1, 5, 11),
(233, 2, 5, 11),
(234, 1, 5, 12),
(235, 1, 5, 11),
(236, 2, 5, 11),
(237, 1, 5, 9),
(238, 2, 5, 10),
(239, 2, 5, 5),
(240, 2, 5, 6),
(241, 2, 5, 11),
(242, 2, 5, 8),
(243, 1, 5, 5),
(244, 1, 5, 6),
(245, 1, 5, 10),
(246, 1, 5, 7),
(247, 1, 5, 5),
(248, 1, 5, 6),
(249, 1, 5, 2),
(250, 1, 5, 8),
(251, 1, 5, 9),
(252, 1, 5, 11),
(253, 1, 5, 12),
(254, 1, 5, 7),
(255, 1, 5, 11),
(256, 1, 5, 11),
(257, 1, 5, 12),
(258, 1, 5, 5),
(259, 1, 5, 6),
(260, 1, 5, 5),
(261, 1, 5, 6),
(262, 1, 5, 5),
(263, 1, 5, 6),
(264, 1, 5, 11),
(265, 1, 5, 5),
(266, 1, 5, 6),
(268, 2, 5, 5),
(269, 1, 5, 6),
(270, 1, 5, 8),
(271, 3, 5, 9),
(272, 1, 5, 7),
(273, 2, 5, 3),
(274, 1, 5, 7),
(275, 2, 5, 11),
(276, 2, 5, 10),
(277, 1, 5, 7),
(278, 2, 5, 8),
(279, 1, 5, 9),
(280, 1, 5, 3),
(281, 1, 5, 8),
(282, 1, 5, 9),
(283, 1, 5, 8),
(284, 1, 5, 9),
(285, 1, 4, 8),
(286, 20, 5, 10),
(287, 10, 4, 6),
(288, 2, 4, 3),
(289, 2, 4, 11),
(290, 4, 4, 3),
(291, 10, 4, 3),
(292, 10, 4, 11),
(293, 10, 4, 5),
(294, 9, 4, 2),
(295, 2, 4, 11),
(297, 5, 3, 11),
(300, 1, 3, 4),
(301, 2, 9, 9),
(303, 2, 3, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(200) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(8,2) NOT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `descripcion`, `precio`, `imagen`, `activo`, `id_categoria`) VALUES
(1, 'Corazones Dulces', 'Deliciosos corazones de chocolate cubiertos de caramelo presentados en una elegante caja de madera.', 40.00, 'fechas_especiales_madre1.png', 1, 1),
(2, 'Frutas Divertidas', 'Deliciosas frutas cubiertas con chocolate y caramelo. El regalo perfecto para niños que combina diversión y sabor.', 20.00, 'ninos.png', 1, 2),
(3, 'Corazón Floral', 'Regalo especial para el Día de la Madre con flores y detalles comestibles en una encantadora caja.', 30.00, 'fechas_especiales_madre2.png', 1, 1),
(4, 'Caja Especial', 'Regalo exclusivo con una selección gourmet de chocolate, frutas frescas y una bebida premium.', 60.00, 'fechas_especiales_padre1.png', 1, 1),
(5, 'Sorpresa Frutal', 'Colorido regalo de frutas con fresas, uvas, piña y más. El regalo perfecto para celebraciones infantiles.', 30.00, 'para_ninos2.png', 1, 2),
(6, 'Frutas Sorpresa', 'Divertidos huevos de frutas con caramelo, en una caja en forma de huevo con orejas de conejo.', 40.00, 'para_ninos3.png', 1, 2),
(7, 'Platillo Nutritivo', 'Platillo de avena incluye fresas frescas, plátano, frutos secos y arándanos, una combinación saludable y deliciosa.', 25.00, 'platillo1.png', 1, 3),
(8, 'Churros con Fresas', 'Irresistible combinación de churros, chocolate manjar y fresas frescas, un placer dulce en cada bocado.', 20.00, 'platillo2.png', 1, 3),
(9, 'Torta de Fruta', 'Una combinación exquisita de torta de chocolate y fruta fresca cubierta con chocolate blanco.', 20.00, 'platillo3.png', 1, 3),
(10, 'Waffles de Frutos', 'Una combinación perfecta de Fresas, arándanos y aguaymanto acompañado de chantilly y miel de maple.', 16.00, 'platillo4.png', 1, 3),
(11, 'Sándwich Montecristo', 'Una combinación entre dulce y salado. Triple relleno de jamón y queso edam. Decorado con fresa y sirope de fresa.', 17.00, 'platillo5.png', 1, 3),
(12, 'Pancake de Frutas', 'Saludables y deliciosos a base de harina de avena y leche light, servidos con mantequilla de maní y plátano de seda.', 17.00, 'platillo6.png', 1, 3),
(13, 'Ramo Dulce Corazón', 'Ramo de rosas y frutas con caramelo y chocolate, presentado en un corazón. Perfecto para expresar amor y dulzura.', 50.00, 'ramos1.png', 1, 4),
(14, 'Ramo Rosas Azules', 'Rosas azules comestibles junto a una bebida, ideal para regalos sofisticados y celebraciones especiales.', 80.00, 'ramos2.png', 1, 4),
(15, 'Ramo Corazón Frutal', 'Un encantador ramo donde las rosas rodean frutas cubiertas de chocolate y caramelo, formando un corazón dulce.', 41.00, 'ramos3.png', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_especiales`
--

CREATE TABLE `reservas_especiales` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` time NOT NULL,
  `tipo_evento` varchar(255) NOT NULL,
  `cantidad_personas` int(11) NOT NULL,
  `comentario` text DEFAULT NULL,
  `atendido` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `reservas_especiales`
--

INSERT INTO `reservas_especiales` (`id`, `id_usuario`, `fecha_evento`, `hora_evento`, `tipo_evento`, `cantidad_personas`, `comentario`, `atendido`) VALUES
(1, 4, '2024-06-14', '18:00:00', 'Reunión de amigos', 15, '', 1),
(2, 3, '2024-06-12', '12:00:00', 'Reunión de amigos', 10, '', 1),
(3, 5, '2024-06-12', '20:00:00', 'Cena familiar', 8, '', 1),
(5, 4, '2024-06-10', '10:00:00', 'Boda', 15, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(255) NOT NULL,
  `descripcion_rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`, `descripcion_rol`) VALUES
(1, 'Administrador', 'Rol con todos los permisos'),
(2, 'Cliente', 'Rol con permisos limitados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `numero_celular` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `numero_celular`, `email`, `password`, `id_rol`) VALUES
(2, 'Juan torres Garcias', '980543454', 'juan@gmail.com', '$2y$10$/mgxs1IRHtWWlARF/Ul91eBJ58Rw7HKNuJbLebY4vCfITBFtgPr2W', 1),
(3, 'Diego Prada Lopez', '943534536', 'diegoprada452@gmai.com', '$2y$10$/j6q5Pz1VfntP2EQ0xwMluuLTJNco73iB3bTjtsGgynvMuCDVYWgG', 2),
(4, 'Lucas Martinez Gomez', '952536234', 'lucasmartinez40@gmai.com', '$2y$10$2JktZa77XiFxPwcrUsklTOBs2Y.h0FV/B5zsZmb4.B6766STecuMu', 2),
(5, 'Joel Algima Onorez', '902442525', 'algimaonorez290@jahsec.com', '$2y$10$o7CHVEkA8aBfSEcgVTD4quFKdnoP9g2bkRTdV.ZV1617vT9W7ZRk2', 2),
(9, 'Raul Gallego Almestar', '970543456', 'raulgallegoalmestar@gmail.com', '$2y$10$TWHAyBwVfcxCC8zuuzrwIOEmnCvlto2393A.GPgEIWvBkewZ58AkK', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `compras_productos`
--
ALTER TABLE `compras_productos`
  ADD PRIMARY KEY (`id_salida`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `reservas_especiales`
--
ALTER TABLE `reservas_especiales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `numero_celular` (`numero_celular`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `compras_productos`
--
ALTER TABLE `compras_productos`
  MODIFY `id_salida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `reservas_especiales`
--
ALTER TABLE `reservas_especiales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras_productos`
--
ALTER TABLE `compras_productos`
  ADD CONSTRAINT `compras_productos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `compras_productos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Filtros para la tabla `reservas_especiales`
--
ALTER TABLE `reservas_especiales`
  ADD CONSTRAINT `reservas_especiales_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
