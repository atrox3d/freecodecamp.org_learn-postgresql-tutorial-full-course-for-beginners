-- list dbs
\l

-- create db
CREATE DATABASE test;

-- connect
\c test  -- select test db when imported

-- delete db
\c postgres
DROP DATABASE test;
