#What is each pokemon's primary type?
SELECT p.name as PokemonName, t.name as Type FROM pokemons AS p inner JOIN types AS t ON p.primary_type = t.id;

#What is Rufflet's secondary type?
SELECT p.name as PokemonName, t.name as SecType FROM pokemons AS p JOIN types AS t ON p.secondary_type = t.id WHERE p.name = 'Rufflet';

#What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT p.name FROM trainers AS t JOIN pokemon_trainer AS pt ON t.trainerID = pt.trainerID
  JOIN pokemons AS p ON p.id = pt.pokemon_id WHERE pt.trainerID = 303;

#How many pokemon have a secondary type Poison
SELECT count(*) AS total_pokemon_secondary_poison FROM pokemons JOIN types ON pokemons.secondary_type = types.id
WHERE types.name = 'Poison';

#What are all the primary types and how many pokemon have that type?
SELECT types.name, count(*) AS total_pokemon FROM types JOIN pokemons ON pokemons.primary_type = types.id
GROUP BY pokemons.primary_type;

#How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
select count(*) as numberOfPokemonwithLevel100 from (select trainerID, count(*)  from pokemon_trainer where pokelevel >=100 group by trainerid) as temp;

#How many pokemon only belong to one trainer and no other?
  select count(*) as numberOfPokemonswithSingleTrainer from (select pokemon_id, count(trainerID) as totaltrainers from pokemon_trainer group by pokemon_id having totaltrainers = 1) as temp;
