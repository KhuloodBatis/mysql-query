SELECT 
   e.emp_no ,
   e.first_name ,
   e.last_name ,
   case # is wrong to put m.emp_no here the result will be wrong 
     when m.emp_no Is NOT NULL then 'Manager'
     ELSE 'Employees'
   END AS is_manager 
FROM 
   employees e 
    LEFT JOIN 
   dept_manager m  ON e.emp_no = m.emp_no 
WHERE 
   e.emp_no > 109990;