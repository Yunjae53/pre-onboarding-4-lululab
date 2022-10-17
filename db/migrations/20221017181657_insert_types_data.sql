-- migrate:up
INSERT INTO `lululab`.`types` (`id`,`name`) VALUES (1,'검진');
INSERT INTO `lululab`.`types` (`id`,`name`) VALUES (2,'진료');
INSERT INTO `lululab`.`types` (`id`,`name`) VALUES (3,'입원');
INSERT INTO `lululab`.`types` (`id`,`name`) VALUES (4,'응급');

-- migrate:down
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE types;
SET FOREIGN_KEY_CHECKS = 1;
