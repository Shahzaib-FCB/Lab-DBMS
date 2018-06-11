USE DataBase1;

SELECT snum, sname FROM Student
WHERE EXISTS
(
	SELECT fname FROM Faculty, Enrolled, Class
    WHERE Student.snum = Enrolled.snum
		AND Enrolled.cname = Class.cname
        AND Class.fid = Faculty.fid
        AND (
			Faculty.fname = 'Ivana Teach'
				OR Faculty.fname = 'Linda Davis'
			)
)