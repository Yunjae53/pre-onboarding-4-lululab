-- migrate:up
CREATE TABLE hospitals(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  hospital_type_id INT NOT NULL,
  name VARCHAR(200) NOT NULL,
  number VARCHAR(200) NOT NULL,
  address VARCHAR(500) NOT NULL,
  CONSTRAINT PK_hospital_type_id_hospital_types_id FOREIGN KEY (hospital_type_id) REFERENCES hospital_types(id)
);

-- migrate:down
DROP TABLE hospitals;