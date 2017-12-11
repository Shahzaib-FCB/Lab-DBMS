USE DataBaseLab;

SELECT cname, meets_at FROM Class
LEFT OUTER JOIN Faculty ON Class.fid = Faculty.fid 
	AND Faculty.fname = 'Richard Jackson';