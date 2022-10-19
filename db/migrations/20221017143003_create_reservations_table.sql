-- migrate:up
CREATE TABLE reservations(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  status_id INT NOT NULL,
  patient_id INT NOT NULL,
  hospital_id INT NOT NULL,
  type_id INT NOT NULL,
  time_id INT NOT NULL,
  date DATE NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  CONSTRAINT PK_status_id_statuses_id FOREIGN KEY (status_id) REFERENCES statuses(id),
  CONSTRAINT PK_patient_id_patients_id FOREIGN KEY (patient_id) REFERENCES patients(id),
  CONSTRAINT PK_hospital_id_hospitals_id FOREIGN KEY (hospital_id) REFERENCES hospitals(id),
  CONSTRAINT PK_type_id_types_id FOREIGN KEY (type_id) REFERENCES types(id),
  CONSTRAINT PK_time_id_times_id FOREIGN KEY (time_id) REFERENCES times(id)
);


-- migrate:down
DROP TABLE reservations;