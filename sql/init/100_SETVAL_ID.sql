-- This script will setup the correct starting ID to let Postgres manage IDs in auto-increment
-- That is because is starting by '100_': it have to be the last script to be execute
-- https://stackoverflow.com/questions/44708548/postgres-complains-id-already-exists-after-insert-of-initial-data

SELECT setval('agency_id_agency_seq', max(id_agency))
FROM public.agency
