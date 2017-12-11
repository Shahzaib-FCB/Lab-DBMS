USE DataBaseLab;

SELECT DISTINCT room FROM Class
LEFT OUTER JOIN Faculty ON faculty.fid = Class.fid;