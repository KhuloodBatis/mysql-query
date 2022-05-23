SELECT 
   A.* 
FROM 
(SELECT 
  e.emp_no AS employees_ID ,
  MIN(d.dept_no ) AS department_code ,
  (  SELECT 
         emp_no 
     FROM 
         dept_manager 
     WHERE 
         emp_no = 110022) AS manager_ID
FROM 
   employees e 
JOIN 
    dept_emp d ON e.emp_no = d.emp_no
WHERE 
     e.emp_no <= 10020
GROUP BY 
     e.emp_no)AS A
UNION  
SELECT 
   B.* 
FROM 
(SELECT 
  e.emp_no AS employees_ID ,
  MIN(d.dept_no ) AS department_code ,
  (  SELECT 
         emp_no 
     FROM 
         dept_manager 
     WHERE 
         emp_no = 110039) AS manager_ID
FROM 
   employees e 
JOIN 
    dept_emp d ON e.emp_no = d.emp_no
WHERE 
     e.emp_no > 10020
GROUP BY 
     e.emp_no
LIMIT 20 )AS B;