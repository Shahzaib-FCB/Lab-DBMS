USE DataBase1;

SELECT MAX(age) FROM Faculty, Student
	GROUP BY Faculty.fname
	HAVING fname = 'Ivana Teach'
		AND MAX(age)