# Write your MySQL query statement below
select a.employee_id, a.name, count(b.reports_to) reports_count, round(avg(b.age)) average_age
from Employees a
join Employees b on a.employee_id = b.reports_to
group by a.employee_id, a.name
order by a.employee_id;

