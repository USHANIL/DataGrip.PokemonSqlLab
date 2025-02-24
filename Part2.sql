#What are all the types of pokemon that a pokemon can have?
SELECT DISTINCT name FROM types;

#What is the name of the pokemon with id 45?
SELECT name FROM pokemons WHERE id = 45;

#How many pokemon are there?
SELECT count(*) as Total FROM pokemons;

#How many types are there?
SELECT count(*) as NumberofTypes FROM types;

#How many pokemon have a secondary type?
SELECT count(*) as NumberOfPokemonwithSecType FROM pokemons WHERE secondary_type  IS NOT NULL;
