/** Extract a list containing information about all managers’ 
employee number, first and last name, department number, 
and hire date. Use the old type of join syntax to obtain the result.**/

SELECT 
    e.emp_no , e.first_name , e.last_name ,m.dept_no ,e.hire_date 
FROM 
    employees e , dept_manager m 
WHERE 
    e.emp_no = m.emp_no ;
 