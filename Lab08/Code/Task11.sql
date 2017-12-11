USE DataBaseLab;

SELECT DISTINCT fname FROM Faculty, Class
WHERE Faculty.fid = Class.fid
	AND Class.cname <> "Marketing Research";