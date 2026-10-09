/* Write your T-SQL query statement below */
select w2.id as Id from Weather as w1 
 join Weather as w2
on datediff(day,w1.recordDate,w2.recordDate)=1 
where  w2.temperature>w1.temperature