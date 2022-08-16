SELECT name, born, bloodStatusChar as 'blood status', house, name_patronus as 'patronus'
FROM `HarryPotterSum`.characters ch
JOIN `HarryPotterSum`.`bloodStatus` bl ON ch.id_blood_status = bl.id
JOIN `HarryPotterSum`.houses hs ON ch.id_house = hs.id
left JOIN `HarryPotterSum`.patronus pat ON ch.id_patronus = pat.id
ORDER BY name ASC, house ASC;




















-- -----------------------------------------------------
-- Table HarryPotterSum.bichosPapoes
-- -----------------------------------------------------
-- DROP TABLE IF EXISTS HarryPotterSum.bichosPapoes ;
-- /* 2022-08-15 18:06:41 [32 ms] */ 
-- CREATE TABLE IF NOT EXISTS HarryPotterSum.bichosPapoes (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   bicho_papao VARCHAR(45) NOT NULL,
--   PRIMARY KEY (`id`))
-- ENGINE = InnoDB;
-- /* 2022-08-15 18:07:10 [18 ms] */ 
-- INSERT INTO HarryPotterSum.bichosPapoes(bicho_papao) VALUES
-- ('Dementador'),
-- ('Corpo de sua irmã morta'),
-- ('Falhar'),
-- ('Seu próprio cadáver'),
-- ('Lord Voldemort'),
-- ('Aranhas'),
-- ('Lua cheia'),
-- ('Perder habilidade de metamorfomago');
-- -----------------------------------------------------
-- Table HarryPotterSum.characters_bichos_papoes
-- -- -----------------------------------------------------

-- DROP TABLE IF EXISTS HarryPotterSum.characters_bichos_papoes;
-- CREATE TABLE HarryPotterSum.characters_bichos_papoes(
-- 	id_character INT NOT NULL,
-- 	id_bicho_papao INT NULL,
--     id_patronus INT NULL,
--     PRIMARY KEY (id_character),
--     FOREIGN KEY (id_character) REFERENCES HarryPotterSum.characters(id),
--     FOREIGN KEY (id_bicho_papao) REFERENCES HarryPotterSum.`bichosPapoes`(id),
--     FOREIGN KEY (id_patronus) REFERENCES HarryPotterSum.patronus(id)
-- )engine=InnoDB;

-- INSERT INTO HarryPotterSum.characters_bichos_papoes(id_character, id_bicho_papao, id_patronus) VALUES
-- (1, 1, 1),
-- (2, 2, 2),
-- (3, 3, 3),
-- (4, NULL, 4),
-- (5, 8, 5),
-- (6, 4, NULL),
-- (7, 5, 5),
-- (8, 6, 5),
-- (9, 7, 6),
-- (10, NULL, 5),
-- (11, 8, NULL),
-- (12, 1, NULL),
-- (13, 9, 7),
-- (14, 9, 8);