select v.customer_id, count(v.visit_id) from Visits v
LEFT JOIN transactions t ON v.visit_id = t.visit_id 
where transaction_id IS NULL
GROUP BY v.customer_id;