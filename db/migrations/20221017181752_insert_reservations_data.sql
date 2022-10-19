-- migrate:up
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '1', '1', '4', '10', '2022-10-03');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('2', '3', '2', '3', '11', '2022-10-04');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('3', '4', '3', '2', '12', '2022-10-05');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('4', '5', '4', '1', '13', '2022-10-06');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('5', '2', '5', '2', '14', '2022-10-07');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('3', '6', '1', '2', '1', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '2', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '3', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '4', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '5', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '6', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('2', '6', '1', '2', '7', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('5', '6', '1', '2', '8', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '9', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '14', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '17', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '20', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '21', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '22', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '23', '2022-10-10');
INSERT INTO `lululab`.`reservations` (`status_id`, `patient_id`, `hospital_id`, `type_id`, `time_id`, `date`) VALUES ('1', '6', '1', '2', '24', '2022-10-10');


-- migrate:down
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE reservations;
SET FOREIGN_KEY_CHECKS = 1;
