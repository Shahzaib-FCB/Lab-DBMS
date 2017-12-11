USE DataBase1;

SELECT fname FROM Student, Faculty, Class, Enrolled
WHERE sname = 'Christopher Garcia' 
	AND Student.snum = Enrolled.snum
    AND Class.cname = Enrolled.cname
    AND Faculty.fid = Class.fid