# Write your MySQL query statement below
with cte as (
select * from (
select customer_id, order_date, customer_pref_delivery_date
, row_number() over(partition by customer_id order by order_date, customer_pref_delivery_date) as rnk
from Delivery
) A where rnk=1
)

select 
round((select count(*) from cte where order_date=customer_pref_delivery_date) / count(*) * 100, 2) as immediate_percentage
from cte;

