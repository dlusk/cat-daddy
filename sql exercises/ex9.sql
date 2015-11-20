update person set first_name = "Hilarious Guy"
  where first_name = "Dan";

update pet set name ="Fancy Pants"
  where id = 2;

select * from person;
select * from pet;

update person set first_name = "Dan"
  where id = "0";

update pet set name = "DECEASED"
  where dead = 1;

select * from person;
select * from pet;
