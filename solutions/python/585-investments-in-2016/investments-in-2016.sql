# Write your MySQL query statement below

with cte1 as (
select lat,lon  from Insurance
group by lat,lon
having count(*) =1
)
,cte2 as (
select tiv_2015 from Insurance
group by tiv_2015
having count(*)>1    
)

select round(sum(tiv_2016),2) tiv_2016
from Insurance A
inner join cte1 on cte1.lat = A.lat and cte1.lon = A.lon
inner join cte2 on cte2.tiv_2015 = A.tiv_2015
;