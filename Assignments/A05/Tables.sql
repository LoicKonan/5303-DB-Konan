-- MySQL Script generated by MySQL Workbench
-- Sat Oct  2 16:11:22 2021
-- Model: New Model    Version: 1.0



-- -----------------------------------------------------
-- Table `movies`
-- -----------------------------------------------------
CREATE TABLE movies
(
  id INT,
  title VARCHAR(45),
  year INT NOT NULL,
  PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table `directors`
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
  PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table genres
-- -----------------------------------------------------
CREATE TABLE genres
(
  id INT NOT NULL,
  name VARCHAR(45) NOT NULL,
  PRIMARY KEY (id),
);


-- -----------------------------------------------------
-- Table `movies_db`.`rating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`rating` (
  `votes` INT NOT NULL,
  `numb_stars` INT NOT NULL,
  `movies_id` INT NOT NULL,
  UNIQUE INDEX `stars_UNIQUE` (`numb_stars` ASC) VISIBLE,
  UNIQUE INDEX `votes_UNIQUE` (`votes` ASC) VISIBLE,
  INDEX `fk_rating_movies1_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_rating_movies1`
    FOREIGN KEY (`movies_id`)
    REFERENCES `movies_db`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies_db`.`movies_has_movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`movies_has_movies` (
  `movies_id` INT NOT NULL,
  `movies_id1` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `movies_id1`),
  INDEX `fk_movies_has_movies_movies1_idx` (`movies_id1` ASC) VISIBLE,
  INDEX `fk_movies_has_movies_movies_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_movies_has_movies_movies`
    FOREIGN KEY (`movies_id`)
    REFERENCES `movies_db`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_movies_movies1`
    FOREIGN KEY (`movies_id1`)
    REFERENCES `movies_db`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies_db`.`movies_directors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`movies_directors` (
  `movies_id` INT NOT NULL,
  `directors_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `directors_id`),
  INDEX `fk_movies_has_directors_directors1_idx` (`directors_id` ASC) VISIBLE,
  INDEX `fk_movies_has_directors_movies1_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_movies_has_directors_movies1`
    FOREIGN KEY (`movies_id`)
    REFERENCES `movies_db`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_directors_directors1`
    FOREIGN KEY (`directors_id`)
    REFERENCES `movies_db`.`directors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


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
-- Table movies_genres
-- -----------------------------------------------------
CREATE TABLE movies_has_genres 
(
  movies_id INT NOT NULL,
  genres_id INT NOT NULL,
  PRIMARY KEY (`movies_id`, `genres_id`),
    FOREIGN KEY (`movies_id`)
    FOREIGN KEY (`genres_id`)
);