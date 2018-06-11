
# Lab 07 : Complex Queries in SQL

## Files Required
* ProductionDDL.sql
* laptop.rtf
* pc.rtf
* printer.rtf
* product.rtf

## Lab Tasks
1. Produce the result in Natural Language (i.e., English) of the following queries.
	1. ``select avg(price) from pc; ``
		1507.3333
	2. ``select sum(price), ramsize from pc group by ramsize; ``
		4295 | 64
		11294 | 128
		4618 | 256
	3. ``select model, hdsize from pc where hdsize in (select max(hdsize) from pc);``
		1007 | 80
		1009 | 80
	4. ``select ramsize, min(price) from laptop group by ramsize;``
		32 | 999
		64 | 1148
		96 | 2584
		128 | 3099
		256 | 2599
	5. Execute this
		```sql
		select maker, model from product where model
			in (select model from pc where pspeed
				in (select max(pspeed) from pc where ramsize
					in (select min(ramsize) from pc)));
		```
		A) 1003
		B) 1004
2. Write SQL queries for the following statements that produce the result given below each
query.
	1. Find of expensive Loptop.
		Result: 3099
	2. Select model and hard disk size of those PCs that have maximum hard disk.
		1007 | 80
		1009 | 80
	3. Find the total cost of all PCs in each Ramsize;
		4295 &nbsp;&nbsp;| 64
		11294 | 128
		2499 &nbsp;&nbsp;| 256
	4. Produce the list includes the model and price of printers sorted on price.
		3005 | 200
		3001 | 231
		3002 | 267
		3007 | 350
		3003 | 390
		3004 | 439
		3006 | 1999
	5. Find those manufacturers (makers) of PCs with speeds of at least 1000
		A) 1002
		B) 1005
		B) 1006
		C) 1007
		D) 1009
		D) 1011
	6. Print model, speed, and price of those PCs whose prices are same.
		1012 | 350 &nbsp; | 64 &nbsp;&nbsp;| 799
		1013 | 733 &nbsp; | 256 | 2499
		1008 | 700 &nbsp;&nbsp;| 64 &nbsp;&nbsp;| 999
		1004 | 866 &nbsp;&nbsp;| 64 &nbsp;&nbsp;| 999
		1001 | 700 &nbsp;&nbsp;| 64 &nbsp;&nbsp;| 799
		1002 | 1500 | 128 | 2499
	7. Find those manufacturers (makers) that sell laptops, but not PC’s.
		NULL Result – No such maker