## Assignment 8 - Redis Project

### Loic Konan

#### Description

> - To compare and see the distinctions between **Redis and MongoDB and Mysql**.
> - This experiment should **time each transaction and calculate averages**.
> - each aggregation should be applied to a database that is configured with **slight differences**.
>
> - Do **n searches for single values**.
> - Do **n searches for multiple values**.
> - Do **n updates to existing documents**.
> - Do **n deletes**
>
> - One possible approach could be:
>   - **Set N, where N is number of items being inserted, to:**
>   - **50000**
>   - **100000**
>   - **500000**
>   - **1 Million**
>
> <img src="single.png">
> When **searching for a single values**:
>   - **MongoDB** is faster with the _**lowest time**_.
>   - **Reddis** is the _**second fastest**_.
>   - **Mysql** come in **_last place_**.
>
> <img src="multi.png">
> When **searching for multiple values****:
> - **MongoDB** is faster with the _**lowest time**_.
>   - **Reddis** is the _**second fastest**_.
>   - **Mysql** come in **_last place_**.
>
>
> <img src="insertion.png">
> When **updating to existing documents**:
>
>
>
> <img src="deletion.png">
> When Doing **N deletes**:
>
>
>
> <img src="update.png">
> When Doing **N update**:
>
>

### Files

|   #   | File                         | Description             | Status                  |
| :---: | ---------------------------- | ----------------------- | ----------------------- |
|   1   | [main.py](main.py)           | Helper code             | :ballot_box_with_check: |
|   2   | [get_data.php](get_data.php) | Helper to Load the data | :ballot_box_with_check: |
|   3   | [data](data)                 | Data Folder             | :ballot_box_with_check: |

### References

|   #   | File         | Description         | Status                  |
| :---: | ------------ | ------------------- | ----------------------- |
|   1   | [data](data) | Getting random data | :ballot_box_with_check: |
