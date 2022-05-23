/**Join the 'employees' and the 'dept_manager' tables to return a subset 
of all the employees whose last name is Markovitch. 
See if the output contains a manager with that name.  
Hint: Create an output containing information corresponding 
to the following fields: ‘emp_no’, ‘first_name’, ‘last_name’, 
‘dept_no’, ‘from_date’. Order by 'dept_no' descending, 
and then by 'emp_no'.**/

SELECT e.emp_no ,e.first_name ,e.last_name,m.dept_no,m.from_date,m.emp_no
FROM 
 employees e 
  left JOIN 
 dept_manager m ON m.emp_no = e.emp_no
WHERE e.last_name = 'Markovitch'
ORDER BY m.dept_no DESC , e.emp_no;