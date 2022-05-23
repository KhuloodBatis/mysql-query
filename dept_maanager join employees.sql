/** Extract a list containing information about all managers’ employee number, 
first and last name, department number, and hire date. **/

SELECT
    e.emp_no,
	 e.first_name ,
    e.last_name ,
     m.dept_no,
    e.hire_date
FROM 
    employees e
JOIN 
    dept_manager m ON m.emp_no = e.emp_no ;
   