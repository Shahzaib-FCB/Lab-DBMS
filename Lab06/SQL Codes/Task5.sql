USE DataBase1;

SELECT max(age) FROM Student
WHERE EXISTS
(
	SELECT fname FROM Faculty, Class, Enrolled
    WHERE Faculty.fname = 'Ivana Teach'
		AND Faculty.fid = Class.fid
        AND Class.cname = Enrolled.cname
        AND Student.snum = Enrolled.snum
)