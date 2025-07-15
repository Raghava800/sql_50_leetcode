SELECT 
    r.contest_id, 
    ROUND(
        (COUNT(u.user_id) * 1.0 / (SELECT COUNT(user_id) FROM Users_18)) * 100,
        2
    ) AS percentage FROM Users_18 u JOIN Register_18 r 

ON u.user_id = r.user_id

GROUP BY 
    r.contest_id
ORDER BY 
    percentage DESC, 
    r.contest_id ASC;