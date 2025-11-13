# Write your MySQL query statement below

with cte as (select student_id, subject, min(exam_date) mindate, max(exam_date) maxdate from Scores group by student_id, subject) 

select cte.student_id, cte.subject, smin.score first_score, smax.score latest_score
from cte
left join Scores smin  on cte.student_id = smin.student_id and cte.subject = smin.subject and cte.mindate = smin.exam_date
left join Scores smax on cte.student_id = smax.student_id and cte.subject = smax.subject and cte.maxdate = smax.exam_date
where smin.score < smax.score
order by cte.student_id, cte.subject
;


