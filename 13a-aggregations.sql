\c test  -- select test db when imported


SELECT make, model, MIN(price), MAX(price)
FROM car
GROUP BY make, model
ORDER BY make, model
;

SELECT make, MIN(price), MAX(price), AVG(price), MAX(price) - MIN(price) as range
FROM car
GROUP BY make
ORDER BY MAX(price) - MIN(price) DESC
;

