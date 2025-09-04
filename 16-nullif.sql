\c test

SELECT 10 / 0;                          -- ERROR:  division by zero

SELECT NULLIF(10, 10);                  -- null if params are equal else the first

SELECT NULLIF(10, 11);                  -- 10

SELECT 10 / null;                       -- null

SELECT 10 / NULLIF(2, 9);               -- 5

SELECT 10 / NULLIF(0, 0);               -- null

SELECT COALESCE(10 / NULLIF(0, 0), 0);   -- 0

