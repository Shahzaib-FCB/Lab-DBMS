USE DataBaseLab;

SELECT cname FROM Faculty, Class
WHERE Faculty.fid = Class.fid 
	AND Faculty.fname = "Barbara Wilson"
    
UNION
 
SELECT cname FROM Faculty, Class
WHERE Faculty.fid = Class.fid 
	AND Faculty.fname <> "Barbara Wilson";