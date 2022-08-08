/* Database schema to keep the structure of entire database. */

CREATE TABLE ANIMALS(
ID INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(100),
DATE_OF_BIRTH DATE,
ESCAPE_ATTEMPTS INT, 
WEIGHT_KG DECIMAL
NEUTERED  BOOLEAN,
);