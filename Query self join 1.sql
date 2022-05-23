/**SELECT 
   * 
FROM 
   emp_manager 
ORDER BY emp_manager.emp_no;**/

/**SELECT 
  e1.emp_no,e1.dept_no, e2.manager_no
FROM 
   emp_manager e1 
       JOIN 
   emp_manager e2  ON  e1.emp_no = e2.manager_no ;**/
 # to shw two raws 
 #way 1    
SELECT DISTINCT 
  e1.*
FROM 
   emp_manager e1 
       JOIN 
   emp_manager e2  ON  e1.emp_no = e2.manager_no;
# way 2 
SELECT DISTINCT 
  e1.*
FROM 
   emp_manager e1 
       JOIN 
   emp_manager e2  ON  e1.emp_no = e2.manager_no
WHERE 
 e2.emp_no IN (
     SELECT 
	     manager_no 
		  FROM 
		    emp_manager );