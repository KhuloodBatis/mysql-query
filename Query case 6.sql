/** Extract the employee number, first name, and last name of the first 100 employees, 
and add a fourth column, called “current_employee” saying 
“Is still employed” if the employee is still working in the company, 
or “Not an employee anymore” if they aren’t.
Hint: You’ll need to use data from both the 
‘employees’ and the ‘dept_emp’ table to solve this exercise.**/

SELECT 
  e.emp_no ,
  e.first_name ,
  e.last_name, 
   case 
      when MAX(m.to_date) > SYSDATE() then 'IS still employees'
      ELSE 'not employee any more '
      END  AS current_employee
   FROM 
      employees e 
       JOIN 
      dept_manager m ON e.emp_no = m.emp_no
   GROUP BY 
       m.emp_no
   LIMIT 100;
   
   