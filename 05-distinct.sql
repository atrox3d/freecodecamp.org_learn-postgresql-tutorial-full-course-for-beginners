\c test  -- select test db when imported

select country_of_birth 
FROM person 
ORDER BY country_of_birth;

select distinct country_of_birth 
FROM person 
ORDER BY country_of_birth;

select 
    count(distinct country_of_birth) as count_distinct_country,     -- 122 unique countries
    count(*) as count_all                                           -- 1000
FROM person;