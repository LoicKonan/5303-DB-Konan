/*
Loic Konan
* 5303 - Database Mgmt Systems
* SELECT from Nobel
* 09/10/2021
*/

SELECT population FROM world
  WHERE name = 'Germany'

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000 