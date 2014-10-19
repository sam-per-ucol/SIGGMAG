SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Table `siggmag`.`inventario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`inventario` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`inventario` (
  `id_inventario` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_inventario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`nota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`nota` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`nota` (
  `folio_nota` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`folio_nota`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`orden_trabajo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`orden_trabajo` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`orden_trabajo` (
  `folio_orden_trabajo` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`folio_orden_trabajo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`orden_taller`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`orden_taller` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`orden_taller` (
  `folio_orden_taller` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`folio_orden_taller`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`lista_nota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`lista_nota` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`lista_nota` (
  `id_lista_nota` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_lista_nota`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `siggmag`.`lista_orden_trabajo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `siggmag`.`lista_orden_trabajo` ;

CREATE TABLE IF NOT EXISTS `siggmag`.`lista_orden_trabajo` (
  `id_lista_orden_trabajo` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_lista_orden_trabajo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
