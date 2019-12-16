
select p.name as 'Pokemon Name' , t.trainername as 'Trainer Name', pt.pokelevel as Level,
	t1.name as 'Primary Type' ,
	t2.name as 'Secondary Type'
from pokemon_trainer pt
inner join pokemons p on pt.pokemon_id = p.id
inner join trainers t on pt.trainerID = t.trainerID
join types as t1 on p.primary_type = t1.id
join types as t2 on p.secondary_type = t2.id
ORDER BY pt.pokelevel desc, pt.speed desc, pt.maxhp desc; 

