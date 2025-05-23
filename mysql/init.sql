CREATE DATABASE IF NOT EXISTS mydatabase;
USE mydatabase;

CREATE TABLE IF NOT EXISTS data (
  id INT AUTO_INCREMENT PRIMARY KEY,
  value VARCHAR(255) NOT NULL
);

GRANT ALL PRIVILEGES ON mydatabase.* TO 'flaskuser'@'%';
FLUSH PRIVILEGES;