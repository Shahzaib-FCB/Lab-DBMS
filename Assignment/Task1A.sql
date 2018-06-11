USE DataBaseLab;

DROP VIEW CSStudents;

CREATE VIEW CSStudents AS 
	SELECT * FROM Student
	WHERE major = "Computer Science";
    
/* TASK A */
SELECT MAX(age) AS OldestStudent FROM CSStudents;