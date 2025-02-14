# Write your MySQL query statement below

with cte as (
select visited_on, sum(amount) amount 
from Customer
group by visited_on
)

select visited_on,
sum(amount) over(order by visited_on rows between 6 preceding and current row ) amount,
round(avg(amount) over(order by visited_on rows between 6 preceding and current row),2) average_amount
from cte
order by visited_on
limit 1000 offset 6;

