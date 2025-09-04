\c test

\echo '--- Query 1: All Males ---'
SELECT * FROM person where gender = 'Male';

\echo '--- Query 2: Males from Poland ---'
SELECT * FROM person 
WHERE 
    gender = 'Male'
AND country_of_birth = 'Poland'
;

\echo '--- Query 3: Males from Poland or China ---'
SELECT * FROM person 
WHERE 
    gender = 'Male'
AND (country_of_birth = 'Poland' OR country_of_birth = 'China')
;

\echo '--- Query 4: Males from Poland or China, ordered by country ---'
SELECT * FROM person 
WHERE 
    gender = 'Male'
AND (country_of_birth = 'Poland' OR country_of_birth = 'China')
ORDER BY country_of_birth
;
\echo '--- End of Script ---'
