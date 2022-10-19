-- migrate:up
INSERT INTO `lululab`.`patients` (`id`,`name`, `birth`) VALUES (1,'하정우', '1990-01-01');
INSERT INTO `lululab`.`patients` (`id`,`name`, `birth`, `block`) VALUES (2,'황정민', '1995-02-02', '2022-10-01');
INSERT INTO `lululab`.`patients` (`id`,`name`, `birth`) VALUES (3,'박해수', '1996-03-03');
INSERT INTO `lululab`.`patients` (`id`,`name`, `birth`) VALUES (4,'조우진', '1997-04-04');
INSERT INTO `lululab`.`patients` (`id`,`name`, `birth`) VALUES (5,'유연석', '1998-05-05');
INSERT INTO `lululab`.`patients` (`id`,`name`, `birth`) VALUES (6,'test', '2000-10-10');


-- migrate:down
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE patients;
SET FOREIGN_KEY_CHECKS = 1;