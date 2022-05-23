#cross join 

/**SELECT 
   m.* , d.* 
FROM 
   dept_manager m 
      CROSS JOIN 
   departments  d 
ORDER BY m.emp_no , d.dept_no ;**/

/**SELECT 
   m.* , d.* 
FROM 
   dept_manager m 
      ,
   departments  d 
ORDER BY m.emp_no , d.dept_no**/

SELECT 
   m.* , d.* 
FROM 
   dept_manager m 
     CROSS  JOIN 
   departments  d
	    JOIN 
   employees e ON m.emp_no = e.emp_no  
WHERE 
	 d.dept_no <> m.dept_no 
ORDER BY m.emp_no , d.dept_no