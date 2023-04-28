-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-04-2023 a las 10:37:06
-- Versión del servidor: 10.3.38-MariaDB-log-cll-lve
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `katalqqi_avancemetas`
--
CREATE DATABASE IF NOT EXISTS `katalqqi_avancemetas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `katalqqi_avancemetas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `idareas` int(11) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `idoficina` int(11) DEFAULT NULL,
  `idmetas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacionpersonal`
--

CREATE TABLE `asignacionpersonal` (
  `idasignacion` int(11) NOT NULL,
  `idoficina` int(11) NOT NULL,
  `idarea` int(11) DEFAULT NULL,
  `idcargo` int(11) DEFAULT NULL,
  `idpersonal` int(11) DEFAULT NULL,
  `fecInicioCargo` date DEFAULT NULL,
  `fecFinCargo` date DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `fecCreate` datetime DEFAULT NULL,
  `fecUpdtae` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `idasistencia` int(11) NOT NULL,
  `idpersonal` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempouso` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`idasistencia`, `idpersonal`, `fecha`, `hora`, `tipo`, `horasalida`, `tiempouso`) VALUES
(1, 1, '2023-04-19', '23:28:45', 'Entrada', NULL, NULL),
(2, 2, '2023-04-20', '14:14:42', 'Entrada', NULL, NULL),
(3, 1, '2023-04-20', '16:52:39', 'Entrada', NULL, NULL),
(4, 3, '2023-04-21', '08:24:36', 'Entrada', NULL, NULL),
(5, 4, '2023-04-21', '08:28:51', 'Entrada', NULL, NULL),
(6, 5, '2023-04-21', '08:32:27', 'Entrada', NULL, NULL),
(7, 7, '2023-04-21', '12:43:02', 'Entrada', NULL, NULL),
(8, 1, '2023-04-22', '07:15:54', 'Entrada', NULL, NULL),
(9, 6, '2023-04-22', '07:16:15', 'Entrada', NULL, NULL),
(10, 5, '2023-04-22', '07:16:47', 'Entrada', NULL, NULL),
(11, 7, '2023-04-22', '07:35:59', 'Entrada', NULL, NULL),
(12, 4, '2023-04-22', '08:46:40', 'Entrada', NULL, NULL),
(13, 3, '2023-04-22', '09:03:59', 'Entrada', NULL, NULL),
(14, 2, '2023-04-22', '09:04:27', 'Entrada', NULL, NULL),
(15, 7, '2023-04-23', '15:58:39', 'Entrada', NULL, NULL),
(16, 4, '2023-04-23', '21:38:09', 'Entrada', NULL, NULL),
(17, 3, '2023-04-24', '07:09:52', 'Entrada', NULL, NULL),
(18, 4, '2023-04-24', '07:26:45', 'Entrada', NULL, NULL),
(19, 5, '2023-04-24', '07:27:09', 'Entrada', NULL, NULL),
(20, 2, '2023-04-24', '11:24:14', 'Entrada', NULL, NULL),
(21, 7, '2023-04-24', '15:34:28', 'Entrada', NULL, NULL),
(22, 3, '2023-04-25', '07:16:27', 'Entrada', NULL, NULL),
(23, 4, '2023-04-25', '07:26:16', 'Entrada', NULL, NULL),
(24, 5, '2023-04-25', '08:28:07', 'Entrada', NULL, NULL),
(25, 2, '2023-04-25', '10:08:43', 'Entrada', NULL, NULL),
(26, 7, '2023-04-25', '20:08:07', 'Entrada', NULL, NULL),
(27, 4, '2023-04-26', '07:27:02', 'Entrada', NULL, NULL),
(28, 3, '2023-04-26', '07:33:46', 'Entrada', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `idbitacora` int(11) NOT NULL,
  `idpersonal` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempo` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`idbitacora`, `idpersonal`, `fecha`, `hora`, `tipo`, `horasalida`, `tiempo`) VALUES
