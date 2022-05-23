/**SELECT 
    *
FROM 
   dept_manager;**/
	
# select the first name  and last name from  the employees table for the same 
# employees numbers that can be found in the department manager table 

SELECT 
   e.first_name , e.last_name 
FROM 
   employees e 
WHERE 
   e.emp_no IN (
	SELECT 
	   m.emp_no 
	FROM 
	   dept_manager m 	
	);