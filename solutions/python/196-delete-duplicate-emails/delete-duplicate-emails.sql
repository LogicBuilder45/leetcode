# Write your MySQL query statement below

with cte as (
select id, email, row_number() over(partition by email order by id) rnk
from Person
)

delete p
from Person p
join cte on p.id = cte.id
where cte.rnk > 1;