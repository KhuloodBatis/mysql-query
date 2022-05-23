SELECT 
  * 
FROM 
(SELECT 
   e.emp_no ,
   e.first_name ,
   e.last_name,
   NULL AS dept_no,
   NULL AS from_date 
FROM 
   employees_dup e 
WHERE
   e.emp_no = 10001 
UNION SELECT     /**rethr union All **/
    NULL AS emp_no ,
    NULL AS first_name ,
    NULL AS last_name,
    m.dept_no,
    m.from_date 
FROM 
    dept_manager m) AS a 
ORDER BY -a.emp_no DESC; 
    
    
/**Go forward to the solution and execute the query. 
What do you think is the meaning of the minus sign before subset 
A in the last row (ORDER BY -a.emp_no DESC)? **/

# hint you can make all unoin query in select statment and alis it any name 