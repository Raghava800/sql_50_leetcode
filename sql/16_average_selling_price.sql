-- Q 1251. Average Selling Price

select p.product_id, 

case when sum(u.units) = 0 OR SUM(u.units) IS NULL THEN 0 ELSE

ROUND(sum(u.units * p.price) *1.0/sum(u.units),2) END

AS average_price

from prices p 
LEFT JOIN unitssold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id