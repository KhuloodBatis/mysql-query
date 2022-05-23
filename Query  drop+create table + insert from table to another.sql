#drop table if exsist 

DROP TABLE if EXISTS employees_dup ;
 # create table 
CREATE TABLE employees_dup (
emp_no INT(11),
birth_date DATE,
first_name VARCHAR (16),
last_name VARCHAR (14),
gender ENUM('M','F'),
hire_date DATE
); 
 # deuplicate the structure of the "employees" table
 
INSERT INTO employees_dup 
 
SELECT 
      e.*
FROM 
     employees e
LIMIT 
     20;
     
# insert a duplicate of the first row 

INSERT INTO employees_dup VALUES 
('10001', '1953-09-02','Georgi','Facello','M','1986-06-26');

SELECT 
  * 
FROM 
  employees_dup ;