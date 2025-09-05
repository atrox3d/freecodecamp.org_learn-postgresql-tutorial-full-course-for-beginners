\c test

-- to tranform dates of birth in the past subctracting a random number of years and make people older

-- UPDATE person
-- SET date_of_birth = date_of_birth - (ROUND((RANDOM() * 10)::NUMERIC, 0) * INTERVAL '1 year');



SELECT  *,
        AGE(                                    -- compute age
            NOW(),                              -- from now 
            date_of_birth                       -- to date of birth
        ) AS age
FROM    person;

SELECT  *,
        EXTRACT(
            YEAR                                -- get the year
            FROM AGE(NOW(), date_of_birth)      -- from the computed AGE
        ) AS age
FROM    person;


