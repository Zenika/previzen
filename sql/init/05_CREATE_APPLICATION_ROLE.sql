-- Here is the 'application' account used by Nest.js API with restrictives access.

-- Role: application
-- DROP ROLE application;

CREATE ROLE application WITH
  LOGIN
  NOSUPERUSER
  NOINHERIT
  NOCREATEDB
  NOCREATEROLE
  REPLICATION
  PASSWORD 'password';

COMMENT ON ROLE application IS 'Application account used by Nest.js API with restrictives access.';

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.absence_jaz TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.absence_off TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.agency TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.billable_day TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.consultant TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.customer TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.daily_cost TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.staffing TO application;

-- Grant below used to give rights to 'application' role to use/manage sequence in PostgreSQL database
-- @see https://stackoverflow.com/questions/44708548/postgres-complains-id-already-exists-after-insert-of-initial-data

GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO application;
