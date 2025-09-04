\c test

SELECT *
FROM person
WHERE
    -- email LIKE '%.com'
    -- email NOT LIKE '%.com'
    email LIKE '%@___.com'
;

SELECT *
FROM person
WHERE
    -- country_of_birth LIKE 'p%'
    country_of_birth ILIKE 'P%'
;
