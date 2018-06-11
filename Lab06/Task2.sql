USE DataBase1;

SELECT DISTINCT Faculty.fname FROM Faculty
WHERE EXISTS
(
	SELECT cname FROM Class
    WHERE Class.fid = Faculty.fid
		AND room = 'R128'
)
AND NOT EXISTS
(
	SELECT cname FROM Class
    WHERE Class.fid = Faculty.fid
		AND room <> 'R128'
)