USE production;

SELECT maker FROM product
WHERE type = 'laptop' AND maker NOT IN
(
	SELECT maker FROM product
    WHERE type = 'pc'
);