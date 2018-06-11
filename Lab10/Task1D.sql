USE DataBaseLab;

/*Drop this View Everytime so there is no "Already Exists ERROR"*/
DROP VIEW CSStudents;

CREATE VIEW CSStudents AS 
	SELECT * FROM Student
	WHERE major = "Computer Science";
    
/* TASK C */

SELECT DISTINCT fname, deptid, Enrolled.cname, room
FROM CSStudents, Enrolled, Faculty, Class
WHERE Enrolled.snum = CSStudents.snum
	AND Enrolled.cname = Class.cname
    AND Class.fid = Faculty.fid;