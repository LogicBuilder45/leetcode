# Write your MySQL query statement below

with cte as (
select requester_id id, accept_date from RequestAccepted
union all
select accepter_id id, accept_date from RequestAccepted
)
select id, count(*) num
from cte
where accept_date is not null
group by id
order by num desc
limit 1;
