USE DataBase1;

SELECT DISTINCT sname FROM Student
WHERE EXISTS 
(
	SELECT DISTINCT fname FROM Faculty, Class, Enrolled
    WHERE Enrolled.cname = Class.cname
		AND Student.snum = Enrolled.snum
        AND Class.fid = Faculty.fid
        AND fname = 'Ivana Teach'
        AND Student.level = 'JR'
);