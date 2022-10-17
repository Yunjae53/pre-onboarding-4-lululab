-- migrate:up
CREATE TABLE reservations(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  status_id INT NOT NULL,
  user_id INT NOT NULL,
  hospital_id INT NOT NULL,
  type_id INT NOT NULL,
  time_id INT NOT NULL,
  date DATE NOT NULL,
  patient_name VARCHAR(200) NOT NULL,
  patient_birth VARCHAR(200) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  CONSTRAINT PK_status_id_hospital_statuses_id FOREIGN KEY (status_id) REFERENCES statuses(id),
  CONSTRAINT PK_user_id_hospital_users_id FOREIGN KEY (user_id) REFERENCES users(id),
  CONSTRAINT PK_hospital_id_hospital_hospitals_id FOREIGN KEY (hospital_id) REFERENCES hospitals(id),
  CONSTRAINT PK_type_id_hospital_types_id FOREIGN KEY (type_id) REFERENCES types(id),
  CONSTRAINT PK_time_id_hospital_times_id FOREIGN KEY (time_id) REFERENCES times(id),
  UNIQUE KEY (status_id, user_id, hospital_id, type_id, time_id)
);


-- migrate:down
DROP TABLE reservations;