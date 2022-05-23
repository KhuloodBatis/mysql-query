/**
(If you don’t currently have the ‘departments_dup’ table set up, 
create it. Let it contain two columns: dept_no and dept_name.
 Let the data type of dept_no be CHAR of 4, and the data type of dept_name be 
 VARCHAR of 40. Both columns are allowed to have null values. 
Finally, insert the information contained in ‘departments’ into ‘departments_dup’.

)
**/

USE employees ;

ALTER TABLE departments_dup

CHANGE COLUMN dept_no dept_no CHAR(4) NULL;

ALTER TABLE departments_dup

CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

DROP TABLE IF EXISTS departments_dup;

CREATE TABLE departments_dup

(
    dept_no CHAR(4) NULL,

    dept_name VARCHAR(40) NULL

);

/** Then, insert a record whose department name is “Public Relations”. **/
INSERT INTO departments_dup

(dept_no,dept_name)

SELECT
     *
FROM
    departments;

INSERT INTO departments_dup (dept_name)

VALUES ('Public Relations');