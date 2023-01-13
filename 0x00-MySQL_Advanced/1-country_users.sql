-- creates a table user with 
-- id, email, name, and country attributes

DROP TABLE IF EXIsTS users;
CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') DEFAULT 'US'
);
