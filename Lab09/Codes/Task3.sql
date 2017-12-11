USE DataBaseLab;

SELECT DISTINCT cname FROM Class
LEFT OUTER JOIN Faculty ON Class.fid = Faculty.fid;