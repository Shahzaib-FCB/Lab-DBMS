USE DataBase1;

SELECT fname FROM Faculty, Class
WHERE Faculty.fid = Class.fid
    GROUP BY room
    HAVING room = 'R128';