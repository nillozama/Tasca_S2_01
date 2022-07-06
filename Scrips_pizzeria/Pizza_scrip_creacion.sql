-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mypizza_bd
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mypizza_bd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mypizza_bd` DEFAULT CHARACTER SET utf8mb3 ;
USE `mypizza_bd` ;

-- -----------------------------------------------------
-- Table `mypizza_bd`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mypizza_bd`.`categoria` (
  `idCategoria` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mypizza_bd`.`provincias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mypizza_bd`.`provincias` (
  `idProvincias` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProvincias`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mypizza_bd`.`localidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mypizza_bd`.`localidad` (
  `idLocalidad` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `Provincias_idProvincias` INT NOT NULL,
  PRIMARY KEY (`idLocalidad`, `Provincias_idProvincias`),
  INDEX `fk_Localidad_Provincias_idx` (`Provincias_idProvincias` ASC) VISIBLE,
  CONSTRAINT `fk_Localidad_Provincias`
    FOREIGN KEY (`Provincias_idProvincias`)
    REFERENCES `mypizza_bd`.`provincias` (`idProvincias`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mypizza_bd`.`direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mypizza_bd`.`direccion` (
  `idDireccion` INT NOT NULL AUTO_INCREMENT,
  `direccion` VARCHAR(45) NOT NULL,
  `codigo_postal` VARCHAR(45) NOT NULL,
  `Localidad_idLocalidad` INT NOT NULL,
  `Localidad_Provincias_idProvincias` INT NOT NULL,
  PRIMARY KEY (`idDireccion`),
  INDEX `fk_Direccion_Localidad1_idx` (`Localidad_idLocalidad` ASC, `Localidad_Provincias_idProvincias` ASC) VISIBLE,
  CONSTRAINT `fk_Direccion_Localidad1`
    FOREIGN KEY (`Localidad_idLocalidad` , `Localidad_Provincias_idProvincias`)
    REFERENCES `mypizza_bd`.`localidad` (`idLocalidad` , `Provincias_idProvincias`))
ENGINE = InnoDB
AUTO_INCREMENT = 18
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mypizza_bd`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mypizza_bd`.`cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido1` VARCHAR(45) NOT NULL,
  `apellido2` VARCHAR(45) NULL DEFAULT NULL,
  `telefono` VARCHAR(45) NULL DEFAULT NULL,
  `Direccion_idDireccion` INT NOT NULL,
  PRIMARY KEY (`idCliente`),
  INDEX `fk_Cliente_Direccion1_idx` (`Direccion_idDireccion` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_Direccion1`
    FOREIGN KEY (`Direccion_idDireccion`)
    REFERENCES `mypizza_bd`.`direccion` (`idDireccion`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mypizza_bd`.`tienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mypizza_bd`.`tienda` (
  `idTienda` INT NOT NULL AUTO_INCREMENT,
  `Direccion_idDireccion` INT NOT NULL,
  PRIMARY KEY (`idTienda`),
  INDEX `fk_Tienda_Direccion1_idx` (`Direccion_idDireccion` ASC) VISIBLE,
  CONSTRAINT `fk_Tienda_Direccion1`
    FOREIGN KEY (`Direccion_idDireccion`)
    REFERENCES `mypizza_bd`.`direccion` (`idDireccion`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mypizza_bd`.`empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mypizza_bd`.`empleado` (
  `idEmpleado` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido1` VARCHAR(45) NOT NULL,
  `apellido2` VARCHAR(45) NULL DEFAULT NULL,
  `telefono` VARCHAR(45) NULL DEFAULT NULL,
  `NIF` VARCHAR(45) NULL DEFAULT NULL,
  `puesto_trabajo` VARCHAR(45) NOT NULL,
  `Tienda_idTienda` INT NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  INDEX `fk_Empleado_Tienda1_idx` (`Tienda_idTienda` ASC) VISIBLE,
  CONSTRAINT `fk_Empleado_Tienda1`
    FOREIGN KEY (`Tienda_idTienda`)
    REFERENCES `mypizza_bd`.`tienda` (`idTienda`))
ENGINE = InnoDB
AUTO_INCREMENT = 25
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mypizza_bd`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mypizza_bd`.`pedido` (
  `idPedido` INT NOT NULL AUTO_INCREMENT,
  `Cliente_idCliente` INT NOT NULL,
  `Tienda_idTienda` INT NOT NULL,
  `fecha` DATETIME NOT NULL,
  `pedido_domicilio` VARCHAR(45) NOT NULL,
  `Repartidor_idEmpleado` INT NULL DEFAULT NULL,
  `hora_entrega` DATETIME NULL DEFAULT NULL,
  `precio_final` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`idPedido`),
  INDEX `fk_Pedido_Cliente1_idx` (`Cliente_idCliente` ASC) VISIBLE,
  INDEX `fk_Pedido_Tienda1_idx` (`Tienda_idTienda` ASC) VISIBLE,
  INDEX `fk_Pedido_Empleado1_idx` (`Repartidor_idEmpleado` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `mypizza_bd`.`cliente` (`idCliente`),
  CONSTRAINT `fk_Pedido_Empleado1`
    FOREIGN KEY (`Repartidor_idEmpleado`)
    REFERENCES `mypizza_bd`.`empleado` (`idEmpleado`),
  CONSTRAINT `fk_Pedido_Tienda1`
    FOREIGN KEY (`Tienda_idTienda`)
    REFERENCES `mypizza_bd`.`tienda` (`idTienda`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mypizza_bd`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mypizza_bd`.`productos` (
  `idProductos` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `Categoria_idCategoria` INT NOT NULL,
  `descripcion` VARCHAR(100) NULL DEFAULT NULL,
  `precio` FLOAT NOT NULL,
  `imagen` BLOB NULL DEFAULT NULL,
  PRIMARY KEY (`idProductos`),
  INDEX `fk_Productos_Categoria1_idx` (`Categoria_idCategoria` ASC) VISIBLE,
  CONSTRAINT `fk_Productos_Categoria1`
    FOREIGN KEY (`Categoria_idCategoria`)
    REFERENCES `mypizza_bd`.`categoria` (`idCategoria`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mypizza_bd`.`productos_has_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mypizza_bd`.`productos_has_pedido` (
  `Productos_idProductos` INT NOT NULL,
  `Pedido_idPedido` INT NOT NULL,
  INDEX `fk_Productos_has_Pedido_Pedido1_idx` (`Pedido_idPedido` ASC) VISIBLE,
  INDEX `fk_Productos_has_Pedido_Productos1_idx` (`Productos_idProductos` ASC) VISIBLE,
  CONSTRAINT `fk_Productos_has_Pedido_Pedido1`
    FOREIGN KEY (`Pedido_idPedido`)
    REFERENCES `mypizza_bd`.`pedido` (`idPedido`),
  CONSTRAINT `fk_Productos_has_Pedido_Productos1`
    FOREIGN KEY (`Productos_idProductos`)
    REFERENCES `mypizza_bd`.`productos` (`idProductos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
