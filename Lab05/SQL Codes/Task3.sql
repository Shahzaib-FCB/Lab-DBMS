USE DataBase1;

SELECT sname, MAX(age) FROM Student
WHERE age = (SELECT MAX(age) FROM Student)
	GROUP BY age
	HAVING age;