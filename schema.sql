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

CREATE TABLE genre (
  id serial not null primary key,
  name text
  );

  CREATE TABLE musicalbum (
    id int not null REFERENCES item(id),
    on_spotify  boolean
  )


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

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL
);

CREATE TABLE games(
  id SERIAL PRIMARY KEY,
  type_of_item text
  label_id INTEGER,
  genre_id INTEGER,
  author_id INTEGER,
  source_id INTEGER,
  publish_date DATE,
  archived BOOLEAN,
  MULTIPLAYER TEXT,
  LAST_PLAYED_AT DATE,
  FOREIGN KEY (label_id) REFERENCES labels(id),
  FOREIGN KEY (genre_id) REFERENCES genres(id),
  FOREIGN KEY (author_id) REFERENCES authors(id),
  FOREIGN KEY (source_id) REFERENCES sources(id)
);
