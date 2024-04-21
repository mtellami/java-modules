CREATE TABLE IF NOT EXISTS user
(
  id INT PRIMARY KEY AUTO_INCREMENT,
  login VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS chatroom
(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) UNIQUE NOT NULL,
  owner INT NOT NULL REFERENCES user(id)
);


