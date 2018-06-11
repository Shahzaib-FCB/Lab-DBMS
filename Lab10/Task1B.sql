USE DataBaseLab;

DROP VIEW CSStudents;

CREATE VIEW CSStudents AS 
	SELECT * FROM Student
	WHERE major = "Computer Science";
    
/* TASK B */

SELECT sname, age FROM CSStudents
WHERE age IN
(
	SELECT MAX(age) FROM CSStudents
);