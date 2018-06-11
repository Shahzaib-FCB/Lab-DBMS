USE DataBaseLab;

SELECT UPPER(fname), deptid FROM Faculty, Class
WHERE Faculty.fid = Class.fid AND Class.room = 'R128'
ORDER BY fname DESC;