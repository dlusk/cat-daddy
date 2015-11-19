drop table person;
drop table pet;
drop table person_pet;

create table person (
  id integer primary_key,
  first_name text,
  last_name text,
  age integer
);

create table pet (
  id integer primary_key,
  name text,
  breed text,
  age integer,
  dead integer
);

create table person_pet (
  person_id integer,
  pet_id integer
);

insert into person (id, first_name, last_name, age)
  values (0, "Dan", "Lusk", 27);

insert into pet (id, name, breed, age, dead)
  values (0, "Kali", "Cat", 7, 0);

insert into pet values (1, "Gigantor", "Robot", 1, 1);

insert into person_pet (person_id, pet_id) values (0, 0);

insert into person_pet values (0, 1);

select * from person;

select name, age from pet;

select name, age from pet where dead = 0;

select * from person where first_name != "Zed";

select * from pet where age > 10;

select * from person where age < 27;

select pet.id, pet.name, pet.age, pet.dead
  from pet, person_pet, person
  where
  pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id AND
  person.first_name = "Dan";

select name, age from pet where dead = 1;

delete from pet where dead = 1;

select * from pet;

insert into pet values (1, "Gigantor", "Robot", 1, 0);

select * from pet;

delete from pet where name = "Kali";
select * from pet;
insert into pet (id, name, breed, age, dead)
  values (0, "Kali", "Cat", 7, 0);
delete from pet where id in (
  select pet.id
  from pet, person, person_pet
  where
  person.id = person_pet.person_id and
  pet.id = person_pet.pet_id and
  person.first_name = "Dan"
);

select * from pet;
select * from person_pet;

insert into pet (id, name, breed, age, dead)
  values (0, "Kali", "Cat", 7, 0);

insert into person_pet (person_id, pet_id)
  values (0, 0);

insert into pet (id, name, breed, age, dead)
  values (1, "Christmas", "Cat", 800, 0);

insert into person_pet (person_id, pet_id)
  values (0, 1);

delete from person_pet
  where pet_id not in (
    select id from pet
  );

select * from person_pet;

insert into person (id, first_name, last_name, age)
  values (1, "Liza", "Jane", 23);

insert into pet (id, name, breed, age, dead)
  values (2, "Fuzzy", "Dog", 18, 1);

insert into pet (id, name, breed, age, dead)
  values (3, "Ralph", "Dragon", 2303, 0);

insert into person (id, first_name, last_name, age)
  values (2, "Bilbo", "Baggins", 104);

insert into person_pet (person_id, pet_id)
  values (1, 2);

insert into person_pet (person_id, pet_id)
  values (2, 3);

-- delete from person where id in (
--   select person.id
--     from pet, person, person_pet
--     where
--     pet.id = person_pet.pet_id and
--     person.id = person_pet.person_id and
--     pet.dead = 1
-- );
select * from person_pet;

delete from person_pet where pet_id in (
  select person_pet.pet_id
    from pet, person, person_pet
    where
    pet.id = person_pet.pet_id and
    person.id = person_pet.person_id and
    pet.dead = 1
);

select * from person_pet;
select * from pet;
