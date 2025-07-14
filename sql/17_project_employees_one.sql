SELECT 
    p.project_id,
    ROUND(AVG(e.experience_years)::numeric, 2) AS average_years
FROM 
    project_17 p
JOIN 
    employee_17 e ON p.employee_id = e.employee_id
GROUP BY 
    p.project_id;
