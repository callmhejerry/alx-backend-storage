-- A script that creates a table with this
-- attributes id, email, name, country
CREATE TABLE users IF NOT EXISTS(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT "US"
);
