CREATE SCHEMA devschema AUTHORIZATION devuser;

ALTER ROLE devuser SET search_path = devschema;
