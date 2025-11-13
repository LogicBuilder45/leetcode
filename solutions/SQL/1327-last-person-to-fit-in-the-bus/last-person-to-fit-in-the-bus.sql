/* Write your T-SQL query statement below */

select person_name from (
select person_name, row_number() over(order by turn desc) rnk from (
select person_id,person_name, weight,turn,
sum(weight) over(order by turn) [Total Weight] 
from Queue
) a 
where [Total Weight]  <=1000
) a where rnk=1
;