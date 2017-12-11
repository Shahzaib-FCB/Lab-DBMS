USE DataBase1;

SELECT sname, MIN(age) FROM Student
WHERE major = 'Electrical Engineering'
	GROUP BY sname
	HAVING MIN(age);