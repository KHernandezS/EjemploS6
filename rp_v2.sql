-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-05-2022 a las 06:30:11
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rp_v2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `codalum` int(11) NOT NULL,
  `dnia` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nombrea` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellidoa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `codpad` int(11) NOT NULL,
  `fecha_naci` date NOT NULL,
  `genero` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `grupo_san` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `codclase` int(11) NOT NULL,
  `codsec` int(11) NOT NULL,
  `codgra` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usualu` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fechare` date NOT NULL,
  `estado` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`codalum`, `dnia`, `nombrea`, `apellidoa`, `codpad`, `fecha_naci`, `genero`, `grupo_san`, `direccion`, `pais`, `codclase`, `codsec`, `codgra`, `foto`, `usualu`, `password`, `role`, `fechare`, `estado`, `fecha_create`) VALUES
(1, '75534334', 'Dylan', 'Rodrigo', 2, '2018-01-24', 'Masculino', 'O+', 'el indio castilla', 'Perú', 1, 1, 1, '002-actor.png', 'dylan22', '$2y$10$MTX5rF7MV.cCGhvfetxXo.vGth6WCzc.WYtqyMCZZWXtQhiYSkRUC', 'Alumnos', '2021-01-27', '1', '2021-01-27 22:37:07'),
(2, '75534343', 'Jordan', 'Roke Seminario', 1, '2001-01-11', 'Masculino', 'O-', 'el indio castilla', 'Ecuador', 2, 2, 2, '005-ninja.png', 'jjroker22', '$2y$10$guuk4nBcYbeAnovZq7Nmi.b288KtMSguNCJvqUmCxrtOKq7G568yy', 'Alumnos', '2021-01-27', '1', '2021-01-27 22:38:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anoaca`
--

