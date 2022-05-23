USE employees;

DROP PROCEDURE if EXISTS select_employees ;

delimiter $$

CREATE PROCEDURE  select_employees()
 BEGIN 
     SELECT 
         * 
      FROM 
        employees 
      LIMIT 
         1000;
 END $$
 delimiter ;
    
CALL employees.select_employees();
CALL select_employees();