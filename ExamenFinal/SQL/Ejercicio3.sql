-- Obtener el promedio de short pass de los jugadores mayores a 25 años

select avg(short_pass) as PaseCortoPromedio
from player_stats  
inner join personal_details on personal_details.player_id = player_stats.player_id 
where age > 25 