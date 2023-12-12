-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-06-2023 a las 22:12:04
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practica DRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Alquiler`
--

CREATE TABLE `Alquiler` (
  `ID.Alquiler` int(10) NOT NULL,
  `ID.Pago` int(10) NOT NULL,
  `Fecha de inicio` date NOT NULL,
  `Fecha de finalizacion` date NOT NULL,
  `Matricula de escribania` int(11) NOT NULL,
  `caracteristicas` int(11) NOT NULL,
  `ID.Propiedad` int(10) NOT NULL,
  `ID.Vendedor` int(10) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Alquiler`
--

INSERT INTO `Alquiler` (`ID.Alquiler`, `ID.Pago`, `Fecha de inicio`, `Fecha de finalizacion`, `Matricula de escribania`, `caracteristicas`, `ID.Propiedad`, `ID.Vendedor`, `observacion`) VALUES
(1181970, 20325438, '2015-07-22', '2017-07-22', 2032563804, 1, 14725833, 11234560, ''),
(1181974, 20345432, '2023-06-01', '2026-06-03', 2032563801, 1, 14725836, 11234567, ''),
(1181975, 20325433, '2023-06-05', '2025-06-10', 2032563802, 2, 14725839, 11234567, ''),
(1181976, 20324434, '2022-06-07', '2024-06-07', 2032563802, 3, 14725831, 11234568, ''),
(1181978, 20325437, '2013-06-23', '2015-06-23', 2032563804, 3, 14725833, 11234560, ''),
(1181979, 20325438, '2023-12-08', '2025-12-08', 2032563804, 1, 14725835, 11234562, ''),
(11181976, 20325435, '2020-06-03', '2023-06-05', 2032563801, 1, 14725830, 11234567, ''),
(11181977, 20325435, '2022-06-08', '2023-06-08', 2032563801, 2, 14725831, 11234568, ''),
(11181978, 20325436, '2022-06-01', '2025-06-04', 2032563803, 2, 14725832, 11234569, ''),
(32001245, 14725830, '2019-02-08', '2023-08-08', 546213580, 1, 14725834, 11234568, ''),
(77854632, 20365432, '2020-06-09', '2022-06-09', 445678654, 2, 326332154, 11234560, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Bancos`
--

CREATE TABLE `Bancos` (
  `ID.Banco` int(10) NOT NULL,
  `forma de pago` text NOT NULL,
  `Fecha del Pago` date NOT NULL,
  `Monto` decimal(60,0) NOT NULL,
  `Nombre de la entidad emisora` text NOT NULL,
  `N* de cuenta corriente` int(10) NOT NULL,
  `N* de transaccion` int(10) NOT NULL,
  `CBU/CVU destino/Alias` int(10) NOT NULL,
  `cuenta destino` int(10) NOT NULL,
  `Descripcion` text NOT NULL,
  `ID.Pago` int(10) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Bancos`
--

INSERT INTO `Bancos` (`ID.Banco`, `forma de pago`, `Fecha del Pago`, `Monto`, `Nombre de la entidad emisora`, `N* de cuenta corriente`, `N* de transaccion`, `CBU/CVU destino/Alias`, `cuenta destino`, `Descripcion`, `ID.Pago`, `observacion`) VALUES
(112541785, 'ventanilla', '2013-07-08', 5800000, 'banco macro', 222458322, 332251444, 441474174, 558879965, 'compra de propiedad', 1112485477, ''),
(1123356985, 'ventanilla', '2023-08-10', 15000, 'banco de la provincia de cordoba', 223564158, 332661451, 445213652, 55446621, 'pago de alquiler', 115428896, ''),
(1123456985, 'ventanilla', '2023-07-10', 15000, 'banco de la provincia de cordoba', 223564158, 332651451, 445213652, 55446621, 'pago de alquiler', 115427896, ''),
(1123652365, 'cajero automatico', '2015-09-03', 12000, 'banco de la provincia de cordoba', 22356325, 332256525, 445214521, 55446621, 'pago de alquiler', 1112356325, ''),
(1123654654, 'cajero automatico', '2023-07-10', 25000, 'banco superville', 223345678, 332246698, 444578965, 669865986, 'alquiler', 112536545, ''),
(1123654674, 'cajero automatico', '2023-07-10', 25000, 'banco superville', 223345678, 332246698, 444578965, 353526842, 'alquiler', 112536555, ''),
(1124563256, 'venatnilla', '2022-08-09', 17000, 'banco macro', 223562478, 332142145, 442178545, 669865986, 'alquiler', 1112536322, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cliente`
--

CREATE TABLE `Cliente` (
  `ID.Cliente` int(15) NOT NULL,
  `telefono` int(15) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `direccion` text NOT NULL,
  `fecha de nacimiento` date NOT NULL,
  `E-mail` text NOT NULL,
  `DNI/CUIL/CUIT` int(15) NOT NULL,
  `categoria del cliente` text NOT NULL,
  `observacion` text NOT NULL,
  `ID.Propiedad` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Cliente`
--

INSERT INTO `Cliente` (`ID.Cliente`, `telefono`, `nombre`, `apellido`, `direccion`, `fecha de nacimiento`, `E-mail`, `DNI/CUIL/CUIT`, `categoria del cliente`, `observacion`, `ID.Propiedad`) VALUES
(124587, 351324678, 'Victor Antonio', 'Machado', 'bogota 1978 ', '2013-08-15', 'VictorA.15081974@gmail.com ', 24089321, 'cliente vip', 'buen cliente, una propiedad en alquiler.', 14725852),
(326541, 351465246, 'Exequiel', 'Ceballos', 'piedra pintada 1234 barrio los olmos', '2016-01-12', 'Nitsuga2541@hotmail.com', 562321412, 'cliente vip', 'cliente con 2 propiedades en alquiler', 14725839),
(326542, 351465246, 'Exequiel', 'Ceballos', 'piedra pintada 1234 barrio los olmos ', '2016-01-12', 'Nitsuga2541@hotmail.com ', 562321412, 'cliente vip', 'cliente con 2 propiedades en alquiler ', 14725835),
(326549, 351478965, 'Guillermo', 'Moreno', 'monteluka 1245 barrio general paz ', '2023-06-21', 'Moreno.Guille@hotmail.com', 323255454, 'cliente regular', 'el cliente es incumplidor con el arreglo de la propiedad.', 14725834),
(457812, 351263263, 'Agustin', 'Gonzalez', 'barranquilla 5142, las flores ', '2013-03-26', 'Agustin2605@gmail.com ', 512463122, 'cliente vip', 'cliente con 3 propiedad vendidas y 2 en alquiler', 14725832),
(542136, 351263263, 'Agustin', 'Gonzalez', 'barranquilla 5142, las flores', '2013-03-26', 'Agustin2605@gmail.com', 512463122, 'cliente vip', 'cliente con 3 propiedad vendidas y 2 en alquiler', 14725831),
(654213, 351246789, 'Victor Antonio', 'Machado', 'bogota 1978', '2013-08-15', 'VictorA.15081974@gmail.com', 24089321, 'cliente vip', 'buen cliente', 14725836),
(654214, 351246789, 'Antonio', 'Rodriguez', 'bogota 1785 barrio cabildo', '2023-10-15', 'AntonioRodriguez@gmail.com', 541278421, 'cliente con una propiedad en  alquiler', 'cliente cumplidor', 14725830),
(65421302, 351246789, 'Victor ', 'Machado', 'bogota 1985 santa isabel', '2023-08-15', 'Victor@gmail.com', 24089321, 'buen cliente', '', 14725833);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Mantenimiento`
--

CREATE TABLE `Mantenimiento` (
  `ID.Mantenimiento` int(10) NOT NULL,
  `ID.Proveedor` int(10) NOT NULL,
  `descripcion` text NOT NULL,
  `Fecha de mantenimieto` date NOT NULL,
  `Telefono` int(10) NOT NULL,
  `ID.Propiedad` int(10) NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Mantenimiento`
--

INSERT INTO `Mantenimiento` (`ID.Mantenimiento`, `ID.Proveedor`, `descripcion`, `Fecha de mantenimieto`, `Telefono`, `ID.Propiedad`, `monto`, `observacion`) VALUES
(9897456, 52145632, 'se realiza mantenimiento en techo por goteras', '2023-10-18', 351668845, 14725836, 6000, ''),
(21548769, 65465465, 'se realiza mantenimeinto, electricos, se le cambia 2 tomas que hicieron corto.', '2023-01-25', 351262654, 14725836, 560, ''),
(54698744, 59859842, 'se realiza colocacion de coneccion de gas a la propiedad', '2025-03-10', 351624855, 11234562, 5000, ''),
(54698784, 59859842, 'se realiza colocacion de coneccion de gas a la propiedad', '2025-03-10', 351624855, 14725839, 32000, ''),
(56412303, 52145632, 'se realiza mantenimiento de alba;ileria en la cocina por humedad.', '2016-04-13', 354326841, 14725830, 1930, ''),
(74587459, 54212214, 'se realiza cambio de desague.', '2014-01-18', 351887466, 14725833, 8000, ''),
(74587558, 54212214, 'se realiza cambio de desague.', '2024-11-18', 351887466, 14725832, 7000, ''),
(85214796, 55874652, 'se realiza Mantenimiento en intalacion electrica (cambio de cable)', '2022-06-08', 354652322, 14725831, 3512, ''),
(87597584, 54212214, 'se realiza cambio de ca;o de agua en el ba;o de la propiedad ', '2024-04-18', 351662233, 14725831, 2500, ''),
(87597585, 54212214, 'se realiza cambio de ca;o de agua en el ba;o de la propiedad ', '2024-04-18', 351662233, 14725835, 3000, ''),
(98987456, 54216455, 'se le realiza desagote de la camara ceptica.', '2014-06-12', 351262654, 14725833, 2400, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Medio Electronico`
--

CREATE TABLE `Medio Electronico` (
  `N* de cuenta` int(10) NOT NULL,
  `cuenta destino` int(10) NOT NULL,
  `cuil/cuit/cdi` int(10) NOT NULL,
  `entidad` text NOT NULL,
  `concepto` text NOT NULL,
  `Nombre de beneficiario` text NOT NULL,
  `fecha` date NOT NULL,
  `estado` text NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  `ID.Medio Electronico` int(10) NOT NULL,
  `ID.Pago` int(10) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Medio Electronico`
--

INSERT INTO `Medio Electronico` (`N* de cuenta`, `cuenta destino`, `cuil/cuit/cdi`, `entidad`, `concepto`, `Nombre de beneficiario`, `fecha`, `estado`, `monto`, `ID.Medio Electronico`, `ID.Pago`, `observacion`) VALUES
(442211564, 558879965, 554211685, 'mecado pago', 'alquiler', 'Exequiel 	Ceballos ', '2023-07-10', 'pago acreditado', 21000, 55447444, 20325437, ''),
(44521256, 55446621, 556632148, 'pago facil', 'compra de la propiedad', 'Agustin 	Gonzalez', '2025-07-24', 'pago acreditado', 1600000, 75462135, 20325436, ''),
(332265480, 556632147, 84751236, 'mercado pago', 'compra de propiedad', 'Victor Antonio 	Machado ', '2023-08-09', 'pago acreditado', 5600000, 114488775, 20325436, ''),
(44521156, 55446621, 556632142, 'rapipago', 'alquiler', 'Agustin 	Gonzalez ', '2022-08-10', 'pago rechasado', 3200, 221133335, 20325434, ''),
(884754221, 669865986, 452136521, 'pago acreditado', 'alquiler', 'Victor 	Machado', '2013-11-08', 'pago acreditado', 24500, 221312542, 20345432, ''),
(442211563, 558879965, 554211685, 'pago facil', 'alquiler', 'Exequiel 	Ceballos ', '2023-08-10', 'pago acreditado', 3500, 223366655, 20325433, ''),
(623555421, 353526842, 554872136, 'transferencia banco macro', 'alquiler', 'Antonio 	Rodriguez', '2020-09-05', 'pago acreditado', 32000, 332651425, 20335433, ''),
(55421321, 556632147, 44546123, 'tranferencia banco de cordoba ', 'alquiler', 'Victor Antonio 	Machado ', '2024-01-08', 'pago acreditado', 25000, 363552233, 20345432, ''),
(656964231, 353526842, 563248755, 'pago facil', 'alquiler', 'Antonio 	Rodriguez', '2019-05-09', 'pago acreditado', 12000, 447412558, 20325435, ''),
(56214777, 669865986, 326665325, 'rapipago', 'alquiler', 'Victor 	Machado ', '2017-08-10', 'pago acreditado', 15000, 557748622, 20324434, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pago`
--

CREATE TABLE `Pago` (
  `ID.Pago` int(10) NOT NULL,
  `N* de transaccion` int(10) NOT NULL,
  `fecha y hora` datetime NOT NULL,
  `ID.Alquiler` int(10) NOT NULL,
  `cuenta destino` int(10) NOT NULL,
  `forma de pago` text NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  `lugar de pago` text NOT NULL,
  `observacion` text NOT NULL,
  `ID.Venta` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Pago`
--

INSERT INTO `Pago` (`ID.Pago`, `N* de transaccion`, `fecha y hora`, `ID.Alquiler`, `cuenta destino`, `forma de pago`, `monto`, `lugar de pago`, `observacion`, `ID.Venta`) VALUES
(20324434, 557748622, '2017-08-10 01:16:09', 1181976, 669865986, 'pago electronico', 15000, 'rapipago', '', 0),
(20325433, 223366655, '2023-08-10 10:58:56', 1181975, 558879965, 'pago electronico', 3500, 'pago facil', '', 0),
(20325434, 221133335, '2023-06-21 05:50:45', 1181976, 55446621, 'electronico', 3200, 'rapipago', '', 0),
(20325435, 447412558, '2019-05-09 01:12:05', 11181976, 353526842, 'pago electronico', 12000, 'pago facil', '', 0),
(20325436, 114488775, '2023-08-09 14:46:16', 11181978, 556632147, 'tranferencia', 21000, 'mercado pago', '', 0),
(20325438, 75462135, '2025-07-24 10:36:53', 0, 55446621, 'pago facil', 1600000, 'pago facil', '', 14725835),
(20335433, 332651425, '2023-06-21 06:01:29', 1181975, 353526842, 'transferencia', 32000, 'banco macro', '', 0),
(20345432, 221312542, '2023-11-08 09:53:40', 1181974, 669865986, 'pago electronico', 24500, 'rapipago', '', 0),
(20365432, 363552233, '2023-06-21 06:06:46', 77854632, 556632147, 'tranferencia', 25000, 'banco de cordoba', '', 0),
(77541336, 232344157, '2024-06-22 03:07:54', 1181974, 558879965, 'credito', 45200, 'transaccion', '', 0),
(77854219, 232355689, '2023-06-22 03:31:15', 1181970, 669865986, 'credito', 35500, 'transacccion', '', 0),
(112536545, 332246698, '2023-07-10 20:40:30', 11181976, 669865986, 'cajero automatico', 25000, 'banco superville', '', 0),
(112536555, 332246698, '2023-07-10 20:44:38', 11181976, 353526842, 'cajero automatico', 25000, 'banco superville', '', 0),
(115427896, 332651451, '2023-06-22 01:37:40', 11181977, 55446621, 'ventanilla', 15000, 'banco de la provincia de cordoba', '', 0),
(115428896, 332661451, '2023-08-10 10:34:06', 1181976, 55446621, 'ventanilla', 15000, 'banco de la provincia de cordoba', '', 0),
(774586621, 232347558, '2024-11-22 22:44:17', 1181975, 556632147, 'debito', 15, 'transaccion', '', 0),
(1112356325, 332256525, '2015-11-03 09:05:53', 1181970, 669865986, 'cajero automatico', 12000, 'banco de la provincia de cordoba', '', 0),
(1112485477, 332251444, '2023-06-22 01:10:58', 1181975, 558879965, 'ventanilla', 5800000, 'banco macro', '', 20325433),
(1112536322, 332142145, '2022-08-09 11:49:45', 1181978, 669865986, 'ventanilla', 17000, 'banco macro', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedad`
--

CREATE TABLE `propiedad` (
  `ID.Propiedad` int(10) NOT NULL,
  `ID.Venta` int(10) NOT NULL,
  `foto` text NOT NULL,
  `imagen 3D` text NOT NULL,
  `video` text NOT NULL,
  `barrio` varchar(10) NOT NULL,
  `cantidad de habitaciones` int(10) NOT NULL,
  `link de youtube` text NOT NULL,
  `m2 de la propiedad` decimal(10,0) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `geocordenadas` varchar(10) NOT NULL,
  `caracteristicas` text NOT NULL,
  `tipologia` text NOT NULL,
  `direccion` text NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `propiedad`
--

INSERT INTO `propiedad` (`ID.Propiedad`, `ID.Venta`, `foto`, `imagen 3D`, `video`, `barrio`, `cantidad de habitaciones`, `link de youtube`, `m2 de la propiedad`, `precio`, `geocordenadas`, `caracteristicas`, `tipologia`, `direccion`, `observacion`) VALUES
(14725830, 0, '', '', '', 'carolinos', 2, '', 351, 6520000, '3547x6547', '', 'casa', 'carmelo ibarra 35', ''),
(14725831, 0, '', '', '', 'obrero', 3, '', 132, 2130000, '3214x563', '', 'casa', 'san martin 1478', ''),
(14725832, 0, '', '', '', 'favaloro', 3, '', 236, 6540000, '235x6541', '', 'departamento', 'barbacoa 258', ''),
(14725834, 0, '', '', '', 'palmira', 4, '', 452, 8540000, '5874x5698', '', 'casa', 'pitufos 6547', ''),
(14725835, 332561470, '', '', '', 'inaudi', 2, '', 254, 5600000, '147x258', '', 'departaamento', 'camellitos 951', ''),
(14725839, 0, '', '', '', 'la france', 4, '', 154, 540000, '100x1478', 'frante verde', 'casa', 'tirolesa 245', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proveedor`
--

CREATE TABLE `Proveedor` (
  `ID.Proveedor` int(10) NOT NULL,
  `Descripcion de articulo vendido` text NOT NULL,
  `Marca utilizada` text NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Direccion` text NOT NULL,
  `sucursal` varchar(10) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `tipo` text NOT NULL,
  `CUIL` int(10) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Proveedor`
--

INSERT INTO `Proveedor` (`ID.Proveedor`, `Descripcion de articulo vendido`, `Marca utilizada`, `Telefono`, `Direccion`, `sucursal`, `Nombre`, `Apellido`, `tipo`, `CUIL`, `observacion`) VALUES
(52145632, 'pintura anti-humedad\r\nmenbrana liquida\r\nrodillo', 'pintura pintex\r\nmembrana linex', 351844887, 'canguro 25', '23', 'carlos', 'ocampo', 'pintureria', 554876211, ''),
(54212214, 'ca;o 110\r\ncodo 110', 'minerc', 351664785, 'topolindo  5874', '847', 'maximiliano', 'cometo', 'ferreteria', 558746693, ''),
(54216455, 'cemento\r\narena', 'cemento  humilic', 351225635, 'rio grande  147', '41', 'gretel', 'camallo', 'ferreteria', 44258863, 'topollillo  653'),
(55874652, 'rollo de cable', 'termet', 353569874, 'pino humedo 546', '654', 'emmir', 'tello', 'ferreteria', 557669842, ''),
(59859842, 'ca;o aluminio\r\ncodo aluminio', 'fugitino', 351226655, 'ventilla 521', '45', 'daniel', 'camallo', 'ferreteria', 255876331, ''),
(65465465, '2 toma corriente', 'lam', 351447855, 'pinguno 45', '14', 'tomas', 'llamas', 'ferreteria', 55664758, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tarjeta`
--

CREATE TABLE `Tarjeta` (
  `ID.Tarjeta` int(15) NOT NULL,
  `Numero de tarjeta` bigint(25) NOT NULL,
  `fecha de vencimiento` date NOT NULL,
  `nombre del titular` text NOT NULL,
  `tipo de pago` text NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  `fecha y hora` datetime NOT NULL,
  `entidad emisora` text NOT NULL,
  `Numero de transaccion` int(10) NOT NULL,
  `codigo` int(10) NOT NULL,
  `ID.Pago` int(10) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Tarjeta`
--

INSERT INTO `Tarjeta` (`ID.Tarjeta`, `Numero de tarjeta`, `fecha de vencimiento`, `nombre del titular`, `tipo de pago`, `monto`, `fecha y hora`, `entidad emisora`, `Numero de transaccion`, `codigo`, `ID.Pago`, `observacion`) VALUES
(454523698, 656532223142, '2026-10-28', 'carlos alberth ocampo', 'credito', 35500, '2016-10-22 03:01:41', 'banco de cordoba', 232355689, 256, 77854219, ''),
(454582111, 656533214741, '2028-12-20', 'eduardo camilo cesto', 'credito', 45200, '2024-06-22 03:07:54', 'banco superville', 232344157, 452, 77541336, ''),
(454588796, 656555874555, '2023-08-09', 'carmen gutierrez', 'debito', 15000, '2024-11-22 03:07:54', 'banco  macro', 232347558, 487, 774586621, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Vendedor`
--

CREATE TABLE `Vendedor` (
  `ID.Vendedor` int(10) NOT NULL,
  `ID.Propiedad` int(10) NOT NULL,
  `ID.Cliente` int(10) NOT NULL,
  `ID.Venta` int(10) NOT NULL,
  `ID.Alquiler` int(10) NOT NULL,
  `E-mail` text NOT NULL,
  `barrio` text NOT NULL,
  `calle` text NOT NULL,
  `numero` int(10) NOT NULL,
  `telefono` int(10) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `cuil` int(10) NOT NULL,
  `observaciones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Vendedor`
--

INSERT INTO `Vendedor` (`ID.Vendedor`, `ID.Propiedad`, `ID.Cliente`, `ID.Venta`, `ID.Alquiler`, `E-mail`, `barrio`, `calle`, `numero`, `telefono`, `Nombre`, `Apellido`, `cuil`, `observaciones`) VALUES
(11234560, 14725833, 65421302, 0, 1181970, 'camello@gmail', 'los granaderos', 'canta conmigo ', 1245, 35147887, 'mateo', 'loyola', 665895554, ''),
(11234562, 14725835, 326542, 0, 1181979, 'escarabajo@hotmail.com', 'los olmos', 'vistazo', 4521, 351478963, 'lola', 'vera', 665233147, ''),
(11234567, 14725836, 654213, 525236987, 0, 'tortuga@gmail.com', 'jardin', 'villa nueva', 8547, 351477899, 'matias ', 'caballo', 664785125, ''),
(11234568, 14725831, 542136, 0, 1181976, 'gato-con-botas@gmail.com', 'las flores', 'lince ', 3214, 351447896, 'joaquin', 'echeverria', 665233142, ''),
(11234569, 14725832, 457812, 0, 11181978, 'cocodrilo@hotmail.com', 'ciudadela', 'gongola', 3562, 351664287, 'jose', 'choque', 664758921, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Venta`
--

CREATE TABLE `Venta` (
  `ID.Venta` int(10) NOT NULL,
  `ID.Pago` int(10) NOT NULL,
  `fecha de venta` date NOT NULL,
  `matricula de escribania` int(10) NOT NULL,
  `caracteristicas` text NOT NULL,
  `ID.Propiedad` int(10) NOT NULL,
  `ID.Vendedor` int(10) NOT NULL,
  `ID.Cliente` int(10) NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Venta`
--

INSERT INTO `Venta` (`ID.Venta`, `ID.Pago`, `fecha de venta`, `matricula de escribania`, `caracteristicas`, `ID.Propiedad`, `ID.Vendedor`, `ID.Cliente`, `monto`, `observacion`) VALUES
(332561470, 20325436, '2023-08-09', 2032563801, '', 14725839, 11234567, 326541, 5600000, ''),
(336521114, 20325438, '2025-07-24', 2032563804, '', 14725833, 11234560, 65421302, 1600000, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Alquiler`
--
ALTER TABLE `Alquiler`
  ADD PRIMARY KEY (`ID.Alquiler`);

--
-- Indices de la tabla `Bancos`
--
ALTER TABLE `Bancos`
  ADD PRIMARY KEY (`ID.Banco`);

--
-- Indices de la tabla `Cliente`
--
ALTER TABLE `Cliente`
  ADD PRIMARY KEY (`ID.Cliente`);

--
-- Indices de la tabla `Mantenimiento`
--
ALTER TABLE `Mantenimiento`
  ADD PRIMARY KEY (`ID.Mantenimiento`);

--
-- Indices de la tabla `Medio Electronico`
--
ALTER TABLE `Medio Electronico`
  ADD PRIMARY KEY (`ID.Medio Electronico`);

--
-- Indices de la tabla `Pago`
--
ALTER TABLE `Pago`
  ADD PRIMARY KEY (`ID.Pago`);

--
-- Indices de la tabla `propiedad`
--
ALTER TABLE `propiedad`
  ADD PRIMARY KEY (`ID.Propiedad`);

--
-- Indices de la tabla `Proveedor`
--
ALTER TABLE `Proveedor`
  ADD PRIMARY KEY (`ID.Proveedor`);

--
-- Indices de la tabla `Tarjeta`
--
ALTER TABLE `Tarjeta`
  ADD PRIMARY KEY (`ID.Tarjeta`);

--
-- Indices de la tabla `Vendedor`
--
ALTER TABLE `Vendedor`
  ADD PRIMARY KEY (`ID.Vendedor`);

--
-- Indices de la tabla `Venta`
--
ALTER TABLE `Venta`
  ADD PRIMARY KEY (`ID.Venta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
