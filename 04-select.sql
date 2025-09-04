\c test

SELECT * 
FROM person
ORDER BY country_of_birth 
-- ASC # default
;

SELECT * 
FROM person
ORDER BY country_of_birth DESC;

SELECT * 
FROM person
ORDER BY date_of_birth DESC;

SELECT * 
FROM person
ORDER BY id DESC;

SELECT * 
FROM person
ORDER BY email DESC;    -- null emails come first in DESC

SELECT country_of_birth, email
FROM person
ORDER BY country_of_birth, -- this is ASC
email DESC;
