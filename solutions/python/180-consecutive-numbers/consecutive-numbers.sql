# Write your MySQL query statement below
with cte as (
    select  num from Logs group by num having count(*)>=3
)

select distinct num as ConsecutiveNums from (
select num
,lag(num,1) over(order by id) prev_num
,lead(num,1) over(order by id) next_num
from Logs
) A
where num = prev_num and num= next_num
;