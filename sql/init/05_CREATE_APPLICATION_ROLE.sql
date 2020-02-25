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
  PASSWORD 'md5e66e3293ce98ff1194823af76e199245';

COMMENT ON ROLE application IS 'Application account used by Nest.js API with restrictives access.';

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.absence_jaz TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.absence_off TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.agency TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.billable_day TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.consultant TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.customer TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.daily_cost TO application;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE public.staffing TO application;