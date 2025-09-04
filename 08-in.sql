\c test  -- select test db when imported

SELECT *
FROM person
WHERE
    country_of_birth = 'France'
OR  country_of_birth = 'Germany'
OR  country_of_birth = 'Italy'
;

SELECT *
FROM person
WHERE
    country_of_birth IN ('France', 'Germany', 'Italy')  -- same as the previous
;

-- create auxiliary table to use as IN parameter
DROP TABLE countries;
CREATE TABLE countries (
    country VARCHAR(50)
);
INSERT INTO countries 
    (country) 
VALUES 
    ('France'), ('Germany'), ('Italy')
;

SELECT *
FROM person
WHERE
    country_of_birth IN (
        SELECT * from countries         -- same as the previous
    )  
;
