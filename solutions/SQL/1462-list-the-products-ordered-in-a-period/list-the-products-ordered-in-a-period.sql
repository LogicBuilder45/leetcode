# Write your MySQL query statement below


select product_name, sum(unit) as unit
from  Products p
join Orders o on o.product_id = p.product_id
where year(o.order_date) = 2020
and month(o.order_date)= 2   
group by product_name 
having sum(unit) >=100
;

