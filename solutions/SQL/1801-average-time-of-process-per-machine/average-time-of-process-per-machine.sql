# Write your MySQL query statement below


with cte as (
select machine_id, process_id,
sum(case when activity_type='start' then timestamp else 0 end) as startTime,
sum(case when activity_type='end' then timestamp else 0 end) as endTime
from Activity
group by machine_id, process_id) 

select machine_id, round(avg(endTime - startTime),3) processing_time from cte
group by machine_id;