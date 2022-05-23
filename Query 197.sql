SELECT 
  d.dept_name , AVG(salary) AS avrage_salary  
FROM 
   departments d
   JOIN 
	dept_manager m ON d.dept_no = m.dept_no
	JOIN
	salaries s ON m.emp_no = s.emp_no
GROUP BY d.dept_name 
HAVING avrage_salary >60000
ORDER BY avrage_salary DESC;