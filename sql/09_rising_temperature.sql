-- Write your PostgreSQL query statement below
select id from
(select id, recordDate, temperature, 
LAG(temperature) OVER(ORDER BY recordDate) as prev_temp,
LAG(recordDate) OVER(ORDER BY recordDate) as prev_date
from Weather) AS Sub 
where ( temperature > prev_temp ) AND (recordDate - prev_date = 1)
