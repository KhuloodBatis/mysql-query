# join employees and salary greter than  145000

SELECT 
   e.first_name , e.last_name , s.salary 
FROM 
   employees e 
   JOIN 
   salaries s ON e.emp_no = s.emp_no 
WHERE 
   s.salary >145000; 