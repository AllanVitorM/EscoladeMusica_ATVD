-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Escola_Musica
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Escola_Musica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Escola_Musica` ;
USE `Escola_Musica` ;

-- -----------------------------------------------------
-- Table `Escola_Musica`.`Sinfonia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_Musica`.`Sinfonia` (
  `idSinfonia` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `compositor` VARCHAR(45) NOT NULL,
  `dt_criacao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSinfonia`),
  UNIQUE INDEX `idSinfonia_UNIQUE` (`idSinfonia` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escola_Musica`.`Orquestra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_Musica`.`Orquestra` (
  `idOrquestra` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `pais` VARCHAR(45) NOT NULL,
  `dt_criacao` VARCHAR(45) NOT NULL,
  `Sinfonia_idSinfonia` INT NOT NULL,
  PRIMARY KEY (`idOrquestra`),
  INDEX `fk_Orquestra_Sinfonia_idx` (`Sinfonia_idSinfonia` ASC) VISIBLE,
  CONSTRAINT `fk_Orquestra_Sinfonia`
    FOREIGN KEY (`Sinfonia_idSinfonia`)
    REFERENCES `Escola_Musica`.`Sinfonia` (`idSinfonia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escola_Musica`.`Musicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_Musica`.`Musicos` (
  `idMusicos` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `identidade` VARCHAR(45) NOT NULL,
  `nacionalidade` VARCHAR(45) NOT NULL,
  `dt_nasc` VARCHAR(45) NOT NULL,
  `Orquestra_idOrquestra` INT NOT NULL,
  PRIMARY KEY (`idMusicos`),
  INDEX `fk_Musicos_Orquestra1_idx` (`Orquestra_idOrquestra` ASC) VISIBLE,
  UNIQUE INDEX `idMusicos_UNIQUE` (`idMusicos` ASC) VISIBLE,
  CONSTRAINT `fk_Musicos_Orquestra1`
    FOREIGN KEY (`Orquestra_idOrquestra`)
    REFERENCES `Escola_Musica`.`Orquestra` (`idOrquestra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escola_Musica`.`funcao_musicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_Musica`.`funcao_musicos` (
  `idfuncao_musicos` INT NOT NULL AUTO_INCREMENT,
  `reg_data` DATETIME(6) NOT NULL,
  `reg_funcao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idfuncao_musicos`),
  UNIQUE INDEX `idfuncao_musicos_UNIQUE` (`idfuncao_musicos` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escola_Musica`.`Instrumentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_Musica`.`Instrumentos` (
  `idInstrumentos` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idInstrumentos`),
  UNIQUE INDEX `idInstrumentos_UNIQUE` (`idInstrumentos` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escola_Musica`.`participa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_Musica`.`participa` (
  `Musicos_idMusicos` INT NOT NULL,
  `funcao_musicos_idfuncao_musicos` INT NOT NULL,
  `Sinfonia_idSinfonia` INT NOT NULL,
  `Instrumentos_idInstrumentos` INT NOT NULL,
  PRIMARY KEY (`Musicos_idMusicos`, `funcao_musicos_idfuncao_musicos`, `Sinfonia_idSinfonia`, `Instrumentos_idInstrumentos`),
  INDEX `fk_participa_funcao_musicos1_idx` (`funcao_musicos_idfuncao_musicos` ASC) VISIBLE,
  INDEX `fk_participa_Sinfonia1_idx` (`Sinfonia_idSinfonia` ASC) VISIBLE,
  INDEX `fk_participa_Instrumentos1_idx` (`Instrumentos_idInstrumentos` ASC) VISIBLE,
  CONSTRAINT `fk_participa_Musicos1`
    FOREIGN KEY (`Musicos_idMusicos`)
    REFERENCES `Escola_Musica`.`Musicos` (`idMusicos`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_participa_funcao_musicos1`
    FOREIGN KEY (`funcao_musicos_idfuncao_musicos`)
    REFERENCES `Escola_Musica`.`funcao_musicos` (`idfuncao_musicos`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_participa_Sinfonia1`
    FOREIGN KEY (`Sinfonia_idSinfonia`)
    REFERENCES `Escola_Musica`.`Sinfonia` (`idSinfonia`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_participa_Instrumentos1`
    FOREIGN KEY (`Instrumentos_idInstrumentos`)
    REFERENCES `Escola_Musica`.`Instrumentos` (`idInstrumentos`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

alter table musicos
	add column Instrumento_Fav varchar(25) null after dt_nasc;
    
alter table Instrumentos
	change column tipo Nome varchar(25) not null;
    
alter table Instrumentos
	add column Categoria varchar(25) not null;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
