# Write your MySQL query statement below

select distinct num as ConsecutiveNums from (
select l.num
,lag(l.num,1) over(order by id) prev_num
,lead(l.num,1) over(order by id) next_num
from Logs l
) A
where num = prev_num and num= next_num
;