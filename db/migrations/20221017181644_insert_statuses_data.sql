-- migrate:up
INSERT INTO `lululab`.`statuses` (`id`,`status`) VALUES (1,'예약중');
INSERT INTO `lululab`.`statuses` (`id`,`status`) VALUES (2,'진료중');
INSERT INTO `lululab`.`statuses` (`id`,`status`) VALUES (3,'진료완료');
INSERT INTO `lululab`.`statuses` (`id`,`status`) VALUES (4,'노쇼');
INSERT INTO `lululab`.`statuses` (`id`,`status`) VALUES (5,'예약취소');

-- migrate:down
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE statuses;
SET FOREIGN_KEY_CHECKS = 1;
