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
