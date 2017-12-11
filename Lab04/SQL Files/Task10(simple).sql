USE DataBase1;

SELECT Student.sname FROM Student
WHERE Student.snum IN
(
	SELECT Enrolled.snum
	FROM Class, Enrolled, Faculty
	WHERE Enrolled.cname = Class.cname AND Class.fid = Faculty.fid
	AND Faculty.fname = 'Ivana Teach'
)

UNION

SELECT Student.sname FROM Student
WHERE Student.snum IN
(
	SELECT Enrolled.snum
	FROM Class, Enrolled, Faculty
	WHERE Enrolled.cname = Class.cname AND Class.fid = Faculty.fid
	AND Faculty.fname = 'Linda Davis'
)