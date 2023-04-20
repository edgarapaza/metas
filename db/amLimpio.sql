

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `idareas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idoficina` int(11) DEFAULT NULL,
  `idmetas` int(11) DEFAULT NULL,
  PRIMARY KEY (`idareas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

DROP TABLE IF EXISTS `asignacionpersonal`;

CREATE TABLE `asignacionpersonal` (
  `idasignacion` int(11) NOT NULL AUTO_INCREMENT,
  `idoficina` int(11) NOT NULL,
  `idarea` int(11) DEFAULT NULL,
  `idcargo` int(11) DEFAULT NULL,
  `idpersonal` int(11) DEFAULT NULL,
  `fecInicioCargo` date DEFAULT NULL,
  `fecFinCargo` date DEFAULT NULL,
  `documento` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecCreate` datetime DEFAULT NULL,
  `fecUpdtae` datetime DEFAULT NULL,
  PRIMARY KEY (`idasignacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `asistencia`;

CREATE TABLE `asistencia` (
  `idasistencia` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonal` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempouso` double DEFAULT NULL,
  PRIMARY KEY (`idasistencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `bitacora`;

CREATE TABLE `bitacora` (
  `idbitacora` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonal` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempo` double DEFAULT NULL,
  PRIMARY KEY (`idbitacora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `cargos`;

CREATE TABLE `cargos` (
  `id_cargos` int(11) NOT NULL AUTO_INCREMENT,
  `id_oficina` int(11) NOT NULL,
  `nombre_cargo` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `fec_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cargos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `datospersonal`;

CREATE TABLE `datospersonal` (
  `id_adpersonal` int(11) NOT NULL AUTO_INCREMENT,
  `profesion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tiempo_servicio` int(11) DEFAULT NULL,
  `condicion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `seguro_social` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `grupo_sanguineo` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `f_ingreso` date DEFAULT NULL,
  `f_deceso` date DEFAULT NULL,
  PRIMARY KEY (`id_adpersonal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `funciones`;

CREATE TABLE `funciones` (
  `idfunciones` int(11) NOT NULL AUTO_INCREMENT,
  `id_personal` int(11) NOT NULL,
  `funcion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `unimed` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `cantidad` double NOT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `frecuencia` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idfunciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `gerencia`;

CREATE TABLE `gerencia` (
  `idgerencia` int(11) NOT NULL AUTO_INCREMENT,
  `idinstitucion` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idgerencia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `institucion`;

CREATE TABLE `institucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_inst` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `RUC` char(11) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `p_web` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_creacion_archivo` date NOT NULL,
  `n_resolucion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `id_metas` int(11) NOT NULL,
  `fecha_create` datetime NOT NULL,
  `fecha_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `jefe_area`;

CREATE TABLE `jefe_area` (
  `id_jefearea` int(11) NOT NULL AUTO_INCREMENT,
  `id_personal` int(11) DEFAULT NULL,
  `id_areas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jefearea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `log_usu` int(11) NOT NULL,
  `id_personal` int(11) NOT NULL,
  `nom_usu` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `psw_usu` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `niv_usu` int(11) NOT NULL DEFAULT '2',
  `chk_usu` tinyint(4) NOT NULL,
  PRIMARY KEY (`log_usu`),
  UNIQUE KEY `log_usu_UNIQUE` (`log_usu`),
  KEY `id_personal` (`id_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `metas`;

CREATE TABLE `metas` (
  `id_metas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_meta` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `programado` double NOT NULL,
  `unidad_medida` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_metas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `metas_areas`;

CREATE TABLE `metas_areas` (
  `id_metas_areas` int(11) NOT NULL AUTO_INCREMENT,
  `id_meta` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `fecha_reporte` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cantidad_avance` double DEFAULT NULL,
  PRIMARY KEY (`id_metas_areas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `oficinas`;

CREATE TABLE `oficinas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_of` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `sigla` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `f_creacion` datetime DEFAULT NULL,
  `f_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_metas` int(11) DEFAULT NULL,
  `id_institucion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_of_UNIQUE` (`nombre_of`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `personal`;

CREATE TABLE `personal` (
  `id_personal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `sexo` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `email` varchar(80) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DNI` char(8) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `foto` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `f_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `f_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `reportes`;

CREATE TABLE `reportes` (
  `idreporte` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonal` int(11) NOT NULL,
  `idfunciones` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo` tinyint(4) NOT NULL DEFAULT '0',
  `cantidad` double NOT NULL DEFAULT '0',
  `obs` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idreporte`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


DROP TABLE IF EXISTS `subgerencia`;

CREATE TABLE `subgerencia` (
  `idsubgerencia` int(11) NOT NULL AUTO_INCREMENT,
  `idgerencia` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idsubgerencia`),
  KEY `fk_subgerencia_gerencia_idx` (`idgerencia`),
  CONSTRAINT `fk_subgerencia_gerencia` FOREIGN KEY (`idgerencia`) REFERENCES `gerencia` (`idgerencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
