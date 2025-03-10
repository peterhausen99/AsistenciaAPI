-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2025 a las 03:20:15
-- Versión del servidor: 8.0.41
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asistenciadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asociados`
--

CREATE TABLE `asociados` (
  `id` int NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `NumeroCedula` varchar(50) NOT NULL,
  `Estatus1` varchar(50) NOT NULL,
  `Estado2` varchar(50) NOT NULL,
  `Correo` varchar(255) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `FechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asociados`
--

INSERT INTO `asociados` (`id`, `Nombre`, `NumeroCedula`, `Estatus1`, `Estado2`, `Correo`, `Telefono`, `FechaRegistro`) VALUES
(1, 'Juan Pérez', '123456789', 'Activo', 'Verificado', 'juan.perez@email.com', '555-1234', '2025-01-30 05:16:11'),
(2, 'María López', '987654321', 'Inactivo', 'Pendiente', 'maria.lopez@email.com', '555-5678', '2025-01-30 05:16:11'),
(3, 'Pedro Quintero Artavia ', '117390526', 'Activo', 'Verificado', 'quinarpe26@gmail.com', '83035390', '2025-02-01 03:05:24'),
(111, 'GONZALEZ QUIROS PAOLA DANIELA', '111111222', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-199', '2025-02-01 04:33:24'),
(112, 'GRANADOS CORDERO MARIA JOSE', '111111223', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-200', '2025-02-01 04:33:24'),
(113, 'HERNANDEZ RODRIGUEZ DAVID JAVIER', '111111224', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-201', '2025-02-01 04:33:24'),
(114, 'HERRERA OVIEDO FEDERICO', '111111225', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-202', '2025-02-01 04:33:24'),
(115, 'HERRERA QUIROS JOSE MIGUEL', '111111226', 'Inactivo', 'Confirmado', '1ab@aso.co.cr', '8888-88-203', '2025-02-01 04:33:24'),
(116, 'HIDALGO CALDERON IGNACIO', '111111227', 'Inactivo', 'No', '1ab@aso.co.cr', '8888-88-204', '2025-02-01 04:33:24'),
(117, 'JARA CARBALLO GRACIELA', '111111228', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-205', '2025-02-01 04:33:24'),
(118, 'JIMENEZ VILLEGAS ALVARO', '111111229', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-206', '2025-02-01 04:33:24'),
(119, 'JOHNSON MATA ANGIE JACKELINE', '111111230', 'Inactivo', 'Confirmado', '1ab@aso.co.cr', '8888-88-207', '2025-02-01 04:33:24'),
(120, 'LAITANO RODRIGUEZ MARIO', '111111231', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-208', '2025-02-01 04:33:24'),
(121, 'LEIVA OROZCO CINDY PATRICIA', '111111232', 'Activo', 'No', '1ab@aso.co.cr', '8888-88-209', '2025-02-01 04:33:24'),
(122, 'MARIN ARRIETA JUAN CARLOS', '111111233', 'Inactivo', 'No', '1ab@aso.co.cr', '8888-88-210', '2025-02-01 04:33:24'),
(123, 'MEZA LEANDRO HENRY', '111111234', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-211', '2025-02-01 04:33:24'),
(124, 'MONDRAGON ROJAS JUAN PABLO', '111111235', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-212', '2025-02-01 04:33:24'),
(125, 'MONGE AGUILAR NIDYA ISABEL', '111111236', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-213', '2025-02-01 04:33:24'),
(126, 'MONGE GARRO RODOLFO ALEXANDER', '111111237', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-214', '2025-02-01 04:33:24'),
(127, 'MONGE MARIN MONICA', '111111238', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-215', '2025-02-01 04:33:24'),
(128, 'MORA MIRANDA RAUL', '111111239', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-216', '2025-02-01 04:33:24'),
(129, 'MUNOZ LEIVA MICHAEL', '111111240', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-217', '2025-02-01 04:33:24'),
(130, 'MURILLO LORIA JACQUELINE', '111111241', 'Inactivo', 'No', '1ab@aso.co.cr', '8888-88-218', '2025-02-01 04:33:24'),
(131, 'NAVARRO OLIVER GERMAN', '111111242', 'Inactivo', 'Confirmado', '1ab@aso.co.cr', '8888-88-219', '2025-02-01 04:33:24'),
(132, 'NAVARRO RODRIGUEZ CHRISTOPHER', '111111243', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-220', '2025-02-01 04:33:24'),
(133, 'ORTEGA VILLALOBOS ISABEL', '111111244', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-221', '2025-02-01 04:33:24'),
(134, 'OVARES CORDOBA ADRIAN', '111111245', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-222', '2025-02-01 04:33:24'),
(135, 'OVARES VILLAR JOHANNA', '111111246', 'Activo', 'Confirmado', '1ab@aso.co.cr', '8888-88-223', '2025-02-01 04:33:24'),
(136, 'PICADO REYES ABY', '111111247', 'Activo', 'No', '1ab@aso.co.cr', '8888-88-224', '2025-02-01 04:33:24'),
(137, 'QUESADA MOYA OMAR EMILIO', '111111248', 'Activo', 'No', '1ab@aso.co.cr', '8888-88-225', '2025-02-01 04:33:24'),
(138, 'RAMOS NAVARRO CHRISTIAN', '111111249', 'Activo', 'No', '1ab@aso.co.cr', '8888-88-226', '2025-02-01 04:33:24'),
(139, 'RETANA BONILLA ALFREDO', '111111250', 'Inactivo', 'Confirmado', '1ab@aso.co.cr', '8888-88-227', '2025-02-01 04:33:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padron_asociados`
--

