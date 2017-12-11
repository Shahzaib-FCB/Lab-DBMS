USE DataBaseLab;

/*Drop this View Everytime so there is no "Already Exists ERROR"*/
DROP VIEW CSStudents;

CREATE VIEW CSStudents AS 
	SELECT * FROM Student
	WHERE major = "Computer Science";
    
/* TASK C */

SELECT sname, major, age
FROM CSStudents, Enrolled, Faculty, CLass
WHERE level = "JR" 
	AND CSStudents.snum = Enrolled.snum
    AND Enrolled.cname = Class.cname
	AND Class.fid = Faculty.fid
    AND Faculty.fname = "Ivana Teach";