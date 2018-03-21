-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema projeto
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `projeto` ;

-- -----------------------------------------------------
-- Schema projeto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `projeto` DEFAULT CHARACTER SET utf8 ;
USE `projeto` ;

-- -----------------------------------------------------
-- Table `projeto`.`ano`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projeto`.`ano` ;

CREATE TABLE IF NOT EXISTS `projeto`.`ano` (
  `ano` INT(11) NOT NULL,
  `tipo` CHAR(1) NOT NULL,
  PRIMARY KEY (`ano`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `projeto`.`modalidade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projeto`.`modalidade` ;

CREATE TABLE IF NOT EXISTS `projeto`.`modalidade` (
  `id` INT(11) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `tipo` CHAR(1) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `projeto`.`pais`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projeto`.`pais` ;

CREATE TABLE IF NOT EXISTS `projeto`.`pais` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `populacao` MEDIUMTEXT NOT NULL,
  `area` DOUBLE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `projeto`.`olimpiada`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projeto`.`olimpiada` ;

CREATE TABLE IF NOT EXISTS `projeto`.`olimpiada` (
  `ouro` INT(11) NOT NULL,
  `prata` INT(11) NOT NULL,
  `bronze` INT(11) NOT NULL,
  `idPais` INT(11) NOT NULL,
  `idModalidade` INT(11) NOT NULL,
  `idAno` INT(11) NOT NULL,
  PRIMARY KEY (`idPais`, `idModalidade`, `idAno`),
  INDEX `fk_olimpiada_modalidade1_idx` (`idModalidade` ASC),
  INDEX `fk_olimpiada_ano1_idx` (`idAno` ASC),
  CONSTRAINT `fk_olimpiada_pais`
    FOREIGN KEY (`idPais`)
    REFERENCES `projeto`.`pais` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_olimpiada_modalidade1`
    FOREIGN KEY (`idModalidade`)
    REFERENCES `projeto`.`modalidade` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_olimpiada_ano1`
    FOREIGN KEY (`idAno`)
    REFERENCES `projeto`.`ano` (`ano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
