# Write your MySQL query statement below
select p.project_id, round(sum(experience_years)/count(p.employee_id),2) average_years
from Project p
inner join Employee e on e.employee_id = p.employee_id
group by p.project_id;
