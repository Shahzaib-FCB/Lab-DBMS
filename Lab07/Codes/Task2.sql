USE production;

SELECT model, hdsize FROM pc
WHERE hdsize IN 
(
	SELECT MAX(hdsize) FROM pc
);