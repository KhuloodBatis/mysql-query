SELECT 
   year(tm.from_date) AS calender_year ,
   te.gender ,
   count(te.emp_no) AS number_of_employees
FROM 
   t_employees te
   JOIN 
   t_dept_manager tm ON te.emp_no = tm.emp_no 
GROUP BY  calender_year,te.gender
HAVING  calender_year>= 1990 ;
   