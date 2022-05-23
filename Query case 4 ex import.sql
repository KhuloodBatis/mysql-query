SELECT 
  m.emp_no ,
  e.first_name,
  e.last_name ,
  MAX(s.salary) - MIN(s.salary) AS salary_difference,
  case 
     when  MAX(s.salary) - MIN(s.salary)  > 30000 then 'Salary was raised by more than $30,000'
     when  MAX(s.salary) - MIN(s.salary)  BETWEEN 20000 AND 30000 then 
                                                         'Salary was raised by more than $20,000 but less in $30,000'  
													ELSE 'Salary was raised less than $20,000'
	END AS salary_increase 
FROM 
   dept_manager m
	JOIN 
	employees e ON e.emp_no = m.emp_no
	JOIN 
	salaries s ON s.emp_no = m.emp_no
GROUP BY s.emp_no;											      