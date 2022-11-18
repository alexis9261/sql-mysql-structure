-- Crear las tablas

-- Selecciono la base de datos en la cual se crearan las tablas
USE metro_cdmx; 

CREATE TABLE `lines` (

    -- BIGINT          El campo sera un entero grande
    -- UNSGNED         El campo  no aceptara numeros negativos
    -- NOT NULL        El campo no aceptara un valor NULL
    -- AUTO_INCREMENT  Automaticamente se incrementara de uno en uno
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

    `name` VARCHAR(10) NOT NULL,
    `color` VARCHAR(15) NOT NULL,

    --TIMESTAMP  El campo sera de tipo timestamp, es un tipo de dato para fechas
    --DEFAULT CURRENT_TIMESTAMP Por default cada registro se creara con la fecha actual
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    -- PRIMARY KEY El campo id sera la clave primaria de la tabla
    PRIMARY KEY (id)

)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;


-- Creación de la tabla de stations
CREATE TABLE `stations` (

    `id` BIGINT(20),

    `name` VARCHAR(50) NOT NULL,
    -- `icon` VARCHAR(100) NOT NULL,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) 
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

-- Creación de la tabla de trains
CREATE TABLE `trains` (

    `serial_number` VARCHAR(10) NOT NULL,

    `line_id` BIGINT(20) UNSIGNED NOT NULL,
    `type` TINYINT(4) NOT NULL,
    `year` INT(4) NOT NULL,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (serial_number),
    CONSTRAINT `trains_line_id_foreign` 
    FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`)
) 
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

-- Creación de la tabla de random para un el reto de la clase de DELETE
CREATE TABLE `stations_delete` (

    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

    `name` VARCHAR(50) NOT NULL,
    -- `icon` VARCHAR(100) NOT NULL,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
) 
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;