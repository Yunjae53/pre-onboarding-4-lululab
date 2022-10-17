-- migrate:up
INSERT INTO `lululab`.`users` (`id`,`name`, `phone_number`, `birth`) VALUES (1,'하정우', '01011112222', '1990-01-01');
INSERT INTO `lululab`.`users` (`id`,`name`, `phone_number`, `birth`, `block`) VALUES (2,'황정민', '01022223333', '1995-02-02', '2022-10-01');
INSERT INTO `lululab`.`users` (`id`,`name`, `phone_number`, `birth`) VALUES (3,'박해수', '01044445555', '1996-03-03');
INSERT INTO `lululab`.`users` (`id`,`name`, `phone_number`, `birth`) VALUES (4,'조우진', '01066667777', '1997-04-04');
INSERT INTO `lululab`.`users` (`id`,`name`, `phone_number`, `birth`) VALUES (5,'유연석', '01088889999', '1998-05-05');

-- migrate:down
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE users;
SET FOREIGN_KEY_CHECKS = 1;