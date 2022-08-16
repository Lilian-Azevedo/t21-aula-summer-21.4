-- -----------------------------------------------------
-- Schema HarryPotterSum
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS HarryPotterSum;
USE HarryPotterSum ;

-- -----------------------------------------------------
-- Table HarryPotterSum.houses
-- -----------------------------------------------------
DROP TABLE IF EXISTS HarryPotterSum.houses;

CREATE TABLE IF NOT EXISTS HarryPotterSum.houses (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  house VARCHAR(50) NOT NULL
)engine=InnoDB;

INSERT INTO HarryPotterSum.houses(house) VALUES
('Grifinoria'),
('Corvinal'),
('Sonserina'),
('Lufa-lufa');

-- -----------------------------------------------------
-- Table HarryPotterSum.bloodStatus
-- -----------------------------------------------------
DROP TABLE IF EXISTS HarryPotterSum.bloodStatus;

CREATE TABLE IF NOT EXISTS HarryPotterSum.bloodStatus (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  bloodStatusChar VARCHAR(45) NOT NULL
)engine=InnoDB;

INSERT INTO HarryPotterSum.bloodStatus(bloodStatusChar) VALUES
('Mestiço'),
('Nascido-trouxa'),
('Sangue-puro'),
('Trouxa');

-- -----------------------------------------------------
-- Table HarryPotterSum.patronus
-- -----------------------------------------------------
DROP TABLE IF EXISTS HarryPotterSum.patronus;

CREATE TABLE IF NOT EXISTS HarryPotterSum.patronus (
  `id` INT NOT NULL AUTO_INCREMENT,
  name_patronus VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO HarryPotterSum.patronus(name_patronus) VALUES
('Cervo'),
('Fênix'),
('Lontra'),
('Lebre'),
('Cão'),
('Gato'),
('Jack russel terrier'),
('Corça'),
('Lobo');

-- -----------------------------------------------------
-- Table HarryPotterSum.characters
-- -----------------------------------------------------
DROP TABLE IF EXISTS HarryPotterSum.characters;

CREATE TABLE IF NOT EXISTS HarryPotterSum.characters (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `born` DATE NULL,
  `id_blood_status` INT NULL,
  `id_house` INT NULL,
  `id_patronus` INT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (id_blood_status) REFERENCES HarryPotterSum.bloodStatus(id),
  FOREIGN KEY (id_house) REFERENCES HarryPotterSum.houses(id)
  FOREIGN KEY (id_patronus) REFERENCES HarryPotterSum.patronus(id)
)ENGINE=InnoDB;

INSERT INTO HarryPotterSum.characters(name, born, id_blood_status, id_house, id_patronus) VALUES
('Harry Potter', '1980-07-31', 1, 1, 1),
('Alvo Dumbledore', NULL, 1, 1, 2),
('Hermione Granger', '1979-09-19', 2, 1, 3),
('Voldemort', '1926-12-31', 1, 3, NULL),
('Severo Snape', '1960-01-09', 1, 3, 8),
('Sirius Black', '1959-11-03', 3, 1, NULL),
('Luna Lovegood', '1981-02-13', 3, 2, 4),
('Minerva McGonagall', NULL, 1, 1, 6),
('Ronald Weasley', '1980-03-01', 3, 1, 5),
('Draco Malfoy', '1980-06-05', 3, 3, NULL),
('Lílian Potter', '1960-01-30', 2, 1, 8),
('Thiago Potter', '1960-03-27', 3, 1, 1),
('Remo Lupin', '1960-03-10', 1, 1, 9),
('Ninfadora Tonks', '1973-09-01', 1, 1, 9);


