drop table if exists person;
drop table if exists pet;
drop table if exists person_pet;

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

alter table person add column dead integer;
alter table person add column phone_number integer;
alter table person add column salary float;
alter table person add column dob datetime;
alter table pet add column dob datetime;
alter table person_pet add column purchased_on datetime;
alter table pet add column parent integer;

insert into person (id, first_name, last_name, age, dead, phone_number, salary, dob)
  values (0, "Dan")
