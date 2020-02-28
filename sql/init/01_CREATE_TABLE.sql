/*
* Init script intended to create all requested TABLE in the PostgresSQL docker container.
* It'll be run in the docker-compose.yml (volumes: - ./sql/init:/docker-entrypoint-initdb.d)
*/

CREATE TABLE "absence_jaz"
(
    "id_absence_jaz"       serial PRIMARY KEY,
    "id_consultant"        integer NOT NULL,
    "comment_absence_jaz"  text    NOT NULL,
    "date_absence_jaz"     integer NOT NULL,
    "month_absence_jaz"    integer NOT NULL,
    "year_absence_jaz"     integer NOT NULL,
    "duration_absence_jaz" real    NOT NULL
);

CREATE TABLE "absence_off"
(
    "id_absence_off"       serial PRIMARY KEY,
    "id_consultant"        integer NOT NULL,
    "comment_absence_off"  text    NOT NULL,
    "date_absence_off"     integer NOT NULL,
    "month_absence_off"    integer NOT NULL,
    "year_absence_off"     integer NOT NULL,
    "duration_absence_off" real    NOT NULL
);

CREATE TABLE "billable_day"
(
    "id_billable_day"     serial PRIMARY KEY,
    "id_consultant"       integer NOT NULL,
    "count_billable_days" integer NOT NULL,
    "month_billable_day"  integer NOT NULL,
    "year_billable_day"   integer NOT NULL
);

CREATE TABLE "consultant"
(
    "id_consultant"                 serial PRIMARY KEY,
    "id_agency"                     integer NOT NULL,
    "first_name_consultant"         text    NOT NULL,
    "last_name_consultant"          text    NOT NULL,
    "starts_after_month_consultant" integer NOT NULL,
    "starts_after_year_consultant"  integer NOT NULL,
    "leaves_after_month_consultant" integer,
    "leaves_after_year_consultant"  integer
);

CREATE TABLE "customer"
(
    "id_customer"   serial PRIMARY KEY,
    "name_customer" text NOT NULL
);

CREATE TABLE "agency"
(
    "id_agency"      serial PRIMARY KEY,
    "name_agency"    text NOT NULL,
    "name_manager"   text,
    "city_agency"    text NOT NULL,
    "country_agency" text NOT NULL
);

CREATE TABLE "daily_cost"
(
    "id_daily_cost"    serial PRIMARY KEY,
    "id_consultant"    integer NOT NULL,
    "month_daily_cost" integer NOT NULL,
    "year_daily_cost"  integer NOT NULL,
    "price_daily_cost" real    NOT NULL
);

CREATE TABLE "staffing"
(
    "id_staffing"       serial PRIMARY KEY,
    "id_consultant"     integer NOT NULL,
    "id_customer"       integer NOT NULL,
    "month_staffing"    integer NOT NULL,
    "year_staffing"     integer NOT NULL,
    "duration_staffing" double precision  NOT NULL,
    "price_staffing"    integer NOT NULL
);

ALTER TABLE "absence_jaz" ADD FOREIGN KEY ("id_consultant") REFERENCES "consultant" ("id_consultant");

ALTER TABLE "absence_off" ADD FOREIGN KEY ("id_consultant") REFERENCES "consultant" ("id_consultant");

ALTER TABLE "billable_day" ADD FOREIGN KEY ("id_consultant") REFERENCES "consultant" ("id_consultant");

ALTER TABLE "daily_cost" ADD FOREIGN KEY ("id_consultant") REFERENCES "consultant" ("id_consultant");

ALTER TABLE "staffing" ADD FOREIGN KEY ("id_consultant") REFERENCES "consultant" ("id_consultant");

ALTER TABLE "staffing" ADD FOREIGN KEY ("id_customer") REFERENCES "customer" ("id_customer");

ALTER TABLE "consultant" ADD FOREIGN KEY ("id_agency") REFERENCES "agency" ("id_agency");