(1, 1, '2023-04-19', '23:28:45', 'Entrada', NULL, NULL),
(2, 2, '2023-04-20', '14:14:42', 'Entrada', NULL, NULL),
(3, 2, '2023-04-20', '16:39:53', 'Entrada', NULL, NULL),
(4, 1, '2023-04-20', '16:52:39', 'Entrada', NULL, NULL),
(5, 2, '2023-04-20', '18:24:48', 'Entrada', NULL, NULL),
(6, 2, '2023-04-20', '18:25:06', 'Entrada', NULL, NULL),
(7, 2, '2023-04-20', '18:27:05', 'Entrada', NULL, NULL),
(8, 2, '2023-04-20', '18:27:55', 'Entrada', NULL, NULL),
(9, 2, '2023-04-20', '18:31:56', 'Entrada', NULL, NULL),
(10, 3, '2023-04-21', '08:24:36', 'Entrada', NULL, NULL),
(11, 4, '2023-04-21', '08:28:51', 'Entrada', NULL, NULL),
(12, 5, '2023-04-21', '08:32:27', 'Entrada', NULL, NULL),
(13, 4, '2023-04-21', '10:24:45', 'Entrada', '11:45:35', 4850),
(14, 7, '2023-04-21', '12:43:02', 'Entrada', NULL, NULL),
(15, 4, '2023-04-21', '13:32:56', 'Entrada', '13:36:06', 190),
(16, 5, '2023-04-21', '13:33:58', 'Entrada', '13:52:13', 1095),
(17, 5, '2023-04-21', '13:52:29', 'Entrada', '13:52:38', 9),
(18, 7, '2023-04-21', '15:42:29', 'Entrada', NULL, NULL),
(19, 1, '2023-04-22', '07:15:54', 'Entrada', '07:16:10', 16),
(20, 6, '2023-04-22', '07:16:15', 'Entrada', '07:16:28', 13),
(21, 5, '2023-04-22', '07:16:47', 'Entrada', '07:16:54', 7),
(22, 7, '2023-04-22', '07:35:59', 'Entrada', '07:40:34', 275),
(23, 7, '2023-04-22', '07:50:37', 'Entrada', '07:51:37', 60),
(24, 4, '2023-04-22', '08:46:40', 'Entrada', NULL, NULL),
(25, 6, '2023-04-22', '08:55:01', 'Entrada', NULL, NULL),
(26, 3, '2023-04-22', '09:03:59', 'Entrada', NULL, NULL),
(27, 5, '2023-04-22', '09:04:22', 'Entrada', NULL, NULL),
(28, 2, '2023-04-22', '09:04:27', 'Entrada', NULL, NULL),
(29, 1, '2023-04-22', '09:28:00', 'Entrada', NULL, NULL),
(30, 1, '2023-04-22', '10:00:45', 'Entrada', NULL, NULL),
(31, 4, '2023-04-22', '10:02:35', 'Entrada', NULL, NULL),
(32, 6, '2023-04-22', '18:49:56', 'Entrada', NULL, NULL),
(33, 7, '2023-04-22', '19:19:00', 'Entrada', NULL, NULL),
(34, 7, '2023-04-23', '15:58:39', 'Entrada', NULL, NULL),
(35, 4, '2023-04-23', '21:38:09', 'Entrada', NULL, NULL),
(36, 3, '2023-04-24', '07:09:52', 'Entrada', NULL, NULL),
(37, 4, '2023-04-24', '07:26:45', 'Entrada', NULL, NULL),
(38, 5, '2023-04-24', '07:27:09', 'Entrada', NULL, NULL),
(39, 3, '2023-04-24', '08:22:12', 'Entrada', NULL, NULL),
(40, 4, '2023-04-24', '08:59:30', 'Entrada', '11:32:16', 9166),
(41, 5, '2023-04-24', '11:20:04', 'Entrada', NULL, NULL),
(42, 2, '2023-04-24', '11:24:14', 'Entrada', NULL, NULL),
(43, 3, '2023-04-24', '11:45:24', 'Entrada', NULL, NULL),
(44, 4, '2023-04-24', '14:45:31', 'Entrada', NULL, NULL),
(45, 5, '2023-04-24', '14:48:07', 'Entrada', '14:50:55', 168),
(46, 7, '2023-04-24', '15:34:28', 'Entrada', NULL, NULL),
(47, 7, '2023-04-24', '17:24:23', 'Entrada', NULL, NULL),
(48, 7, '2023-04-24', '19:54:59', 'Entrada', NULL, NULL),
(49, 3, '2023-04-25', '07:16:27', 'Entrada', NULL, NULL),
(50, 4, '2023-04-25', '07:26:16', 'Entrada', NULL, NULL),
(51, 5, '2023-04-25', '08:28:07', 'Entrada', NULL, NULL),
(52, 4, '2023-04-25', '08:54:05', 'Entrada', NULL, NULL),
(53, 2, '2023-04-25', '10:08:43', 'Entrada', NULL, NULL),
(54, 4, '2023-04-25', '10:12:46', 'Entrada', '11:40:30', 5264),
(55, 3, '2023-04-25', '13:36:23', 'Entrada', NULL, NULL),
(56, 7, '2023-04-25', '20:08:07', 'Entrada', NULL, NULL),
(57, 4, '2023-04-26', '07:27:02', 'Entrada', NULL, NULL),
(58, 3, '2023-04-26', '07:33:46', 'Entrada', NULL, NULL),
(59, 4, '2023-04-26', '09:36:33', 'Entrada', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id_cargos` int(11) NOT NULL,
  `id_oficina` int(11) NOT NULL,
  `nombre_cargo` varchar(150) NOT NULL,
  `fec_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospersonal`
--

CREATE TABLE `datospersonal` (
  `id_adpersonal` int(11) NOT NULL,
  `profesion` varchar(50) DEFAULT NULL,
  `tiempo_servicio` int(11) DEFAULT NULL,
  `condicion` varchar(20) DEFAULT NULL,
  `seguro_social` varchar(20) DEFAULT NULL,
  `grupo_sanguineo` varchar(10) DEFAULT NULL,
  `f_ingreso` date DEFAULT NULL,
  `f_deceso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones`
--

CREATE TABLE `funciones` (
  `idfunciones` int(11) NOT NULL,
  `id_personal` int(11) NOT NULL,
  `funcion` varchar(150) NOT NULL,
  `unimed` varchar(20) NOT NULL,
  `cantidad` double NOT NULL,
  `fecha_creacion` datetime DEFAULT current_timestamp(),
  `fecha_update` timestamp NULL DEFAULT current_timestamp(),
  `frecuencia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `funciones`
--

INSERT INTO `funciones` (`idfunciones`, `id_personal`, `funcion`, `unimed`, `cantidad`, `fecha_creacion`, `fecha_update`, `frecuencia`) VALUES
(1, 1, 'Desarrollo de Actividades', 'Numerico', 2, '2023-04-22 07:01:13', '2023-04-22 11:01:13', 'Diario'),
(2, 3, 'Programador - Desarrollo de software', 'Archivo', 2, '2023-04-22 07:03:29', '2023-04-22 11:03:29', 'Diario'),
(3, 4, 'Programador - Desarrollo de software', 'Archivo', 2, '2023-04-22 07:03:44', '2023-04-22 11:03:44', 'Diario'),
(4, 5, 'Programador - Desarrollo de software', 'Archivo', 2, '2023-04-22 07:04:02', '2023-04-22 11:04:02', 'Diario'),
(5, 6, 'Programador - Desarrollo de software', 'Archivo', 2, '2023-04-22 07:04:17', '2023-04-22 11:04:17', 'Diario'),
(6, 7, 'Programador - Desarrollo de software', 'Archivo', 2, '2023-04-22 07:04:33', '2023-04-22 11:04:33', 'Diario'),
(7, 7, 'Modificacion de Pagina Web', 'Porcentaje %', 5, '2023-04-22 07:05:50', '2023-04-22 11:05:50', 'Diario'),
(8, 2, 'Programador - Desarrollo de software', 'Archivo', 1, '2023-04-22 07:06:16', '2023-04-22 11:06:16', 'Diario'),
(9, 1, 'Programador - Desarrollo de software', 'Archivo', 1, '2023-04-22 07:06:29', '2023-04-22 11:06:29', 'Diario'),
(10, 1, 'Backup Base de Datos', 'Numerico', 1, '2023-04-22 07:07:09', '2023-04-22 11:07:09', 'Diario'),
(11, 3, 'Crear Articulos para la Web', 'Documento', 1, '2023-04-22 09:25:41', '2023-04-22 13:25:41', 'Semanal'),
(12, 4, 'Crear Articulos para la Web', 'Documento', 1, '2023-04-22 09:26:02', '2023-04-22 13:26:02', 'Semanal'),
(13, 5, 'Crear Articulos para la Web', 'Documento', 1, '2023-04-22 09:26:15', '2023-04-22 13:26:15', 'Semanal'),
(14, 6, 'Crear Articulos para la Web', 'Documento', 1, '2023-04-22 09:26:29', '2023-04-22 13:26:29', 'Semanal'),
(15, 1, 'Crear Articulos para la Web', 'Documento', 1, '2023-04-22 09:27:03', '2023-04-22 13:27:03', 'Semanal'),
(16, 1, 'LLAMADAS A CLIENTES', 'Numerico', 2, '2023-04-22 10:01:52', '2023-04-22 14:01:52', 'Diario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gerencia`
--

CREATE TABLE `gerencia` (
  `idgerencia` int(11) NOT NULL,
  `idinstitucion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id` int(11) NOT NULL,
  `nombre_inst` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `RUC` char(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `p_web` varchar(50) NOT NULL,
  `fecha_creacion_archivo` date NOT NULL,
  `n_resolucion` varchar(50) NOT NULL,
  `id_metas` int(11) NOT NULL,
  `fecha_create` datetime NOT NULL,
  `fecha_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe_area`
--

CREATE TABLE `jefe_area` (
  `id_jefearea` int(11) NOT NULL,
  `id_personal` int(11) DEFAULT NULL,
  `id_areas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `log_usu` int(11) NOT NULL,
  `id_personal` int(11) NOT NULL,
  `nom_usu` varchar(30) NOT NULL,
  `psw_usu` varchar(255) NOT NULL,
  `niv_usu` int(11) NOT NULL DEFAULT 3,
  `chk_usu` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`log_usu`, `id_personal`, `nom_usu`, `psw_usu`, `niv_usu`, `chk_usu`) VALUES
(1, 1, 'sysadmin', 'jasmin0215', 1, 1),
(2, 2, 'johana', '123', 3, 1),
(3, 3, 'zeta', '123', 3, 1),
(4, 4, 'jhoneder', '123', 3, 1),
(5, 5, 'elmer', '123', 3, 1),
(6, 6, 'carlos', '123', 3, 1),
(7, 7, 'angel', '123', 3, 1),
(8, 1, 'edgar', '123', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metas`
--

CREATE TABLE `metas` (
  `id_metas` int(11) NOT NULL,
  `nombre_meta` varchar(150) NOT NULL,
  `programado` double NOT NULL,
  `unidad_medida` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metas_areas`
--

CREATE TABLE `metas_areas` (
  `id_metas_areas` int(11) NOT NULL,
  `id_meta` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `fecha_reporte` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cantidad_avance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficinas`
--

CREATE TABLE `oficinas` (
  `id` int(11) NOT NULL,
  `nombre_of` varchar(60) NOT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `f_creacion` datetime DEFAULT NULL,
  `f_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_metas` int(11) DEFAULT NULL,
  `id_institucion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id_personal` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `DNI` char(8) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `f_creacion` datetime DEFAULT current_timestamp(),
  `f_update` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id_personal`, `nombre`, `apellidos`, `sexo`, `telefono`, `fecha_nac`, `email`, `DNI`, `foto`, `f_creacion`, `f_update`) VALUES
(1, 'EDGAR', 'APAZA CHOQUE', 'Masculino', '935017466', '1978-04-15', 'edgarapazac@gmail.com', '1', NULL, '2023-04-19 23:09:18', '2023-04-20 03:09:18'),
(2, 'JOHANA', 'VALDERRAMA Y COBARRUBIAS', 'Femenino', '9', '2023-04-11', 'jahoa@gmail.com', '1', NULL, '2023-04-20 15:09:58', '2023-04-20 19:09:58'),
(3, 'JERSON PELAYO', 'QUISPE APAZA', 'MASCULINO', '998777712', '2003-11-02', 'jerson.z032@gmail.com', '72535244', NULL, '2023-04-21 09:23:38', '2023-04-21 13:23:38'),
(4, 'JHON EDER', 'QUISPE MAMANI', 'MASCULINO', '969641617', '1997-08-09', 'JHONEDER453@GMAIL.COM', '70284743', NULL, '2023-04-21 09:27:33', '2023-04-21 13:27:33'),
(5, 'ELMER GABRIEL', 'QUISPE PONCE', 'MASCULINO', '973598070', '2001-07-11', 'email@gmail.com', '75352852', NULL, '2023-04-21 09:31:26', '2023-04-21 13:31:26'),
(6, 'CARLOS ALEXANDER', 'ACERO HUARAHUARA', 'MASCULINO', '973521180', '2001-06-24', 'acerohuarahuara7551@gmail.com', '75516072', NULL, '2023-04-21 12:42:44', '2023-04-21 16:42:44'),
(7, 'angel', 'yquira ARCE', 'MASCULINO', '9', '1996-06-22', 'GGG', '70003024', NULL, '2023-04-21 13:42:14', '2023-04-21 17:42:14'),
(8, 'EDGAR', 'APAZA', 'masculino', '935017466', '1978-04-15', 'EDGARAPAZAC@GMAIL.COM', '400', './imagenes/usuario.png', '2023-04-22 07:14:44', '2023-04-22 12:14:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `idreporte` int(11) NOT NULL,
  `idpersonal` int(11) NOT NULL,
  `idfunciones` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `tipo` tinyint(4) NOT NULL DEFAULT 0,
  `cantidad` double NOT NULL DEFAULT 0,
  `obs` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `reportes`
--

INSERT INTO `reportes` (`idreporte`, `idpersonal`, `idfunciones`, `fecha`, `tipo`, `cantidad`, `obs`) VALUES
(1, 1, 9, '2023-04-22 09:30:30', 1, 28, NULL),
(2, 1, 10, '2023-04-22 09:31:08', 1, 1, NULL),
(3, 7, 7, '2023-04-22 19:19:31', 1, 60, NULL),
(4, 4, 3, '2023-04-24 11:03:33', 1, 4, NULL),
(5, 5, 4, '2023-04-24 14:50:35', 1, 2, NULL),
(6, 7, 7, '2023-04-24 19:55:06', 1, 70, NULL),
(7, 3, 2, '2023-04-24 22:25:34', 1, 0, NULL),
(8, 4, 3, '2023-04-25 08:57:16', 1, 7, NULL),
(9, 7, 7, '2023-04-25 20:08:22', 1, 75, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subgerencia`
--

CREATE TABLE `subgerencia` (
  `idsubgerencia` int(11) NOT NULL,
  `idgerencia` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`idareas`);

--
-- Indices de la tabla `asignacionpersonal`
--
ALTER TABLE `asignacionpersonal`
  ADD PRIMARY KEY (`idasignacion`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`idasistencia`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`idbitacora`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id_cargos`);

--
-- Indices de la tabla `datospersonal`
--
ALTER TABLE `datospersonal`
  ADD PRIMARY KEY (`id_adpersonal`);

--
-- Indices de la tabla `funciones`
--
ALTER TABLE `funciones`
  ADD PRIMARY KEY (`idfunciones`);

--
-- Indices de la tabla `gerencia`
--
ALTER TABLE `gerencia`
  ADD PRIMARY KEY (`idgerencia`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jefe_area`
--
ALTER TABLE `jefe_area`
  ADD PRIMARY KEY (`id_jefearea`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`log_usu`),
  ADD UNIQUE KEY `log_usu_UNIQUE` (`log_usu`),
  ADD KEY `id_personal` (`id_personal`);

--
-- Indices de la tabla `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id_metas`);

--
-- Indices de la tabla `metas_areas`
--
ALTER TABLE `metas_areas`
  ADD PRIMARY KEY (`id_metas_areas`);

--
-- Indices de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_of_UNIQUE` (`nombre_of`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id_personal`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`idreporte`);

--
-- Indices de la tabla `subgerencia`
--
ALTER TABLE `subgerencia`
  ADD PRIMARY KEY (`idsubgerencia`),
  ADD KEY `fk_subgerencia_gerencia_idx` (`idgerencia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `idareas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignacionpersonal`
--
ALTER TABLE `asignacionpersonal`
  MODIFY `idasignacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `idasistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `idbitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id_cargos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datospersonal`
--
ALTER TABLE `datospersonal`
  MODIFY `id_adpersonal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `funciones`
--
ALTER TABLE `funciones`
  MODIFY `idfunciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `gerencia`
--
ALTER TABLE `gerencia`
  MODIFY `idgerencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jefe_area`
--
ALTER TABLE `jefe_area`
  MODIFY `id_jefearea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `log_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `metas`
--
ALTER TABLE `metas`
  MODIFY `id_metas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metas_areas`
--
ALTER TABLE `metas_areas`
  MODIFY `id_metas_areas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id_personal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `idreporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `subgerencia`
--
ALTER TABLE `subgerencia`
  MODIFY `idsubgerencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `subgerencia`
--
ALTER TABLE `subgerencia`
  ADD CONSTRAINT `fk_subgerencia_gerencia` FOREIGN KEY (`idgerencia`) REFERENCES `gerencia` (`idgerencia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
