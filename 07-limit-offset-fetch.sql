\c test  -- select test db when imported

SELECT * FROM person LIMIT 10;
SELECT * FROM person OFFSET 5 LIMIT 10;

SELECT * FROM person 
OFFSET 5 
FETCH FIRST 10 ROWS ONLY; -- same as LIMIT
