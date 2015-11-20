select pet.id, pet.name, pet.age, pet.dead
  from pet, person_pet, person
  where
  pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id AND
  person.first_name = "Dan";
