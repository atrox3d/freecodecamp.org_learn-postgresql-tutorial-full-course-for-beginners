-- create db
CREATE DATABASE test;

\c test

-- create table
CREATE TABLE person (
    id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(7),
    date_of_birth DATE
);

-- list tables
\d

-- describe table
\d person


DROP TABLE person;
-- create table
CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    date_of_birth DATE  NOT NULL
);
