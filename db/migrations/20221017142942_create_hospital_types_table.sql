-- migrate:up
CREATE TABLE hospital_types(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);

-- migrate:down
DROP TABLE hospital_types;