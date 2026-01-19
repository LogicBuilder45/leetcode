/*
Table: Stadium

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| visit_date    | date    |
| people        | int     |
+---------------+---------+
visit_date is the column with unique values for this table.
Each row of this table contains the visit date and visit id to the stadium with the number of people during the visit.
As the id increases, the date increases as well.
 

Write a solution to display the records with three or more rows with consecutive id's, and the number of people is greater than or equal to 100 for each.

Return the result table ordered by visit_date in ascending order.

The result format is in the following example.
*/
WITH x AS (
  SELECT
    id,
    visit_date,
    people,
    id - ROW_NUMBER() OVER (ORDER BY id) AS grp
  FROM Stadium
  WHERE people >= 100
),
g AS (
  SELECT grp
  FROM x
  GROUP BY grp
  HAVING COUNT(*) >= 3
)
SELECT
  x.id,
  x.visit_date,
  x.people
FROM x
JOIN g
  ON x.grp = g.grp
ORDER BY x.visit_date;
