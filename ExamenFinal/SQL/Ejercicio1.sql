--  Mostrar los jugadores con mas de 10 penalties.
select player_name, penalties
from personal_details 
inner join player_stats on personal_details.player_id = player_stats.player_id and penalties > 10 ;