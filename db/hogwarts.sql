DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TYPE house_names AS ENUM ('Gryffindor', 'Ravenclaw', 'Hufflepuff', 'Slytherin');

CREATE TABLE houses (
  id SERIAL2 PRIMARY KEY,
  name house_names,
  logo_url VARCHAR(255)
);

CREATE TABLE students (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house_id INT2 REFERENCES houses(id) ON DELETE CASCADE,
  age INT2
);
