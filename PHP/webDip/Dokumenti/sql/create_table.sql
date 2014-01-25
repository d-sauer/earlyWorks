SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `WebDiP2010_87` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `WebDiP2010_87` ;

-- -----------------------------------------------------
-- Table `WebDiP2010_87`.`tv_tip_korisnika`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `WebDiP2010_87`.`tv_tip_korisnika` (
  `id` INT(11) NOT NULL ,
  `vrsta_korisnika` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `WebDiP2010_87`.`tv_korisnici`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `WebDiP2010_87`.`tv_korisnici` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `tip_korisnika_id` INT(11) NOT NULL ,
  `korisnicko_ime` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL ,
  `lozinka` VARCHAR(50) NOT NULL ,
  `ime` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL ,
  `prezime` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL ,
  `email` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL ,
  `mobitel` VARCHAR(30) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ,
  `token` VARCHAR(20) NULL DEFAULT NULL ,
  `aktiviran` INT(1) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_tv_korisnici_tv_tip_korisnika` (`tip_korisnika_id` ASC) ,
  CONSTRAINT `fk_tv_korisnici_tv_tip_korisnika`
    FOREIGN KEY (`tip_korisnika_id` )
    REFERENCES `WebDiP2010_87`.`tv_tip_korisnika` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `WebDiP2010_87`.`tv_jezici`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `WebDiP2010_87`.`tv_jezici` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `jezik` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `WebDiP2010_87`.`tv_kanali`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `WebDiP2010_87`.`tv_kanali` (
  `id_pk` INT(11) NOT NULL AUTO_INCREMENT ,
  `naziv_kanala` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL ,
  `opis` VARCHAR(100) NULL ,
  `url` VARCHAR(250) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL ,
  `epg_url` VARCHAR(250) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL ,
  `odobrenje` INT(11) NOT NULL ,
  `korisnik_id` INT(11) NOT NULL ,
  `jezik_id` INT(11) NOT NULL ,
  PRIMARY KEY (`id_pk`) ,
  INDEX `fk_tv_kanali_tv_korisnici1` (`korisnik_id` ASC) ,
  INDEX `fk_tv_kanali_tv_jezici1` (`jezik_id` ASC) ,
  CONSTRAINT `fk_tv_kanali_tv_korisnici1`
    FOREIGN KEY (`korisnik_id` )
    REFERENCES `WebDiP2010_87`.`tv_korisnici` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tv_kanali_tv_jezici1`
    FOREIGN KEY (`jezik_id` )
    REFERENCES `WebDiP2010_87`.`tv_jezici` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `WebDiP2010_87`.`tv_kategorije`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `WebDiP2010_87`.`tv_kategorije` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `naziv_kategorije` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ,
  `jezik_id` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_tv_kategorije_tv_jezici1` (`jezik_id` ASC) ,
  CONSTRAINT `fk_tv_kategorije_tv_jezici1`
    FOREIGN KEY (`jezik_id` )
    REFERENCES `WebDiP2010_87`.`tv_jezici` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `WebDiP2010_87`.`tv_raspored`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `WebDiP2010_87`.`tv_raspored` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `naziv` VARCHAR(150) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ,
  `nepostoji` INT(1) NULL DEFAULT 0 ,
  `pocetak` DATETIME NOT NULL ,
  `kraj` DATETIME NOT NULL ,
  `opis` VARCHAR(500) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ,
  `epizoda` INT(2) NULL ,
  `url` VARCHAR(250) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ,
  `automatika` INT(1) NOT NULL ,
  `premijera` INT(2) NULL ,
  `repriza` INT(1) NULL DEFAULT NULL ,
  `kanal_id` INT(11) NOT NULL ,
  `kategorija_id` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_tv_raspored_tv_kanali1` (`kanal_id` ASC) ,
  INDEX `fk_tv_raspored_tv_kategorije1` (`kategorija_id` ASC) ,
  CONSTRAINT `fk_tv_raspored_tv_kanali1`
    FOREIGN KEY (`kanal_id` )
    REFERENCES `WebDiP2010_87`.`tv_kanali` (`id_pk` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tv_raspored_tv_kategorije1`
    FOREIGN KEY (`kategorija_id` )
    REFERENCES `WebDiP2010_87`.`tv_kategorije` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `WebDiP2010_87`.`tv_foto`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `WebDiP2010_87`.`tv_foto` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `opis` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ,
  `raspored_id` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_tv_foto_tv_raspored1` (`raspored_id` ASC) ,
  CONSTRAINT `fk_tv_foto_tv_raspored1`
    FOREIGN KEY (`raspored_id` )
    REFERENCES `WebDiP2010_87`.`tv_raspored` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `WebDiP2010_87`.`tv_komentar`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `WebDiP2010_87`.`tv_komentar` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `komentar` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ,
  `ocjena` INT(11) NULL DEFAULT NULL ,
  `raspored_id` INT(11) NOT NULL ,
  `korisnik_id` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_tv_komentar_tv_raspored1` (`raspored_id` ASC) ,
  INDEX `fk_tv_komentar_tv_korisnici1` (`korisnik_id` ASC) ,
  CONSTRAINT `fk_tv_komentar_tv_raspored1`
    FOREIGN KEY (`raspored_id` )
    REFERENCES `WebDiP2010_87`.`tv_raspored` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tv_komentar_tv_korisnici1`
    FOREIGN KEY (`korisnik_id` )
    REFERENCES `WebDiP2010_87`.`tv_korisnici` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `WebDiP2010_87`.`tv_kor_grupa`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `WebDiP2010_87`.`tv_kor_grupa` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `korisnik_id` INT(11) NOT NULL ,
  `naziv` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ,
  `opis` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_tv_kor_grupa_tv_korisnici1` (`korisnik_id` ASC) ,
  CONSTRAINT `fk_tv_kor_grupa_tv_korisnici1`
    FOREIGN KEY (`korisnik_id` )
    REFERENCES `WebDiP2010_87`.`tv_korisnici` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `WebDiP2010_87`.`tv_kor_emisije`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `WebDiP2010_87`.`tv_kor_emisije` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `kor_grupa_id` INT(11) NOT NULL ,
  `raspored_id` INT(11) NOT NULL ,
  `podsjetnik_email` INT(1) NULL DEFAULT NULL ,
  `posdjetnik_SMS` INT(1) NULL DEFAULT NULL ,
  `podsjetnik_vrijeme` DATETIME NULL ,
  `opis` TEXT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_tv_kor_emisije_tv_kor_grupa1` (`kor_grupa_id` ASC) ,
  INDEX `fk_tv_kor_emisije_tv_raspored1` (`raspored_id` ASC) ,
  CONSTRAINT `fk_tv_kor_emisije_tv_kor_grupa1`
    FOREIGN KEY (`kor_grupa_id` )
    REFERENCES `WebDiP2010_87`.`tv_kor_grupa` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tv_kor_emisije_tv_raspored1`
    FOREIGN KEY (`raspored_id` )
    REFERENCES `WebDiP2010_87`.`tv_raspored` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `WebDiP2010_87`.`tv_log`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `WebDiP2010_87`.`tv_log` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `vrijeme` DATETIME NOT NULL ,
  `ip` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ,
  `akcija` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ,
  `url` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ,
  `korisnik_id` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `WebDiP2010_87`.`tv_tip_korisnika`
-- -----------------------------------------------------
START TRANSACTION;
USE `WebDiP2010_87`;
INSERT INTO `WebDiP2010_87`.`tv_tip_korisnika` (`id`, `vrsta_korisnika`) VALUES (1, 'Gost');
INSERT INTO `WebDiP2010_87`.`tv_tip_korisnika` (`id`, `vrsta_korisnika`) VALUES (2, 'Administrator');
INSERT INTO `WebDiP2010_87`.`tv_tip_korisnika` (`id`, `vrsta_korisnika`) VALUES (3, 'Modernator');
INSERT INTO `WebDiP2010_87`.`tv_tip_korisnika` (`id`, `vrsta_korisnika`) VALUES (4, 'Korinsik');

COMMIT;
