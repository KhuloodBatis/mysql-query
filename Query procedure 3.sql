USE employees ;

DROP PROCEDURE if EXISTS emp_salary ;

delimiter $$
USE employees $$
CREATE PROCEDURE emp_avg_salary_out(IN p_emp_no INTEGER, OUT p_avg_salary(10,2) )
BEGIN 
SELECT 
   AVG(s.salary) 
INTO p_avg_salary
FROM 
   employees e 
      JOIN 
   salaries s ON  e.emp_no = s.emp_no 
WHERE 
   e.emp_no = s.emp_no ;
END$$ 

delimiter $$

