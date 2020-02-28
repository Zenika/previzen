-- This script will setup the correct starting ID to let Postgres manage IDs in auto-increment
-- That is because is starting by '100_...': it have to be the last script to be execute
-- @see https://stackoverflow.com/questions/44708548/postgres-complains-id-already-exists-after-insert-of-initial-data

-- To get the sequence table, you have to do this query: "SELECT pg_get_serial_sequence('table_name', 'id')"

SELECT setval('agency_id_agency_seq', max(id_agency))
FROM public.agency;

SELECT setval('consultant_id_consultant_seq', max(id_consultant))
FROM public.consultant;
