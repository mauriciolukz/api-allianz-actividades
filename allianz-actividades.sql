-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para allianz-actividades
CREATE DATABASE IF NOT EXISTS `allianz-actividades` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `allianz-actividades`;

-- Volcando estructura para tabla allianz-actividades.actividades
CREATE TABLE IF NOT EXISTS `actividades` (
  `actividad_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_actividad` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Desc_actividad` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`actividad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla allianz-actividades.actividades: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` (`actividad_id`, `img_actividad`, `Desc_actividad`) VALUES
	(1, 'banner-01.jpg', 'Guía de actividades corredores'),
	(2, 'banner-01.jpg', 'Guía de actividades autónomas');
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;

-- Volcando estructura para tabla allianz-actividades.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla allianz-actividades.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla allianz-actividades.generalidades_items
CREATE TABLE IF NOT EXISTS `generalidades_items` (
  `generalidad_id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_item_actividad` int(11) NOT NULL DEFAULT '0',
  `Desc_generalidad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Plus` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `web_service` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `buzones_funcionales` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivel_servicio` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`generalidad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla allianz-actividades.generalidades_items: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `generalidades_items` DISABLE KEYS */;
INSERT INTO `generalidades_items` (`generalidad_id`, `Id_item_actividad`, `Desc_generalidad`, `Plus`, `web_service`, `buzones_funcionales`, `nivel_servicio`) VALUES
	(1, 3, 'Realizar Cotización / Emisión', 'Se ingresa a Allia2net, producción, suplemento.', 'No existe conexión vía web service.', 'Envío de la documentación soporte a los buzones: suplementos.autos@allianz.co Asunto P-Número de Póliza/Aplica Ej: P-0123456789/00001', '1 día hábil cuenta especial 3 días hábiles'),
	(2, 3, 'Solicitar cancelación de pólizas', 'Se ingresa a Allia2net, menude producción, flotas autos, ingresa el número asignado de cabezote y la realiza la emisión.', 'No existe conexión vía web service.', 'Envío de la documentación soporte a los buzones: suplementos.autos@allianz.co Asunto P-Número de Póliza/Aplica Ej: P-0123456789/00001', '3 días'),
	(3, 3, 'Solicitar una sustitución de alta', 'Generar tarea GO, imagen 2261 Indexando Soportes.', 'No existe conexión vía web service.', 'Envío de la documentación soporte a los buzones: suplementos.autos@allianz.co Asunto P-Número de Póliza/Aplica Ej: P-0123456789/00001', '2 día hábiles'),
	(4, 3, 'Realizar suplementos sin valor', 'Generar tarea GO, imagen 2261 Indexando Soportes.', 'No existe conexión vía web service.', 'Envío de la documentación soporte a los buzones: suplementos.autos@allianz.co Asunto P-Número de Póliza/Aplica Ej: P-0123456789/00001', '2 día hábiles'),
	(5, 4, 'Realizar Cotización / Emisión', 'Generar tarea GO, imagen 2261 Indexando Soportes.', 'No existe conexión vía web service.', 'Envío de la documentación soporte a los buzones: suplementos.autos@allianz.co Asunto P-Número de Póliza/Aplica Ej: P-0123456789/00001', '2 día hábiles'),
	(6, 4, 'Descargar información a través de petición de datos', 'Generar tarea GO, imagen 2261 Indexando Soportes.', 'No existe conexión vía web service.', 'Remitir solicitud a la sucursal.', '2 día hábiles'),
	(7, 5, 'Solicitar inclusión de asegurados', 'Generar tarea GO, imagen 2261 Indexando Soportes.', 'Cotización y emisión de pólizas a través de la plataforma del corredor y conexión con Allianz vía Web Service.  ', 'Remitir solicitud a la sucursal.', '2 día hábiles'),
	(8, 5, 'Solicitar exclusión de asegurados', 'Generar tarea GO, imagen 2261 Indexando Soportes.', 'Cotización y emisión de pólizas a través de la plataforma del corredor y conexión con Allianz vía Web Service.  ', 'Remitir solicitud a la sucursal.', '2 día hábiles'),
	(9, 5, 'Legalización formato de asegurabilidad', 'Generar tarea GO, imagen 2261 Indexando Soportes.', 'Cotización y emisión de pólizas a través de la plataforma del corredor y conexión con Allianz vía Web Service.  ', 'Remitir solicitud a la sucursal.', '2 día hábiles'),
	(10, 6, 'Realizar Cotización / Emisión Negocio Individual', 'Se ingresa a Allia2net, menude producción, flotas autos, ingresa el número asignado de cabezote y la realiza la emisión.', 'Cotización y emisión de pólizas a través de la plataforma del corredor y conexión con Allianz vía Web Service.  ', 'En caso de que no se desbloquee la póliza remitir a  la sucursal.', '3 días'),
	(11, 7, 'Ampliación fecha límite de pago', 'Se ingresa a Allia2net, menude producción, flotas autos, ingresa el número asignado de cabezote y la realiza la emisión.', 'Cotización y emisión de pólizas a través de la plataforma del corredor y conexión con Allianz vía Web Service.  ', 'En caso de que no se desbloquee la póliza remitir a  la sucursal.', '3 días'),
	(12, 9, 'Solicitar certificaciones del intermediario', 'Se ingresa a Allia2net, menude producción, flotas autos, ingresa el número asignado de cabezote y la realiza la emisión.', 'Cotización y emisión de pólizas a través de la plataforma del corredor y conexión con Allianz vía Web Service.  ', 'En caso de que no se desbloquee la póliza remitir a  la sucursal.', '3 días'),
	(13, 8, 'Consulta de siniestros', 'Se ingresa a Allia2net, menude producción, flotas autos, ingresa el número asignado de cabezote y la realiza la emisión.', 'Cotización y emisión de pólizas a través de la plataforma del corredor y conexión con Allianz vía Web Service.  ', 'En caso de que no se desbloquee la póliza remitir a  la sucursal.', '3 días'),
	(14, 8, 'No conformidades en siniestros', 'Se ingresa a Allia2net, menude producción, flotas autos, ingresa el número asignado de cabezote y la realiza la emisión.', 'No existe conexión vía web service.', 'En caso de que no se desbloquee la póliza remitir a  la sucursal.', '1 día hábil cuenta especial 3 días hábiles');
/*!40000 ALTER TABLE `generalidades_items` ENABLE KEYS */;

-- Volcando estructura para tabla allianz-actividades.items_actividades
CREATE TABLE IF NOT EXISTS `items_actividades` (
  `Id_item_actividad` int(11) NOT NULL AUTO_INCREMENT,
  `actividad_id` int(11) NOT NULL,
  `img_item` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_item` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `color_item` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Id_item_actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla allianz-actividades.items_actividades: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `items_actividades` DISABLE KEYS */;
INSERT INTO `items_actividades` (`Id_item_actividad`, `actividad_id`, `img_item`, `nombre_item`, `color_item`) VALUES
	(3, 1, 'auto.svg', 'Autos', '#F6C4CD'),
	(4, 1, 'corazon.svg', 'Salud', '#B2DCEC'),
	(5, 1, 'vida.svg', 'Vida', '#DBE3A8'),
	(6, 1, 'hogar.svg', 'Hogar', '#DAB58F'),
	(7, 1, 'sssss.svg', 'Cartera', '#E5CDE3'),
	(8, 1, 'ssss.svg', 'Siniestros', '#FFFFFF'),
	(9, 1, 'ssss.svg', 'Otras', '#B4DCDC'),
	(10, 2, 'auto.svg', 'Autos', '#F6C4CD'),
	(11, 2, 'corazon.svg', 'Salud', '#B2DCEC'),
	(12, 2, 'vida.svg', 'Vida', '#DBE3A8'),
	(13, 2, 'hogar.svg', 'Hogar', '#DAB58F'),
	(14, 2, 'empresa.svg', 'Empresa', '#DCB58C'),
	(15, 2, 'ffff', 'Cartera', '#E5CDE3'),
	(16, 2, 'ffff', 'MiPyme', '#FFFFFF'),
	(17, 2, 'fff', 'Siniestros', '#FFFFFF'),
	(18, 2, 'eeeee', 'Otras', '#B4DCDC');
/*!40000 ALTER TABLE `items_actividades` ENABLE KEYS */;

-- Volcando estructura para tabla allianz-actividades.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla allianz-actividades.migrations: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_28_141644_add_user_table_api_token', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla allianz-actividades.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla allianz-actividades.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla allianz-actividades.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla allianz-actividades.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
