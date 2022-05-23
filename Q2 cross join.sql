/** Use a CROSS JOIN to return a list with all 
possible combinations between managers from the dept_manager 
table and department number 9.**/

SELECT 
    d.* , m.*
FROM 
    departments  d 
        CROSS JOIN 
    dept_manager m 
WHERE 
    d.dept_no = 'd009'
ORDER BY 
     d.dept_no ;
