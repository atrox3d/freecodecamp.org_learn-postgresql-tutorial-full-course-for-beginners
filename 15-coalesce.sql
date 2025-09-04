\c test  -- select test db when imported

-- returns the first non-null parameter
SELECT COALESCE(1);

SELECT COALESCE(null, 1) as number;
SELECT COALESCE(null, null, 1) as number;
SELECT COALESCE(null, null, null, 1) as number;

SELECT COALESCE(null, null, null, 1, 10) as number;


SELECT  COALESCE(email, 'EMAIL_NOT_PROVIDED') as email
FROM    person;

SELECT  COALESCE(email, 'EMAIL_NOT_PROVIDED') as email
FROM    person
WHERE   email IS null       -- cannot use the coalesce value EMAIL_NOT_PROVIDED, must use null
;
