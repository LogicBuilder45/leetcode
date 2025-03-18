# Write your MySQL query statement below

with cte as (select player_id, min(event_date) event_date from Activity group by player_id)

select round(count(distinct a.player_id) / (select count(distinct player_id) from Activity) ,2) as fraction
from cte a
join Activity b on a.player_id = b.player_id and b.event_date = date_add(a.event_date, interval 1 day)
;

