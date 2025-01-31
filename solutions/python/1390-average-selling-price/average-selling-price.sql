# Write your MySQL query statement below


select p.product_id, ifnull(round(sum(p.price * s.units)/sum(s.units),2),0) average_price 
from Prices p
left join UnitsSold s on p.product_id = s.product_id 
and  s.purchase_date BETWEEN p.Start_date and p.end_date
group by p.product_id
;
