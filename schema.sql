CREATE TABLE genre (
  id serial not null primary key,
  name text
  );

  CREATE TABLE musicalbum (
    id int not null REFERENCES item(id),
    on_spotify  boolean
  )