CREATE TABLE `anoaca` (
  `codano` int(11) NOT NULL,
  `nomano` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `anoaca`
--

INSERT INTO `anoaca` (`codano`, `nomano`, `titulo`, `fecha_registro`) VALUES
(1, '2021', 'Año 2021 ', '2021-01-27 22:14:13'),
(2, '2022', 'Año 2022', '2021-01-28 10:29:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `codasig` int(11) NOT NULL,
  `tituloa` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `fechaini` date NOT NULL,
  `fecha_limite` date NOT NULL,
  `coddoce` int(11) NOT NULL,
  `codclase` int(11) NOT NULL,
  `codsec` int(11) NOT NULL,
  `archiv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asignacion`
--

INSERT INTO `asignacion` (`codasig`, `tituloa`, `fechaini`, `fecha_limite`, `coddoce`, `codclase`, `codsec`, `archiv`, `estado`, `fecha_create`) VALUES
(1, 'Tarea º1', '2021-01-27', '2021-01-29', 1, 1, 1, 'doc(5).pdf', '1', '2021-01-27 22:35:20'),
(2, 'Tarea º2', '2021-01-27', '2021-01-29', 2, 2, 2, 'doc(5).pdf', '1', '2021-01-27 22:35:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asisalum`
--

CREATE TABLE `asisalum` (
  `codasis` int(11) NOT NULL,
  `codalum` int(11) NOT NULL,
  `presen` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fechare` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asisdoc`
--

CREATE TABLE `asisdoc` (
  `codasidoc` int(11) NOT NULL,
  `coddoce` int(11) NOT NULL,
  `presen` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fechare` date NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asisdoc`
--

INSERT INTO `asisdoc` (`codasidoc`, `coddoce`, `presen`, `fechare`, `fecha_create`) VALUES
(1, 1, 'Presente', '2021-01-27', '2021-01-26 23:00:00'),
(2, 2, 'Presente', '2021-01-27', '2021-01-26 23:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bus`
--

CREATE TABLE `bus` (
  `codbus` int(11) NOT NULL,
  `nombrcon` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `apecon` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `dnicon` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `direcc` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `celular` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `fijo` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `tiposan` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `placa` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `modelo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `marca` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ruta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hentr` time NOT NULL,
  `hsali` time NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fechare` date NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `bus`
--

INSERT INTO `bus` (`codbus`, `nombrcon`, `apecon`, `dnicon`, `direcc`, `celular`, `fijo`, `correo`, `sexo`, `tiposan`, `foto`, `placa`, `modelo`, `marca`, `color`, `ruta`, `hentr`, `hsali`, `imagen`, `fechare`, `fecha_create`) VALUES
(1, 'Piero Aldair', 'Rosales Ramires', '75435435', 'el indio', '999988887', '452322', 'pieroalda@gmailcom', 'Masculino', 'O+', '041-teacher.png', 'ASE-434', 'NISSAN', 'NISSAN FIULUX', 'Amarillo', 'hasta la bolognesi', '08:30:00', '12:30:00', 'buse.png', '2021-01-28', '2021-01-28 18:47:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cali`
--

CREATE TABLE `cali` (
  `codcali` int(11) NOT NULL,
  `codano` int(11) NOT NULL,
  `codper` int(11) NOT NULL,
  `coddoce` int(11) NOT NULL,
  `codclase` int(11) NOT NULL,
  `codsec` int(11) NOT NULL,
  `codalum` int(11) NOT NULL,
  `praccali` decimal(10,1) NOT NULL,
  `examparc` decimal(10,1) NOT NULL,
  `indiv` decimal(10,1) NOT NULL,
  `fechare` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cali`
--

INSERT INTO `cali` (`codcali`, `codano`, `codper`, `coddoce`, `codclase`, `codsec`, `codalum`, `praccali`, `examparc`, `indiv`, `fechare`) VALUES
(1, 1, 1, 1, 1, 1, 1, '12.0', '12.0', '12.0', '2021-01-28'),
(2, 1, 2, 1, 1, 1, 1, '11.0', '10.0', '11.5', '2021-01-28'),
(3, 1, 4, 1, 1, 1, 1, '10.0', '11.0', '11.0', '2021-01-28'),
(4, 1, 1, 2, 2, 2, 2, '8.0', '8.0', '11.0', '2021-01-28'),
(5, 1, 2, 2, 2, 2, 2, '10.0', '10.0', '11.0', '2021-01-28'),
(6, 1, 4, 2, 2, 2, 2, '14.0', '15.0', '16.0', '2021-01-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `codclase` int(11) NOT NULL,
  `nomclase` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `coddoce` int(11) NOT NULL,
  `codgra` int(11) NOT NULL,
  `codano` int(11) NOT NULL,
  `tipo` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`codclase`, `nomclase`, `coddoce`, `codgra`, `codano`, `tipo`, `info`, `fecha_create`) VALUES
(1, 'Matemática', 1, 1, 1, 'Obligatorio', 'es obligatorio', '2021-01-27 22:31:30'),
(2, 'Comunicación', 2, 2, 1, 'Opcional', 'Esto es opcional', '2021-01-27 22:31:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configge`
--

CREATE TABLE `configge` (
  `codconf` int(11) NOT NULL,
  `nombc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sitio` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `telefo` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `direcc` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `configge`
--

INSERT INTO `configge` (`codconf`, `nombc`, `email`, `sitio`, `telefo`, `direcc`, `pais`, `ciudad`, `fecha_create`) VALUES
(1, 'Ricardo Palma', 'ricardopalma@riki.edu.pe', 'www.ricardopalma.edu.pe', '998787676', 'Piura', 'Perú', 'Castilla', '2021-03-27 13:37:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `coddoce` int(11) NOT NULL,
  `dnido` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nomprof` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `apeprof` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `fech_naci` date NOT NULL,
  `sex` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `telef` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `direc` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dia_ing` date NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nomusu` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `passw` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`coddoce`, `dnido`, `nomprof`, `apeprof`, `fech_naci`, `sex`, `email`, `telef`, `direc`, `dia_ing`, `foto`, `nomusu`, `passw`, `estado`, `role`, `fecha_registro`) VALUES
(1, '74545645', 'Miguel Angel', 'Rosales Requena', '1993-01-06', 'Masculino', 'rosarequ@gmail.com', '987757567', 'el indio castilla', '2021-01-27', '453375.jpg', 'rosareque', '$2y$10$IJdTNHY5uDmdBsK3ICschOgbBkNeox5Sng5NMck3PkuKY8WOE6RV2', '1', 'Profesor', '2021-01-27 22:22:18'),
(2, '74435345', 'Yovani Ursula', 'Torres Guerrero', '1993-01-20', 'Femenino', 'urusu@gmail.com', '976645464', 'el indio castilla', '2021-01-27', '595215.jpg', 'ursuro', '$2y$10$qAeebQc7SOwfepy2OoXZve40l7Ci9O7flD71hGML2Ng3kGFLhLQ22', '1', 'Profesor', '2021-01-27 22:23:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `hini` time NOT NULL,
  `hfinal` time NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `color` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `title`, `hini`, `hfinal`, `start`, `end`, `color`) VALUES
(1, 'fsdfsd', '08:30:00', '12:30:00', '2021-01-21 00:00:00', '2021-01-22 00:00:00', '#40E0D0'),
(2, 'Tarea', '08:15:00', '16:30:00', '2021-03-31 00:00:00', '2021-04-01 00:00:00', '#008000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `codgra` int(11) NOT NULL,
  `nomgra` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`codgra`, `nomgra`, `fecha_create`) VALUES
(1, 'Primer grado', '2021-01-27 22:19:19'),
(2, 'Segundo grado', '2021-01-27 22:19:28'),
(3, 'Tercer grado', '2021-01-27 22:19:37'),
(4, 'Cuarto grado', '2021-01-27 22:19:50'),
(5, 'Quinto grado', '2021-01-27 22:19:58'),
(6, 'Sexto grado', '2021-01-27 22:20:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `codlibro` int(11) NOT NULL,
  `codigol` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `titu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `canti` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `subt` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `aut` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `archi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anopu` date NOT NULL,
  `edito` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `idiom` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `pagi` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `pes` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `codgra` int(11) NOT NULL,
  `esta` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fecreg` date NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`codlibro`, `codigol`, `titu`, `canti`, `subt`, `aut`, `foto`, `archi`, `anopu`, `edito`, `idiom`, `pagi`, `pes`, `codgra`, `esta`, `fecreg`, `fecha_create`) VALUES
(1, '0B439', 'la caperucita', '20', 'la caperucita y el lobo', 'el admin', 'uno.jpg', 'MatCP_FichaPreInscripcionCP(1).pdf', '1977-01-06', 'corefo', 'Español', '22', '22MB', 1, 'Disponible', '2021-01-27', '2021-01-27 22:41:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mainlogin`
--

CREATE TABLE `mainlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mainlogin`
--

INSERT INTO `mainlogin` (`id`, `username`, `email`, `password`, `role`, `fecha_create`) VALUES
(1, 'admin', 'admin@gmail.com', '12345678', 'admin', '2021-01-27 21:10:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` int(11) NOT NULL,
  `men` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codalum` int(11) NOT NULL,
  `coddoce` int(11) NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padres`
--

CREATE TABLE `padres` (
  `codpad` int(11) NOT NULL,
  `dni` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nompadr` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apepa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `propa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `telef` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `celular` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `direcc` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `usuaP` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `padres`
--

INSERT INTO `padres` (`codpad`, `dni`, `nompadr`, `apepa`, `propa`, `email`, `telef`, `celular`, `sexo`, `direcc`, `foto`, `estado`, `role`, `usuaP`, `password`, `fecha_registro`) VALUES
(1, '75432432', 'Robin', 'Roque Yarleke', 'Mecánico', 'rokerobin@gmail.com', '422121', '966745645', 'Masculino', 'el indio castilla', '294682.png', '1', 'Padre', 'robinro', '$2y$10$3AsxOGPIof7mRjInfx5rtehh4l1yhO6GkFtMQnw2hgAyBkfFnHxpe', '2021-01-27 22:28:00'),
(2, '74345433', 'Victoria', 'Roke Yarleke', 'Sistemas', 'vicky@gmail.com', '465646', '965767656', 'Femenino', 'el indio castilla', '327914.png', '1', 'Padre', 'vickyroe', '$2y$10$VvHjAx5W6NwfZdZwPbP/EecLS/9L4pca5CWshED0evKgC5Q54kFMW', '2021-01-27 22:29:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `codper` int(11) NOT NULL,
  `nompe` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`codper`, `nompe`, `fecha_create`) VALUES
(1, 'Bimestre 1', '2021-01-27 23:51:58'),
(2, 'Bimestre 2', '2021-01-27 23:52:33'),
(4, 'Bimestre 3', '2021-01-28 00:01:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
--

CREATE TABLE `plan` (
  `codplane` int(11) NOT NULL,
  `titu` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `descrp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codclase` int(11) NOT NULL,
  `archi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `plan`
--

INSERT INTO `plan` (`codplane`, `titu`, `descrp`, `codclase`, `archi`, `estado`, `fecha_create`) VALUES
(1, 'Plan de matemáticas', 'este es un plan', 1, 'MatCP_FichaPreInscripcionCP(1).pdf', '1', '2021-01-27 22:34:15'),
(2, 'Plan de comunicacón', 'este es el plan de comunicación', 2, 'Bol202012_2020122218094930000602920001.pdf', '1', '2021-01-27 22:34:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pres`
--

CREATE TABLE `pres` (
  `codpres` int(11) NOT NULL,
  `codlibro` int(11) NOT NULL,
  `codalum` int(11) NOT NULL,
  `finicio` date NOT NULL,
  `ffinal` date NOT NULL,
  `estado` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `can` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `fere` date NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `codsec` int(11) NOT NULL,
  `nomsec` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `capacidad` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `codclase` int(11) NOT NULL,
  `coddoce` int(11) NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`codsec`, `nomsec`, `capacidad`, `codclase`, `coddoce`, `fecha_create`) VALUES
(1, 'A', '15', 1, 1, '2021-01-27 22:32:35'),
(2, 'B', '15', 2, 2, '2021-01-27 22:32:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `codtem` int(11) NOT NULL,
  `nomtema` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `codclase` int(11) NOT NULL,
  `coddoce` int(11) NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`codtem`, `nomtema`, `codclase`, `coddoce`, `fecha_create`) VALUES
(1, 'Suma y resta', 1, 1, '2021-01-27 22:33:15'),
(2, 'La oración', 2, 2, '2021-01-27 22:33:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`codalum`),
  ADD KEY `codpad` (`codpad`),
  ADD KEY `codclase` (`codclase`),
  ADD KEY `codsec` (`codsec`),
  ADD KEY `codgra` (`codgra`);

--
-- Indices de la tabla `anoaca`
--
ALTER TABLE `anoaca`
  ADD PRIMARY KEY (`codano`);

--
-- Indices de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD PRIMARY KEY (`codasig`),
  ADD KEY `coddoce` (`coddoce`),
  ADD KEY `codclase` (`codclase`),
  ADD KEY `codsec` (`codsec`);

--
-- Indices de la tabla `asisalum`
--
ALTER TABLE `asisalum`
  ADD PRIMARY KEY (`codasis`),
  ADD KEY `codalum` (`codalum`);

--
-- Indices de la tabla `asisdoc`
--
ALTER TABLE `asisdoc`
  ADD PRIMARY KEY (`codasidoc`),
  ADD KEY `coddoce` (`coddoce`);

--
-- Indices de la tabla `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`codbus`);

--
-- Indices de la tabla `cali`
--
ALTER TABLE `cali`
  ADD PRIMARY KEY (`codcali`),
  ADD KEY `codano` (`codano`),
  ADD KEY `codper` (`codper`),
  ADD KEY `coddoce` (`coddoce`),
  ADD KEY `codclase` (`codclase`),
  ADD KEY `codsec` (`codsec`),
  ADD KEY `codalum` (`codalum`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`codclase`),
  ADD KEY `coddoce` (`coddoce`),
  ADD KEY `codgra` (`codgra`),
  ADD KEY `codano` (`codano`);

--
-- Indices de la tabla `configge`
--
ALTER TABLE `configge`
  ADD PRIMARY KEY (`codconf`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`coddoce`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`codgra`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`codlibro`),
  ADD KEY `codgra` (`codgra`);

--
-- Indices de la tabla `mainlogin`
--
ALTER TABLE `mainlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `padres`
--
ALTER TABLE `padres`
  ADD PRIMARY KEY (`codpad`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`codper`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`codplane`),
  ADD KEY `codclase` (`codclase`);

--
-- Indices de la tabla `pres`
--
ALTER TABLE `pres`
  ADD PRIMARY KEY (`codpres`),
  ADD KEY `codlibro` (`codlibro`),
  ADD KEY `codalum` (`codalum`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`codsec`),
  ADD KEY `codclase` (`codclase`),
  ADD KEY `coddoce` (`coddoce`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`codtem`),
  ADD KEY `codclase` (`codclase`),
  ADD KEY `coddoce` (`coddoce`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `codalum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `anoaca`
--
ALTER TABLE `anoaca`
  MODIFY `codano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  MODIFY `codasig` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `asisalum`
--
ALTER TABLE `asisalum`
  MODIFY `codasis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asisdoc`
--
ALTER TABLE `asisdoc`
  MODIFY `codasidoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `bus`
--
ALTER TABLE `bus`
  MODIFY `codbus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cali`
--
ALTER TABLE `cali`
  MODIFY `codcali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `codclase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `configge`
--
ALTER TABLE `configge`
  MODIFY `codconf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `coddoce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `codgra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `codlibro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mainlogin`
--
ALTER TABLE `mainlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `padres`
--
ALTER TABLE `padres`
  MODIFY `codpad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `codper` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `plan`
--
ALTER TABLE `plan`
  MODIFY `codplane` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pres`
--
ALTER TABLE `pres`
  MODIFY `codpres` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `codsec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tema`
--
ALTER TABLE `tema`
  MODIFY `codtem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`codpad`) REFERENCES `padres` (`codpad`),
  ADD CONSTRAINT `alumnos_ibfk_2` FOREIGN KEY (`codclase`) REFERENCES `clase` (`codclase`),
  ADD CONSTRAINT `alumnos_ibfk_3` FOREIGN KEY (`codsec`) REFERENCES `seccion` (`codsec`),
  ADD CONSTRAINT `alumnos_ibfk_4` FOREIGN KEY (`codgra`) REFERENCES `grado` (`codgra`);

--
-- Filtros para la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD CONSTRAINT `asignacion_ibfk_1` FOREIGN KEY (`coddoce`) REFERENCES `docente` (`coddoce`),
  ADD CONSTRAINT `asignacion_ibfk_2` FOREIGN KEY (`codclase`) REFERENCES `clase` (`codclase`),
  ADD CONSTRAINT `asignacion_ibfk_3` FOREIGN KEY (`codsec`) REFERENCES `seccion` (`codsec`);

--
-- Filtros para la tabla `asisalum`
--
ALTER TABLE `asisalum`
  ADD CONSTRAINT `asisalum_ibfk_1` FOREIGN KEY (`codalum`) REFERENCES `alumnos` (`codalum`);

--
-- Filtros para la tabla `asisdoc`
--
ALTER TABLE `asisdoc`
  ADD CONSTRAINT `asisdoc_ibfk_1` FOREIGN KEY (`coddoce`) REFERENCES `docente` (`coddoce`);

--
-- Filtros para la tabla `cali`
--
ALTER TABLE `cali`
  ADD CONSTRAINT `cali_ibfk_1` FOREIGN KEY (`codano`) REFERENCES `anoaca` (`codano`),
  ADD CONSTRAINT `cali_ibfk_2` FOREIGN KEY (`codper`) REFERENCES `periodo` (`codper`),
  ADD CONSTRAINT `cali_ibfk_3` FOREIGN KEY (`coddoce`) REFERENCES `docente` (`coddoce`),
  ADD CONSTRAINT `cali_ibfk_4` FOREIGN KEY (`codclase`) REFERENCES `clase` (`codclase`),
  ADD CONSTRAINT `cali_ibfk_5` FOREIGN KEY (`codsec`) REFERENCES `seccion` (`codsec`),
  ADD CONSTRAINT `cali_ibfk_6` FOREIGN KEY (`codalum`) REFERENCES `alumnos` (`codalum`);

--
-- Filtros para la tabla `clase`
--
ALTER TABLE `clase`
  ADD CONSTRAINT `clase_ibfk_1` FOREIGN KEY (`coddoce`) REFERENCES `docente` (`coddoce`),
  ADD CONSTRAINT `clase_ibfk_2` FOREIGN KEY (`codgra`) REFERENCES `grado` (`codgra`),
  ADD CONSTRAINT `clase_ibfk_3` FOREIGN KEY (`codano`) REFERENCES `anoaca` (`codano`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`codgra`) REFERENCES `grado` (`codgra`);

--
-- Filtros para la tabla `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `plan_ibfk_1` FOREIGN KEY (`codclase`) REFERENCES `clase` (`codclase`);

--
-- Filtros para la tabla `pres`
--
ALTER TABLE `pres`
  ADD CONSTRAINT `pres_ibfk_1` FOREIGN KEY (`codlibro`) REFERENCES `libro` (`codlibro`),
  ADD CONSTRAINT `pres_ibfk_2` FOREIGN KEY (`codalum`) REFERENCES `alumnos` (`codalum`);

--
-- Filtros para la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD CONSTRAINT `seccion_ibfk_1` FOREIGN KEY (`codclase`) REFERENCES `clase` (`codclase`),
  ADD CONSTRAINT `seccion_ibfk_2` FOREIGN KEY (`coddoce`) REFERENCES `docente` (`coddoce`);

--
-- Filtros para la tabla `tema`
--
ALTER TABLE `tema`
  ADD CONSTRAINT `tema_ibfk_1` FOREIGN KEY (`codclase`) REFERENCES `clase` (`codclase`),
  ADD CONSTRAINT `tema_ibfk_2` FOREIGN KEY (`coddoce`) REFERENCES `docente` (`coddoce`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
