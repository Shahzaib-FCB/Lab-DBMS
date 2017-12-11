USE DataBaseLab;

SELECT Faculty.fname FROM Faculty
LEFT OUTER JOIN Class ON Faculty.fid = Class.fid 
	AND Class.cname = 'Database Systems';