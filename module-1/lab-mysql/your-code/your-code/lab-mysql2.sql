-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab-mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab-mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab-mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lab-mysql` ;

-- -----------------------------------------------------
-- Table `lab-mysql`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-mysql`.`Cars` (
  `ID` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` YEAR NOT NULL,
  `Color` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab-mysql`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-mysql`.`Customers` (
  `ID` INT NOT NULL,
  `Customer ID` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL DEFAULT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State/Province` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab-mysql`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-mysql`.`Salespersons` (
  `ID` INT NOT NULL,
  `Staff ID` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab-mysql`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-mysql`.`Invoices` (
  `ID` INT NOT NULL,
  `Invoice Number` VARCHAR(45) NOT NULL,
  `Date` VARCHAR(15) NOT NULL,
  `Car` VARCHAR(45) NOT NULL,
  `Customer` VARCHAR(45) NOT NULL,
  `Sales Person` VARCHAR(45) NOT NULL,
  `Customers_ID` INT NOT NULL,
  `Cars_ID` INT NOT NULL,
  `Salespersons_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Invoices_Customers_idx` (`Customers_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customers`
    FOREIGN KEY (`Customers_ID`)
    REFERENCES `lab-mysql`.`Customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_ID`)
    REFERENCES `lab-mysql`.`Cars` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_ID`)
    REFERENCES `lab-mysql`.`Salespersons` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO `lab-mysql`.`Cars` (`ID`, `VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES ('0', '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');
INSERT INTO `lab-mysql`.`Cars` (`ID`, `VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES ('1', 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');
INSERT INTO `lab-mysql`.`Cars` (`ID`, `VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES ('2', 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');
INSERT INTO `lab-mysql`.`Cars` (`ID`, `VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES ('3', 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');
INSERT INTO `lab-mysql`.`Cars` (`ID`, `VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES ('4', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Grey');
INSERT INTO `lab-mysql`.`Cars` (`ID`, `VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES ('5', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Grey');

INSERT INTO `lab-mysql`.`Customers` (`ID` , `Customer ID` , `Name` , `Email` , `Address` , `City` , `State/Province` , `Country` , `Postal`) VALUES ('0','10001','Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045');
INSERT INTO `lab-mysql`.`Customers` (`ID` , `Customer ID` , `Name` , `Email` , `Address` , `City` , `State/Province` , `Country` , `Postal`) VALUES ('1','20001','Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States','33130');
INSERT INTO `lab-mysql`.`Customers` (`ID` , `Customer ID` , `Name` , `Email` , `Address` , `City` , `State/Province` , `Country` , `Postal`) VALUES ('2','30001','Napoleón Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','París','Île-de-France','France','75008');

INSERT INTO `lab-mysql`.`Invoices` (`ID`, `Invoice Number`, `Date`, `Car`, `Customer`, `Sales Person`) VALUES ('0', '852399038', '22-08-2018', '0', '1', '3');
INSERT INTO `lab-mysql`.`Invoices` (`ID`, `Invoice Number`, `Date`, `Car`, `Customer`, `Sales Person`) VALUES ('1', '731166526', '31-12-2018', '3', '0', '5');
INSERT INTO `lab-mysql`.`Invoices` (`ID`, `Invoice Number`, `Date`, `Car`, `Customer`, `Sales Person`) VALUES ('2', '271135104', '22-01-2019	', '2', '2', '7');

INSERT INTO `lab-mysql`.`Salespersons` (`ID`, `Staff ID`, `Name`, `Store`) VALUES ('0', '00001', 'Petey Cruiser', 'Madrid');
INSERT INTO `lab-mysql`.`Salespersons` (`ID`, `Staff ID`, `Name`, `Store`) VALUES ('1', '00002', 'Anna Sthesia', 'Barcelona');
INSERT INTO `lab-mysql`.`Salespersons` (`ID`, `Staff ID`, `Name`, `Store`) VALUES ('2', '00003', 'Paul Molive', 'Berlin');
INSERT INTO `lab-mysql`.`Salespersons` (`ID`, `Staff ID`, `Name`, `Store`) VALUES ('3', '00004', 'Gail Forcewind', 'Paris');
INSERT INTO `lab-mysql`.`Salespersons` (`ID`, `Staff ID`, `Name`, `Store`) VALUES ('4', '00005', 'Paige Turner', 'Mimia');
INSERT INTO `lab-mysql`.`Salespersons` (`ID`, `Staff ID`, `Name`, `Store`) VALUES ('5', '00006', 'Bob Frapples', 'Mexico City');
INSERT INTO `lab-mysql`.`Salespersons` (`ID`, `Staff ID`, `Name`, `Store`) VALUES ('6', '00007', 'Walter Melon', 'Amsterdam');
INSERT INTO `lab-mysql`.`Salespersons` (`ID`, `Staff ID`, `Name`, `Store`) VALUES ('7', '00008', 'Shonda Leer', 'São Paulo');
