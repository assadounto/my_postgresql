/* Database schema to keep the structure of entire database. */

CREATE TABLE ANIMALS(
ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
name VARCHAR(100),
DATE_OF_BIRTH DATE,
ESCAPE_ATTEMPTS INT, 
WEIGHT_KG DECIMAL,
NEUTERED  BOOLEAN,
SPECIES VARCHAR(100)
);

create table owners(
ID INT GENERATED ALWAYS AS IDENTITY,
full_name VARCHAR(100),
age INT,
PRIMARY key(ID)
);

create table species(
ID INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(100),
PRIMARY key(ID)
);

create table vets(
ID INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(100),
age INT,
date_of_graduation DATE,
PRIMARY key(ID)
);

create table specializations(
    species_id int ,
    vet_id int,
    PRIMARY key(species_id,vet_id),
    foreign key(species_id) references species(id),
    foreign key(vet_id) references vets(id)
);

create table visits(
    animal_id int,
    vet_id int,
    date_of_visit DATE,
    PRIMARY key(animal_id,vet_id,date_of_visit),
    foreign key(animal_id) references animals(id),
    foreign key(vet_id) references vets(id)
);

alter table animals drop column species; -- drop column species from table animals
alter table animals add column species_id INT ;
alter table animals add constraint constraint_fk foreign key (species_id) references species(ID) on delete cascade; -- add column species_id to table animals
alter table animals add column owner_id INT ;
alter table animals add constraint constraint_ownerid foreign key (owner_id) references owners(ID) on delete cascade; -- add column owner_id to table animals


--The following queries are taking too much time (1 sec = 1000ms can be considered as too much time for database query). Try them on your machine to confirm it:

    SELECT COUNT(*) FROM visits where animal_id = 4;
    SELECT * FROM visits where vet_id = 2;
    SELECT * FROM owners where email = 'owner_18327@mail.com';

-- Find a way to decrease the execution time of the third query.
    CREATE INDEX ON owners(email) 