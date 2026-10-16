# Write your MySQL query statement below
with cte_table as (select id,
num,
lag(num,1) over(order by id) as prev1,
lag(num,2) over(order by id) as prev2
from logs
)
select distinct num as ConsecutiveNums  from cte_table 
where num=prev1 and num=prev2
