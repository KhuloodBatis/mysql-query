/** Select all managers’ first and last name, hire date, job title, 
start date,
 and department name.**/
 
/**SELECT 
    m.dept_no, 
    e.first_name ,
    e.last_name , 
    e.hire_date ,
    t.title,
    t.from_date ,
    d.dept_name 
FROM 
    employees e 
    JOIN 
    dept_manager m ON e.emp_no = m.emp_no
    JOIN 
    titles t ON t.emp_no = e.emp_no 
    JOIN 
   departments d ON d.dept_no = m.dept_no
WHERE 
     t.title = 'manager'
order by 
     e.emp_no;**/
     
SELECT

    e.first_name,

    e.last_name,

    e.hire_date,

    t.title,

    m.from_date,

    d.dept_name

FROM

    employees e

        JOIN

    dept_manager m ON e.emp_no = m.emp_no

        JOIN

    departments d ON m.dept_no = d.dept_no

        JOIN

    titles t ON e.emp_no = t.emp_no

            AND m.from_date = t.from_date

ORDER BY e.emp_no;

 # to ensure the manager 
 
 SELECT * 
FROM 
dept_manager ,titles 
WHERE 
 title = 'manager';