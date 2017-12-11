USE DataBase1;

SELECT major, COUNT(sname) FROM Student
	GROUP BY major
	HAVING COUNT(sname);