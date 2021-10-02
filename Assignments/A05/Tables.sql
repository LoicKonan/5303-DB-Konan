-- Sat Oct  2 17:24:08 2021
-- MySQL 


-- -----------------------------------------------------
-- Table movies
-- -----------------------------------------------------
CREATE TABLE movies 
(
  id INT NOT NULL,
  title VARCHAR(45) NOT NULL,
  year INT NOT NULL,
  PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table directors
-- -----------------------------------------------------
CREATE TABLE directors
(
  id INT NOT NULL,
  Fname VARCHAR(45) NOT NULL,
  Lname VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);

-- -----------------------------------------------------
-- Table actors
-- -----------------------------------------------------
CREATE TABLE actors
(
  id INT NOT NULL,
  Fname VARCHAR(45) NOT NULL,
  Lname VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table writers
-- -----------------------------------------------------
CREATE TABLE writers
(
  id INT NOT NULL,
  Fname VARCHAR(45) NOT NULL,
  Lname VARCHAR(45) NOT NULL,
  PRIMARY KEY (id),
  );


-- -----------------------------------------------------
-- Table genres
-- -----------------------------------------------------
CREATE TABLE genres
(
  id INT NOT NULL,
  name VARCHAR(45) NOT NULL,
  movies_id INT NOT NULL,
  PRIMARY KEY (id, movies_id)
    -- FOREIGN KEY (movies_id)
);


-- -----------------------------------------------------
-- Table rating
-- -----------------------------------------------------
CREATE TABLE rating
(
  votes INT NOT NULL,
  numb_stars INT NOT NULL,
  movies_id INT NOT NULL,
  PRIMARY KEY (movies_id)
--     FOREIGN KEY (`movies_id`)
);

-- -----------------------------------------------------
-- Table movies_directors
-- -----------------------------------------------------
CREATE TABLE movies_directors 
(
  movies_id INT NOT NULL,
  directors_id INT NOT NULL,
  PRIMARY KEY (movies_id, directors_id)
    -- FOREIGN KEY (movies_id),
    -- FOREIGN KEY (directors_id)
);


-- -----------------------------------------------------
-- Table movies_actors
-- -----------------------------------------------------
CREATE TABLE movies_actors
(
  movies_id INT NOT NULL,
  actors_id INT NOT NULL,
  PRIMARY KEY (movies_id, actors_id)
    -- FOREIGN KEY (movies_id)
    -- FOREIGN KEY (actors_id)
);


-- -----------------------------------------------------
-- Table movies_writers
-- -----------------------------------------------------
CREATE TABLE movies_writers
(
  movies_id INT NOT NULL,
  writers_id INT NOT NULL,
  PRIMARY KEY (movies_id, writers_id),
    -- FOREIGN KEY (movies_id)
    -- FOREIGN KEY (writers_id)
);


-- -----------------------------------------------------
-- Table movies_genres
-- -----------------------------------------------------
CREATE TABLE movies_genres
(
  movies_id INT NOT NULL,
  genres_id INT NOT NULL,
  PRIMARY KEY (movies_id, genres_id),
    -- FOREIGN KEY (movies_id)
    -- FOREIGN KEY (genres_id)
   );


-- -----------------------------------------------------
-- Table person
-- -----------------------------------------------------
CREATE TABLE person
(
  id INT NOT NULL,
  Fname VARCHAR(100) NOT NULL,
  Lname VARCHAR(100) NOT NULL,
  birth INT NULL,
  death INT NULL,
  professions VARCHAR(300) NULL,
  known_for VARCHAR(300) NULL,
  directors_id INT NOT NULL,
  actors_id INT NOT NULL,
  writers_id INT NOT NULL,
  PRIMARY KEY (id, directors_id, writers_id, actors_id),
    -- FOREIGN KEY (directors_id)
    -- FOREIGN KEY (actors_id)
    -- FOREIGN KEY (writers_id)
);


-- -----------------------------------------------------
-- Table person_directors
-- -----------------------------------------------------
CREATE TABLE person_directors
(
  person_id INT NOT NULL,
  directors_id INT NOT NULL,
  PRIMARY KEY (person_id, directors_id),
    -- FOREIGN KEY (person_id)
    -- FOREIGN KEY (directors_id)
);


-- -----------------------------------------------------
-- Table person_actors
-- -----------------------------------------------------
CREATE TABLE person_actors
(
  `person_id` INT NOT NULL,
  `actors_id` INT NOT NULL,
  PRIMARY KEY (`person_id`, `actors_id`),
  INDEX `fk_person_has_actors_actors1_idx` (`actors_id` ASC) VISIBLE,
  INDEX `fk_person_has_actors_person1_idx` (`person_id` ASC) VISIBLE,
  CONSTRAINT `fk_person_has_actors_person1`
    FOREIGN KEY (`person_id`)
    REFERENCES `movies_db`.`person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_has_actors_actors1`
    FOREIGN KEY (`actors_id`)
   );


-- -----------------------------------------------------
-- Table person_writers
-- -----------------------------------------------------
CREATE TABLE person_writers
(
  person_id INT NOT NULL,
  writers_id INT NOT NULL,
  PRIMARY KEY (person_id, writers_id),
    -- FOREIGN KEY (person_id)
    -- FOREIGN KEY (writers_id)
);
