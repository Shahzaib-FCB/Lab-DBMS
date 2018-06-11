USE DataBase1;

SELECT COUNT(rooms.room) Count FROM 
(
	SELECT DISTINCT room FROM Class
) AS rooms;