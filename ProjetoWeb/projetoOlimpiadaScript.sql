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

DROP TABLE IF EXISTS `projetoolimpiada`.`modalidade` ;

CREATE TABLE IF NOT EXISTS `projetoolimpiada`.`modalidade` (
  `idModalidade` INT NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idModalidade`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
-- -----------------------------------------------------
-- Table `projetoolimpiada`.`pais`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projetoolimpiada`.`pais` ;

CREATE TABLE IF NOT EXISTS `projetoolimpiada`.`pais` (
  `id` INT(11) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `projetoolimpiada`.`olimpiada`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projetoolimpiada`.`olimpiada` ;

CREATE TABLE IF NOT EXISTS `projetoolimpiada`.`olimpiada` (
  `id` INT NOT NULL,
  `ouro` INT(11) NOT NULL,
  `prata` INT(11) NOT NULL,
  `bronze` INT(11) NOT NULL,
  `idPais` INT(11) NOT NULL,
  `idModalidade` INT(11) NOT NULL,
  `idAno` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_modalidade_idModalidade`
	foreign key (`idModalidade`)
    references `projetoolimpiada`.`modalidade` (`idModalidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_olimpiada_pais`
    FOREIGN KEY (`idPais`)
    REFERENCES `projetoolimpiada`.`pais` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=1;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
