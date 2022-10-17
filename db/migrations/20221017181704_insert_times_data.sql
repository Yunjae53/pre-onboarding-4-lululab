-- migrate:up
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (1,'00:00-01:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (2,'01:00-02:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (3,'02:00-03:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (4,'03:00-04:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (5,'04:00-05:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (6,'05:00-06:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (7,'06:00-07:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (8,'07:00-08:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (9,'08:00-09:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (10,'09:00-10:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (11,'10:00-11:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (12,'11:00-12:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (13,'12:00-13:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (14,'13:00-14:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (15,'14:00-15:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (16,'15:00-16:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (17,'16:00-17:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (18,'17:00-18:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (19,'18:00-19:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (20,'19:00-20:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (21,'20:00-21:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (22,'21:00-22:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (23,'22:00-23:00');
INSERT INTO `lululab`.`times` (`id`,`time`) VALUES (24,'23:00-00:00');

-- migrate:down
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE times;
SET FOREIGN_KEY_CHECKS = 1;
