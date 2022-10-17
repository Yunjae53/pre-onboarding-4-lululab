-- migrate:up
CREATE TABLE statuses(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    status VARCHAR(200) NOT NULL
);

-- migrate:down
DROP TABLE statuses;