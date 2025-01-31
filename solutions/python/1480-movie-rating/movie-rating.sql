# Write your MySQL query statement below

(select u.name results
from MovieRating m, Users u
where m.user_id=u.user_id
group by u.name
order by count(*) desc, u.name
limit 1)

union all

(select m2.title results
from MovieRating m,
Movies m2
where date_format(m.created_at,'%Y-%m') = '2020-02'
and m.movie_id = m2.movie_id
group by m2.title
order by avg(rating) desc, m2.title
limit 1)
;