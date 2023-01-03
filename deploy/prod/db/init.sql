CREATE SCHEMA prodschema AUTHORIZATION produser;

ALTER ROLE produser SET search_path = prodschema;
