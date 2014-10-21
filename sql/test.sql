SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `siggmag` ;
CREATE SCHEMA IF NOT EXISTS `siggmag` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `siggmag` ;

-- -----------------------------------------------------
-- Table `siggmag`.`inventario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`inventario` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`inventario` (
  `id_inventario` INT NOT NULL AUTO_INCREMENT,
  `material` TEXT NOT NULL,
  `peso` FLOAT NOT NULL,
  `tamaño` VARCHAR(45) NOT NULL,
  `cant_maxima` FLOAT NOT NULL,
  `cant_actual` FLOAT NOT NULL,
  `letra` CHAR NOT NULL,
  PRIMARY KEY (`id_inventario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`nota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`nota` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`nota` (
  `folio` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NOT NULL,
  `id_usuario` INT NOT NULL,
  `fecha` DATETIME NOT NULL,
  `fecha_entrega` DATETIME NULL,
  `subtotal` FLOAT NOT NULL,
  `iva` FLOAT NOT NULL,
  `total` FLOAT NOT NULL,
  `anticipo` FLOAT NULL,
  `saldo` FLOAT NOT NULL,
  `total_con_letra` TEXT NOT NULL,
  PRIMARY KEY (`folio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`orden_trabajo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`orden_trabajo` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`orden_trabajo` (
  `folio` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NOT NULL,
  `id_usuario` INT NOT NULL,
  `fecha` DATETIME NOT NULL,
  `fecha_entrega` DATETIME NULL,
  `subtotal` FLOAT NOT NULL,
  `anticipo` FLOAT NULL,
  `saldo` FLOAT NOT NULL,
  PRIMARY KEY (`folio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`usuarios` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`usuarios` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` TINYTEXT NULL,
  `apellido_p` TINYTEXT NULL,
  `apellido_m` TINYTEXT NULL,
  `user_name` TINYTEXT NULL,
  `pass` VARCHAR(45) NULL,
  `nivel_acceso` INT NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`items_nota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`items_nota` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`items_nota` (
  `id_items_nota` INT NOT NULL AUTO_INCREMENT,
  `id_inventario` INT NULL,
  `cant` FLOAT NULL,
  `descripcion` TEXT NULL,
  `p_unitario` FLOAT NULL,
  `importe` FLOAT NULL,
  PRIMARY KEY (`id_items_nota`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`items_orden_trabajo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`items_orden_trabajo` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`items_orden_trabajo` (
  `id_items_orden_trabajo` INT NOT NULL AUTO_INCREMENT,
  `id_inventario` FLOAT NULL,
  `cant` FLOAT NULL,
  `descripcion` TEXT NULL,
  `p_unitario` FLOAT NULL,
  `importe` FLOAT NULL,
  PRIMARY KEY (`id_items_orden_trabajo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`clientes` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`clientes` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` TEXT NOT NULL,
  `domicilio` TEXT NOT NULL,
  `telefono` INT NOT NULL,
  `e_mail` TEXT NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`caja`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`caja` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`caja` (
  `id_caja` INT NOT NULL AUTO_INCREMENT,
  `cant_actual` FLOAT NULL,
  `fecha` DATETIME NULL,
  `id_corte` INT NULL,
  PRIMARY KEY (`id_caja`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`table1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`table1` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`table1` (
  `folio` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NULL,
  `cant` FLOAT NULL,
  `pasta` TEXT NULL,
  `tinta` TEXT NULL,
  `fecha` DATETIME NULL,
  `fecha_entrega` DATETIME NULL,
  `subtotal` FLOAT NULL,
  `anticipo` FLOAT NULL,
  `total` FLOAT NULL,
  PRIMARY KEY (`folio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`cortes_caja`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`cortes_caja` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`cortes_caja` (
  `id_corte` INT NOT NULL,
  `folio_nota_inicial` INT NULL,
  `folio_nota_final` INT NULL,
  `folio_orden_trabajo_inicial` INT NULL,
  `folio` VARCHAR(45) NULL,
  PRIMARY KEY (`id_corte`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
