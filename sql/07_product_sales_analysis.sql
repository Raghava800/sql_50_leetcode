-- Write your PostgreSQL query statement below
select p.product_name , s.year, s.price from product p RIGHT JOIN sales s
ON p.product_id = s.product_id