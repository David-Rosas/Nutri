-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2017 a las 22:43:53
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `name`) VALUES
(1, 'Pediatria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `coment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `name`, `lastname`, `coment`, `user_id`) VALUES
(1, 'meraqlis', 'ssss', 'no puedo ser voluntario no me agrega', NULL),
(2, 'carlos', 'colmenare', 'no puedo ser voluntario no me agrega', NULL),
(3, 'carlos', 'colmenare', 'no puedo ser voluntario no me agregaas', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `name`) VALUES
(1, 'Pendiente'),
(2, 'Aplicada'),
(3, 'No asistio'),
(4, 'Cancelada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `no` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `day_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`id`, `no`, `name`, `lastname`, `gender`, `day_of_birth`, `email`, `address`, `phone`, `image`, `is_active`, `created_at`, `category_id`) VALUES
(4, NULL, 'Mercys', 'HernÃ¡ndez', NULL, NULL, 'Mercyshernandez@gmail.com', 'calle sierra', '04147803456', NULL, 1, '2017-05-09 18:02:59', 3),
(5, NULL, 'Silvia ', 'Pereira', NULL, NULL, 'Silviapereira@gmail.com', 'calle don ramÃ³n con sector sierra', '04164567328', NULL, 1, '2017-05-09 18:04:13', 4),
(6, NULL, 'Manfredo', 'Moya', NULL, NULL, 'manfredomoya@gmail.com', 'Urbanizacion paseo colon', '04128763456', NULL, 1, '2017-05-09 18:05:19', 5),
(7, NULL, 'Medardo', 'Medina', NULL, NULL, 'medardomedina@gmail.com', 'Urbanizacion paseo colon', '04246758934', NULL, 1, '2017-05-09 18:06:21', 6),
(8, NULL, 'Manuel', 'Martinez', NULL, NULL, 'manuelmartinez@gmail.com', 'calle 5 julio Puerto la Cruz', '04147896534', NULL, 1, '2017-05-09 18:07:15', 7),
(9, NULL, 'Consuelo', 'Fraga', NULL, NULL, 'consuelofraga@gmail.com', 'Calle la gloria Valle lindo', '02816578376', NULL, 1, '2017-05-09 18:08:52', 8),
(10, NULL, 'Yelena ', 'Gil', NULL, NULL, 'Yelenagil@gmail.com', 'calle san luis urb. Bello Monte', '04147896534', NULL, 1, '2017-05-09 18:09:56', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `no` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `cd` varchar(12) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `day_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sick` varchar(500) DEFAULT NULL,
  `medicaments` varchar(500) DEFAULT NULL,
  `alergy` varchar(500) DEFAULT NULL,
  `is_favorite` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id`, `no`, `name`, `lastname`, `cd`, `gender`, `day_of_birth`, `email`, `address`, `phone`, `image`, `sick`, `medicaments`, `alergy`, `is_favorite`, `is_active`, `created_at`) VALUES
(4, NULL, 'Meralis', 'Cordero', '', 'm', '1992-06-01', 'meraliscrdero@gmail.com', 'Calle la gloria Valle lindo', '04147803456', NULL, 'Cefalea', 'magnesiun', 'polvo', 1, 1, '2017-05-09 18:11:34'),
(5, NULL, 'Valeska', 'Rosas', '', 'm', '1987-06-23', 'Valeska@gmail.com', 'Urbanizacion paseo colon', '04126578943', NULL, 'fiebre', 'acetaminofen', 'ninguna', 1, 1, '2017-05-09 18:12:50'),
(6, NULL, 'Julio', 'Rosas', '', 'h', '1999-03-20', 'juliorock@gmail.com', 'Urbanizacion paseo colon', '04126784532', NULL, 'diarrea', 'intorpan', 'ninuna', 1, 1, '2017-05-09 18:13:56'),
(7, NULL, 'Ismael', 'Rosas', '', 'h', '1969-08-03', 'Ismaelrosas@gmail.com', 'Bello Monte', '04147896534', NULL, 'cefalea', 'broxol', 'ninguna', 1, 1, '2017-05-09 18:15:12'),
(8, NULL, 'Alejandra', 'Lopez', '', 'm', '1956-05-24', 'alejandrarosas@gmail.com', 'calle 5 julio Puerto la Cruz', '04128763456', NULL, 'Hipertension', 'daflon', 'ninguna', 1, 1, '2017-05-09 18:16:24'),
(9, NULL, 'Ali', 'Cordero', '', 'h', '1967-04-12', 'alicordero@gmail.com', 'UrbanizaciÃ³n saigon', '04126784356', NULL, 'fractura', 'calmante', 'ninguna', 1, 1, '2017-05-09 18:17:46'),
(10, NULL, 'Eduardo', 'Cordero', '', 'h', '1978-12-31', 'eduardocordero@gmail.com', 'UrbanizaciÃ³n saigon', '04126784356', NULL, 'cefalea', 'ibuprofeno', 'ninguna', 1, 1, '2017-05-09 18:19:33'),
(11, NULL, 'Dubraska', 'Guilarte', '', 'm', '2015-05-23', 'Dubrazka@gmail.com', 'UrbanizaciÃ³n saigon', '04128763456', NULL, 'gripe', 'acetaminofen', 'ninguna', 1, 1, '2017-05-09 18:20:53'),
(12, NULL, 'Anabelis', 'Cordero', '', 'm', '2015-03-26', 'anabelis@gmail.com', 'UrbanizaciÃ³n saigon', '04147896534', NULL, 'arritmia cardiaca', 'daflon', 'ninguna', 1, 1, '2017-05-09 18:22:18'),
(13, NULL, 'Oriana', 'wasker', '16723445', 'm', '1987-02-03', 'Oriana@gmail.com', 'Calle la gloria Valle lindo', '04164567328', NULL, 'craneo', '', '', 1, 1, NULL),
(14, NULL, 'Pedro', 'Carma', '12345789', 'h', '0000-00-00', 'anapadilla@gmail.com', 'calle sucre', '04247803276', NULL, 'ninguna', 'acetaminofen', 'polvo', 1, 1, NULL),
(15, NULL, 'pedro', 'colmenare', '18510903', 'h', '0000-00-00', 'thedevil880@hotmail.com', 'Bello Monte Puerto la cruz', '04247803276', NULL, 'ninguna', 'acetaminofen', 'polvo', 1, 1, NULL),
(16, NULL, 'Miguel', 'Gomez', '', 'h', '2015-06-26', 'miguel@gmail.com', 'UrbanizaciÃ³n saigon', '04147823456', NULL, 'fiebre', 'acetaminofen', 'polvo', 1, 1, '2017-05-10 10:58:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservacion`
--

CREATE TABLE `reservacion` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `note` text,
  `message` text,
  `date_at` varchar(50) DEFAULT NULL,
  `time_at` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `pacient_id` int(11) DEFAULT NULL,
  `symtoms` text,
  `sick` text,
  `medicaments` text,
  `user_id` int(11) DEFAULT NULL,
  `medic_id` int(11) DEFAULT NULL,
  `is_web` tinyint(1) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `name`, `lastname`, `email`, `password`, `is_active`, `is_admin`, `created_at`) VALUES
(1, 'admin', NULL, NULL, NULL, '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 1, 1, '2017-04-24 14:32:45'),
(2, 'pedrogomez', 'Pedro', 'Gomez', NULL, '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 1, 1, '2017-05-01 15:41:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
