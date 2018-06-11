USE DataBase1;

SELECT Class.cname, Class.meets_at FROM Class, (
	SELECT Faculty.fid, Faculty.fname FROM Faculty
	WHERE Faculty.fname = 'Richard Jackson'
) AS RJ
WHERE (RJ.fid = Class.fid);