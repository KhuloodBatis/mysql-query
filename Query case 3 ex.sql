SELECT 
   emp_no ,
   first_name ,
   last_name , 
   if( gender = 'M' , 'Male','Female') AS gender 
FROM 
   employees ; 