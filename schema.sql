CREATE DATABASE catalog;

CREATE TABLE item (
  id SERIAL NOT NULL PRIMARY KEY,
  genre_id INT,
  author_id INT,
  label_id INT,
  publish_date DATE,
  archived BOOLEAN,
  FOREIGN KEY (genre_id) REFERENCES genres (id),
);

CREATE TABLE labels (
  id SERIAL NOT NULL PRIMARY KEY,
  title VARCHAR(100),
  color VARCHAR(100),
);

CREATE TABLE books (
  id  INT PRIMARY KEY,
  title VARCHAR(100),
  publisher VARCHAR(100),
  cover_state VARCHAR(100),
  FOREIGN KEY(id) REFERENCES item(id)
);