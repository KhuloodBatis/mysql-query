SELECT 
   emp_no, 
   first_name,
	last_name ,
	case 
	   when gender = 'M' then 'Male'
		ELSE 'Female'
	END AS gender 
FROM 
   employees ; 
   

