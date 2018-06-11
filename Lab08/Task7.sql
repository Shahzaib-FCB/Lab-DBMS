USE DataBaseLab;

SELECT fname FROM Faculty, Class
WHERE Faculty.fid = Class.fid AND cname = "Database Systems"

UNION

SELECT fname FROM Faculty, Class
WHERE Faculty.fid = Class.fid AND cname <> "Database Systems";