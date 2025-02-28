-- MySQL Script generated by MySQL Workbench
-- Tue Nov 19 19:02:40 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`ROLES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ROLES` (
  `codigo_rol` INT NOT NULL,
  `nombre_rol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codigo_rol`, `nombre_rol`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`OFICIAL DE SEGURIDAD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`OFICIAL DE SEGURIDAD` (
  `Codigo_Oficial_segurity` INT NOT NULL,
  `nombre_ofial_security` VARCHAR(50) NOT NULL,
  `lastName_oficial_security` VARCHAR(50) NOT NULL,
  `email_oficial_security` VARCHAR(50) NOT NULL,
  `telefono_oficial_security` VARCHAR(10) NOT NULL,
  `codigo_rol` INT NOT NULL,
  `pass_oficial_security` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Codigo_Oficial_segurity`),
  INDEX `codigo_rol_idx` (`codigo_rol` ASC) VISIBLE,
  CONSTRAINT `codigo_rol`
    FOREIGN KEY (`codigo_rol`)
    REFERENCES `mydb`.`ROLES` (`codigo_rol`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
