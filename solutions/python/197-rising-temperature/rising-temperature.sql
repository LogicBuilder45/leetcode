# Write your MySQL query statement below

with cte as (select id, recordDate, temperature,
lag(recordDate) over(order by recordDate) prevDate,
lag(temperature) over(order by recordDate) prevTemp
from Weather)

select id from cte where temperature > prevTemp
and datediff(recordDate,prevDate) =1;
