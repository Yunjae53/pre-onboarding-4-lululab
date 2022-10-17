-- migrate:up
INSERT INTO `lululab`.`hospital_types` (`id`,`name`) VALUES (1,'종합병원');
INSERT INTO `lululab`.`hospital_types` (`id`,`name`) VALUES (2,'병원');
INSERT INTO `lululab`.`hospital_types` (`id`,`name`) VALUES (3,'치과병원');
INSERT INTO `lululab`.`hospital_types` (`id`,`name`) VALUES (4,'한방병원');
INSERT INTO `lululab`.`hospital_types` (`id`,`name`) VALUES (5,'요양병원');
INSERT INTO `lululab`.`hospital_types` (`id`,`name`) VALUES (6,'의원');
INSERT INTO `lululab`.`hospital_types` (`id`,`name`) VALUES (7,'치과의원');
INSERT INTO `lululab`.`hospital_types` (`id`,`name`) VALUES (8,'한의원');
INSERT INTO `lululab`.`hospital_types` (`id`,`name`) VALUES (9,'조산원');

-- migrate:down
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE hospital_types;
SET FOREIGN_KEY_CHECKS = 1;
