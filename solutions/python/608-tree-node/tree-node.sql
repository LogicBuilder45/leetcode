# Write your MySQL query statement below

select id,
case when p_id is null then 'Root'
when id not in (select ifnull(p_id,0) from Tree) then 'Leaf'
else 'Inner' end as type
from Tree;
