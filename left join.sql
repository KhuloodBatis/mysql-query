#left join 

SELECT 
    d.dept_no , m.emp_no ,d.dept_name
FROM 
    dept_manager_dup m
    LEFT outer JOIN 
	departments_dup d  ON m.dept_no = d.dept_no
WHERE 
     dept_name IS NULL 
ORDER BY d.dept_no ;