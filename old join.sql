SELECT 
   d.dept_no ,m.emp_no ,d.dept_name 
FROM 
   departments_dup d ,
   dept_manager_dup m 
WHERE 
    m.dept_no = d.dept_no
ORDER BY dept_no ;