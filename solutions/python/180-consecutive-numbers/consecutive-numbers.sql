# Write your MySQL query statement below
select distinct a.num ConsecutiveNums
from Logs a
join Logs b on b.id = a.id+1 and a.num=b.num
join Logs c on c.id = b.id+1 and b.num=c.num
;