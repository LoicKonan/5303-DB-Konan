## Assignment 5 -  Movies DB

### Loic Konan

#### Description

> Created a local database of the movie data using the files located at the following address: <https://datasets.imdbws.com/>.
>
> - Retrieved all files.
> - Uncompressed the files.
> - Processed each file into a usable format.
> - Re-Organized the files by filtering / combining them to fit a schema.
>
> - Routes: <http://192.81.216.230:8002/>

### Files

|   #   | File                       | Description                                     | Status                  |
| :---: | -------------------------- | ----------------------------------------------- | ----------------------- |
|   1   | [main.py](main.py)         | Main Python file to help connect to my database | :ballot_box_with_check: |
|   2   | [main2.py](main2.py)       | Python file to help connect to my database      | :ballot_box_with_check: |
|   3   | [mysqlCnx.py](mysqlCnx.py) | The mysql connection file                       | :ballot_box_with_check: |

### Schema

CREATE TABLE movies(
   id        integer      PRIMARY KEY,
   title     varchar(255) NOT NULL UNIQUE,
   year      integer)

CREATE TABLE people(
   id        integer      PRIMARY KEY,
   name      varchar(255) NOT NULL UNIQUE,
   gender    varchar(10))

CREATE TABLE credits(
   person_id integer      NOT NULL REFERENCES people (id),
   movie_id  integer      NOT NULL REFERENCES movies (id),
   type      varchar(20)  NOT NULL,
   note      varchar(255),
   character varchar(255),
   position  integer,
   line_order     integer,
   group_order    integer,
   subgroup_order integer,
   UNIQUE (person_id, movie_id, type))

CREATE TABLE certificates(
   movie_id    integer      NOT NULL REFERENCES movies (id),
   country     varchar(20)  NOT NULL,
   certificate varchar(20)  NOT NULL,
   note        varchar(255))

CREATE TABLE color_info(
   movie_id  integer      NOT NULL REFERENCES movies (id),
   value     varchar(20)  NOT NULL,
   note      varchar(255))

CREATE TABLE genres(
   movie_id  integer      NOT NULL REFERENCES movies (id),
   genre     varchar(25)  NOT NULL)

CREATE TABLE keywords(
   movie_id  integer      NOT NULL REFERENCES movies (id),
   keyword   varchar(127) NOT NULL)

CREATE TABLE languages(
   movie_id  integer      NOT NULL REFERENCES movies (id),
   language  varchar(35)  NOT NULL,
   note      varchar(255))

CREATE TABLE locations(
   movie_id  integer      NOT NULL REFERENCES movies (id),
   location  varchar(255) NOT NULL,
   note      varchar(511))

CREATE TABLE release_dates(
   movie_id     integer      NOT NULL REFERENCES movies (id),
   country      varchar(40)  NOT NULL,
   release_date varchar(10)  NOT NULL,
   note         varchar(255))

CREATE TABLE running_times(
   movie_id     integer      NOT NULL REFERENCES movies (id),
   running_time varchar(40)  NOT NULL,
   note         varchar(255))

### References

|   #   | File                                                                                                   | Description               | Status                  |
| :---: | ------------------------------------------------------------------------------------------------------ | ------------------------- | ----------------------- |
|   1   | [https://realpython.com/python-mysql](https://realpython.com/python-mysql)                             | python-mysql              | :ballot_box_with_check: |
|   2   | [https://realpython.com/fastapi-python-web-apis](https://realpython.com/fastapi-python-web-apis)       | fastapi-python            | :ballot_box_with_check: |
|   3   | [https://realpython.com/api-integration-in-python/](https://realpython.com/api-integration-in-python/) | api-integration-in-python | :ballot_box_with_check: |
|   4   | [https://realpython.com/python-encodings-guide/](https://realpython.com/python-encodings-guide/)       | python-encodings-guide    | :ballot_box_with_check: |
|   4   | [https://datasets.imdbws.com/](https://datasets.imdbws.com/)                                           | datasets.imdbws           | :ballot_box_with_check: |
