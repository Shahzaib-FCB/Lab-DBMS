USE DataBase1;

SELECT AVG(age) FROM Student
WHERE age = (SELECT MAX(age) FROM Student)	
	GROUP BY age
	HAVING MAX(age);