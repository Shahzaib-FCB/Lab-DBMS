USE DataBase1;

SELECT fname, deptid FROM Faculty
WHERE EXISTS
(
	SELECT cname FROM Class
    WHERE Faculty.fid = Class.fid
    ORDER BY deptid DESC LIMIT 1
)