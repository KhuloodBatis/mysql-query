/**Compare the number of male managers to the number of 
female managers from different departments for each year, 
starting from 1990.**/

SELECT 
    d.dept_name ,
    ee.gender ,
    m.emp_no,
    m.from_date,
    m.to_date,
    e.calender_year,
    case 
        when YEAR(m.to_date) >= e.calender_year AND YEAR(m.to_date)<= e.calender_year then 1 
        ELSE 0 
    END AS active
FROM 
   (SELECT 
      YEAR(hire_date) AS calender_year
   FROM 
    t_employees
	 GROUP BY calender_year ) e
	 CROSS JOIN 
	 t_dept_manager m 
	 JOIN
	  t_departments d ON m.dept_no = d.dept_no
	 JOIN 
	  t_employees ee ON ee.emp_no= m.emp_no
ORDER BY m.emp_no , calender_year;