-- migrate:up
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('1', '연세서울병원', '0212341234', '서울특별시 송파구 올림픽로 301');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('2', '원병원', '0212341234', '서울특별시 송파구 올림픽로 302');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('3', '서울치과병원', '0212341234', '서울특별시 송파구 올림픽로 303');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('4', '경희대학교한방병원', '0212341234', '서울특별시 송파구 올림픽로 304');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('5', '아시엘요양병원', '0212341234', '서울특별시 송파구 올림픽로 305');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('6', '미앤수의원', '0212341234', '서울특별시 송파구 올림픽로 306');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('7', '이솔치과의원', '0212341234', '서울특별시 송파구 올림픽로 307');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('8', '우리들한의원', '0212341234', '서울특별시 송파구 올림픽로 308');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('9', '호움조산원', '0212341234', '서울특별시 송파구 올림픽로 309');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('1', '미누병원', '0212341234', '경기도 남양주시 별내동');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('1', '래원병원', '0212341234', '경기도 남양주시 진접읍');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('1', '영지병원', '0212341234', '경기도 남양주시 오남읍');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('1', '라일병원', '0212341234', '경기도 남양주시 호평동');
INSERT INTO `lululab`.`hospitals` (`hospital_type_id`, `name`, `number`, `address`) VALUES ('1', '금곡병원', '0212341234', '경기도 남양주시 금곡동');

-- migrate:down
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE hospitals;
SET FOREIGN_KEY_CHECKS = 1;
