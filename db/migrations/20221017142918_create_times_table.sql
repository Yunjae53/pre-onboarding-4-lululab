-- migrate:up
CREATE TABLE times(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    time VARCHAR(200) NOT NULL
);

-- migrate:down
DROP TABLE times;