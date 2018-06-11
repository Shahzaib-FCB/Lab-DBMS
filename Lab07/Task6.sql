USE production;

SELECT P1.model, P1.pspeed, P1.ramsize, P1.price FROM pc AS P1, pc AS P2
WHERE P1.price = P2.price AND P1.model != P2.model;