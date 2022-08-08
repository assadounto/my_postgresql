/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM ANIMALS WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';
SELECT * FROM ANIMALS WHERE weight_kg BETWEEN 10.3 AND 17.4;
SELECT name,escape_attempts FROM ANIMALS WHERE weight_kg>10.5;
SELECT * FROM ANIMALS WHERE name!='Gabumon';
SELECT * FROM ANIMALS WHERE neutered=true AND escape_attempts<3;
SELECT * FROM ANIMALS WHERE neutered=true;
SELECT * FROM ANIMALS WHERE name LIKE '%mon%';
SELECT * FROM ANIMALS;
SELECT date_of_birth FROM ANIMALS WHERE name='Agumon' OR name='Pikachu