-- Mostrar el nombre y fuerza de los jugadores que tenga al menos una L en su nombre
select player_name, strength
from personal_details 
inner join player_stats on personal_details.player_id = player_stats.player_id 
where player_name like '%l%' ;