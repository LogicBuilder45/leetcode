/* Write your T-SQL query statement below */

select user_id, name, mail
from Users
where mail like '[a-zA-Z]%@leetcode.com'
AND mail NOT LIKE '%[^a-zA-Z0-9_.-]%@leetcode.com';