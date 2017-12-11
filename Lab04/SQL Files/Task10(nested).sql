USE DataBase1;

SELECT Distinct Student.snum, Student.sname FROM Student, (
	SELECT Enrolled.snum, Enrolled.cname FROM Enrolled,(
		SELECT Class.fid, Class.cname FROM Class, (
			SELECT Faculty.fid FROM Faculty
			WHERE Faculty.fname = 'Ivana Teach' 
				OR Faculty.fname = 'Linda Davis'
		) AS Teachers
		WHERE Teachers.fid = Class.fid
	)AS Class_fid
    WHERE Class_fid.cname = Enrolled.cname
) AS Student_num
WHERE Student_num.snum = Student.snum;