\c test  -- select test db when imported


SELECT
    *,
    10.0 as "discount%",
    -- ROUND((RANDOM() * 50)::numeric, 0) as "discount%",
    ROUND(price * 0.10, 2) as discount,
    ROUND(price - (price * 0.10), 2) as discounted
FROM car;
