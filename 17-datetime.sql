\c test

ALTER USER postgres SET TimeZone = 'Europe/Rome';       -- re-login neeeded


SELECT NOW();

SELECT NOW()::DATE;                             -- type cast to date only

SELECT NOW()::TIME;                             -- type cast to date only

SELECT NOW() - INTERVAL '1 YEAR';

-- subtract one year from now
SELECT (NOW() - INTERVAL '1 YEAR')::DATE;       -- type cast all the expression

SELECT (NOW() - INTERVAL '10 MONTHS')::DATE;    -- type cast all the expression

SELECT NOW()::DATE - INTERVAL '10 MONTHS';      -- type cast NOW, the time is 00:00:00

SELECT NOW()::TIME - INTERVAL '10 MONTHS';      -- type cast NOW, returns just the time

SELECT (NOW() + INTERVAL '10 DAYS')::DATE;      -- type cast all the expression

SELECT NOW() + INTERVAL '1 HOUR';

