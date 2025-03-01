# Write your MySQL query statement below

select request_at as Day
, round(avg(case when status like 'cancelled%' then 1 else 0 end),2)   "Cancellation Rate"
from Trips t
where client_id not in (select users_id from Users where banned='Yes')
and driver_id not in (select users_id from Users where banned='Yes')
and request_at between '2013-10-01' and '2013-10-03'
group by request_at
;