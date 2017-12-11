USE DataBase1;

SELECT distinct Student.age FROM Student, Enrolled
WHERE Student.snum = Enrolled.snum
	AND Enrolled.cname = 'Database Systems'
ORDER BY age DESC;