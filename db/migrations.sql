CREATE DATABASE to_do;

\c to_do;

CREATE TABLE list(id SERIAL PRIMARY KEY, item VARCHAR(255), done BOOLEAN, completed_on VARCHAR(255));