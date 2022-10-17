-- migrate:up
INSERT INTO `lululab`.`reservations` (`status_id`, `user_id`, `hospital_id`, `type_id`, `time_id`, `date`, `patient_name`, `patient_birth`) VALUES ('1', '1', '1', '4', '10', '2022-10-03', '강인구', '2000-05-01');
INSERT INTO `lululab`.`reservations` (`status_id`, `user_id`, `hospital_id`, `type_id`, `time_id`, `date`, `patient_name`, `patient_birth`) VALUES ('2', '3', '2', '3', '11', '2202-10-04', '최창호', '2001-06-02');
INSERT INTO `lululab`.`reservations` (`status_id`, `user_id`, `hospital_id`, `type_id`, `time_id`, `date`, `patient_name`, `patient_birth`) VALUES ('3', '4', '3', '2', '12', '2202-10-05', '변기태', '2002-07-03');
INSERT INTO `lululab`.`reservations` (`status_id`, `user_id`, `hospital_id`, `type_id`, `time_id`, `date`, `patient_name`, `patient_birth`) VALUES ('4', '5', '4', '1', '13', '2202-10-06', '데이빗', '2003-08-01');
INSERT INTO `lululab`.`reservations` (`status_id`, `user_id`, `hospital_id`, `type_id`, `time_id`, `date`, `patient_name`, `patient_birth`) VALUES ('5', '2', '5', '2', '14', '2202-10-07', '전요환', '2004-09-01');

-- migrate:down
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE reservations;
SET FOREIGN_KEY_CHECKS = 1;
