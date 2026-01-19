-- Samantha interviews many candidates from different colleges using coding challenges and contests. 
-- Write a query to print the contest_id, hacker_id, name, and the sums of total_submissions, total_accepted_submissions,
-- total_views, and total_unique_views for each contest sorted by contest_id. Exclude the contest from the result if all four sums are .

-- Note: A specific contest can be used to screen candidates at more than one college, but each college only holds  screening contest.

SELECT
    c.contest_id,
    c.hacker_id,
    c.name,
    SUM(COALESCE(ss.total_submissions, 0))           AS total_submissions,
    SUM(COALESCE(ss.total_accepted_submissions, 0))  AS total_accepted_submissions,
    SUM(COALESCE(vs.total_views, 0))                 AS total_views,
    SUM(COALESCE(vs.total_unique_views, 0))          AS total_unique_views
FROM Contests c
JOIN Colleges col
  ON col.contest_id = c.contest_id
JOIN Challenges ch
  ON ch.college_id = col.college_id
LEFT JOIN (
    SELECT
        challenge_id,
        SUM(total_submissions)          AS total_submissions,
        SUM(total_accepted_submissions) AS total_accepted_submissions
    FROM Submission_Stats
    GROUP BY challenge_id
) ss
  ON ss.challenge_id = ch.challenge_id
LEFT JOIN (
    SELECT
        challenge_id,
        SUM(total_views)        AS total_views,
        SUM(total_unique_views) AS total_unique_views
    FROM View_Stats
    GROUP BY challenge_id
) vs
  ON vs.challenge_id = ch.challenge_id
GROUP BY
    c.contest_id, c.hacker_id, c.name
HAVING
    SUM(COALESCE(ss.total_submissions, 0)) > 0
 OR SUM(COALESCE(ss.total_accepted_submissions, 0)) > 0
 OR SUM(COALESCE(vs.total_views, 0)) > 0
 OR SUM(COALESCE(vs.total_unique_views, 0)) > 0
ORDER BY
    c.contest_id;
