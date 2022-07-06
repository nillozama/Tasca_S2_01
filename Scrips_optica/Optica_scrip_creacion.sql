-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema optica_ca_bd
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema optica_ca_bd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `optica_ca_bd` DEFAULT CHARACTER SET utf8mb4 ;
USE `optica_ca_bd` ;

-- -----------------------------------------------------
-- Table `optica_ca_bd`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica_ca_bd`.`cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NOT NULL,
  `direccion` VARCHAR(180) NULL DEFAULT NULL,
  `telefono` VARCHAR(25) NULL DEFAULT NULL,
  `correo_electronico` VARCHAR(255) NULL DEFAULT NULL,
  `fecha_registro` DATE NULL DEFAULT NULL,
  `cliente_amigo` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  INDEX `fk_clientes_clientes1_idx` (`cliente_amigo` ASC) VISIBLE,
  CONSTRAINT `fk_clientes_clientes1`
    FOREIGN KEY (`cliente_amigo`)
    REFERENCES `optica_ca_bd`.`cliente` (`id_cliente`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `optica_ca_bd`.`vendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica_ca_bd`.`vendedor` (
  `id_vendedor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_vendedor`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `optica_ca_bd`.`facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica_ca_bd`.`facturas` (
  `id_facturas` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NOT NULL,
  `clientes_id_clientes` INT NOT NULL,
  `vendedor_id_vendedor` INT NOT NULL,
  PRIMARY KEY (`id_facturas`),
  INDEX `fk_facturas_clientes1_idx` (`clientes_id_clientes` ASC) VISIBLE,
  INDEX `fk_facturas_vendedor1_idx` (`vendedor_id_vendedor` ASC) VISIBLE,
  CONSTRAINT `fk_facturas_clientes1`
    FOREIGN KEY (`clientes_id_clientes`)
    REFERENCES `optica_ca_bd`.`cliente` (`id_cliente`),
  CONSTRAINT `fk_facturas_vendedor1`
    FOREIGN KEY (`vendedor_id_vendedor`)
    REFERENCES `optica_ca_bd`.`vendedor` (`id_vendedor`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `optica_ca_bd`.`proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica_ca_bd`.`proveedor` (
  `id_proveedor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NOT NULL,
  `direccion` VARCHAR(180) NULL DEFAULT NULL,
  `telefono` VARCHAR(25) NULL DEFAULT NULL,
  `fax` VARCHAR(25) NULL DEFAULT NULL,
  `nif` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`id_proveedor`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `optica_ca_bd`.`marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica_ca_bd`.`marca` (
  `id_marca` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `proveedor_id_proveedor` INT NOT NULL,
  PRIMARY KEY (`id_marca`),
  INDEX `fk_marcas_proveedor1_idx` (`proveedor_id_proveedor` ASC) VISIBLE,
  CONSTRAINT `fk_marcas_proveedor1`
    FOREIGN KEY (`proveedor_id_proveedor`)
    REFERENCES `optica_ca_bd`.`proveedor` (`id_proveedor`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `optica_ca_bd`.`gafas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica_ca_bd`.`gafas` (
  `id_gafas` INT NOT NULL AUTO_INCREMENT,
  `graduacion_ojo_izquierdo` FLOAT NULL DEFAULT NULL,
  `graduacion_ojo_derecho` FLOAT NULL DEFAULT NULL,
  `tipo_montura` VARCHAR(45) NULL DEFAULT NULL,
  `color_montura` VARCHAR(45) NULL DEFAULT NULL,
  `color_lente_izquierda` VARCHAR(45) NULL DEFAULT NULL,
  `color_lente_derecha` VARCHAR(45) NULL DEFAULT NULL,
  `precio` FLOAT NOT NULL,
  `marca_id_marca` INT NOT NULL,
  PRIMARY KEY (`id_gafas`),
  INDEX `fk_gafas_marca1_idx` (`marca_id_marca` ASC) VISIBLE,
  CONSTRAINT `fk_gafas_marca1`
    FOREIGN KEY (`marca_id_marca`)
    REFERENCES `optica_ca_bd`.`marca` (`id_marca`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `optica_ca_bd`.`gafas_has_facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica_ca_bd`.`gafas_has_facturas` (
  `gafas_id_gafas` INT NOT NULL,
  `facturas_id_facturas` INT NOT NULL,
  PRIMARY KEY (`gafas_id_gafas`, `facturas_id_facturas`),
  INDEX `fk_gafas_has_facturas_facturas1_idx` (`facturas_id_facturas` ASC) VISIBLE,
  INDEX `fk_gafas_has_facturas_gafas1_idx` (`gafas_id_gafas` ASC) VISIBLE,
  CONSTRAINT `fk_gafas_has_facturas_facturas1`
    FOREIGN KEY (`facturas_id_facturas`)
    REFERENCES `optica_ca_bd`.`facturas` (`id_facturas`),
  CONSTRAINT `fk_gafas_has_facturas_gafas1`
    FOREIGN KEY (`gafas_id_gafas`)
    REFERENCES `optica_ca_bd`.`gafas` (`id_gafas`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
