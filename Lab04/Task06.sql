USE DataBase1;

SELECT Student.sname, Student.age FROM Student,(
	SELECT Enrolled.snum FROM Enrolled, (
		SELECT Class.cname FROM Class, (
			SELECT Faculty.fid, Faculty.fname FROM Faculty
			WHERE Faculty.fname = 'John Williams'
		) AS JW
		WHERE (JW.fid = Class.fid)
	) AS JW_Teaches
	WHERE (JW_Teaches.cname = Enrolled.cname)
) AS StudentName
WHERE (Student.snum = StudentName.snum);