-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
-- -----------------------------------------------------
-- Schema projetoolimpiada
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema projetoolimpiada
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `projetoolimpiada` DEFAULT CHARACTER SET utf8 ;
USE `projetoolimpiada` ;
-- -----------------------------------------------------
-- Table `projetoolimpiada`.`olimpiada`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projetoolimpiada`.`olimpiada` ;
CREATE TABLE `olimpiada` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ouro` INT(11) NOT NULL,
  `prata` INT(11) NOT NULL,
  `bronze` INT(11) NOT NULL,
  `nomePais` VARCHAR(50) NOT NULL,
  `nomeModalidade` VARCHAR(30) NOT NULL,
  `idAno` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `usuario` (
`username` VARCHAR(100) NOT NULL,
`password` VARCHAR(100) NOT NULL,
PRIMARY KEY(`username`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=1;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
