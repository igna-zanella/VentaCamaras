-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2024 a las 14:03:06
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `v02`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `dni` int(8) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `apellido` varchar(32) NOT NULL,
  `contacto` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`dni`, `nombre`, `apellido`, `contacto`) VALUES
(11223344, 'Florencia', 'Bonino', '1136027790'),
(12345678, 'Jorge', 'Gómez', '1146054003'),
(21312300, 'Ana', 'Rezza', '1132524085'),
(22331122, 'Carlos', 'González', '1154237784'),
(33222211, 'Facundo', 'Lopez', '1132352412'),
(87654321, 'Albano', 'Rodríguez', '1144662200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(8) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(4) DEFAULT 0,
  `img` varchar(20) DEFAULT 'nodisponible.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `marca`, `descripcion`, `precio`, `cantidad`, `img`) VALUES
(1, 'EOS R6 Mark II', 'CANON', 'Cámara mirrorless con kit RF 24-105mm. El metraje 4K 60p con sobremuestreo de ancho completo tiene un aspecto sencillamente soberbio. Las características intuitivas, como el ALa EOS R6 Mark II reconoce y realiza un seguimiento de más sujetos con mayor velocidad, fiabilidad y precisión que nunca.', 2400.00, 4, '1.png'),
(2, 'A6100', 'SONY', 'Cámara mirrorless Alpha A6100 con kit Sony E PZ 16. La gran cobertura AF de la cámara se basa en densas matrices de 425 puntos de detección de fases y 425 de detección de contraste para aumentar la precisión de detección. El rápido rendimiento del motor de procesamiento de nueva generación alcanza una velocidad de fijación de 0,02 s.', 748.00, 1, '2.png'),
(3, 'ILCE-7M4K', 'SONY', 'Cámara mirrorless Alpha con Kit A7 IV OSS. El sensor CMOS Exmor R™ de full-frame ofrece una velocidad increíble y una calidad de la imagen superior. El uso de cables de cobre ayuda a conseguir mayores velocidades de transmisión y una conversión AD más rápida, y la lectura rápida del sensor permite la grabación 4K en 4:2:2 de 10 bits a un máximo de 60p.', 2799.00, 2, '3.png'),
(4, 'D7500', 'NIKON', 'Cámara mirrorless con kit Nikkor AF-S DX 18-140mm. La D7500 cuenta con el mismo sensor de imagen CMOS que se utiliza en el modelo D500 emblemático del formato DX de Nikon, que ofrece 20.9 megapíxeles. Diseñado sin un filtro de paso bajo, posee el balance óptimo entre resolución de imagen JPEG y rendimiento con poco ruido, gracias al lente NIKKOR.', 1200.00, 5, '4.png'),
(5, 'Z7', 'NIKON', 'Formato FX 14 CPS Disparos Continuos. El armazón está compuesto por una aleación de magnesio ultrarresistente, la misma utilizada en la D850 y la D5 por su extrema durabilidad e increíble proporción de resistencia-peso. Cuenta con el mismo mecanismo de freno y el mismo material de las hojas del disparador utilizados en la D850, probado por 200,000 ciclos dentro de la cámara.', 2275.00, 3, '5.png'),
(6, 'ZFC', 'NIKON', 'Formato DX 20.9 Megapíxeles 11 CPS. Z fc fusiona el diseño clásico con la tecnología de la serie Z. Tamaño pequeño con gran calidad de imagen. Videos en 4K con AF de detección de ojos a tiempo completo. Una pantalla de vlogger giratoria con funciones de transmisión en vivo. Esta cámara se parece a las que ya viste. Sin embargo, el rendimiento es completamente nuevo.  ', 895.00, 5, '6.png'),
(7, 'V-RAPTOR 8K S35', 'RED', 'Con un sensor de 8K optimizado para lentes Super35 mm, V-RAPTOR 8K S35 ofrece a los cineastas un beneficio único al usar la gama versátil de lentes Super35 mm y al mismo tiempo capturar con los detalles suaves y realistas que brinda la resolución 8K.', 17995.00, 1, '7.png'),
(8, 'EOS 6D Mark II', 'CANON', 'Mirrorless. PROCESADOR DE IMÁGENES DIGIC X. Los fotógrafos de retratos estarán encantados con la reducida profundidad de campo que ofrece el sensor de fotograma completo de la EOS 6D Mark II. Enfoque automático avanzado de 45 puntos de tipo cruz para enfocar con precisión, incluso en condiciones lumínicas complicadas, como bajo la luz de la luna. ', 1450.00, 0, '8.png'),
(16, 'EOS 5D Mark IV', 'CANON', 'Full frame. CMOS de 30,4 MP. Vídeos EOS 4K + Full HD. Wi-Fi / NFC. La EOS 5D Mark IV incluye un sistema de enfoque avanzado y medición que capta y realiza un seguimiento de cada momento en cuanto se produce, incluso con una iluminación difícil.', 604.00, 3, '16.png'),
(18, 'D3500', 'NIKON', 'Video en 1080p. Dentro de las DSLR, hay una computadora especializada que mejora la precisión de los ajustes para cada disparo. El reconocido sistema de procesamiento de imagen EXPEED de Nikon se diseñó sobre la base de una rica experiencia en el tratamiento de imágenes y ayuda a la D3500 a tomar fotografías hermosas y vibrantes en casi cualquier condición de luz. ', 320.00, 2, '18.png'),
(30, 'PYXIS 6K', 'BLACKMAGIC', 'Sensor 6K full frame de 36 x 24mm. Blackmagic PYXIS cuenta con un enorme sensor de fotograma completo con una resolución nativa de 6048 x 4032. Esto es casi tres veces más grande que un sensor Super 35 y le permite disparar con poca profundidad de campo o usar lentes anamórficos sin recortar para una verdadera apariencia cinematográfica.', 2995.00, 1, '30sm.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `codigo` int(8) NOT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `precioTotal` double(10,2) NOT NULL,
  `idProducto` int(8) NOT NULL,
  `idCliente` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`codigo`, `fecha`, `precioTotal`, `idProducto`, `idCliente`) VALUES
(1, '2024-03-12', 0.00, 1, 12345678),
(2, '2024-03-23', 0.00, 5, 11223344),
(3, '2024-04-04', 0.00, 8, 21312300),
(4, '2024-04-11', 0.00, 2, 22331122),
(5, '2024-04-26', 0.00, 3, 87654321),
(10, '2024-06-29', 0.00, 18, 11223344),
(15, '2024-07-02', 0.00, 1, 11223344),
(20, '2024-06-03', 0.00, 1, 33222211);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `idProducto` (`idProducto`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
