USE DataBase1;

SELECT Class.cname FROM Class,(
	SELECT Faculty.fid, Faculty.deptid FROM Faculty
	WHERE (Faculty.fname = 'John Williams' AND Faculty.deptid = 68)
)AS JW
WHERE (JW.fid = Class.fid);