USE DataBase1;

SELECT Student.sname FROM Student, (
	SELECT Enrolled.snum FROM Enrolled,(
		SELECT Class.fid, Class.cname FROM Class, (
			SELECT Faculty.fid, Faculty.fname FROM Faculty
			WHERE Faculty.fname = 'Ivana Teach'
		)AS Ivana
		WHERE Ivana.fid = Class.fid
	)AS Ivana_fid
	WHERE (Ivana_fid.cname = Enrolled.cname)
) AS Ivana_courses
WHERE (Student.level = 'JR' AND Ivana_courses.snum = Student.snum);