\c test


-- this does nothing
SELECT country_of_birth
FROM person
GROUP BY country_of_birth
;

SELECT country_of_birth, COUNT(*) as count
FROM person
GROUP BY country_of_birth
ORDER BY count DESC
;

SELECT country_of_birth, COUNT(*) as count
FROM person
GROUP BY country_of_birth
-- HAVING count > 10    # wrong, cannot refer to aggregated field name
-- WHERE count > 10     # wrong, cannot filter aggregated fields
HAVING COUNT(*) > 10    -- correct, must repeat the aggregation expression
ORDER BY count DESC
;


SELECT country_of_birth, COUNT(*) as count
FROM person
GROUP BY country_of_birth
-- HAVING country_of_birth = 'Poland'           -- filter the aggregated rows, not the original ones
HAVING MAX(date_of_birth) > DATE '2000-01-01'   -- works on the groups
ORDER BY count DESC
;


