\c test  -- select test db when imported

SELECT *
FROM person
WHERE
    date_of_birth BETWEEN DATE '2024-09-01' AND DATE '2024-09-15'
;

SELECT *
FROM person
WHERE
    country_of_birth BETWEEN 'France' AND 'Italy'                   -- lexycographical
;

SELECT *
FROM person
WHERE
    country_of_birth BETWEEN 'Italy' AND 'France'                   -- lexycographical: no records
;
