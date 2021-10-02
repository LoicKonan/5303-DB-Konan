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
-- Table `movies_db`.`movies_actors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`movies_actors` (
  `movies_id` INT NOT NULL,
  `actors_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `actors_id`),
  INDEX `fk_movies_has_actors_actors1_idx` (`actors_id` ASC) VISIBLE,
  INDEX `fk_movies_has_actors_movies1_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_movies_has_actors_movies1`
    FOREIGN KEY (`movies_id`)
    REFERENCES `movies_db`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_actors_actors1`
    FOREIGN KEY (`actors_id`)
    REFERENCES `movies_db`.`actors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies_db`.`movies_writers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`movies_writers` (
  `movies_id` INT NOT NULL,
  `writers_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `writers_id`),
  INDEX `fk_movies_has_writers_writers1_idx` (`writers_id` ASC) VISIBLE,
  INDEX `fk_movies_has_writers_movies1_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_movies_has_writers_movies1`
    FOREIGN KEY (`movies_id`)
    REFERENCES `movies_db`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_writers_writers1`
    FOREIGN KEY (`writers_id`)
    REFERENCES `movies_db`.`writers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies_db`.`movies_genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`movies_genres` (
  `movies_id` INT NOT NULL,
  `genres_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `genres_id`),
  INDEX `fk_movies_has_genres_genres1_idx` (`genres_id` ASC) VISIBLE,
  INDEX `fk_movies_has_genres_movies1_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_movies_has_genres_movies1`
    FOREIGN KEY (`movies_id`)
    REFERENCES `movies_db`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_genres_genres1`
    FOREIGN KEY (`genres_id`)
    REFERENCES `movies_db`.`genres` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies_db`.`person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`person` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Fname` VARCHAR(100) NOT NULL,
  `Lname` VARCHAR(100) NOT NULL,
  `birth` INT NULL,
  `death` INT NULL,
  `professions` VARCHAR(300) NULL,
  `known_for` VARCHAR(300) NULL,
  `directors_id` INT NOT NULL,
  `actors_id` INT NOT NULL,
  `writers_id` INT NOT NULL,
  PRIMARY KEY (`id`, `directors_id`, `writers_id`, `actors_id`),
  UNIQUE INDEX `Fname_UNIQUE` (`Fname` ASC) VISIBLE,
  UNIQUE INDEX `Lname_UNIQUE` (`Lname` ASC) VISIBLE,
  INDEX `fk_person_directors1_idx` (`directors_id` ASC) VISIBLE,
  INDEX `fk_person_actors1_idx` (`actors_id` ASC) VISIBLE,
  INDEX `fk_person_writers1_idx` (`writers_id` ASC) VISIBLE,
  CONSTRAINT `fk_person_directors1`
    FOREIGN KEY (`directors_id`)
    REFERENCES `movies_db`.`directors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_actors1`
    FOREIGN KEY (`actors_id`)
    REFERENCES `movies_db`.`actors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_writers1`
    FOREIGN KEY (`writers_id`)
    REFERENCES `movies_db`.`writers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies_db`.`person_directors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`person_directors` (
  `person_id` INT NOT NULL,
  `directors_id` INT NOT NULL,
  PRIMARY KEY (`person_id`, `directors_id`),
  INDEX `fk_person_has_directors_directors1_idx` (`directors_id` ASC) VISIBLE,
  INDEX `fk_person_has_directors_person1_idx` (`person_id` ASC) VISIBLE,
  CONSTRAINT `fk_person_has_directors_person1`
    FOREIGN KEY (`person_id`)
    REFERENCES `movies_db`.`person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_has_directors_directors1`
    FOREIGN KEY (`directors_id`)
    REFERENCES `movies_db`.`directors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies_db`.`person_actors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`person_actors` (
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
    REFERENCES `movies_db`.`actors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies_db`.`person_writers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`person_writers` (
  `person_id` INT NOT NULL,
  `writers_id` INT NOT NULL,
  PRIMARY KEY (`person_id`, `writers_id`),
  INDEX `fk_person_has_writers_writers1_idx` (`writers_id` ASC) VISIBLE,
  INDEX `fk_person_has_writers_person1_idx` (`person_id` ASC) VISIBLE,
  CONSTRAINT `fk_person_has_writers_person1`
    FOREIGN KEY (`person_id`)
    REFERENCES `movies_db`.`person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_has_writers_writers1`
    FOREIGN KEY (`writers_id`)
    REFERENCES `movies_db`.`writers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
