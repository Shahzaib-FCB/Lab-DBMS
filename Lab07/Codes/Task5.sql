USE production;

SELECT maker, pc.model FROM product, pc
WHERE pc.pspeed >= 1000 AND product.model = pc.model;