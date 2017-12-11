USE production;

SELECT SUM(price), ramsize FROM pc
GROUP BY ramsize;