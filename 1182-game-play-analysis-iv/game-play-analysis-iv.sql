/* Write your T-SQL query statement below 
select cast(
            (cast(count(a2.player_id)as decimal)
            /
            (
                select  cast(
                          count(distinct player_id)
                           as decimal
                         ) 
            from Activity
            )
            ) as decimal(10,2)) as fraction 
from Activity as a1
inner join Activity as a2
on datediff(day,a1.event_date,a2.event_date)=1
and a1.player_id=a2.player_id
*/
WITH FirstLogin AS (
    SELECT
        player_id,
        MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
)
SELECT
    CAST(
        CAST(COUNT(DISTINCT a.player_id) AS DECIMAL(10, 2))
        / (SELECT COUNT(DISTINCT player_id) FROM Activity)
        AS DECIMAL(10, 2)
    ) AS fraction
FROM FirstLogin f
INNER JOIN Activity a
    ON a.player_id = f.player_id
    AND a.event_date = DATEADD(day, 1, f.first_date);
