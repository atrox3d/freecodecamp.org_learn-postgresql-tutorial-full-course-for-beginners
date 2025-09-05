\c test

ALTER USER postgres SET TimeZone = 'Europe/Rome';       -- re-login neeeded


select NOW();

select NOW()::DATE;                             -- type cast to date only

select NOW()::TIME;                             -- type cast to date only

select NOW() - INTERVAL '1 YEAR';

-- subtract one year from now
select (NOW() - INTERVAL '1 YEAR')::DATE;       -- type cast all the expression

select (NOW() - INTERVAL '10 MONTHS')::DATE;    -- type cast all the expression

select NOW()::DATE - INTERVAL '10 MONTHS';      -- type cast NOW, the time is 00:00:00

select NOW()::TIME - INTERVAL '10 MONTHS';      -- type cast NOW, returns just the time

select (NOW() + INTERVAL '10 DAYS')::DATE;      -- type cast all the expression

select NOW() + INTERVAL '1 HOUR';