CREATE TABLE `padron_asociados` (
  `COL 1` varchar(109) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `padron_asociados`
--

INSERT INTO `padron_asociados` (`COL 1`) VALUES
('Id;Nombre;Número Cédula;Estatus 1;Estado 2 ;Correo;Telefono'),
('00000111;GONZALEZ QUIROS PAOLA DANIELA               ;111111222;Activo;Confirmado;1ab@aso.co.cr;8888-88-199'),
('00000112;GRANADOS CORDERO MARIA JOSE                 ;111111223;Activo;Confirmado;1ab@aso.co.cr;8888-88-200'),
('00000113;HERNANDEZ RODRIGUEZ DAVID JAVIER            ;111111224;Activo;Confirmado;1ab@aso.co.cr;8888-88-201'),
('00000114;HERRERA OVIEDO FEDERICO                     ;111111225;Activo;Confirmado;1ab@aso.co.cr;8888-88-202'),
('00000115;HERRERA QUIROS JOSE MIGUEL                  ;111111226;Inactivo;Confirmado;1ab@aso.co.cr;8888-88-203'),
('00000116;HIDALGO CALDERON IGNACIO                    ;111111227;Inactivo;No;1ab@aso.co.cr;8888-88-204'),
('00000117;JARA CARBALLO GRACIELA                      ;111111228;Activo;Confirmado;1ab@aso.co.cr;8888-88-205'),
('00000118;JIMENEZ VILLEGAS ALVARO                     ;111111229;Activo;Confirmado;1ab@aso.co.cr;8888-88-206'),
('00000119;JOHNSON MATA ANGIE JACKELINE                ;111111230;Inactivo;Confirmado;1ab@aso.co.cr;8888-88-207'),
('00000120;LAITANO RODRIGUEZ MARIO                     ;111111231;Activo;Confirmado;1ab@aso.co.cr;8888-88-208'),
('00000121;LEIVA OROZCO CINDY PATRICIA                 ;111111232;Activo;No;1ab@aso.co.cr;8888-88-209'),
('00000122;MARIN ARRIETA JUAN CARLOS                   ;111111233;Inactivo;No;1ab@aso.co.cr;8888-88-210'),
('00000123;MEZA LEANDRO HENRY                          ;111111234;Activo;Confirmado;1ab@aso.co.cr;8888-88-211'),
('00000124;MONDRAGON ROJAS JUAN PABLO                  ;111111235;Activo;Confirmado;1ab@aso.co.cr;8888-88-212'),
('00000125;MONGE AGUILAR NIDYA ISABEL                  ;111111236;Activo;Confirmado;1ab@aso.co.cr;8888-88-213'),
('00000126;MONGE GARRO RODOLFO ALEXANDER               ;111111237;Activo;Confirmado;1ab@aso.co.cr;8888-88-214'),
('00000127;MONGE MARIN MONICA                          ;111111238;Activo;Confirmado;1ab@aso.co.cr;8888-88-215'),
('00000128;MORA MIRANDA RAUL                           ;111111239;Activo;Confirmado;1ab@aso.co.cr;8888-88-216'),
('00000129;MUNOZ LEIVA MICHAEL                         ;111111240;Activo;Confirmado;1ab@aso.co.cr;8888-88-217'),
('00000130;MURILLO LORIA JACQUELINE                    ;111111241;Inactivo;No;1ab@aso.co.cr;8888-88-218'),
('00000131;NAVARRO OLIVER GERMAN                       ;111111242;Inactivo;Confirmado;1ab@aso.co.cr;8888-88-219'),
('00000132;NAVARRO RODRIGUEZ CHRISTOPHER               ;111111243;Activo;Confirmado;1ab@aso.co.cr;8888-88-220'),
('00000133;ORTEGA VILLALOBOS ISABEL                    ;111111244;Activo;Confirmado;1ab@aso.co.cr;8888-88-221'),
('00000134;OVARES CORDOBA ADRIAN                       ;111111245;Activo;Confirmado;1ab@aso.co.cr;8888-88-222'),
('00000135;OVARES VILLAR JOHANNA                       ;111111246;Activo;Confirmado;1ab@aso.co.cr;8888-88-223'),
('00000136;PICADO REYES ABY                            ;111111247;Activo;No;1ab@aso.co.cr;8888-88-224'),
('00000137;QUESADA MOYA OMAR EMILIO                    ;111111248;Activo;No;1ab@aso.co.cr;8888-88-225'),
('00000138;RAMOS NAVARRO CHRISTIAN                     ;111111249;Activo;No;1ab@aso.co.cr;8888-88-226'),
('00000139;RETANA BONILLA ALFREDO                      ;111111250;Inactivo;Confirmado;1ab@aso.co.cr;8888-88-227'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;'),
(';;;;;;');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asociados`
--
ALTER TABLE `asociados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `NumeroCedula` (`NumeroCedula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asociados`
--
ALTER TABLE `asociados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
