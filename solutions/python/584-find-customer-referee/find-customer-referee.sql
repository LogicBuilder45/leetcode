/* Write your T-SQL query statement below */
select name from Customer where isnull(referee_id,-1) != 2;