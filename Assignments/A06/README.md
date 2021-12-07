## Assignment 6 -  Restaurants DB (with MongoDB)

### Loic Konan

#### Description

> - Api will run on port 8003 on this server **<http://167.99.3.85:8001/routes>**
> - Loaded the restaurant DataBase **([restaurant.json](restaurant.json))** on my server using MongoDB.
> - Any Data returned by a route will be paginated with a preset page size.
>
> - **Routes:**
>   - Restaurants
>     - All restaurants (paginated result).
>     - Unique restaurant categories.
>     - All restaurants in a category.
>     - All restaurants in a list of 1 or more zip codes.
>     - All restaurants near Point(x,y).
>     - All restaurants with a min rating of X.
>

### Files

|   #   | File                               | Description          | Status                  |
| :---: | ---------------------------------- | -------------------- | ----------------------- |
|   1   | [main.py](main.py)                 | Main code            | :ballot_box_with_check: |
|   2   | [helper.py](helper.py)             | Helper code          | :ballot_box_with_check: |
|   3   | [restaurant.json](restaurant.json) | Restaurants DataBase | :ballot_box_with_check: |
|   4   | [test.py](test.py)                 | Helper python code   | :ballot_box_with_check: |

### References

|   #   | Files                                                                                                                                                                                                                                                | Description               | Status                  |
| :---: | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------- | ----------------------- |
|   1   | [https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-20-04](https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-20-04)                                                                   | Install MongoDB           | :ballot_box_with_check: |
|   2   | [https://www.digitalocean.com/community/tutorials/how-to-configure-remote-access-for-mongodb-on-ubuntu-20-04](https://www.digitalocean.com/community/tutorials/how-to-configure-remote-access-for-mongodb-on-ubuntu-20-04)                           | Remote Access for MongoDB | :ballot_box_with_check: |
|   3   | [https://www.digitalocean.com/community/tutorials/how-to-perform-crud-operations-in-mongodb-using-pymongo-on-ubuntu-20-04](https://www.digitalocean.com/community/tutorials/how-to-perform-crud-operations-in-mongodb-using-pymongo-on-ubuntu-20-04) | Py Mongo                  | :ballot_box_with_check: |
|   4   | [https://docs.mongodb.com/mongodb-shell/crud/read/#std-label-mongosh-read](https://docs.mongodb.com/mongodb-shell/crud/read/#std-label-mongosh-read)                                                                                                 | Query Documents           | :ballot_box_with_check: |
