/** Extract the information about all department managers who were hired 
between the 1st of January 1990 and the 1st of January 1995.**/
 # my sulotion  is wrong becuse exchange outer and innir 
/**SELECT 
    * 
FROM 
   employees e 
WHERE 
   e.emp_no 
GROUP BY 
   e.emp_no
HAVING  
   e.hire_date <'1990-01-01' AND e.hire_date >'1995-01-01' IN (
   SELECT 
       m.emp_no
   FROM 
	   dept_manager m  
   );**/
# course solution
SELECT

 *
FROM

 dept_manager
WHERE

 emp_no IN (
SELECT

 emp_no
FROM

 employees
WHERE

 hire_date BETWEEN '1990-01-01' AND '1995-01-01');