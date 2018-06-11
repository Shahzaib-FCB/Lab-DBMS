USE DataBase1;

SELECT Faculty.fname FROM Faculty,(
	SELECT Class.fid, Class.room FROM Class
	WHERE Class.room = 'R128'
) AS room_fid
WHERE (Faculty.fid = room_fid.fid)