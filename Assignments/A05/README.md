## Assignment 5 -  Movies DB

### Loic Konan

#### Description

> Created a local database of the movie data using the files located at the following address: **<https://datasets.imdbws.com/>**.
>
> - Retrieved all files.
> - Uncompressed the files.
> - Processed each file into a usable format.
> - Re-Organized the files by filtering / combining them to fit a schema.
>
> ## API
>
> This **Api** will run on **port 8002 the server**.
> Any data returned by a route will be paginated with a preset page size.
>
> - **<http://192.81.216.230:8002/>**
>
> - ## Routes
>
> - **Movies**
>   - _**Find all**_
>   - Filter on any field in table(year,runtime(min/max))
>     - e.g. return all movies **in 1961**
>     - e.g. return all movies with **runtime > 90**
>     - e.g. return all movies with **runtime between 80 and 100**
>   - Filter on actor or actress (id)
>     - e.g. return all movies associated with **a specific actress**
>     - e.g. return all movies associated with a **set of actors and actresses**
>   - Filter on genre(s)
>     - e.g return all movies in a **specified genre**
> - **People**
>   - _**Find all**_
>   - Filter on name **(first or last)**
>   - Filter on movie **(id)**
>   - Filter on **genre(s)**
>   - Filter on **"worked with id or ids"**
>     - e.g. find all actors and actresses that worked **with id**
>   - Filter on profession
>   - **Genre**
>     - _**Find all**_
>   - **Profession**
>     - _**Find all**_
>
>

### Files

|   #   | File                       | Description                                     | Status                  |
| :---: | -------------------------- | ----------------------------------------------- | ----------------------- |
|   1   | [main.py](main.py)         | Main Python file to help connect to my database | :ballot_box_with_check: |
|   2   | [mysqlCnx.py](mysqlCnx.py) | The mysql connection file                       | :ballot_box_with_check: |
|   3   | [Tables.sql](Tables.sql)   | The SQL code                                    | :ballot_box_with_check: |

### References

|   #   | File                                                                                                   | Description               | Status                  |
| :---: | ------------------------------------------------------------------------------------------------------ | ------------------------- | ----------------------- |
|   1   | [https://realpython.com/python-mysql](https://realpython.com/python-mysql)                             | python-mysql              | :ballot_box_with_check: |
|   2   | [https://realpython.com/fastapi-python-web-apis](https://realpython.com/fastapi-python-web-apis)       | fastapi-python            | :ballot_box_with_check: |
|   3   | [https://realpython.com/api-integration-in-python/](https://realpython.com/api-integration-in-python/) | api-integration-in-python | :ballot_box_with_check: |
|   4   | [https://realpython.com/python-encodings-guide/](https://realpython.com/python-encodings-guide/)       | python-encodings-guide    | :ballot_box_with_check: |
|   4   | [https://datasets.imdbws.com/](https://datasets.imdbws.com/)                                           | datasets.imdbws           | :ballot_box_with_check: |
