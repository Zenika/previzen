--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6 (Debian 11.6-1.pgdg90+1)
-- Dumped by pg_dump version 12.0

-- Started on 2020-02-14 15:15:46 CET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2947 (class 1262 OID 16384)
-- Name: db; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE db OWNER TO root;

\connect db

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- TOC entry 197 (class 1259 OID 16387)
-- Name: absence_jaz; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.absence_jaz (
    id_absence_jaz integer NOT NULL,
    id_consultant integer NOT NULL,
    comment text NOT NULL,
    date integer NOT NULL,
    month integer NOT NULL,
    year integer NOT NULL,
    duration real NOT NULL
);


ALTER TABLE public.absence_jaz OWNER TO root;

--
-- TOC entry 196 (class 1259 OID 16385)
-- Name: absence_jaz_id_absence_jaz_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.absence_jaz_id_absence_jaz_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.absence_jaz_id_absence_jaz_seq OWNER TO root;

--
-- TOC entry 2948 (class 0 OID 0)
-- Dependencies: 196
-- Name: absence_jaz_id_absence_jaz_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.absence_jaz_id_absence_jaz_seq OWNED BY public.absence_jaz.id_absence_jaz;


--
-- TOC entry 199 (class 1259 OID 16398)
-- Name: absence_off; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.absence_off (
    id_absence_off integer NOT NULL,
    id_consultant integer NOT NULL,
    comment text NOT NULL,
    date integer NOT NULL,
    month integer NOT NULL,
    year integer NOT NULL,
    duration real NOT NULL
);


ALTER TABLE public.absence_off OWNER TO root;

--
-- TOC entry 198 (class 1259 OID 16396)
-- Name: absence_off_id_absence_off_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.absence_off_id_absence_off_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.absence_off_id_absence_off_seq OWNER TO root;

--
-- TOC entry 2949 (class 0 OID 0)
-- Dependencies: 198
-- Name: absence_off_id_absence_off_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.absence_off_id_absence_off_seq OWNED BY public.absence_off.id_absence_off;


--
-- TOC entry 201 (class 1259 OID 16409)
-- Name: billable_days; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.billable_days (
    id_billable_day integer NOT NULL,
    id_consultant integer NOT NULL,
    nb_billable_days integer NOT NULL,
    month integer NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.billable_days OWNER TO root;

--
-- TOC entry 200 (class 1259 OID 16407)
-- Name: billable_days_id_billable_day_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.billable_days_id_billable_day_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.billable_days_id_billable_day_seq OWNER TO root;

--
-- TOC entry 2950 (class 0 OID 0)
-- Dependencies: 200
-- Name: billable_days_id_billable_day_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.billable_days_id_billable_day_seq OWNED BY public.billable_days.id_billable_day;


--
-- TOC entry 203 (class 1259 OID 16417)
-- Name: consultants; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.consultants (
    id_consultant integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    starts_after_month integer NOT NULL,
    starts_after_year integer NOT NULL,
    leaves_after_month integer,
    leaves_after_year integer
);


ALTER TABLE public.consultants OWNER TO root;

--
-- TOC entry 202 (class 1259 OID 16415)
-- Name: consultants_id_consultant_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.consultants_id_consultant_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consultants_id_consultant_seq OWNER TO root;

--
-- TOC entry 2951 (class 0 OID 0)
-- Dependencies: 202
-- Name: consultants_id_consultant_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.consultants_id_consultant_seq OWNED BY public.consultants.id_consultant;


--
-- TOC entry 205 (class 1259 OID 16428)
-- Name: customers; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.customers (
    id_customer integer NOT NULL,
    customer_name text NOT NULL
);


ALTER TABLE public.customers OWNER TO root;

--
-- TOC entry 204 (class 1259 OID 16426)
-- Name: customers_id_customer_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.customers_id_customer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_customer_seq OWNER TO root;

--
-- TOC entry 2952 (class 0 OID 0)
-- Dependencies: 204
-- Name: customers_id_customer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.customers_id_customer_seq OWNED BY public.customers.id_customer;


--
-- TOC entry 209 (class 1259 OID 16447)
-- Name: daily_costs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.daily_costs (
    id_daily_cost integer NOT NULL,
    id_consultant integer NOT NULL,
    month integer NOT NULL,
    year integer NOT NULL,
    price real NOT NULL
);


ALTER TABLE public.daily_costs OWNER TO root;

--
-- TOC entry 208 (class 1259 OID 16445)
-- Name: daily_costs_id_daily_cost_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.daily_costs_id_daily_cost_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.daily_costs_id_daily_cost_seq OWNER TO root;

--
-- TOC entry 2953 (class 0 OID 0)
-- Dependencies: 208
-- Name: daily_costs_id_daily_cost_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.daily_costs_id_daily_cost_seq OWNED BY public.daily_costs.id_daily_cost;


--
-- TOC entry 207 (class 1259 OID 16439)
-- Name: staffing; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.staffing (
    id_staffing integer NOT NULL,
    id_consultant integer NOT NULL,
    id_customer integer NOT NULL,
    month integer NOT NULL,
    year integer NOT NULL,
    duration double precision NOT NULL,
    price integer NOT NULL
);


ALTER TABLE public.staffing OWNER TO root;

--
-- TOC entry 206 (class 1259 OID 16437)
-- Name: staffing_id_staffing_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.staffing_id_staffing_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.staffing_id_staffing_seq OWNER TO root;

--
-- TOC entry 2954 (class 0 OID 0)
-- Dependencies: 206
-- Name: staffing_id_staffing_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.staffing_id_staffing_seq OWNED BY public.staffing.id_staffing;


--
-- TOC entry 2780 (class 2604 OID 16390)
-- Name: absence_jaz id_absence_jaz; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.absence_jaz ALTER COLUMN id_absence_jaz SET DEFAULT nextval('public.absence_jaz_id_absence_jaz_seq'::regclass);


--
-- TOC entry 2781 (class 2604 OID 16401)
-- Name: absence_off id_absence_off; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.absence_off ALTER COLUMN id_absence_off SET DEFAULT nextval('public.absence_off_id_absence_off_seq'::regclass);


--
-- TOC entry 2782 (class 2604 OID 16412)
-- Name: billable_days id_billable_day; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.billable_days ALTER COLUMN id_billable_day SET DEFAULT nextval('public.billable_days_id_billable_day_seq'::regclass);


--
-- TOC entry 2783 (class 2604 OID 16420)
-- Name: consultants id_consultant; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.consultants ALTER COLUMN id_consultant SET DEFAULT nextval('public.consultants_id_consultant_seq'::regclass);


--
-- TOC entry 2784 (class 2604 OID 16431)
-- Name: customers id_customer; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.customers ALTER COLUMN id_customer SET DEFAULT nextval('public.customers_id_customer_seq'::regclass);


--
-- TOC entry 2786 (class 2604 OID 16450)
-- Name: daily_costs id_daily_cost; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.daily_costs ALTER COLUMN id_daily_cost SET DEFAULT nextval('public.daily_costs_id_daily_cost_seq'::regclass);


--
-- TOC entry 2785 (class 2604 OID 16442)
-- Name: staffing id_staffing; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.staffing ALTER COLUMN id_staffing SET DEFAULT nextval('public.staffing_id_staffing_seq'::regclass);


--
-- TOC entry 2929 (class 0 OID 16387)
-- Dependencies: 197
-- Data for Name: absence_jaz; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (11, 10, 'TTT', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (12, 10, 'TTT', 29, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (14, 15, 'integration', 2, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (19, 58, 'integration', 9, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (20, 58, 'bootcamp', 15, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (21, 58, 'bootcamp', 14, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (22, 58, 'bootcamp', 16, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (23, 58, 'elastic', 23, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (24, 58, 'elastic', 24, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (25, 58, 'elastic', 25, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (29, 24, ' ', 10, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (30, 24, ' ', 11, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (31, 24, ' ', 16, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (33, 24, ' ', 17, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (34, 24, ' ', 18, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (35, 24, 'visite medicale', 14, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (36, 58, 'JNF', 10, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (37, 58, 'JNF', 11, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (38, 58, 'JNF', 17, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (39, 58, 'JNF', 18, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (40, 58, 'JNF', 21, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (41, 58, 'JNF', 22, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (42, 58, 'JNF', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (43, 58, 'JNF', 29, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (44, 58, 'JNF', 30, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (45, 58, 'JNF', 31, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (46, 8, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (47, 8, ' ', 3, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (48, 8, ' ', 4, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (49, 8, ' ', 7, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (50, 8, ' ', 8, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (51, 8, ' ', 9, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (52, 8, ' ', 10, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (53, 8, ' ', 11, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (54, 8, ' ', 14, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (55, 8, ' ', 15, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (56, 8, ' ', 16, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (57, 8, ' ', 21, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (58, 8, ' ', 22, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (59, 8, ' ', 23, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (60, 8, ' ', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (61, 8, ' ', 31, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (62, 8, ' ', 30, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (63, 28, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (64, 28, ' ', 3, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (65, 28, ' ', 4, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (66, 28, 'snowcamp', 24, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (67, 28, 'snowcamp', 25, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (68, 29, ' ', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (69, 29, ' ', 29, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (70, 29, ' ', 31, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (71, 30, ' ', 11, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (72, 30, ' ', 18, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (73, 30, ' ', 25, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (74, 30, 'EA', 31, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (76, 31, 'intégration', 7, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (92, 57, ' ', 11, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (93, 57, ' ', 16, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (94, 57, ' ', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (95, 57, ' ', 29, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (96, 55, 'snowcamp', 23, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (97, 55, 'snowcamp', 24, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (99, 55, 'snowcamp', 25, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (100, 55, 'DT', 7, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (101, 55, 'DT', 8, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (102, 55, 'DT', 14, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (103, 55, 'DT', 15, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (104, 55, 'DT', 17, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (105, 55, 'DT', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (106, 55, 'DT', 29, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (107, 55, 'DT', 30, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (113, 52, ' ', 23, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (114, 52, ' ', 24, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (115, 56, ' ', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (116, 56, ' ', 29, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (117, 50, 'TTT', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (118, 50, 'TTT', 29, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (119, 49, ' ', 23, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (120, 49, ' ', 24, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (121, 46, ' ', 9, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (122, 46, ' ', 10, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (123, 46, ' ', 11, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (124, 43, ' ', 8, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (125, 43, 'TTT', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (126, 43, 'TTT', 29, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (127, 40, 'conf', 24, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (128, 40, 'conf', 25, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (129, 59, ' ', 7, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (130, 59, ' ', 21, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (131, 59, ' ', 22, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (132, 59, ' ', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (133, 59, ' ', 29, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (134, 59, ' ', 30, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (135, 59, ' ', 31, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (136, 59, ' ', 14, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (137, 59, ' ', 15, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (138, 59, ' ', 16, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (139, 59, ' ', 17, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (140, 59, ' ', 18, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (141, 59, ' ', 8, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (142, 59, ' ', 9, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (143, 59, ' ', 10, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (144, 59, ' ', 11, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (145, 39, 'aya', 2, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (146, 39, 'aya', 3, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (147, 39, 'aya', 4, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (148, 39, 'advocate', 7, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (149, 39, 'advocate', 8, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (150, 39, 'advocate', 9, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (151, 39, 'advocate', 10, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (152, 39, 'advocate', 14, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (153, 39, 'advocate', 16, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (154, 39, 'advocate', 17, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (155, 39, 'advocate', 21, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (156, 39, 'advocate', 23, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (159, 39, 'advocate', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (160, 39, 'advocate', 30, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (161, 39, 'advocate', 31, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (162, 53, 'prep conf', 17, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (163, 53, 'conf', 24, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (164, 53, 'conf', 25, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (165, 53, 'TTT', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (166, 53, 'TTT', 29, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (167, 18, 'jnf', 16, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (168, 18, 'jnf', 30, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (169, 18, 'jnf', 9, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (171, 24, 'JAZ Integration', 7, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (172, 24, 'jaz', 8, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (173, 24, 'jaz', 9, 1, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (174, 24, 'jaz', 28, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (175, 24, 'jaz', 29, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (176, 24, 'jaz', 30, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (177, 24, 'jaz', 31, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (178, 24, 'jaz', 21, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (179, 24, 'jaz', 22, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (180, 24, 'jaz', 23, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (181, 24, 'jaz', 24, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (182, 24, 'jaz', 25, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (183, 10, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (184, 11, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (185, 47, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (186, 20, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (187, 41, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (188, 50, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (190, 33, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (191, 48, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (192, 15, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (193, 16, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (194, 12, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (195, 12, 'suivi stagiaire', 18, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (197, 30, 'JAZ', 8, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (198, 30, 'JAZ', 1, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (199, 30, 'JAZ', 15, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (200, 15, 'Bootcamp', 26, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (201, 15, 'Bootcamp', 27, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (202, 15, 'Bootcamp', 28, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (203, 48, 'Bootcamp', 26, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (204, 48, 'Bootcamp', 27, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (205, 48, 'Bootcamp', 28, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (206, 16, 'Journée Kai', 15, 2, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (207, 7, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (208, 14, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (211, 19, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (212, 58, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (213, 27, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (214, 26, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (215, 25, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (216, 24, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (217, 8, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (218, 28, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (219, 22, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (221, 30, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (223, 32, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (224, 34, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (225, 35, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (230, 38, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (231, 39, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (232, 40, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (233, 42, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (234, 43, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (235, 45, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (236, 46, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (237, 49, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (238, 56, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (239, 54, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (240, 55, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (241, 57, 'TZ', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (243, 30, '1 JAZ', 15, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (244, 30, 'JAZ', 22, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (245, 30, 'JAZ', 29, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (246, 30, 'JAZ', 8, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (247, 30, 'JAZ', 1, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (248, 55, 'JAZ', 1, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (249, 55, 'JAZ', 4, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (250, 55, 'Réu DT', 25, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (251, 55, 'Réu DT', 26, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (256, 22, 'intégration', 11, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (257, 18, 'jaz', 6, 2, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (258, 58, 'jaz', 1, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (259, 24, 'jaz', 1, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (260, 24, 'jaz', 4, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (261, 24, 'jaz', 5, 2, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (262, 24, 'bootcamp', 26, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (263, 24, 'bootcamp', 27, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (264, 24, 'bootcamp', 28, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (265, 50, 'jnf', 13, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (268, 24, 'jaz', 6, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (269, 24, 'jaz', 7, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (270, 55, 'bootcamp', 26, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (271, 55, 'bootcamp', 27, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (273, 55, 'bootcamp', 28, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (274, 55, 'DT', 5, 2, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (277, 55, 'DT', 7, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (278, 55, 'DT', 8, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (279, 55, 'DT', 12, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (280, 55, 'DT', 11, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (282, 55, 'DT', 20, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (283, 55, 'DT', 25, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (284, 55, 'prep conf', 21, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (285, 55, 'conf', 22, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (286, 22, 'JAZ', 13, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (287, 22, 'JAZ', 14, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (288, 22, 'JAZ', 15, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (290, 30, 'JAZ', 12, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (291, 30, 'JAZ', 19, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (293, 40, 'jaz', 21, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (294, 40, 'jaz', 22, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (295, 17, 'journée intégration', 4, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (296, 57, 'JAZ', 8, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (297, 48, 'intégration', 4, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (298, 48, 'JNF', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (299, 48, 'JNF', 6, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (300, 48, 'JNF', 7, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (301, 48, 'JNF', 8, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (302, 48, 'Richemont', 15, 2, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (303, 59, ' ', 12, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (304, 59, 'JNF', 4, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (305, 59, 'JNF', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (307, 59, 'JNF', 6, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (308, 59, 'JNF', 7, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (309, 59, 'JNF', 8, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (310, 59, 'JNF', 11, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (311, 59, 'JNF', 13, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (312, 59, 'JNF', 14, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (313, 59, 'JNF', 15, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (314, 39, 'Advocate', 1, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (315, 39, 'Advocate', 11, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (316, 39, 'Advocate', 12, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (317, 39, 'Advocate', 13, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (318, 39, 'Advocate', 14, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (319, 39, 'Advocate', 15, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (320, 39, 'Advocate', 18, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (321, 39, 'Advocate', 19, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (322, 39, 'Advocate', 20, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (323, 39, 'Advocate', 21, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (324, 39, 'Advocate', 22, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (325, 29, 'bootcamp', 4, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (326, 29, 'bootcamp', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (327, 29, 'bootcamp', 6, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (328, 29, 'prep formation', 7, 2, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (329, 29, 'jaz', 11, 2, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (330, 29, 'prep formation', 12, 2, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (331, 29, 'prep formation', 14, 2, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (332, 29, 'jaz', 15, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (333, 29, 'jnf', 21, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (334, 29, 'jnf', 7, 2, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (335, 34, 'JAZ', 15, 2, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (336, 8, 'aya', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (337, 8, 'aya', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (338, 8, 'aya', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (339, 8, 'aya', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (340, 8, 'aya', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (341, 8, 'aya', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (342, 8, 'aya', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (343, 8, 'aya', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (344, 8, 'aya', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (345, 8, 'aya', 5, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (346, 8, 'aya', 1, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (347, 8, 'aya', 4, 2, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (348, 8, 'aya', 18, 2, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (353, 39, 'conf', 24, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (354, 39, 'conf', 25, 1, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (356, 18, 'jaz', 20, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (361, 8, 'JNF', 25, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (362, 8, 'JNF', 25, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (363, 8, 'JNF', 25, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (364, 8, 'JNF', 25, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (365, 8, 'JNF', 25, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (372, 8, 'jnf', 26, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (373, 8, 'jnf', 26, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (374, 8, 'jnf', 26, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (375, 8, 'jnf', 26, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (376, 8, 'jnf', 26, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (377, 8, 'jnf', 27, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (378, 8, 'jnf', 27, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (380, 62, 'lyon', 1, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (381, 52, 'tz', 12, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (382, 52, 'jaz', 15, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (383, 52, 'stage', 18, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (384, 40, 'DT', 9, 4, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (387, 45, 'JAZ Learning XP ', 14, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (388, 45, 'JAZ Learning XP ', 15, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (389, 45, 'JAZ Learning XP ', 16, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (390, 45, 'JAZ Learning XP ', 13, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (391, 45, 'JAZ Learning XP ', 17, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (393, 24, 'jaz', 28, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (395, 58, 'journée CNAM', 12, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (396, 30, 'JAZ', 3, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (397, 30, 'JAZ', 10, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (398, 30, 'JAZ', 17, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (399, 30, 'JAZ', 24, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (401, 29, 'safe', 16, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (402, 29, 'safe', 17, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (403, 29, 'safe', 18, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (404, 29, 'safe', 19, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (405, 29, 'jaz', 5, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (406, 29, 'jaz', 7, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (407, 29, 'jaz', 8, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (408, 29, 'jaz', 11, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (409, 29, 'jaz', 12, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (410, 29, 'jaz', 18, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (411, 29, 'jaz', 19, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (412, 29, 'jaz', 21, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (413, 29, 'jaz', 22, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (414, 29, 'jaz', 26, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (415, 29, 'jaz', 25, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (416, 39, 'advocate', 29, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (417, 39, 'advocate', 28, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (418, 39, 'advocate', 18, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (419, 39, 'advocate', 19, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (420, 39, 'advocate', 20, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (421, 39, 'advocate', 15, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (422, 39, 'advocate', 11, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (423, 39, 'advocate', 6, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (424, 39, 'advocate', 7, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (425, 39, 'advocate', 8, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (427, 39, 'advocate', 1, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (428, 39, 'conf', 21, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (429, 39, 'conf', 22, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (430, 57, 'AVV', 21, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (431, 57, 'conf', 7, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (432, 52, 'stage', 8, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (433, 52, 'avv', 22, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (434, 55, 'jaz', 13, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (435, 55, 'dt', 18, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (436, 55, 'dt', 21, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (437, 55, 'dt', 22, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (438, 55, 'dt', 27, 3, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (439, 55, 'DT', 9, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (440, 50, 'Formation Kub', 27, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (441, 50, 'Formation Kub', 28, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (442, 50, 'Formation Kub', 29, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (443, 18, 'jaz', 6, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (444, 18, 'JAZ', 7, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (446, 18, 'JAZ', 14, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (447, 18, 'JAZ', 13, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (448, 18, 'JAZ', 27, 3, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (449, 24, 'mixit', 26, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (451, 18, 'jaz', 3, 4, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (453, 18, 'jaz', 17, 4, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (454, 18, 'JAZ', 9, 5, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (455, 18, 'jaz', 15, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (456, 18, 'fabrique du changement', 23, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (457, 18, 'jaz', 29, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (458, 52, 'conf', 4, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (459, 52, 'dt', 9, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (460, 52, 'avv', 8, 4, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (462, 40, 'mix it', 24, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (463, 40, 'mix it', 23, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (465, 30, 'jaz', 2, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (466, 30, 'matinale grenoble', 4, 4, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (467, 30, 'JAZ', 26, 4, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (468, 39, 'riviera dev', 15, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (469, 39, 'riviera dev', 16, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (470, 39, 'riviera dev', 17, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (471, 41, 'CM1M', 29, 4, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (472, 45, 'Stage', 10, 4, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (473, 49, 'CM1M', 29, 4, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (474, 12, 'stage', 16, 4, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (475, 64, 'Intégration', 27, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (476, 51, 'Inté', 3, 6, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (477, 37, 'BCP', 27, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (478, 37, 'BCP', 28, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (479, 37, 'BCP', 29, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (480, 37, 'JAZ', 13, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (481, 37, 'JAZ', 14, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (482, 55, 'kub', 27, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (483, 55, 'kub', 28, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (484, 55, 'kub', 29, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (485, 55, 'mixit', 23, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (486, 55, 'mixit', 24, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (487, 49, 'Speaker Craft Alpes', 13, 6, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (488, 40, 'prep nightclazz', 14, 5, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (489, 49, 'formation kafka', 5, 6, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (491, 49, 'formation kafka', 7, 6, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (492, 49, 'formation kafka', 6, 6, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (493, 58, 'Prépa Speedtraining', 31, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (495, 24, 'mixit', 10, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (496, 41, 'Mixit', 24, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (497, 49, 'mixit', 23, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (498, 41, 'Mixit', 23, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (499, 16, 'MixIT', 23, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (500, 16, 'MixIT', 24, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (501, 26, 'MixIT', 23, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (502, 26, 'MixIT', 24, 5, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (506, 31, 'Formation Kube', 3, 6, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (507, 31, 'Formation Kube', 4, 6, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (509, 31, 'Formation kube', 5, 6, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (510, 26, 'prep conf', 17, 5, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (511, 26, 'Alpes craft', 14, 6, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (512, 26, 'Alpes Craft', 13, 6, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (514, 43, 'prépa formation Android', 7, 6, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (516, 49, 'Talk Blend', 13, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (519, 10, 'Zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (520, 11, 'Zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (521, 17, 'Zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (522, 47, 'Zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (523, 22, 'ZenDay', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (524, 15, 'Zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (525, 16, 'Zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (526, 20, 'ZenDay', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (527, 19, 'Zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (528, 58, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (529, 25, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (530, 26, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (531, 27, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (532, 8, ' ', 1, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (533, 8, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (534, 8, ' ', 5, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (535, 28, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (536, 30, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (537, 31, 'ZenDay', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (538, 38, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (539, 37, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (540, 36, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (541, 35, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (542, 34, 'Zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (543, 33, 'ZenDay', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (544, 39, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (545, 40, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (546, 41, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (547, 42, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (548, 43, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (549, 45, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (551, 48, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (552, 51, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (553, 64, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (554, 57, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (555, 57, ' ', 11, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (556, 57, 'prep formation', 12, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (557, 52, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (558, 53, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (559, 54, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (560, 55, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (562, 30, ' ', 12, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (563, 30, 'c', 23, 8, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (565, 18, 'zenday', 4, 7, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (566, 67, 'Intégration', 9, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (567, 70, 'Intégration', 30, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (569, 69, 'Inté', 16, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (574, 16, 'CM1M', 6, 6, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (575, 30, ' ', 6, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (576, 30, ' ', 13, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (578, 30, ' ', 20, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (584, 30, 'Formation SAFE', 15, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (585, 30, 'Formation SAFE', 16, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (586, 30, 'Formation SAFE', 17, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (587, 30, 'Formation SAFE', 18, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (588, 26, 'dt', 13, 8, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (593, 23, ' ', 23, 8, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (595, 23, ' ', 12, 8, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (596, 23, ' ', 13, 8, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (597, 23, ' ', 19, 8, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (598, 23, ' ', 20, 8, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (599, 23, ' ', 21, 8, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (600, 23, ' ', 22, 8, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (601, 23, ' ', 29, 8, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (603, 23, ' ', 28, 8, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (605, 23, ' ', 27, 8, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (606, 10, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (607, 11, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (608, 7, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (609, 14, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (610, 71, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (611, 15, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (612, 16, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (613, 67, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (614, 65, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (615, 17, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (616, 70, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (617, 19, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (618, 20, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (620, 22, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (621, 23, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (622, 58, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (623, 24, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (624, 25, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (625, 26, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (626, 27, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (628, 28, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (629, 29, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (630, 68, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (631, 30, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (633, 33, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (634, 34, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (635, 35, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (636, 36, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (638, 39, 'jnf', 4, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (639, 38, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (640, 39, ' ', 11, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (643, 39, 'jnf', 18, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (644, 40, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (645, 39, ' ', 7, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (646, 69, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (647, 41, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (648, 66, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (650, 46, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (651, 43, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (652, 44, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (653, 47, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (654, 48, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (655, 49, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (656, 45, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (657, 50, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (658, 51, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (659, 64, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (660, 56, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (661, 52, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (662, 53, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (664, 55, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (665, 57, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (666, 44, 'JNF', 30, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (667, 72, 'intégration', 16, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (668, 72, 'TZ', 28, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (669, 19, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (670, 27, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (671, 36, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (672, 38, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (673, 46, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (674, 47, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (675, 50, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (677, 44, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (678, 28, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (679, 71, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (680, 43, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (681, 34, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (682, 65, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (683, 40, 'réu DT', 18, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (684, 40, 'réu DT', 19, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (685, 66, 'Bootcamp', 23, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (686, 66, 'Bootcamp', 24, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (687, 66, 'Bootcamp', 25, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (688, 66, 'intégration', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (691, 20, 'Speed Training', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (693, 68, 'Bootcamp', 23, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (694, 68, 'Bootcamp', 24, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (695, 68, 'Bootcamp', 25, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (696, 68, 'Intégration', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (697, 22, 'Speed Training', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (698, 11, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (699, 45, 'Speedtraining', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (700, 34, 'Speedtraining', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (701, 24, 'Speedtraining', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (702, 25, 'Speedtraining', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (703, 48, 'Speedtraining', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (704, 26, 'Speedtraining', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (705, 16, 'Speedtraining', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (706, 57, 'Speedtraining', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (708, 53, 'Speedtraining', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (709, 17, 'Speedtraining', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (710, 55, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (711, 32, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (712, 64, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (713, 40, 'Speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (715, 68, 'Flutter Europe', 23, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (716, 68, 'Flutter Europe', 24, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (717, 26, 'Réu DT', 18, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (718, 26, 'réu DT', 19, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (719, 35, 'jaz', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (720, 10, 'ML speedtraining', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (721, 30, ' ', 6, 12, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (722, 30, ' ', 13, 12, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (723, 30, ' ', 20, 12, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (724, 30, ' ', 27, 12, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (725, 40, 'Budget DA DT', 30, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (726, 40, 'Dev Fest Strazbourg', 6, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (727, 52, 'DT', 18, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (728, 52, 'DT', 19, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (729, 52, 'DT', 26, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (730, 52, 'AVV', 5, 9, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (731, 52, 'AVV', 6, 9, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (732, 52, 'AVV', 13, 9, 2019, 0.5);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (733, 52, 'JAZ', 30, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (734, 52, 'JAZ', 17, 9, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (735, 54, ' ', 2, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (736, 54, ' ', 3, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (737, 73, 'Intégration', 21, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (738, 73, 'bootcamp', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (739, 73, 'bootcamp', 19, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (740, 73, 'bootcamp', 20, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (741, 34, 'Prépa Agile Grenoble', 18, 10, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (742, 68, 'TTT', 6, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (743, 68, 'TTT', 7, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (744, 58, 'TTT', 6, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (745, 58, 'TTT', 7, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (746, 37, 'TTT', 6, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (747, 37, 'TTT', 7, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (748, 14, 'TTT', 6, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (749, 14, 'TTT', 7, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (750, 67, 'TTT', 6, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (751, 67, 'TTT', 7, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (752, 17, 'TTT', 6, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (753, 17, 'TTT', 7, 1, 2020, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (755, 24, 'Prépa agile grenoble ', 8, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (756, 70, 'BOOTCAMP', 18, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (757, 70, 'BOOTCAMP', 19, 11, 2019, 1);
INSERT INTO public.absence_jaz (id_absence_jaz, id_consultant, comment, date, month, year, duration) VALUES (758, 70, 'BOOTCAMP', 20, 11, 2019, 1);


--
-- TOC entry 2931 (class 0 OID 16398)
-- Dependencies: 199
-- Data for Name: absence_off; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (473, 19, 'CP', 24, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (476, 19, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (484, 26, 'CP', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (486, 11, 'CP', 17, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (488, 11, 'CP', 19, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (6, 41, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (7, 41, ' ', 3, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (8, 41, ' ', 4, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (9, 10, 'CP', 21, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (10, 61, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (491, 11, 'CP', 24, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (20, 11, 'CP', 7, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (21, 11, 'CP', 8, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (23, 11, 'CP', 9, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (24, 11, 'CP', 10, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (25, 11, 'CP', 10, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (26, 11, 'CP', 11, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (27, 12, ' ', 16, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (28, 12, ' ', 17, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (29, 12, ' ', 18, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (30, 12, ' ', 21, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (31, 12, ' ', 22, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (32, 12, ' ', 23, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (33, 12, ' ', 24, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (34, 12, ' ', 25, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (35, 7, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (36, 7, ' ', 3, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (37, 7, ' ', 4, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (38, 7, ' ', 25, 1, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (43, 15, '0,5 CP', 17, 1, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (44, 5, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (45, 5, ' ', 9, 1, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (46, 5, ' ', 23, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (55, 19, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (56, 19, ' ', 3, 1, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (57, 19, ' ', 4, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (58, 19, ' ', 7, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (59, 19, ' ', 9, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (60, 19, ' ', 22, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (61, 19, ' ', 24, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (62, 19, ' ', 25, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (63, 20, 'AM', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (64, 20, 'AM', 3, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (65, 20, 'AM', 4, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (66, 20, 'AM', 7, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (67, 20, 'AM', 8, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (68, 20, 'AM', 9, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (69, 21, ' ', 24, 1, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (79, 26, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (80, 26, ' ', 3, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (82, 26, ' ', 4, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (83, 26, ' ', 16, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (85, 26, ' ', 17, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (86, 26, ' ', 18, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (87, 26, ' ', 23, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (88, 26, ' ', 24, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (89, 26, ' ', 25, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (90, 27, ' ', 21, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (91, 27, ' ', 22, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (92, 27, ' ', 23, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (93, 27, ' ', 24, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (94, 27, ' ', 25, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (95, 30, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (96, 30, ' ', 3, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (98, 30, ' ', 4, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (99, 33, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (102, 55, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (106, 50, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (107, 50, ' ', 3, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (108, 50, ' ', 4, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (109, 50, ' ', 17, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (110, 50, ' ', 18, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (111, 50, ' ', 31, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (112, 49, ' ', 22, 1, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (113, 47, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (114, 47, ' ', 3, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (115, 47, ' ', 4, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (116, 47, ' ', 15, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (117, 46, ' ', 18, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (118, 46, ' ', 22, 1, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (119, 44, ' ', 21, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (121, 42, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (122, 42, ' ', 3, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (123, 42, ' ', 18, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (124, 42, ' ', 21, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (125, 42, ' ', 22, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (126, 42, ' ', 23, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (127, 42, ' ', 24, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (128, 42, ' ', 25, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (129, 42, ' ', 28, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (130, 42, ' ', 29, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (131, 42, ' ', 30, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (132, 42, ' ', 31, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (133, 40, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (134, 40, ' ', 3, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (136, 40, ' ', 4, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (137, 59, ' ', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (138, 59, ' ', 3, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (139, 59, ' ', 4, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (140, 39, 'cp', 3, 1, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (141, 39, 'cp', 15, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (142, 53, 'cp', 22, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (143, 53, 'cp', 23, 1, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (144, 53, 'cp', 30, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (145, 18, 'cp', 2, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (146, 18, 'cp', 3, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (147, 18, 'cp', 16, 1, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (148, 18, 'cp', 23, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (149, 18, 'cp', 24, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (150, 18, 'cp', 31, 1, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (151, 18, 'cp', 30, 1, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (152, 41, 'CP', 11, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (156, 16, 'CP', 15, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (157, 16, 'CP', 25, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (158, 16, 'CP', 26, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (161, 16, 'CP', 27, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (164, 16, 'CP', 28, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (165, 16, 'CP', 29, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (166, 12, 'CP', 8, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (167, 12, 'CP', 11, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (170, 32, 'CP - 1j', 1, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (171, 7, 'CP - 1j', 4, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (172, 47, '0,5 rtt', 6, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (173, 41, 'CP', 12, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (174, 30, 'CP', 11, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (175, 30, 'CP', 21, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (176, 30, 'CP', 22, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (177, 30, 'CP', 25, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (178, 45, 'CP', 23, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (179, 45, 'CP', 24, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (180, 45, 'CP', 25, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (183, 45, 'CP', 29, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (182, 45, 'CP', 26, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (184, 45, 'CP', 30, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (474, 19, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (478, 19, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (479, 19, 'CP', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (480, 19, 'CP', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (190, 45, 'CP', 6, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (192, 45, 'CP', 7, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (194, 45, 'CP', 9, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (195, 45, 'CP', 10, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (204, 44, 'CP', 7, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (205, 16, 'CP', 8, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (206, 16, 'CP', 8, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (207, 16, 'CP', 9, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (208, 16, 'CP', 10, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (209, 16, 'CP', 11, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (210, 16, 'CP', 12, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (211, 16, 'CP', 15, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (212, 16, 'CP', 16, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (213, 16, 'CP', 17, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (214, 16, 'CP', 18, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (215, 16, 'CP', 19, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (219, 19, 'RTT', 7, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (221, 27, 'RTT', 11, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (225, 27, 'CP', 13, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (226, 27, 'CP', 14, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (227, 27, 'CP', 15, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (229, 30, 'CP', 1, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (231, 35, 'CP', 13, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (232, 38, 'CP', 1, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (233, 44, 'CP', 11, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (235, 44, 'CP', 12, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (236, 44, 'CP', 13, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (237, 44, 'CP', 14, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (238, 44, 'CP', 15, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (239, 45, 'CP', 1, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (240, 46, 'CP', 4, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (241, 46, 'CP', 5, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (242, 49, 'CP', 1, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (243, 49, 'CP', 25, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (244, 49, 'CP', 26, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (245, 49, 'RTT &amp; CP', 27, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (246, 49, 'CP', 28, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (247, 49, 'CP', 29, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (248, 52, 'CP', 1, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (249, 53, 'RTT', 6, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (251, 53, 'RTT', 8, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (252, 54, 'CP', 25, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (253, 54, 'CP', 26, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (254, 54, 'CP', 27, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (255, 54, 'CP', 28, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (256, 54, 'CP', 29, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (257, 11, 'cp', 5, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (258, 18, 'cp', 13, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (259, 18, 'cp', 14, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (260, 18, 'cp', 20, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (261, 18, 'cp', 21, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (262, 18, 'cp', 22, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (263, 18, 'cp', 25, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (264, 18, 'cp', 26, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (266, 18, 'cp', 28, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (267, 18, 'cp', 27, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (268, 61, 'off', 8, 2, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (269, 47, 'cp', 13, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (271, 47, 'cp', 8, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (272, 50, 'cp', 4, 2, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (273, 50, 'cp', 18, 2, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (274, 50, 'cp', 27, 2, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (275, 30, 'CP', 14, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (277, 36, 'RTT', 1, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (281, 24, 'CP', 29, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (282, 24, 'CP', 30, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (287, 12, 'CP', 19, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (289, 43, 'RTT', 20, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (290, 11, 'RTT', 22, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (291, 20, 'CP', 22, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (292, 42, 'cp', 15, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (293, 42, 'cp', 1, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (294, 59, 'CP', 18, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (295, 59, 'CP', 19, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (296, 59, 'CP', 20, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (297, 59, 'CP', 21, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (298, 59, 'CP', 22, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (299, 59, 'CP', 25, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (300, 59, 'CP', 26, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (301, 59, 'CP', 27, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (302, 59, 'CP', 28, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (303, 7, 'CP', 12, 2, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (304, 7, 'CP', 19, 2, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (305, 7, 'cp', 15, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (306, 53, 'CP', 5, 2, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (307, 53, 'CP', 7, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (308, 53, 'CP', 27, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (309, 53, 'CP', 28, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (310, 52, 'CP', 25, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (311, 52, 'CP', 26, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (312, 52, 'CP', 27, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (313, 52, 'CP', 28, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (314, 39, 'CP', 4, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (315, 39, 'CP', 5, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (318, 39, 'CP', 6, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (319, 39, 'CP', 7, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (320, 39, 'CP', 8, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (321, 39, 'CP', 25, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (322, 8, 'CP', 22, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (323, 8, 'CP', 25, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (324, 28, 'CP', 25, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (325, 28, 'CP', 14, 2, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (326, 29, 'CP', 1, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (327, 29, 'CP', 25, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (328, 29, 'CP', 26, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (329, 29, 'CP', 28, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (330, 29, 'cp', 1, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (331, 29, 'cp', 14, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (332, 29, 'cp', 15, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (333, 29, 'cp', 23, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (334, 29, 'cp', 25, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (335, 29, 'cp', 26, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (336, 38, 'cp', 8, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (337, 38, 'cp', 25, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (338, 38, 'cp', 26, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (339, 38, 'cp', 27, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (340, 38, 'cp', 28, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (341, 32, 'cp', 18, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (342, 32, 'cp', 25, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (343, 32, 'cp', 26, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (344, 32, 'cp', 27, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (345, 32, 'cp', 28, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (346, 36, 'cp', 22, 2, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (347, 36, 'cp', 25, 2, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (348, 41, 'CP', 22, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (349, 14, 'CP', 18, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (350, 30, 'CP', 23, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (351, 30, 'CP', 24, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (352, 30, 'CP', 29, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (475, 19, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (354, 30, 'CP', 30, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (355, 36, 'CP', 3, 5, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (481, 19, 'CP', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (357, 32, 'CP', 6, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (358, 32, 'CP', 7, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (482, 19, 'Cp', 22, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (360, 36, 'CP', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (361, 36, 'CP', 17, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (362, 36, 'CP', 18, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (363, 36, 'CP', 19, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (364, 42, 'CP', 2, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (365, 42, 'CP', 3, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (366, 42, 'CP', 6, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (367, 42, 'CP', 7, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (368, 42, 'CP', 9, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (369, 42, 'CP', 10, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (370, 50, 'migraine', 25, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (371, 50, 'migraine', 19, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (372, 50, 'migraine', 20, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (373, 58, 'CP', 5, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (374, 44, 'CP', 6, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (375, 44, 'CP', 7, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (376, 44, 'CP', 9, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (377, 44, 'CP', 10, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (378, 44, 'CP', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (379, 44, 'CP', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (380, 44, 'CP', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (381, 34, 'RTT', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (382, 10, 'cp', 29, 3, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (386, 36, 'CP', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (387, 36, 'CP', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (388, 36, 'CP', 27, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (389, 36, 'CP', 28, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (390, 36, 'CP', 29, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (483, 19, 'CP', 23, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (485, 11, 'CP', 16, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (393, 36, 'CP', 6, 5, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (394, 38, 'CP', 23, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (395, 33, 'CP', 9, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (396, 33, 'CP', 10, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (397, 33, 'CP', 2, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (398, 33, 'CP', 3, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (399, 33, 'CP', 29, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (400, 33, 'CP', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (401, 33, 'CP', 18, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (402, 33, 'CP', 19, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (487, 11, 'CP', 18, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (405, 56, 'cp', 23, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (406, 41, 'CP', 3, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (407, 41, 'CP', 18, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (489, 11, 'CP', 22, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (409, 41, 'CP', 19, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (410, 41, 'CP', 26, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (412, 41, 'CP', 30, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (413, 41, 'CP', 9, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (414, 41, 'CP', 10, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (490, 11, 'CP', 23, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (492, 11, 'CP', 25, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (493, 11, 'CP', 26, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (494, 11, 'CP', 29, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (495, 11, 'CP', 30, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (496, 43, 'RTT', 7, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (497, 23, 'rtt', 4, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (422, 41, 'CP', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (424, 10, 'CP', 1, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (425, 40, 'cp', 15, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (426, 45, 'PACS', 2, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (427, 45, 'PACS', 3, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (428, 27, 'CP', 2, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (429, 27, 'CP', 3, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (430, 27, 'CP', 6, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (431, 27, 'CP', 7, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (432, 27, 'CP', 8, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (433, 27, 'CP', 9, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (434, 27, 'CP', 10, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (435, 42, 'cp', 3, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (436, 42, 'cp', 4, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (438, 11, 'CP', 4, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (439, 41, 'CP', 16, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (440, 41, 'CP', 17, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (441, 41, 'CP', 20, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (442, 41, 'CP', 21, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (443, 41, 'CP', 22, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (444, 40, 'CP', 12, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (445, 14, 'CP', 8, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (446, 55, 'CP', 18, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (447, 55, 'CP', 19, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (448, 7, 'CP', 24, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (449, 7, 'CP', 25, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (450, 32, 'RTT', 26, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (451, 32, 'CP', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (452, 32, 'CP', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (453, 52, 'cp', 23, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (454, 52, 'cp', 26, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (455, 63, 'CP', 5, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (456, 23, 'css', 1, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (458, 23, 'CP sans solde', 2, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (459, 23, 'CP sans solde', 5, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (460, 23, 'CP sans solde', 9, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (461, 23, 'CP sans solde', 8, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (464, 23, 'CP sans solde', 10, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (465, 19, 'CP', 23, 12, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (466, 19, 'CP', 24, 12, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (468, 19, 'Ferié', 25, 12, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (469, 19, 'CP', 26, 12, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (470, 19, 'CP', 27, 12, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (471, 19, 'CP', 30, 12, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (472, 19, 'CP', 31, 12, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (503, 53, 'd', 4, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (505, 28, 'MixIT', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (506, 28, 'Mix IT', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (511, 17, 'bcp', 27, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (512, 17, 'bcp', 28, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (513, 17, 'bcp', 29, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (514, 23, 'bcp', 27, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (515, 23, 'bcp', 28, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (516, 23, 'bcp', 29, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (517, 38, 'RTT', 9, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (518, 50, 'kubcon', 21, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (519, 50, 'kubcon', 22, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (520, 50, 'kubcon', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (521, 5, 'CP', 13, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (522, 5, 'CP', 14, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (523, 5, 'CP', 15, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (524, 5, 'CP', 16, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (525, 5, 'CP', 17, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (526, 50, 'cp', 4, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (527, 50, 'cp', 12, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (529, 18, 'CE', 6, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (530, 18, 'CE', 7, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (531, 18, 'CE', 13, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (532, 18, 'CE', 27, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (533, 18, 'CE', 28, 3, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (534, 58, 'CP', 19, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (535, 30, 'CP', 18, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (536, 26, 'CP', 19, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (537, 16, 'CP', 26, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (538, 48, 'CP', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (539, 48, 'CP', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (540, 16, 'RTT', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (541, 25, 'CP', 17, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (542, 25, 'CP', 20, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (543, 25, 'CP', 21, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (544, 25, 'CP', 22, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (545, 25, 'CP', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (546, 25, 'CP', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (547, 55, 'CP', 26, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (548, 24, 'CP', 1, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (549, 24, 'CP', 2, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (550, 24, 'CP', 3, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (551, 24, 'CP', 4, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (552, 24, 'CP', 5, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (553, 16, 'CP', 11, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (554, 16, 'CP', 12, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (555, 16, 'CP', 13, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (556, 16, 'CP', 14, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (557, 16, 'CP', 17, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (558, 16, 'CP', 18, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (559, 16, 'CP', 19, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (560, 16, 'CP', 20, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (561, 16, 'CP', 21, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (562, 33, 'CP', 27, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (563, 33, 'CP', 28, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (564, 33, 'CP', 1, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (566, 12, 'CP', 23, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (567, 12, 'CP', 24, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (568, 12, 'CP', 25, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (569, 12, 'CP', 26, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (570, 14, 'rtt', 29, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (571, 14, 'rtt', 30, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (572, 55, 'CP', 29, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (573, 41, 'CP', 29, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (574, 41, 'CP', 10, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (575, 34, 'RTT', 10, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (576, 5, 'RTT', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (577, 38, 'RTT', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (581, 49, 'CP', 28, 5, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (582, 49, 'CP', 29, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (583, 49, 'CP', 30, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (584, 49, 'RTT', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (585, 49, 'RTT', 27, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (586, 49, 'RTT', 28, 5, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (587, 31, 'RTT', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (588, 31, 'RTT', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (589, 34, 'CP', 15, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (590, 34, 'CP', 16, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (591, 34, 'CP', 17, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (592, 34, 'CP', 18, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (593, 34, 'CP', 19, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (594, 46, 'CP', 24, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (595, 46, 'CP', 25, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (597, 49, 'CP', 2, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (599, 49, 'CP', 3, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (600, 49, 'CP', 4, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (601, 49, 'CP', 5, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (602, 49, 'CP', 1, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (603, 49, 'CP', 8, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (604, 49, 'CP', 9, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (605, 49, 'CP', 10, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (606, 49, 'CP', 11, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (607, 49, 'CP', 12, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (608, 49, 'CP', 15, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (609, 49, 'CP', 16, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (610, 49, 'CP', 17, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (611, 49, 'CP', 18, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (612, 42, 'CP', 5, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (613, 47, 'CP', 19, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (615, 10, 'CP', 5, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (616, 50, 'CP', 26, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (617, 50, 'cp', 30, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (618, 20, 'CP', 1, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (619, 20, 'CP', 24, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (620, 18, 'JAZ', 4, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (621, 18, 'CE', 3, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (622, 18, 'CE', 4, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (623, 18, 'CE', 17, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (624, 18, 'CE', 25, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (625, 18, 'CE', 24, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (627, 18, 'CE', 2, 5, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (628, 18, 'ce', 22, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (630, 18, 'ce', 19, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (631, 30, 'cp', 16, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (632, 39, 'CP', 1, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (633, 39, 'cp', 11, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (634, 39, 'CP', 23, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (635, 39, 'CP', 25, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (636, 39, 'CP', 24, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (637, 39, 'CP', 26, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (638, 56, 'CP', 24, 4, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (639, 56, 'CP', 19, 4, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (640, 56, 'cp', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (641, 26, 'CP', 9, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (642, 26, 'CP', 10, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (643, 19, 'CP', 9, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (644, 43, 'RTT', 20, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (645, 43, 'cP', 21, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (646, 43, 'CP', 22, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (647, 43, 'CP', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (648, 43, 'CP', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (649, 55, 'CP', 9, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (650, 55, 'CP', 10, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (651, 5, 'RTT', 7, 6, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (652, 17, 'asc', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (659, 17, ' cp', 3, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (660, 17, 'cp', 4, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (661, 63, 'cp', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (662, 28, 'pont', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (663, 28, 'gre', 13, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (664, 56, 'gre', 13, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (665, 52, 'gre', 13, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (666, 52, 'cp', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (667, 52, 'bootc', 27, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (668, 52, 'bootc', 28, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (669, 52, 'bootc', 29, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (670, 63, 'gre', 13, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (671, 53, 'gre', 13, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (672, 52, 'rtt', 18, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (673, 52, 'jaz', 13, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (674, 52, 'jaz', 14, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (676, 53, 'cp', 11, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (677, 53, 'cp', 7, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (678, 49, ' Speaker Craft Alpes', 14, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (679, 14, 'CP', 9, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (681, 49, 'CP', 10, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (682, 14, 'CP', 10, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (683, 14, 'RTT', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (684, 29, 'cp', 9, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (685, 56, 'rtt', 20, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (686, 29, 'css', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (687, 28, 'cp', 29, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (688, 28, 'cp', 30, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (689, 28, 'cp', 31, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (690, 28, 'cp', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (691, 28, 'cp', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (692, 50, 'cp', 7, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (693, 35, 'CP', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (694, 35, 'CP', 27, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (695, 7, 'CP', 10, 5, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (696, 7, 'RTT', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (697, 7, 'RTT', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (699, 55, 'CP', 20, 5, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (700, 41, 'CP', 29, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (701, 42, 'cp', 29, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (702, 42, 'cp', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (703, 47, 'cp', 15, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (704, 44, 'malade', 13, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (705, 44, 'malade', 14, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (706, 44, 'malade', 15, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (709, 36, 'CP', 13, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (710, 36, 'CP', 14, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (711, 36, 'CP', 15, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (712, 36, 'CP', 16, 5, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (713, 32, 'RTT', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (714, 29, 'grenika', 13, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (715, 29, 'grenika', 13, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (716, 23, 'gre', 13, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (718, 17, 'gr', 13, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (725, 37, 'cp', 29, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (726, 37, 'cp', 31, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (727, 37, 'cp', 30, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (728, 31, 'RTT', 21, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (729, 10, 'mix-it', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (730, 10, 'mix-it', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (731, 24, 'mixit', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (732, 24, 'mixit', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (733, 30, 'mixit', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (734, 19, 'CP', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (735, 14, 'CP', 24, 5, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (736, 23, 'cp', 22, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (737, 23, 'cp', 23, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (738, 23, 'cp', 19, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (739, 23, 'cp', 24, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (740, 23, 'cp', 25, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (741, 23, 'cp', 26, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (742, 23, 'cp', 29, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (743, 23, 'cp', 30, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (744, 23, 'cp', 31, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (745, 35, 'CP', 8, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (746, 35, 'CP', 9, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (747, 35, 'CP', 10, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (748, 35, 'CP', 11, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (749, 35, 'CP', 12, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (750, 35, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (751, 35, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (752, 35, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (753, 35, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (754, 15, 'CP', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (755, 15, 'CP', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (756, 15, 'CP', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (757, 16, 'CP', 29, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (758, 12, 'RTT', 23, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (759, 12, 'RTT', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (760, 12, 'CP', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (762, 56, 'cp', 8, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (763, 56, 'cp', 9, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (764, 56, 'cp', 10, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (765, 56, 'cp', 26, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (766, 56, 'cp', 29, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (768, 56, 'cp', 31, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (769, 56, 'cp', 30, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (770, 56, 'cp', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (771, 56, 'cp', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (772, 56, 'cp', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (773, 56, 'cp', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (774, 56, 'cp', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (775, 56, 'cp', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (776, 56, 'cp', 22, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (777, 56, 'cp', 23, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (778, 45, 'RTT', 7, 6, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (779, 50, 'CP', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (780, 42, 'rtt', 21, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (781, 42, 'rtt', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (782, 10, 'CP', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (783, 21, 'cp', 15, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (784, 21, 'cp', 16, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (785, 21, 'cp', 17, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (787, 21, 'cp', 18, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (788, 21, 'cp', 19, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (789, 21, 'cp', 26, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (790, 21, 'cp', 29, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (791, 21, 'cp', 30, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (792, 21, 'cp', 31, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (793, 21, 'cp', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (795, 21, 'cp', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (796, 21, 'cp', 5, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (797, 21, 'cp', 6, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (798, 21, 'cp', 7, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (799, 21, 'cp', 8, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (800, 21, 'cp', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (801, 21, 'cp', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (802, 21, 'cp', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (803, 21, 'cp', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (804, 21, 'cp', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (806, 55, 'RTT', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (807, 30, 'RTT', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (808, 11, 'RTT', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (809, 43, 'CP', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (811, 52, 'cp', 5, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (812, 52, 'cp', 6, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (813, 52, 'cp', 7, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (814, 52, 'cp', 8, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (815, 52, 'cp', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (816, 52, 'cp', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (817, 52, 'cp', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (818, 52, 'cp', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (819, 52, 'cp', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (820, 52, 'cp', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (821, 52, 'cp', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (822, 52, 'cp', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (823, 52, 'cp', 22, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (824, 52, 'cp', 23, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (827, 29, 'jaz', 5, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (828, 47, 'cp', 31, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (829, 20, 'CP', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (830, 11, 'CP', 24, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (831, 57, 'CP', 5, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (832, 57, 'CP', 11, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (833, 57, 'CP', 12, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (834, 57, 'CP', 13, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (835, 57, 'CP', 14, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (836, 26, 'cp', 27, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (837, 26, 'cp', 28, 5, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (838, 50, 'cp', 20, 5, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (847, 22, 'RTT', 3, 6, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (848, 10, 'RTT', 4, 6, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (849, 53, 'cp', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (850, 53, 'cp', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (854, 28, 'cp', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (857, 63, 'cp', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (859, 29, 'cp', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (860, 29, 'cp', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (861, 29, 'cp', 5, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (862, 29, 'cp', 6, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (864, 29, 'cp', 8, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (865, 29, 'cp', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (866, 29, 'cp', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (867, 29, 'cp', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (869, 29, 'cp', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (870, 40, 'CP', 20, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (871, 40, 'CP', 21, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (872, 40, 'CP', 24, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (873, 34, 'RTT', 5, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (874, 11, 'CP', 7, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (875, 18, 'CP', 11, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (876, 18, 'CP', 13, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (877, 18, 'CP', 14, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (878, 18, 'CP', 12, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (879, 18, 'CP', 26, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (881, 18, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (882, 18, 'CP', 15, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (883, 18, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (884, 18, 'CP', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (885, 18, 'CP', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (886, 18, 'CP', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (888, 18, 'CP', 22, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (889, 18, 'CP', 16, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (890, 18, 'CP', 17, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (895, 18, 'CP', 23, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (896, 18, 'CP', 24, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (901, 18, 'CP', 30, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (902, 18, 'CP', 31, 10, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (903, 14, 'RTT', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (906, 24, 'Arrêt', 4, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (907, 24, 'Arrêt', 5, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (908, 24, 'Arrêt', 6, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (909, 24, 'Arrêt', 7, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (911, 24, 'Arrêt', 11, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (912, 24, 'Arrêt', 12, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (913, 24, 'Arrêt', 13, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (914, 24, 'Arrêt', 14, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (915, 7, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (917, 7, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (918, 7, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (920, 7, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (921, 7, 'CP', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (922, 7, 'CP', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (923, 7, 'CP', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (924, 7, 'CP', 22, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (925, 7, 'CP', 23, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (926, 7, 'CP', 26, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (927, 7, 'CP', 27, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (928, 7, 'CP', 28, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (929, 7, 'CP', 29, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (930, 7, 'CP', 30, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (931, 58, 'RTT', 7, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (933, 41, 'CP', 2, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (934, 41, 'CP', 3, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (935, 41, 'CP', 4, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (936, 41, 'CP', 5, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (937, 41, 'CP', 6, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (938, 41, 'CP', 9, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (939, 41, 'CP', 10, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (940, 41, 'CP', 11, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (941, 41, 'CP', 12, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (942, 41, 'CP', 13, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (943, 11, 'CP', 21, 6, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (944, 24, 'arrêt', 17, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (945, 24, 'arrêt', 18, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (946, 20, 'CP', 24, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (947, 20, 'CP', 25, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (948, 20, 'CP', 26, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (949, 20, 'CP', 27, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (950, 15, 'RTT', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (951, 15, 'RTT', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (953, 15, 'RTT', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (954, 15, 'RTT', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (955, 15, 'CP', 22, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (956, 15, 'CP', 23, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (957, 15, 'CP', 26, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (958, 15, 'CP', 27, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (959, 15, 'CP', 28, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (960, 15, 'CP', 29, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (961, 15, 'CP', 30, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (962, 63, 'craft jaz', 13, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (963, 37, 'craft jaz', 13, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (964, 17, 'craft jaz', 13, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (965, 53, 'craft jaz', 13, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (966, 16, 'RTT', 5, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (967, 14, 'CP', 14, 6, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (968, 23, 'cp', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (969, 23, 'cp', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (970, 23, 'cp', 5, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (971, 23, 'cp', 6, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (972, 23, 'cp', 7, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (973, 23, 'cp', 8, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (974, 23, 'cp', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (975, 24, 'arrêt', 19, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (976, 24, 'arrêt', 20, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (977, 24, 'arrêt', 21, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (978, 24, 'arrêt', 24, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (980, 24, 'arrêt', 25, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (981, 24, 'arrêt', 26, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (982, 24, 'arrêt', 27, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (983, 24, 'arrêt', 28, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (984, 24, 'Arrêt', 3, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (985, 42, 'CP', 8, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (986, 42, 'cp', 9, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (987, 42, 'cp', 10, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (988, 42, 'cp', 11, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (989, 42, 'cp', 12, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (990, 42, 'cp', 15, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (991, 42, 'cp', 16, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (992, 42, 'cp', 17, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (993, 10, 'cp', 25, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (994, 10, 'cp', 26, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (995, 10, 'cp', 29, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (996, 10, 'cp', 30, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (997, 10, 'cp', 31, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (998, 10, 'CP', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (999, 10, 'CP', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1000, 10, 'CP', 5, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1001, 10, 'CP', 6, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1002, 10, 'CP', 7, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1003, 10, 'CP', 23, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1004, 10, 'CP', 8, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1005, 10, 'CP', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1006, 10, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1007, 10, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1008, 10, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1010, 10, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1011, 10, 'CP', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1012, 10, 'CP', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1013, 10, 'CP', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1014, 10, 'CP', 22, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1015, 28, 'cp', 25, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1016, 47, 'cp', 21, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1017, 47, 'cp', 25, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1018, 47, 'cp', 17, 6, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1019, 43, 'CP', 2, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1020, 43, 'CP', 3, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1021, 43, 'CP', 4, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1022, 43, 'CP', 5, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1023, 43, 'CP', 6, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1024, 30, 'RTT', 24, 6, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1025, 44, 'CP', 1, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1026, 44, 'CP', 2, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1027, 44, 'CP', 3, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1028, 44, 'CP', 4, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1029, 44, 'CP', 5, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1030, 44, 'CP', 8, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1031, 44, 'CP', 9, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1033, 58, 'RTT', 10, 7, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1034, 55, 'CP', 15, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1035, 55, 'CP', 16, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1036, 55, 'CP', 17, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1037, 55, 'CP', 18, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1038, 55, 'CP', 19, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1039, 55, 'CP', 22, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1041, 55, 'CP', 23, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1042, 55, 'CP', 24, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1043, 55, 'CP', 25, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1044, 55, 'CP', 26, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1045, 55, 'CP', 29, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1046, 55, 'CP', 30, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1047, 55, 'CP', 31, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1050, 52, 'cp', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1051, 52, 'cp', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1052, 52, 'cp', 26, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1053, 52, 'cp', 27, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1054, 52, 'cp', 28, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1056, 36, 'CP', 25, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1057, 36, 'CP', 26, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1058, 36, 'CP', 27, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1059, 45, 'RTT', 27, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1060, 34, 'RTT', 26, 6, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1061, 26, 'CP', 8, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1062, 26, 'CP', 9, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1063, 26, 'CP', 10, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1065, 26, 'CP', 12, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1066, 26, 'CP', 15, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1067, 26, 'CP', 16, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1068, 26, 'CP', 17, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1069, 26, 'CP', 18, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1070, 26, 'CP', 19, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1071, 41, 'RTT', 27, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1072, 41, 'RTT', 28, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1073, 41, 'RTT', 1, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1074, 43, 'CP', 28, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1075, 57, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1076, 57, 'CP', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1077, 57, 'CP', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1078, 57, 'CP', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1079, 57, 'CP', 22, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1080, 57, 'CP', 23, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1081, 57, 'CP', 26, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1082, 57, 'CP', 27, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1083, 57, 'CP', 28, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1084, 57, 'cP', 29, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1085, 57, 'CP', 30, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1086, 50, 'AM', 1, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1087, 50, 'AM', 24, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1088, 50, 'AM', 25, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1089, 50, 'AM', 26, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1090, 50, 'AM', 27, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1091, 50, 'AM', 28, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1092, 50, 'AM', 21, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1093, 50, 'AVV', 20, 6, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1094, 20, 'CP', 28, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1095, 16, 'CP', 10, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1096, 53, 'cp', 8, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1097, 53, 'cp', 9, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1098, 53, 'cp', 10, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1099, 53, 'rtt', 11, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1100, 7, 'CP', 8, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1101, 34, 'CP', 8, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1102, 42, 'rtt', 18, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1103, 31, 'CP', 11, 7, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1104, 31, 'CP', 12, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1105, 42, 'rtt', 19, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1106, 30, 'CP', 22, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1107, 30, 'CP', 23, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1108, 30, 'CP', 24, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1109, 30, 'CP', 25, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1110, 30, 'CP', 26, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1111, 30, 'CP', 29, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1112, 30, 'CP', 30, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1113, 30, 'CP', 31, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1114, 34, 'CP', 26, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1115, 11, 'CP', 29, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1116, 11, 'CP', 30, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1117, 11, 'CP', 31, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1118, 51, 'RTT', 5, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1119, 11, 'RTT', 15, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1120, 55, 'RTT', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1121, 55, 'RTT', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1122, 11, 'CP', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1123, 11, 'CP', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1124, 32, 'RTT', 12, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1125, 45, 'RTT', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1126, 45, 'RTT', 5, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1127, 38, 'CP', 5, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1128, 38, 'CP', 6, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1129, 38, 'CP', 7, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1130, 38, 'CP', 8, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1131, 38, 'CP', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1132, 38, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1133, 38, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1136, 38, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1137, 38, 'CP', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1138, 38, 'CP', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1139, 38, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1140, 38, 'CP', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1141, 38, 'CP', 22, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1142, 38, 'CP', 23, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1144, 34, 'CP', 8, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1145, 34, 'CP', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1146, 34, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1147, 34, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1148, 34, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1149, 34, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1150, 34, 'CP', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1151, 34, 'CP', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1152, 30, 'CP', 8, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1153, 30, 'CP', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1154, 30, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1155, 30, 'CP', 13, 8, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1156, 36, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1157, 36, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1158, 36, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1159, 36, 'CP', 15, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1160, 36, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1161, 36, 'CP', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1162, 36, 'CP', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1163, 11, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1164, 11, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1165, 11, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1166, 11, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1167, 30, 'CP', 13, 8, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1168, 30, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1169, 43, 'CP', 29, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1170, 43, 'CP', 30, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1171, 44, 'CP', 16, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1172, 44, 'CP', 17, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1173, 44, 'CP', 18, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1174, 44, 'CP', 19, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1175, 44, 'CP', 20, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1177, 26, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1182, 26, 'CP', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1183, 26, 'CP', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1184, 26, 'CP', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1185, 26, 'CP', 22, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1186, 26, 'CP', 23, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1187, 26, 'CP', 26, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1188, 26, 'CP', 27, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1189, 19, 'maladie', 9, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1196, 50, 'maladie', 2, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1197, 50, 'maladie', 3, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1198, 50, 'maladie', 4, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1199, 50, 'maladie ', 8, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1200, 50, 'maladie', 9, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1201, 50, 'maladie', 10, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1202, 50, 'maladie', 11, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1203, 50, 'maladie', 12, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1204, 39, 'CP', 22, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1205, 39, 'CP', 23, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1206, 39, 'CP', 24, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1207, 39, 'CP', 25, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1208, 39, 'CP', 26, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1209, 39, 'CP', 29, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1210, 39, 'CP', 30, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1211, 39, 'CP', 31, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1212, 39, 'RTT', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1213, 39, 'RTT', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1215, 46, 'CP', 1, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1216, 46, 'CP', 2, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1217, 46, 'CP', 3, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1218, 46, 'CP', 4, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1219, 46, 'CP', 5, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1220, 46, 'CP', 8, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1221, 46, 'CP', 9, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1222, 46, 'CP', 10, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1223, 46, 'CP', 11, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1224, 46, 'CP', 12, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1229, 42, 'cp', 5, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1231, 37, 'cp', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1232, 37, 'cp', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1256, 48, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1257, 48, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1258, 48, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1259, 48, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1267, 12, 'CP', 19, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1270, 15, 'CP', 25, 7, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1271, 49, 'CP', 26, 7, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1272, 50, 'CP', 25, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1273, 50, 'CP', 26, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1274, 50, 'CP', 29, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1275, 50, 'CP', 30, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1277, 47, 'CP', 28, 5, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1279, 46, 'cp', 6, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1280, 46, 'cp', 21, 6, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1281, 63, 'cp', 8, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1282, 50, 'maladie', 5, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1283, 11, 'cp', 2, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1284, 11, 'cp', 3, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1285, 11, 'cp', 4, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1286, 11, 'cp', 5, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1287, 11, 'cp', 6, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1288, 11, 'cp', 9, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1291, 22, 'RTT', 29, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1292, 22, 'RTT', 30, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1293, 22, 'RTT', 31, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1294, 22, 'CP', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1295, 22, 'CP', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1296, 22, 'CP', 5, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1297, 22, 'CP', 6, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1298, 22, 'CP', 7, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1299, 22, 'CP', 8, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1300, 22, 'CP', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1301, 22, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1302, 22, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1303, 31, 'CP', 16, 7, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1304, 25, 'souffrant', 17, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1305, 55, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1309, 34, '&#96;CP', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1310, 45, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1311, 45, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1312, 45, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1313, 45, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1314, 44, 'RTT', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1315, 44, 'RTT', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1316, 30, 'RTT', 19, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1317, 31, 'RTT', 18, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1318, 40, 'CP', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1319, 40, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1320, 40, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1321, 40, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1322, 40, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1323, 40, 'CP', 5, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1324, 40, 'CP', 6, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1325, 40, 'CP', 7, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1326, 40, 'CP', 8, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1327, 40, 'CP', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1328, 19, 'CP', 8, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1329, 28, 'cp', 19, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1330, 63, 'rtt', 19, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1331, 56, 'cp', 25, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1332, 56, 'rtt', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1333, 56, 'rtt', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1334, 56, 'rtt', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1335, 7, 'CSS', 23, 7, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1336, 14, 'CP', 31, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1337, 14, 'CP', 1, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1338, 14, 'CP', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1339, 14, 'CP', 5, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1340, 14, 'CP', 6, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1341, 14, 'CP', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1342, 14, 'CP', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1343, 14, 'CP', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1344, 14, 'CP', 22, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1347, 14, 'CP', 23, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1348, 43, 'RTT', 26, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1349, 51, 'CP', 25, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1350, 36, 'RTT', 26, 7, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1351, 63, 'cp', 26, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1352, 17, 'cp', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1353, 17, 'cp', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1354, 17, 'cp', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1355, 17, 'cp', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1356, 24, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1357, 42, 'cp', 2, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1358, 42, 'cp', 3, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1359, 42, 'cp', 4, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1360, 42, 'cp', 5, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1361, 42, 'cp', 6, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1362, 43, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1363, 34, 'RTT', 12, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1364, 14, 'RTT', 7, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1365, 5, 'RTT', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1366, 51, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1367, 16, 'CP', 2, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1370, 30, 'RTT', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1371, 30, 'CP', 30, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1372, 12, 'RTT', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1373, 41, 'RTT', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1374, 33, 'RTT', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1375, 47, 'CP', 5, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1376, 47, 'CP', 6, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1377, 47, 'CP', 7, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1378, 47, 'CP', 8, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1379, 47, 'CP', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1380, 47, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1381, 47, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1382, 47, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1383, 47, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1384, 47, 'CP', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1385, 47, 'CP', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1386, 47, 'CP', 21, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1387, 47, 'CP', 22, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1388, 47, 'CP', 23, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1389, 16, 'RTT', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1390, 16, 'RTT', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1392, 64, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1393, 42, 'CP', 9, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1394, 42, 'CP', 10, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1395, 42, 'CP', 11, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1396, 44, 'RTT', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1397, 44, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1398, 44, 'MP', 19, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1399, 44, 'MP', 20, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1400, 20, 'CP', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1401, 50, 'rtt', 23, 8, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1402, 35, 'CP', 9, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1403, 51, 'CP', 12, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1404, 51, 'CP', 13, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1405, 51, 'CP', 14, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1406, 31, 'RTT', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1407, 58, 'RTT', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1408, 11, 'RTT', 30, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1409, 38, 'RTT', 5, 9, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1410, 35, 'CP', 20, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1411, 23, 'css', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1412, 23, 'css', 26, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1413, 23, 'css', 30, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1414, 17, 'rtt', 26, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1415, 32, 'RTT', 16, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1418, 53, 'rtt', 21, 8, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1419, 53, 'cp', 26, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1420, 53, 'cp', 27, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1421, 63, 'rtt', 30, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1422, 42, 'CP', 28, 8, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1423, 42, 'cp', 12, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1424, 42, 'cp', 13, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1425, 29, 'rtt', 31, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1427, 39, 'cp', 21, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1429, 39, 'cp', 22, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1430, 39, 'cp', 23, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1431, 39, 'cp', 24, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1432, 39, 'cp', 25, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1433, 65, 'CSS', 1, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1434, 65, 'CSS', 2, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1436, 65, 'CSS', 3, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1437, 65, 'CSS', 4, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1438, 28, 'cp', 9, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1439, 28, 'cp', 10, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1440, 28, 'cp', 11, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1441, 28, 'cp', 12, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1442, 28, 'cp', 13, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1443, 23, 'jaz', 14, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1444, 23, 'jaz', 15, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1445, 23, 'jaz', 16, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1446, 37, 'cp', 29, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1447, 37, 'cp', 30, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1448, 37, 'cp', 31, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1449, 37, 'cp', 28, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1450, 7, 'RTT', 7, 8, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1451, 19, 'RTT', 9, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1452, 24, 'CP', 30, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1453, 24, 'CP', 1, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1454, 24, 'CP', 2, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1455, 24, 'CP', 3, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1456, 24, 'CP', 4, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1457, 58, 'CP', 14, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1460, 58, 'CP', 15, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1461, 58, 'CP', 16, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1462, 58, 'CP', 17, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1463, 58, 'CP', 18, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1464, 58, 'CP', 21, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1465, 58, 'CP', 22, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1466, 58, 'CP', 23, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1467, 58, 'CP', 24, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1468, 58, 'CP', 25, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1469, 36, 'RTT', 7, 10, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1470, 20, 'rtt', 9, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1471, 20, 'cp', 10, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1472, 20, 'cp', 11, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1473, 20, 'cp', 12, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1474, 20, 'cp', 13, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1475, 27, 'cp', 9, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1476, 27, 'cp', 10, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1477, 27, 'cp', 11, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1478, 27, 'cp', 12, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1479, 27, 'cp', 13, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1480, 33, 'RTT', 2, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1481, 34, 'CP', 4, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1482, 34, 'CP', 5, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1483, 34, 'CP', 6, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1484, 34, 'CP', 7, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1485, 34, 'CP', 8, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1486, 32, 'CP', 28, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1487, 32, 'CP', 29, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1488, 32, 'CP', 30, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1489, 32, 'CP', 31, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1490, 32, 'CP', 18, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1491, 16, 'SS', 20, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1492, 51, 'CP', 11, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1493, 51, 'CP', 12, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1494, 51, 'CP', 13, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1495, 35, 'RTT', 13, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1496, 26, 'CP', 10, 9, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1497, 26, 'CP', 11, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1498, 26, 'CP', 13, 9, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1499, 26, 'CP', 17, 9, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1500, 71, 'CSS', 1, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1501, 71, 'CSS', 2, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1502, 71, 'CSS', 3, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1503, 71, 'CSS', 4, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1504, 50, 'RTT', 13, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1506, 58, 'RTT', 30, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1507, 46, 'RTT', 9, 9, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1508, 17, 'cp', 3, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1509, 17, 'cp', 4, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1510, 56, 'cp', 30, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1511, 56, 'cp', 31, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1521, 34, 'RTT', 17, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1524, 10, 'RTT', 20, 9, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1525, 51, 'CSS', 19, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1526, 54, 'CP', 7, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1527, 54, 'CP', 8, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1528, 54, 'CP', 9, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1529, 54, 'CP', 10, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1531, 54, 'CP', 14, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1532, 54, 'CP', 15, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1533, 54, 'CP', 16, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1534, 54, 'CP', 17, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1536, 54, 'CP', 21, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1537, 54, 'CP', 22, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1538, 54, 'CP', 23, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1539, 54, 'CP', 24, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1541, 54, 'CP', 29, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1542, 54, 'CP', 30, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1543, 54, 'CP', 31, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1545, 41, 'fin contrat', 18, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1546, 41, 'fin contrat', 19, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1547, 41, 'fin de contrat', 20, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1548, 41, 'fin de contrat', 21, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1549, 41, 'fin de contrat', 22, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1550, 41, 'fin de contrat', 25, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1551, 41, 'fin de contrat', 26, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1552, 41, 'fin de contrat', 27, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1553, 41, 'fin de contrat', 28, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1554, 41, 'fin de contrat', 29, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1555, 14, 'RTT', 30, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1556, 53, 'rtt', 5, 9, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1557, 53, 'rtt', 6, 9, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1558, 53, 'cp', 11, 9, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1562, 40, 'RTT', 29, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1563, 40, 'RTT', 30, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1564, 40, 'RTT', 31, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1565, 10, 'CP', 27, 9, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1566, 52, 'cp', 30, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1567, 52, 'cp', 31, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1568, 52, 'cp', 23, 12, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1569, 52, 'cp', 24, 12, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1570, 54, 'cp', 28, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1571, 41, 'RTT', 2, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1572, 33, 'CP', 3, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1573, 51, 'CP', 4, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1574, 7, 'CP', 21, 10, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1575, 7, 'CP', 22, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1576, 33, 'cp', 15, 7, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1577, 15, 'CP', 25, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1578, 66, 'AM', 7, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1579, 66, 'AM', 8, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1580, 66, 'AM', 9, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1581, 66, 'AM', 10, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1582, 66, 'AM', 11, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1583, 66, 'AM', 14, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1584, 66, 'AM', 15, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1585, 66, 'AM', 16, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1586, 66, 'AM', 17, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1588, 45, 'RTT', 11, 10, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1589, 49, 'RTT', 26, 11, 2019, 0.5);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1590, 49, 'RTT', 27, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1591, 49, 'RTT', 28, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1592, 49, 'RTT', 29, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1593, 58, 'CP', 13, 12, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1594, 58, 'RTT', 16, 12, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1595, 23, 'cp', 4, 10, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1599, 43, 'RTT', 29, 11, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1600, 43, 'RTT', 2, 12, 2019, 1);
INSERT INTO public.absence_off (id_absence_off, id_consultant, comment, date, month, year, duration) VALUES (1614, 51, 'CP', 10, 10, 2019, 0.5);


--
-- TOC entry 2933 (class 0 OID 16409)
-- Dependencies: 201
-- Data for Name: billable_days; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (8, 54, 18, 1, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (9, 60, 12, 1, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (13, 18, 10, 1, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (15, 15, 22, 1, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (17, 21, 12, 1, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (18, 58, 17, 1, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (19, 24, 19, 1, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (20, 29, 3, 1, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (21, 31, 19, 1, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (22, 10, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (23, 11, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (24, 47, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (25, 20, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (26, 41, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (27, 50, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (28, 33, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (29, 48, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (30, 15, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (31, 16, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (33, 12, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (34, 39, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (37, 41, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (38, 10, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (39, 10, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (40, 10, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (41, 10, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (42, 10, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (45, 33, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (46, 10, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (47, 30, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (50, 12, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (52, 15, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (53, 16, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (54, 41, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (55, 33, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (56, 12, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (57, 16, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (58, 48, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (59, 15, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (60, 14, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (62, 5, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (64, 19, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (65, 58, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (66, 24, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (67, 7, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (69, 25, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (70, 26, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (72, 28, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (74, 27, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (75, 8, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (76, 30, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (77, 31, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (78, 32, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (80, 34, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (81, 35, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (82, 36, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (83, 38, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (84, 40, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (85, 42, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (86, 43, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (87, 44, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (88, 45, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (89, 46, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (90, 49, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (91, 56, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (94, 55, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (95, 57, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (96, 21, 8, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (97, 61, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (98, 52, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (100, 53, 21, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (105, 54, 16, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (106, 11, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (107, 5, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (109, 18, 11, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (110, 61, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (111, 20, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (112, 47, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (113, 50, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (114, 55, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (115, 18, 8, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (116, 22, 15, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (118, 5, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (122, 10, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (123, 38, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (124, 61, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (125, 20, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (126, 22, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (127, 58, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (128, 50, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (129, 46, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (130, 49, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (131, 14, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (132, 7, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (133, 32, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (134, 31, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (135, 30, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (138, 27, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (139, 25, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (140, 26, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (141, 24, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (144, 19, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (145, 17, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (146, 8, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (147, 45, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (148, 45, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (149, 44, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (150, 40, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (151, 55, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (152, 56, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (153, 35, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (154, 49, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (155, 50, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (156, 56, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (157, 55, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (158, 44, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (159, 41, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (160, 40, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (161, 35, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (162, 33, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (163, 31, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (164, 30, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (165, 25, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (166, 24, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (167, 58, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (168, 22, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (169, 20, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (170, 61, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (171, 5, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (172, 12, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (173, 11, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (174, 14, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (175, 46, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (176, 11, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (177, 55, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (178, 56, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (179, 50, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (180, 49, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (181, 46, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (182, 45, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (183, 44, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (184, 41, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (185, 40, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (186, 35, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (187, 33, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (188, 31, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (189, 30, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (190, 25, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (191, 24, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (192, 58, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (193, 22, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (194, 20, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (195, 61, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (196, 5, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (197, 14, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (198, 12, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (199, 43, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (201, 42, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (202, 56, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (203, 49, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (204, 46, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (205, 45, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (206, 44, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (207, 59, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (209, 53, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (210, 17, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (211, 53, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (213, 40, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (214, 35, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (215, 17, 20, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (217, 31, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (218, 25, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (220, 24, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (221, 7, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (222, 14, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (223, 19, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (224, 21, 6, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (225, 26, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (226, 57, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (227, 54, 16, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (228, 53, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (229, 52, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (231, 48, 19, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (232, 43, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (233, 39, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (234, 8, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (235, 27, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (236, 28, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (237, 29, 16, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (239, 29, 17, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (240, 34, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (241, 38, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (242, 32, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (243, 36, 20, 2, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (244, 34, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (245, 36, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (246, 42, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (247, 47, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (248, 54, 18, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (249, 57, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (250, 7, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (251, 57, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (252, 15, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (253, 16, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (254, 19, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (255, 26, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (256, 8, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (257, 27, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (258, 32, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (259, 34, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (260, 36, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (261, 38, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (262, 42, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (263, 47, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (264, 48, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (265, 54, 14, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (266, 7, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (267, 15, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (268, 16, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (269, 19, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (270, 26, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (271, 8, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (272, 27, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (273, 32, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (274, 34, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (275, 36, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (276, 38, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (277, 42, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (278, 47, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (279, 48, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (280, 54, 16, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (281, 57, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (282, 43, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (283, 39, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (287, 53, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (288, 28, 10, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (291, 18, 8, 3, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (295, 62, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (296, 63, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (298, 63, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (299, 63, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (300, 52, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (305, 43, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (308, 52, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (310, 28, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (312, 39, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (313, 23, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (316, 39, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (317, 37, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (318, 29, 15, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (319, 23, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (321, 52, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (327, 29, 17, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (329, 11, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (334, 17, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (335, 28, 20, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (338, 23, 21, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (340, 18, 8, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (342, 64, 4, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (343, 37, 14, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (344, 64, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (347, 29, 16, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (348, 21, 8, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (353, 56, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (365, 52, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (369, 29, 11, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (370, 8, 5, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (371, 21, 6, 4, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (372, 18, 8, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (377, 21, 15, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (380, 41, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (381, 51, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (383, 51, 19, 6, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (384, 15, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (386, 21, 10, 5, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (387, 7, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (388, 14, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (389, 16, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (390, 58, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (391, 26, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (392, 27, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (393, 32, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (394, 34, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (395, 36, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (396, 39, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (397, 57, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (399, 64, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (400, 49, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (401, 48, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (402, 47, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (403, 42, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (404, 7, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (405, 14, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (406, 15, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (407, 16, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (408, 58, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (409, 26, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (410, 27, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (411, 32, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (412, 34, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (413, 36, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (414, 38, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (415, 38, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (416, 42, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (417, 47, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (418, 48, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (419, 49, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (420, 64, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (422, 57, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (423, 21, 15, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (425, 28, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (426, 23, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (427, 17, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (428, 37, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (429, 11, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (430, 12, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (432, 24, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (433, 40, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (434, 43, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (435, 63, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (437, 17, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (438, 56, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (439, 11, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (440, 30, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (443, 55, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (444, 10, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (445, 50, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (446, 11, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (447, 12, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (448, 17, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (449, 47, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (450, 22, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (451, 22, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (452, 22, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (453, 5, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (454, 5, 11, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (455, 15, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (456, 7, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (457, 14, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (458, 16, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (459, 20, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (460, 19, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (461, 23, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (462, 58, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (463, 24, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (464, 24, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (465, 24, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (466, 10, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (467, 25, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (468, 26, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (469, 27, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (470, 28, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (471, 30, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (472, 31, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (473, 32, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (474, 31, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (475, 31, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (476, 31, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (477, 38, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (478, 37, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (479, 36, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (480, 35, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (481, 35, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (482, 35, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (483, 34, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (484, 33, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (485, 33, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (486, 33, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (487, 39, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (488, 40, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (489, 41, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (490, 41, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (491, 42, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (492, 43, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (493, 44, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (494, 45, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (495, 44, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (496, 44, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (497, 46, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (498, 46, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (499, 46, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (500, 63, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (502, 45, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (503, 45, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (504, 48, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (505, 49, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (506, 50, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (507, 50, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (508, 51, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (509, 64, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (510, 56, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (511, 57, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (512, 52, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (513, 53, 23, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (514, 54, 19, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (515, 54, 16, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (516, 54, 17, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (518, 55, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (519, 55, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (520, 55, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (521, 30, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (522, 25, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (523, 25, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (524, 20, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (525, 20, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (527, 23, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (528, 28, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (530, 18, 9, 7, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (531, 18, 8, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (532, 18, 8, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (533, 18, 10, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (535, 37, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (536, 39, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (537, 40, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (538, 40, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (539, 43, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (540, 40, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (542, 66, 11, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (547, 66, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (548, 29, 18, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (551, 40, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (552, 11, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (553, 53, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (555, 67, 16, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (556, 67, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (557, 67, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (558, 67, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (559, 70, 1, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (560, 68, 6, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (561, 69, 11, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (562, 11, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (563, 11, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (564, 29, 17, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (565, 25, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (566, 7, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (571, 7, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (572, 19, 21, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (575, 19, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (576, 19, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (577, 19, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (578, 29, 17, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (579, 51, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (580, 51, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (581, 51, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (739, 10, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (583, 51, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (584, 52, 21, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (585, 7, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (586, 14, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (587, 71, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (588, 71, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (589, 71, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (590, 15, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (591, 16, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (592, 38, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (593, 38, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (594, 38, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (595, 36, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (596, 36, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (597, 35, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (598, 35, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (599, 34, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (600, 34, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (601, 33, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (602, 32, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (603, 32, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (604, 30, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (605, 26, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (606, 26, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (607, 58, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (608, 58, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (610, 27, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (611, 41, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (612, 57, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (613, 57, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (614, 56, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (615, 56, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (616, 50, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (617, 50, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (618, 49, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (619, 49, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (620, 48, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (621, 48, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (622, 46, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (623, 46, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (624, 43, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (625, 42, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (626, 42, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (627, 70, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (628, 45, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (629, 45, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (630, 45, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (631, 64, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (632, 64, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (633, 20, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (634, 69, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (635, 39, 19, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (636, 53, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (637, 52, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (638, 47, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (639, 44, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (640, 37, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (641, 68, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (642, 23, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (643, 22, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (644, 17, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (645, 65, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (646, 21, 9, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (647, 63, 16, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (649, 28, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (651, 27, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (654, 53, 22, 8, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (656, 72, 11, 9, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (657, 72, 23, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (658, 72, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (659, 70, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (660, 22, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (661, 14, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (662, 15, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (663, 24, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (664, 41, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (665, 66, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (666, 47, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (667, 55, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (668, 69, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (669, 16, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (670, 70, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (671, 20, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (672, 25, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (673, 43, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (674, 14, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (675, 16, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (676, 58, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (677, 26, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (678, 32, 10, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (679, 34, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (680, 36, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (681, 66, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (682, 47, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (683, 48, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (684, 49, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (685, 50, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (686, 64, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (687, 55, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (688, 57, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (689, 42, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (690, 18, 7, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (692, 18, 8, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (693, 33, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (694, 54, 16, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (695, 20, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (696, 24, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (697, 25, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (698, 27, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (699, 30, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (700, 35, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (701, 69, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (702, 72, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (705, 44, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (706, 44, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (707, 17, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (710, 23, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (711, 23, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (712, 28, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (716, 28, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (717, 29, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (720, 21, 5, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (721, 56, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (723, 53, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (724, 17, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (725, 29, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (727, 30, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (728, 37, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (729, 37, 21, 12, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (730, 53, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (731, 54, 19, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (732, 73, 19, 11, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (733, 73, 9, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (734, 21, 8, 10, 2019);
INSERT INTO public.billable_days (id_billable_day, id_consultant, nb_billable_days, month, year) VALUES (735, 21, 4, 11, 2019);


--
-- TOC entry 2935 (class 0 OID 16417)
-- Dependencies: 203
-- Data for Name: consultants; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (10, 'Moustapha', 'Agack', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (11, 'Renaud', 'Aste', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (14, 'Robin', 'Bergere', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (15, 'Yanis', 'Boulaouinat', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (16, 'Brice', 'Buffa', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (17, 'Martin', 'Choraine', 3, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (18, 'Vincent', 'Daviet', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (19, 'Alban', 'Deconinck', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (20, 'Loic', 'Duchet', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (21, 'Jean', 'Dupuis', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (24, 'Priscille', 'Faÿ', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (25, 'Clément', 'Frémont', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (26, 'Victor', 'Gallet', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (27, 'Alexandre', 'Gory', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (28, 'Jules', 'Hablot', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (29, 'Laurence', 'Hanot', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (30, 'Emmanuel', 'Hervé', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (7, 'Daphné ', 'Bellemin', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (33, 'Fabien', 'Lafarge', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (34, 'Solène', 'Lassiaille', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (35, 'Etienne', 'Laurent', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (36, 'Arnaud', 'Le Bec', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (37, 'Guillaume', 'Le Floch', 5, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (38, 'Benoit', 'Luttringer', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (40, 'Mathieu', 'Mure', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (42, 'JB', 'Parisot', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (43, 'Olivier', 'Perez', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (44, 'Jérémie', 'Picard', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (45, 'Martin', 'Piegay', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (46, 'Clémence', 'Piteau', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (47, 'FX', 'Ponscarme', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (48, 'Antoine', 'Roux', 2, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (49, 'Nastasia', 'Saby', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (50, 'Ilyes', 'Semlali', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (51, 'Martin', 'Steffen', 6, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (52, 'Laurent', 'Tardif', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (53, 'Hadrien', 'Thomas', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (54, 'J-Luc', 'Toureille', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (55, 'Louis', 'Tournayre', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (56, 'Christophe', 'Tardella', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (57, 'Safia', 'Zouaoui', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (23, 'Emmanuel', 'Etasse', 4, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (22, 'Chaima', 'Ennar', 3, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (58, 'Guillaume', 'Facchini', 1, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (59, 'Benoit', 'Mathieu', 4, 2018, 2, 2019);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (60, 'Julien', 'Bourgain', 10, 2013, 1, 2019);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (61, 'Timothée', 'Ducet (ST)', 6, 2018, 12, 2018);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (62, 'Juien', 'PRUGNE', 12, 2018, 12, 2018);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (64, 'Julien', 'SULPIS', 5, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (8, 'Justine', 'Gaudin', 1, 2019, 7, 2019);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (63, 'Julien', 'PRUGNE', 4, 2019, 9, 2019);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (5, 'Antoine', 'Caron', 1, 2019, 8, 2019);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (65, 'Valentin', 'Chabrier', 10, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (66, 'Maria-Eliza', 'Paez', 9, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (12, 'Reda', 'Balkouch', 1, 2019, 8, 2019);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (67, 'Alexandre', 'Carrabin', 9, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (68, 'Nicolas', 'Hodicq', 9, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (69, 'Théo', 'Murgat', 9, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (70, 'Marion', 'Curtil', 9, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (71, 'Maxence', 'Bernier', 10, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (31, 'Damien', 'Jacinto', 1, 2019, 9, 2019);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (39, 'Matthieu', 'Lux', 1, 2019, 10, 2019);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (72, 'Pierre', 'Reynaud', 9, 2019, NULL, NULL);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (41, 'Cédric', 'Nisio', 1, 2019, 11, 2019);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (32, 'Samuel', 'Lacroix', 1, 2019, 12, 2019);
INSERT INTO public.consultants (id_consultant, first_name, last_name, starts_after_month, starts_after_year, leaves_after_month, leaves_after_year) VALUES (73, 'Julien', 'Nguyen', 10, 2019, NULL, NULL);


--
-- TOC entry 2937 (class 0 OID 16428)
-- Dependencies: 205
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.customers (id_customer, customer_name) VALUES (1, 'M6');
INSERT INTO public.customers (id_customer, customer_name) VALUES (2, 'JAZ');
INSERT INTO public.customers (id_customer, customer_name) VALUES (3, 'JNF');
INSERT INTO public.customers (id_customer, customer_name) VALUES (4, 'SEB');
INSERT INTO public.customers (id_customer, customer_name) VALUES (5, 'ENEDIS');
INSERT INTO public.customers (id_customer, customer_name) VALUES (6, 'EMH');
INSERT INTO public.customers (id_customer, customer_name) VALUES (7, 'MICHELIN');
INSERT INTO public.customers (id_customer, customer_name) VALUES (8, 'FORMATION INTER');
INSERT INTO public.customers (id_customer, customer_name) VALUES (9, 'FORMATION INTRA');
INSERT INTO public.customers (id_customer, customer_name) VALUES (10, 'ATIH');
INSERT INTO public.customers (id_customer, customer_name) VALUES (11, 'ALPTIS');
INSERT INTO public.customers (id_customer, customer_name) VALUES (12, 'ARaymond');
INSERT INTO public.customers (id_customer, customer_name) VALUES (13, 'BUDGET DT');
INSERT INTO public.customers (id_customer, customer_name) VALUES (14, 'CARREFOUR');
INSERT INTO public.customers (id_customer, customer_name) VALUES (15, 'CD69');
INSERT INTO public.customers (id_customer, customer_name) VALUES (16, 'CNAM');
INSERT INTO public.customers (id_customer, customer_name) VALUES (17, 'EDF');
INSERT INTO public.customers (id_customer, customer_name) VALUES (18, 'GROUPAMA');
INSERT INTO public.customers (id_customer, customer_name) VALUES (19, 'JOA');
INSERT INTO public.customers (id_customer, customer_name) VALUES (20, 'LIZEO');
INSERT INTO public.customers (id_customer, customer_name) VALUES (21, 'OCEA');
INSERT INTO public.customers (id_customer, customer_name) VALUES (22, 'OPPIDO');
INSERT INTO public.customers (id_customer, customer_name) VALUES (23, 'PARTECIS');
INSERT INTO public.customers (id_customer, customer_name) VALUES (24, 'RICHEMONT');
INSERT INTO public.customers (id_customer, customer_name) VALUES (25, 'SAMSE');
INSERT INTO public.customers (id_customer, customer_name) VALUES (26, 'SCHNEIDER');
INSERT INTO public.customers (id_customer, customer_name) VALUES (27, 'SNCF');
INSERT INTO public.customers (id_customer, customer_name) VALUES (28, 'WICO');
INSERT INTO public.customers (id_customer, customer_name) VALUES (29, 'BECTON DICKINSON');
INSERT INTO public.customers (id_customer, customer_name) VALUES (30, 'STORMSHIELD');
INSERT INTO public.customers (id_customer, customer_name) VALUES (31, 'ATOS');
INSERT INTO public.customers (id_customer, customer_name) VALUES (32, 'BECTON DICKINSON');
INSERT INTO public.customers (id_customer, customer_name) VALUES (33, 'BEE BUZZINESS');
INSERT INTO public.customers (id_customer, customer_name) VALUES (34, 'UNIVERSITÉ AVIGNON');
INSERT INTO public.customers (id_customer, customer_name) VALUES (35, 'KAYENTIS');
INSERT INTO public.customers (id_customer, customer_name) VALUES (36, 'NTN-SNR');
INSERT INTO public.customers (id_customer, customer_name) VALUES (37, 'AGILETOYOU');
INSERT INTO public.customers (id_customer, customer_name) VALUES (38, 'SOPRA ORANGE');
INSERT INTO public.customers (id_customer, customer_name) VALUES (39, 'FOEDERIS');
INSERT INTO public.customers (id_customer, customer_name) VALUES (40, 'GEO-SATIS');
INSERT INTO public.customers (id_customer, customer_name) VALUES (41, 'IT-CE');
INSERT INTO public.customers (id_customer, customer_name) VALUES (42, 'ETAT DE FRIBOURG');
INSERT INTO public.customers (id_customer, customer_name) VALUES (43, 'Vaudoise Assurance');
INSERT INTO public.customers (id_customer, customer_name) VALUES (44, 'CEA');
INSERT INTO public.customers (id_customer, customer_name) VALUES (45, 'LA POSTE');
INSERT INTO public.customers (id_customer, customer_name) VALUES (46, 'CEGID');
INSERT INTO public.customers (id_customer, customer_name) VALUES (47, 'ARRET MALADIE');
INSERT INTO public.customers (id_customer, customer_name) VALUES (48, 'APICIL');
INSERT INTO public.customers (id_customer, customer_name) VALUES (49, 'GENERAL ELECTRIC');
INSERT INTO public.customers (id_customer, customer_name) VALUES (50, 'GEOLITHE');
INSERT INTO public.customers (id_customer, customer_name) VALUES (51, 'POLE EMPLOI');
INSERT INTO public.customers (id_customer, customer_name) VALUES (52, 'DIABELOOP');


--
-- TOC entry 2941 (class 0 OID 16447)
-- Dependencies: 209
-- Data for Name: daily_costs; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.daily_costs (id_daily_cost, id_consultant, month, year, price) VALUES (1, 7, 3, 2019, 200);


--
-- TOC entry 2939 (class 0 OID 16439)
-- Dependencies: 207
-- Data for Name: staffing; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (850, 48, 5, 10, 2019, 22, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (131, 16, 18, 4, 2019, 10, 470);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (92, 39, 5, 3, 2019, 2, 1500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (93, 5, 1, 3, 2019, 21, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (857, 56, 16, 7, 2019, 3, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (104, 10, 21, 12, 2019, 21, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (73, 15, 18, 1, 2019, 20.5, 491);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (461, 18, 17, 4, 2019, 2, 1900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (121, 52, 25, 3, 2019, 7, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (9, 8, 6, 3, 2019, 2, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (128, 41, 14, 4, 2019, 14.5, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (26, 46, 21, 1, 2019, 17.5, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (101, 10, 21, 9, 2019, 20, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (98, 41, 14, 2, 2019, 19, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (99, 10, 21, 7, 2019, 17, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (66, 57, 5, 1, 2019, 18.5, 605);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (77, 14, 18, 1, 2019, 22, 407);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (450, 11, 9, 6, 2019, 3, 1690);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (454, 57, 39, 4, 2019, 2, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (85, 50, 27, 3, 2019, 17.5, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (84, 33, 14, 3, 2019, 20, 740);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1, 5, 1, 2, 2019, 20, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (12, 10, 21, 1, 2019, 19, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (13, 11, 21, 1, 2019, 16, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (14, 19, 5, 1, 2019, 4, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (15, 19, 18, 1, 2019, 10.5, 539);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (16, 27, 18, 1, 2019, 17, 392);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (86, 48, 5, 3, 2019, 20, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (5, 5, 1, 1, 2019, 19.5, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (17, 36, 5, 1, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (18, 36, 5, 1, 2019, 21, 550);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (19, 38, 5, 1, 2019, 22, 538);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (20, 59, 8, 1, 2019, 3, 1014);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (21, 16, 13, 1, 2019, 2, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (22, 16, 18, 1, 2019, 20, 470);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (23, 41, 13, 1, 2019, 2, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (24, 41, 14, 1, 2019, 17, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (25, 56, 23, 1, 2019, 20, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (27, 25, 1, 1, 2019, 22, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (28, 31, 27, 1, 2019, 10, 0);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (29, 31, 27, 1, 2019, 8, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (30, 7, 5, 1, 2019, 18.5, 507);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (31, 30, 14, 1, 2019, 15.5, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (32, 35, 1, 1, 2019, 22, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (33, 47, 11, 1, 2019, 5, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (34, 47, 18, 1, 2019, 13, 628);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (35, 33, 14, 1, 2019, 21, 740);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (36, 53, 25, 1, 2019, 14.5, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (37, 50, 27, 1, 2019, 14, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (38, 21, 26, 1, 2019, 1, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (39, 21, 25, 1, 2019, 10.5, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (40, 42, 5, 1, 2019, 10, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (41, 54, 18, 1, 2019, 18, 678);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (42, 44, 21, 1, 2019, 21, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (43, 28, 25, 1, 2019, 15.5, 440);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (130, 12, 22, 4, 2019, 16.5, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (45, 28, 13, 1, 2019, 1.5, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (46, 60, 5, 1, 2019, 12, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (47, 8, 5, 1, 2019, 2, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (48, 8, 24, 1, 2019, 1, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (49, 8, 28, 1, 2019, 2.5, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (50, 52, 25, 1, 2019, 13.5, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (51, 52, 24, 1, 2019, 3.5, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (52, 52, 12, 1, 2019, 2, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (53, 52, 5, 1, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (54, 20, 22, 1, 2019, 16, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (55, 55, 27, 1, 2019, 10.5, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (56, 45, 23, 1, 2019, 22, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (57, 40, 19, 1, 2019, 2, 550);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (58, 40, 1, 1, 2019, 15, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (59, 39, 24, 1, 2019, 5, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (60, 49, 20, 1, 2019, 19.5, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (61, 43, 4, 1, 2019, 19, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (62, 24, 15, 1, 2019, 2.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (63, 12, 13, 1, 2019, 2, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (64, 12, 22, 1, 2019, 12, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (430, 52, 31, 5, 2019, 1, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (67, 32, 5, 1, 2019, 22, 525);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (68, 34, 5, 1, 2019, 22, 566);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (95, 10, 21, 5, 2019, 17, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (70, 26, 5, 1, 2019, 13, 488);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (72, 18, 17, 1, 2019, 2, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (71, 18, 15, 1, 2019, 0.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (74, 10, 21, 2, 2019, 20, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (96, 10, 21, 6, 2019, 15.5, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (102, 10, 21, 10, 2019, 22, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (87, 15, 18, 3, 2019, 20, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (88, 16, 18, 3, 2019, 14, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (79, 11, 21, 3, 2019, 19, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (105, 33, 19, 2, 2019, 1, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (97, 33, 14, 2, 2019, 19, 740);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (106, 30, 14, 2, 2019, 13, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (442, 29, 9, 6, 2019, 4, 2000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (108, 39, 9, 4, 2019, 3, 1800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (100, 10, 21, 8, 2019, 5, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (109, 21, 25, 3, 2019, 8, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (113, 56, 23, 3, 2019, 20, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (458, 52, 22, 5, 2019, 2.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (115, 28, 25, 3, 2019, 20, 440);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (123, 12, 22, 2, 2019, 20, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (124, 48, 5, 2, 2019, 6, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (125, 48, 24, 2, 2019, 4.5, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (126, 15, 18, 2, 2019, 17, 491);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (127, 16, 18, 2, 2019, 18.5, 470);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (129, 33, 14, 4, 2019, 21, 740);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (89, 12, 22, 3, 2019, 17, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (94, 10, 21, 4, 2019, 19.5, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (81, 20, 22, 3, 2019, 19.5, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (82, 41, 14, 3, 2019, 18, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (116, 29, 26, 3, 2019, 1.5, 765);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (118, 29, 8, 3, 2019, 2, 3000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (122, 17, 25, 3, 2019, 19, 495);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (117, 29, 12, 3, 2019, 2.5, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (8, 8, 5, 3, 2019, 6, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (78, 10, 21, 3, 2019, 19, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (120, 52, 24, 3, 2019, 3.5, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (132, 48, 5, 4, 2019, 21, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (133, 15, 18, 4, 2019, 21, 491);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (213, 55, 27, 4, 2019, 7, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (136, 58, 4, 3, 2019, 20, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (137, 24, 22, 3, 2019, 19, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (431, 52, 9, 5, 2019, 2, 1990);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (140, 25, 1, 3, 2019, 20, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (7, 7, 5, 3, 2019, 19, 507);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (143, 26, 5, 3, 2019, 20, 488);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (851, 48, 5, 11, 2019, 19, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (148, 34, 5, 3, 2019, 20, 566);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (149, 35, 1, 3, 2019, 19, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (151, 38, 5, 3, 2019, 19, 538);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (152, 40, 1, 3, 2019, 20, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (155, 44, 21, 3, 2019, 15, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (156, 45, 23, 3, 2019, 19, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (157, 46, 21, 3, 2019, 18, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (239, 11, 21, 6, 2019, 14.5, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (199, 31, 27, 4, 2019, 21, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (178, 18, 9, 4, 2019, 1, 2000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (242, 50, 27, 6, 2019, 12.5, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (183, 56, 23, 4, 2019, 18.5, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (158, 49, 20, 3, 2019, 15.5, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (162, 43, 8, 4, 2019, 2, 1341);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (205, 26, 5, 4, 2019, 20.5, 488);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (194, 58, 4, 4, 2019, 18.5, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (204, 25, 1, 4, 2019, 21, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (869, 43, 4, 0, 2020, 22, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (208, 8, 5, 4, 2019, 8, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (142, 18, 17, 3, 2019, 0.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (159, 54, 18, 3, 2019, 10, 692);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (231, 22, 22, 5, 2019, 20, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (161, 57, 5, 3, 2019, 19, 605);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (150, 36, 5, 3, 2019, 21, 550);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (209, 45, 23, 4, 2019, 14.5, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (165, 11, 21, 2, 2019, 19, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (166, 18, 15, 2, 2019, 1.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (167, 61, 22, 2, 2019, 19.5, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (168, 20, 22, 2, 2019, 20, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (169, 58, 4, 2, 2019, 19, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (171, 58, 15, 2, 2019, 2, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (233, 61, 22, 5, 2019, 20, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (173, 47, 18, 2, 2019, 18, 628);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (174, 50, 27, 2, 2019, 17.5, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (170, 24, 22, 2, 2019, 10.5, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (172, 24, 15, 2, 2019, 2, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (175, 55, 27, 2, 2019, 8.5, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (455, 18, 15, 5, 2019, 2, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (146, 31, 27, 3, 2019, 21, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (145, 30, 14, 3, 2019, 15, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (228, 25, 1, 5, 2019, 14, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (180, 22, 22, 3, 2019, 10, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (182, 5, 1, 4, 2019, 21, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (200, 30, 14, 4, 2019, 11.5, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (874, 56, 23, 7, 2019, 12, 611);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (212, 40, 1, 4, 2019, 18.5, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (211, 44, 21, 4, 2019, 21, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (210, 45, 23, 5, 2019, 9, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (154, 43, 4, 3, 2019, 19, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (234, 5, 1, 5, 2019, 14, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (191, 61, 22, 4, 2019, 21, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (193, 22, 22, 4, 2019, 21, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (250, 33, 14, 6, 2019, 17, 740);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (192, 20, 22, 4, 2019, 20, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (214, 35, 1, 4, 2019, 21, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (215, 46, 21, 5, 2019, 20, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (879, 56, 23, 10, 2019, 20, 616);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (888, 64, 5, 9, 2019, 11, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (469, 37, 38, 5, 2019, 5, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (246, 44, 21, 6, 2019, 19, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (249, 35, 1, 6, 2019, 19, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (253, 25, 1, 6, 2019, 19, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (893, 69, 1, 11, 2019, 19, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (134, 14, 18, 3, 2019, 19.5, 415);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (195, 50, 27, 4, 2019, 19, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (141, 18, 15, 3, 2019, 2, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (176, 52, 9, 3, 2019, 3, 1900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (220, 44, 21, 5, 2019, 10, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (221, 41, 14, 5, 2019, 9, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (230, 58, 4, 5, 2019, 19, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (245, 45, 23, 6, 2019, 17.5, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (229, 24, 22, 5, 2019, 16.5, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (216, 49, 20, 5, 2019, 13, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (196, 46, 21, 4, 2019, 19.5, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (197, 49, 20, 4, 2019, 7, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (160, 55, 27, 3, 2019, 11.5, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (186, 7, 5, 4, 2019, 19, 507);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (181, 11, 21, 4, 2019, 9.5, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (443, 52, 25, 6, 2019, 3.5, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (247, 41, 14, 6, 2019, 17, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (112, 21, 25, 4, 2019, 5.5, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (206, 24, 22, 4, 2019, 18, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (337, 57, 5, 5, 2019, 12, 605);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (217, 50, 27, 5, 2019, 11.5, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (434, 17, 25, 5, 2019, 15, 495);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (468, 23, 9, 5, 2019, 2, 2500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (185, 53, 25, 5, 2019, 16, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (475, 37, 17, 6, 2019, 13, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (471, 23, 31, 6, 2019, 8, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (227, 30, 14, 5, 2019, 14, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (224, 35, 1, 5, 2019, 18, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (226, 31, 27, 5, 2019, 17, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (235, 12, 22, 5, 2019, 17, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (251, 31, 27, 6, 2019, 16, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (451, 38, 9, 6, 2019, 2, 1990);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (222, 40, 1, 5, 2019, 17.5, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (232, 20, 22, 5, 2019, 19, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (236, 11, 21, 5, 2019, 18, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (244, 46, 21, 6, 2019, 13, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (248, 40, 1, 6, 2019, 15, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (252, 30, 14, 6, 2019, 14.5, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (258, 61, 22, 6, 2019, 19, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (369, 52, 25, 4, 2019, 7.5, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (263, 8, 28, 4, 2019, 2, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (264, 43, 4, 4, 2019, 19, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (153, 42, 5, 3, 2019, 19, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (265, 42, 5, 2, 2019, 19, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (266, 56, 23, 2, 2019, 20, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (267, 49, 20, 2, 2019, 20, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (268, 46, 21, 2, 2019, 20, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (269, 45, 23, 2, 2019, 20, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (270, 44, 21, 2, 2019, 20, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (271, 59, 16, 2, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (351, 48, 5, 6, 2019, 19, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (114, 53, 25, 3, 2019, 20, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (272, 17, 25, 4, 2019, 21, 495);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (852, 46, 21, 10, 2019, 22, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (432, 23, 31, 5, 2019, 2, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (354, 39, 16, 4, 2019, 0.5, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (275, 53, 25, 6, 2019, 15.5, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (359, 28, 25, 4, 2019, 10, 440);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (323, 15, 18, 5, 2019, 17, 491);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (309, 32, 5, 2, 2019, 15, 525);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (310, 36, 5, 2, 2019, 17.5, 550);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (311, 36, 5, 2, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (313, 36, 5, 4, 2019, 20, 576);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (319, 57, 5, 4, 2019, 17, 605);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (318, 54, 18, 4, 2019, 18, 692);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (321, 32, 5, 3, 2019, 19, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (277, 40, 1, 2, 2019, 18, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (278, 35, 1, 2, 2019, 20, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (279, 31, 27, 2, 2019, 20, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (280, 25, 1, 2, 2019, 20, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (281, 7, 5, 2, 2019, 18, 507);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (282, 14, 18, 2, 2019, 20, 407);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (283, 19, 5, 2, 2019, 20, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (284, 21, 25, 2, 2019, 6, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (285, 26, 5, 2, 2019, 20, 489);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (286, 57, 5, 2, 2019, 19, 605);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (287, 54, 18, 2, 2019, 16, 678);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (288, 53, 25, 2, 2019, 16.5, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (289, 52, 25, 2, 2019, 7, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (290, 52, 24, 2, 2019, 2, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (291, 52, 5, 2, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (292, 52, 10, 2, 2019, 5, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (293, 52, 16, 2, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (294, 43, 4, 2, 2019, 20, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (295, 39, 24, 2, 2019, 2, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (296, 39, 5, 2, 2019, 1, 1500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (297, 8, 24, 2, 2019, 0.5, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (298, 8, 6, 2, 2019, 1, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (299, 8, 5, 2, 2019, 4, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (300, 27, 18, 2, 2019, 20, 392);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (301, 28, 25, 2, 2019, 18.5, 440);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (302, 29, 12, 2, 2019, 2, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (303, 29, 26, 2, 2019, 0.5, 765);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (304, 29, 8, 2, 2019, 2, 2580);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (436, 28, 25, 5, 2019, 16, 440);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (307, 34, 5, 2, 2019, 19.5, 566);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (452, 39, 9, 5, 2019, 2, 1590);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (865, 51, 7, 11, 2019, 19, 405);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (327, 8, 5, 5, 2019, 8, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (921, 23, 31, 9, 2019, 4.5, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (336, 54, 18, 5, 2019, 14, 692);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (308, 38, 5, 2, 2019, 15, 539);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (889, 50, 8, 10, 2019, 3, 1134);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (884, 52, 22, 7, 2019, 10, 850);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (899, 16, 9, 9, 2019, 2, 1690);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (907, 45, 5, 0, 2020, 21, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (444, 55, 9, 6, 2019, 3, 2000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (355, 43, 4, 5, 2019, 13, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (335, 48, 5, 5, 2019, 18, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (257, 20, 22, 6, 2019, 14, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (459, 29, 8, 4, 2019, 2, 2265);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (363, 55, 9, 4, 2019, 3, 2000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (333, 42, 5, 5, 2019, 10, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (320, 7, 5, 5, 2019, 17.5, 507);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (365, 38, 34, 4, 2019, 1, 1050);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (366, 52, 29, 3, 2019, 2.5, 980);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (870, 43, 4, 12, 2019, 21, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (330, 34, 5, 5, 2019, 18, 566);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (378, 63, 33, 4, 2019, 20, 445);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (332, 38, 5, 5, 2019, 18, 539);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (348, 38, 5, 6, 2019, 15, 539);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (372, 8, 28, 5, 2019, 2, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (312, 34, 5, 4, 2019, 16, 566);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (316, 42, 5, 4, 2019, 18, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (314, 38, 5, 4, 2019, 16, 539);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (345, 32, 5, 6, 2019, 18.5, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (376, 19, 9, 3, 2019, 3, 945);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (356, 53, 25, 4, 2019, 17.5, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (322, 32, 5, 4, 2019, 20, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (305, 29, 12, 4, 2019, 2.5, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (463, 18, 17, 6, 2019, 1, 1900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (329, 32, 5, 5, 2019, 15, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (326, 26, 5, 5, 2019, 12.5, 488);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (465, 39, 11, 5, 2019, 2, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (259, 5, 1, 6, 2019, 18.5, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (350, 47, 18, 6, 2019, 11, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (466, 21, 17, 5, 2019, 1, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (262, 12, 22, 6, 2019, 18, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (331, 36, 5, 5, 2019, 9, 570);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (929, 29, 9, 9, 2019, 2, 2000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (256, 22, 22, 6, 2019, 18.5, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (380, 63, 33, 6, 2019, 18, 445);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (338, 7, 5, 6, 2019, 18, 507);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (274, 17, 25, 6, 2019, 16, 495);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (352, 54, 18, 6, 2019, 14, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (941, 23, 17, 11, 2019, 2, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (925, 29, 12, 9, 2019, 0.5, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (933, 52, 25, 9, 2019, 1.5, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (448, 33, 14, 7, 2019, 18, 740);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (391, 52, 31, 5, 2019, 4, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (390, 52, 25, 5, 2019, 4, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (537, 47, 9, 6, 2019, 3, 1567);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (491, 20, 22, 7, 2019, 22, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (433, 23, 9, 5, 2019, 2, 1990);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (500, 41, 14, 7, 2019, 21, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (413, 29, 12, 5, 2019, 3, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (531, 43, 4, 7, 2019, 21, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (501, 44, 21, 7, 2019, 16, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (521, 36, 5, 7, 2019, 21.5, 570);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (445, 18, 15, 4, 2019, 0.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (492, 22, 22, 7, 2019, 19, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (393, 18, 17, 5, 2019, 1, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (890, 52, 9, 9, 2019, 3, 1990);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (395, 38, 8, 4, 2019, 3, 1014);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (453, 53, 9, 5, 2019, 3, 1590);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (411, 39, 11, 4, 2019, 0.5, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (373, 52, 22, 4, 2019, 5.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (457, 52, 31, 4, 2019, 3.5, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (426, 21, 31, 4, 2019, 1, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (460, 23, 8, 4, 2019, 2, 2250);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (409, 51, 7, 6, 2019, 18, 405);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (464, 64, 18, 5, 2019, 3, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (398, 28, 25, 6, 2019, 19, 440);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (401, 21, 25, 5, 2019, 6.5, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (467, 21, 17, 5, 2019, 2, 2000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (392, 23, 31, 5, 2019, 2.5, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (412, 29, 26, 5, 2019, 0.5, 765);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (407, 21, 25, 6, 2019, 6, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (449, 29, 17, 5, 2019, 3, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (410, 39, 9, 4, 2019, 3, 1800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (414, 29, 36, 5, 2019, 1, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (379, 63, 33, 5, 2019, 18, 445);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (470, 37, 17, 5, 2019, 4, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (484, 63, 33, 7, 2019, 20, 445);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (418, 23, 37, 5, 2019, 2.5, 920);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (885, 52, 16, 7, 2019, 1, 550);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (420, 39, 9, 3, 2019, 5, 2000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (472, 23, 17, 6, 2019, 3, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (388, 19, 5, 4, 2019, 20, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (474, 37, 38, 6, 2019, 5, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (502, 45, 23, 7, 2019, 22, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (477, 64, 18, 6, 2019, 19, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (866, 51, 7, 12, 2019, 21, 405);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (485, 28, 25, 7, 2019, 17, 440);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (871, 56, 23, 5, 2019, 17, 611);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (424, 23, 31, 4, 2019, 2, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (541, 23, 31, 7, 2019, 3, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (538, 29, 16, 5, 2019, 3, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (896, 39, 18, 10, 2019, 10, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (243, 49, 20, 6, 2019, 14, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (506, 55, 15, 6, 2019, 2, 2000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (908, 64, 5, 10, 2019, 22, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (478, 39, 24, 5, 2019, 2, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (488, 17, 25, 7, 2019, 22, 495);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (543, 55, 40, 6, 2019, 1, 1450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (487, 53, 25, 7, 2019, 18, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (922, 23, 31, 9, 2019, 1, 1990);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (938, 23, 17, 10, 2019, 2, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (942, 23, 16, 11, 2019, 2, 1150);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (523, 39, 18, 7, 2019, 8, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (945, 29, 12, 10, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (525, 47, 18, 7, 2019, 15, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (948, 29, 17, 10, 2019, 2, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (951, 37, 17, 10, 2019, 19, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (528, 64, 18, 7, 2019, 22, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (529, 54, 18, 7, 2019, 10, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (952, 27, 1, 9, 2019, 5, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (853, 46, 21, 11, 2019, 18, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (536, 47, 11, 6, 2019, 2, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (926, 29, 17, 9, 2019, 3.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (539, 37, 17, 7, 2019, 19, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (498, 35, 1, 7, 2019, 17, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (481, 5, 1, 7, 2019, 22.5, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (519, 32, 18, 7, 2019, 22, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (499, 40, 1, 7, 2019, 20.5, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (545, 21, 25, 8, 2019, 4, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (547, 52, 31, 8, 2019, 1, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (549, 29, 12, 7, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (508, 34, 5, 6, 2019, 16.5, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (482, 21, 25, 7, 2019, 6, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (517, 8, 5, 7, 2019, 2, 515);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (441, 29, 12, 6, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (930, 52, 12, 9, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (554, 26, 41, 6, 2019, 3.5, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (553, 10, 9, 6, 2019, 3, 1790);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (555, 19, 24, 6, 2019, 14, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (480, 12, 22, 7, 2019, 22, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (479, 11, 21, 7, 2019, 18, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (557, 14, 18, 5, 2019, 16.5, 407);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (490, 58, 4, 6, 2019, 18, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (546, 52, 25, 8, 2019, 1, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (534, 39, 18, 6, 2019, 4, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (386, 43, 4, 6, 2019, 17, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (552, 26, 41, 7, 2019, 2, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (476, 29, 17, 6, 2019, 3, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (550, 55, 41, 6, 2019, 4.5, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (533, 39, 24, 6, 2019, 6, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (556, 46, 24, 6, 2019, 4, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (495, 25, 1, 7, 2019, 21, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (496, 30, 14, 7, 2019, 12, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (530, 57, 5, 7, 2019, 16, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (548, 28, 25, 8, 2019, 18, 440);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (503, 46, 21, 7, 2019, 13, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (514, 15, 18, 7, 2019, 21.5, 491);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (551, 55, 41, 7, 2019, 2, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (504, 50, 27, 7, 2019, 9, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (544, 49, 5, 7, 2019, 20.5, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (497, 31, 27, 7, 2019, 18, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (512, 7, 5, 7, 2019, 21.5, 546);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (325, 19, 5, 5, 2019, 18, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (560, 14, 18, 4, 2019, 18.5, 407);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (561, 33, 14, 5, 2019, 14, 740);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (566, 29, 12, 8, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (567, 29, 17, 8, 2019, 2, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (649, 24, 1, 8, 2019, 20, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (897, 26, 41, 8, 2019, 0.5, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (577, 18, 15, 8, 2019, 0.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (579, 51, 7, 7, 2019, 20, 405);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (620, 38, 5, 9, 2019, 20.5, 539);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (656, 26, 5, 6, 2019, 12.5, 525);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (657, 8, 28, 6, 2019, 1, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (591, 26, 5, 8, 2019, 12, 525);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (658, 8, 5, 6, 2019, 5.5, 418);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (562, 53, 25, 8, 2019, 17, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (678, 22, 22, 8, 2019, 12, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (581, 15, 18, 8, 2019, 10, 491);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (582, 57, 39, 6, 2019, 1.5, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (891, 69, 1, 9, 2019, 10, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (584, 21, 2, 5, 2019, 0.5, 0);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (586, 58, 5, 7, 2019, 13, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (872, 56, 23, 6, 2019, 16.5, 611);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (877, 56, 23, 8, 2019, 10, 616);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (659, 36, 5, 6, 2019, 16, 576);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (598, 54, 18, 8, 2019, 8, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (639, 43, 4, 9, 2019, 16, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (894, 69, 1, 0, 2020, 22, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (608, 7, 5, 9, 2019, 21, 546);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (610, 15, 18, 9, 2019, 21, 491);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (638, 43, 4, 8, 2019, 18, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (606, 34, 5, 7, 2019, 19, 566);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (669, 5, 1, 8, 2019, 10, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (886, 52, 8, 7, 2019, 1, 990);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (590, 58, 5, 8, 2019, 19.5, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (563, 17, 25, 8, 2019, 16, 495);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (660, 40, 39, 6, 2019, 1, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (632, 29, 17, 7, 2019, 4, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (633, 29, 36, 7, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (631, 58, 4, 7, 2019, 8.5, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (909, 64, 5, 11, 2019, 18, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (661, 42, 5, 6, 2019, 19, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (642, 57, 8, 6, 2019, 2, 1490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (617, 36, 5, 9, 2019, 18, 576);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (593, 32, 5, 8, 2019, 20, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (670, 63, 33, 9, 2019, 16, 445);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (618, 38, 5, 7, 2019, 18, 539);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (627, 64, 18, 9, 2019, 10, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (580, 51, 7, 8, 2019, 15, 405);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (674, 40, 1, 8, 2019, 10, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (602, 47, 18, 8, 2019, 3, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (647, 24, 15, 5, 2019, 0.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (605, 26, 5, 7, 2019, 11, 525);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (662, 56, 16, 6, 2019, 2.5, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (599, 64, 18, 8, 2019, 20, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (663, 52, 22, 6, 2019, 6, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (665, 52, 9, 6, 2019, 5, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (628, 54, 18, 9, 2019, 4, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (957, 50, 43, 9, 2019, 2, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (597, 57, 5, 8, 2019, 6, 605);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (655, 15, 18, 6, 2019, 19, 501);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (666, 52, 8, 6, 2019, 2, 3816);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (667, 54, 39, 6, 2019, 1, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (668, 57, 5, 6, 2019, 7.5, 605);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (652, 12, 22, 8, 2019, 19.5, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (564, 63, 33, 8, 2019, 19, 445);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (664, 52, 17, 6, 2019, 0.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (626, 49, 5, 9, 2019, 18, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (636, 23, 31, 8, 2019, 1.5, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (594, 34, 5, 8, 2019, 12, 566);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (596, 39, 18, 8, 2019, 13, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (595, 36, 5, 8, 2019, 14, 576);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (604, 42, 5, 8, 2019, 20, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (931, 52, 31, 9, 2019, 4, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (673, 54, 9, 9, 2019, 1, 2000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (607, 42, 5, 7, 2019, 11, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (571, 53, 25, 9, 2019, 17, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (621, 39, 18, 9, 2019, 17, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (565, 37, 17, 8, 2019, 19, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (635, 52, 31, 7, 2019, 3, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (867, 43, 4, 10, 2019, 22, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (576, 18, 15, 7, 2019, 2.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (675, 40, 17, 7, 2019, 1.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (613, 26, 5, 9, 2019, 15.5, 525);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (939, 23, 16, 10, 2019, 1, 1150);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (927, 29, 17, 9, 2019, 1.5, 990);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (585, 19, 24, 7, 2019, 21, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (923, 23, 17, 9, 2019, 1.5, 990);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (570, 17, 25, 9, 2019, 20, 495);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (648, 24, 1, 7, 2019, 18, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (568, 28, 25, 9, 2019, 16, 440);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (629, 57, 5, 9, 2019, 13, 605);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (573, 37, 17, 9, 2019, 21, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (651, 11, 21, 9, 2019, 10, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (575, 21, 25, 9, 2019, 8, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (600, 49, 5, 8, 2019, 19.5, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (935, 21, 25, 10, 2019, 8, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (943, 23, 44, 11, 2019, 2, 2500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (946, 29, 36, 10, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (587, 7, 5, 8, 2019, 6.5, 546);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (650, 11, 21, 8, 2019, 13, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (953, 27, 1, 10, 2019, 22, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (619, 38, 5, 8, 2019, 6, 539);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (959, 52, 43, 9, 2019, 2, 1590);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (612, 58, 5, 9, 2019, 20, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (676, 40, 1, 9, 2019, 18, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (901, 18, 15, 9, 2019, 1, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (616, 34, 5, 9, 2019, 19, 566);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (934, 17, 25, 10, 2019, 20, 495);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (905, 45, 5, 10, 2019, 21.5, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (864, 51, 7, 10, 2019, 20.5, 405);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (679, 22, 22, 9, 2019, 21, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (751, 11, 9, 10, 2019, 4, 1800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (822, 36, 5, 10, 2019, 21.5, 576);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (705, 50, 5, 9, 2019, 18, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (813, 14, 18, 7, 2019, 22, 416);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (713, 25, 1, 9, 2019, 20, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (795, 47, 18, 9, 2019, 6.5, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (683, 31, 27, 9, 2019, 21, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (707, 55, 41, 8, 2019, 0.5, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (685, 38, 8, 7, 2019, 4, 1147);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (801, 16, 18, 8, 2019, 18, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (789, 47, 18, 4, 2019, 20, 628);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (699, 45, 23, 9, 2019, 19, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (704, 50, 5, 8, 2019, 19.5, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (729, 40, 1, 0, 2020, 19, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (730, 40, 1, 12, 2019, 21, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (731, 11, 21, 12, 2019, 21, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (760, 55, 39, 8, 2019, 14.5, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (732, 49, 15, 8, 2019, 1.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (722, 40, 1, 11, 2019, 17, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (767, 25, 1, 10, 2019, 22, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (681, 24, 1, 10, 2019, 18, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (787, 15, 18, 10, 2019, 21, 491);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (762, 41, 14, 10, 2019, 21, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (769, 25, 1, 0, 2020, 22, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (754, 54, 39, 8, 2019, 3, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (734, 67, 22, 10, 2019, 22, 650);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (692, 41, 14, 9, 2019, 11, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (756, 19, 39, 8, 2019, 9, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (735, 67, 22, 11, 2019, 19, 650);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (755, 54, 39, 9, 2019, 6, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (737, 67, 22, 12, 2019, 21, 650);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (814, 14, 18, 8, 2019, 10, 416);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (710, 30, 14, 8, 2019, 12, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (697, 46, 21, 8, 2019, 19, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (720, 18, 17, 10, 2019, 0.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (688, 33, 14, 8, 2019, 20, 740);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (744, 19, 9, 9, 2019, 3, 1690);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (695, 45, 23, 8, 2019, 15, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (794, 47, 18, 9, 2019, 13.5, 628);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (700, 48, 5, 7, 2019, 22, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (701, 48, 5, 8, 2019, 17, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (703, 49, 21, 7, 2019, 2, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (792, 47, 18, 8, 2019, 4, 628);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (714, 20, 22, 8, 2019, 20, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (693, 44, 21, 8, 2019, 15, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (759, 55, 39, 9, 2019, 4.5, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (711, 30, 14, 9, 2019, 17, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (712, 25, 1, 8, 2019, 21, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (686, 35, 1, 8, 2019, 16, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (716, 19, 24, 8, 2019, 2, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (682, 31, 27, 8, 2019, 20, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (680, 24, 1, 9, 2019, 19, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (719, 18, 17, 9, 2019, 0.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (827, 35, 1, 11, 2019, 18, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (797, 47, 18, 10, 2019, 22, 628);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (757, 19, 39, 9, 2019, 7, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (745, 11, 9, 9, 2019, 3, 1790);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (733, 67, 22, 9, 2019, 11, 650);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (748, 11, 21, 0, 2020, 22, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (690, 41, 14, 8, 2019, 19, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (810, 27, 18, 9, 2019, 11, 392);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (698, 46, 21, 9, 2019, 16.5, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (828, 34, 5, 10, 2019, 21, 566);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (689, 33, 14, 9, 2019, 21, 740);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (773, 7, 5, 11, 2019, 19, 546);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (772, 7, 5, 10, 2019, 20.5, 546);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (776, 7, 5, 0, 2020, 19, 546);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (694, 44, 21, 9, 2019, 15, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (823, 36, 5, 11, 2019, 18, 576);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (687, 35, 1, 9, 2019, 19, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (768, 25, 1, 11, 2019, 19, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (747, 11, 21, 11, 2019, 15, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (816, 14, 18, 10, 2019, 22, 416);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (702, 48, 5, 9, 2019, 20, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (802, 16, 18, 9, 2019, 17, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (721, 40, 1, 10, 2019, 17.5, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (815, 14, 18, 9, 2019, 20, 416);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (817, 38, 5, 10, 2019, 21, 539);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (736, 67, 22, 0, 2020, 22, 650);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (763, 20, 22, 10, 2019, 22, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (765, 20, 22, 0, 2020, 22, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (766, 11, 8, 11, 2019, 3, 1193);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (790, 47, 18, 5, 2019, 17.5, 628);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (770, 24, 1, 11, 2019, 18, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (791, 47, 18, 7, 2019, 7, 628);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (788, 47, 18, 3, 2019, 19.5, 628);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (746, 11, 21, 10, 2019, 16.5, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (803, 16, 18, 10, 2019, 22, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (808, 27, 18, 7, 2019, 22, 392);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (798, 16, 18, 5, 2019, 16, 470);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (807, 27, 18, 6, 2019, 19, 392);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (805, 27, 18, 4, 2019, 21, 392);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (804, 27, 18, 3, 2019, 16, 392);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (799, 16, 18, 6, 2019, 8.5, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (800, 16, 18, 7, 2019, 21, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (806, 27, 18, 5, 2019, 13, 392);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (809, 27, 18, 8, 2019, 21, 392);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (812, 14, 18, 6, 2019, 18.5, 416);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (826, 35, 1, 10, 2019, 22, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (848, 49, 5, 11, 2019, 14.5, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1021, 26, 5, 12, 2019, 20, 525);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (983, 49, 9, 10, 2019, 3, 4297);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (928, 29, 26, 9, 2019, 5, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (836, 26, 5, 11, 2019, 17, 525);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (956, 27, 1, 0, 2020, 22, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (838, 58, 5, 11, 2019, 19, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (958, 52, 43, 9, 2019, 2, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (960, 19, 9, 10, 2019, 3, 2520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1048, 33, 14, 11, 2019, 19, 740);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1066, 21, 25, 11, 2019, 4, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1024, 36, 5, 12, 2019, 21, 576);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (962, 72, 21, 9, 2019, 10, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (830, 33, 14, 10, 2019, 20, 740);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (878, 56, 23, 9, 2019, 21, 616);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (963, 72, 21, 10, 2019, 22, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (988, 42, 47, 9, 2019, 11, 0);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (863, 51, 7, 9, 2019, 17, 405);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (964, 72, 21, 11, 2019, 19, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (989, 45, 4, 12, 2019, 21, 650);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (831, 32, 5, 10, 2019, 19, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (615, 32, 5, 9, 2019, 20, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (965, 72, 21, 0, 2020, 19, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (981, 54, 9, 10, 2019, 1, 1500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (892, 69, 1, 10, 2019, 22, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1016, 57, 5, 11, 2019, 15, 605);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (834, 30, 14, 10, 2019, 16, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (898, 23, 17, 8, 2019, 0.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (902, 45, 5, 9, 2019, 1, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (966, 53, 25, 10, 2019, 22, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (967, 46, 39, 9, 2019, 4, 650);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (954, 27, 1, 11, 2019, 18, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (906, 45, 5, 11, 2019, 19, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1025, 38, 5, 12, 2019, 21, 539);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1026, 66, 18, 12, 2019, 21, 580);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (910, 64, 5, 0, 2020, 22, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (847, 49, 5, 10, 2019, 19, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (844, 50, 5, 10, 2019, 19, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (920, 21, 17, 9, 2019, 1, 990);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (932, 52, 31, 9, 2019, 1, 1990);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (936, 23, 31, 10, 2019, 4, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (947, 29, 26, 10, 2019, 8, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (950, 29, 46, 10, 2019, 2, 2000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (840, 57, 5, 10, 2019, 20, 605);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1027, 47, 18, 12, 2019, 21, 628);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1028, 48, 5, 12, 2019, 21, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (999, 14, 18, 11, 2019, 19, 416);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1029, 49, 5, 12, 2019, 21, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (715, 20, 22, 9, 2019, 16, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1007, 38, 5, 11, 2019, 11, 539);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (968, 66, 18, 9, 2019, 7, 580);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (837, 58, 5, 10, 2019, 12, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (103, 10, 21, 11, 2019, 18, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (970, 19, 5, 3, 2019, 16.5, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (971, 70, 1, 10, 2019, 22, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1012, 50, 8, 11, 2019, 3, 1134);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (973, 70, 1, 12, 2019, 21, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (975, 22, 22, 10, 2019, 22, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (993, 24, 1, 0, 2020, 22, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1000, 15, 18, 11, 2019, 19, 491);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (976, 22, 22, 11, 2019, 18, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (978, 30, 9, 11, 2019, 2, 3050);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1030, 50, 5, 12, 2019, 21, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (996, 19, 24, 10, 2019, 1, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (985, 19, 24, 9, 2019, 5, 600);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (998, 55, 48, 10, 2019, 14, 850);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1011, 50, 5, 11, 2019, 15, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1031, 64, 5, 12, 2019, 21, 420);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1015, 55, 48, 11, 2019, 12, 850);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1032, 55, 48, 12, 2019, 12, 850);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1033, 57, 5, 12, 2019, 16, 605);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1001, 16, 18, 11, 2019, 19, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1005, 34, 5, 11, 2019, 13, 566);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1004, 32, 5, 11, 2019, 18, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1008, 41, 14, 11, 2019, 9, 530);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (972, 70, 1, 11, 2019, 16, 490);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1017, 7, 5, 12, 2019, 21, 546);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1009, 66, 18, 11, 2019, 19, 580);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1018, 14, 18, 12, 2019, 21, 416);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1019, 16, 18, 12, 2019, 21, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1010, 47, 18, 11, 2019, 18, 628);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1022, 32, 5, 12, 2019, 10, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1023, 34, 5, 12, 2019, 21, 566);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1041, 42, 47, 10, 2019, 23, 0);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (835, 26, 5, 10, 2019, 21.5, 525);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1042, 42, 47, 11, 2019, 19, 0);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1043, 42, 47, 12, 2019, 10, 0);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1044, 42, 5, 12, 2019, 11, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1045, 18, 15, 12, 2019, 1, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1046, 56, 23, 11, 2019, 19, 616);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1052, 24, 1, 12, 2019, 21, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1053, 25, 1, 12, 2019, 21, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1054, 27, 1, 12, 2019, 21, 430);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1055, 30, 14, 12, 2019, 15, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1056, 35, 1, 12, 2019, 21, 460);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1057, 69, 1, 12, 2019, 21, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1058, 72, 21, 12, 2019, 21, 480);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1059, 56, 23, 12, 2019, 21, 616);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1060, 44, 1, 10, 2019, 18, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1061, 44, 1, 11, 2019, 18, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1062, 44, 1, 12, 2019, 21, 510);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1064, 17, 25, 11, 2019, 19, 495);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1065, 17, 25, 0, 2020, 22, 495);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1047, 18, 15, 11, 2019, 2.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (969, 66, 18, 10, 2019, 13, 580);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (868, 43, 4, 11, 2019, 17, 505);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1020, 58, 5, 12, 2019, 19, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1068, 23, 16, 0, 2020, 2, 1150);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1069, 23, 44, 0, 2020, 2, 2500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1070, 23, 31, 0, 2020, 4, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1071, 23, 17, 0, 2020, 2, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1072, 28, 33, 10, 2019, 5, 0);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1074, 28, 25, 10, 2019, 4, 440);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1073, 28, 33, 10, 2019, 13, 445);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1078, 28, 33, 0, 2020, 21, 445);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1080, 28, 33, 12, 2019, 21, 445);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1086, 29, 12, 11, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1081, 29, 17, 11, 2019, 1, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1083, 29, 45, 11, 2019, 1, 2750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1136, 20, 22, 11, 2019, 11, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1084, 29, 26, 11, 2019, 6, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1087, 21, 25, 12, 2019, 5, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1088, 56, 23, 0, 2020, 21, 616);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1094, 52, 25, 10, 2019, 2, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1101, 52, 25, 11, 2019, 2, 800);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1102, 52, 31, 11, 2019, 5, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1139, 30, 8, 12, 2019, 2, 5085);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1159, 11, 17, 10, 2019, 1.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1104, 17, 25, 12, 2019, 21, 450);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1106, 29, 26, 12, 2019, 6, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1107, 52, 9, 11, 2019, 2, 2500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1108, 44, 21, 10, 2019, 4, 500);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1109, 18, 15, 10, 2019, 1.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1110, 30, 14, 11, 2019, 10, 750);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1076, 28, 33, 11, 2019, 18, 445);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1111, 37, 17, 11, 2019, 19, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1112, 37, 17, 12, 2019, 21, 520);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1113, 11, 42, 9, 2019, 2, 700);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1114, 47, 42, 9, 2019, 1, 700);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1115, 29, 45, 10, 2019, 2, 2350);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1160, 40, 17, 10, 2019, 1.5, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1091, 52, 31, 10, 2019, 2, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1116, 53, 25, 11, 2019, 19, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1117, 53, 25, 12, 2019, 21, 540);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1118, 49, 9, 9, 2019, 3, 1190);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1121, 71, 23, 10, 2019, 18, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1122, 71, 23, 11, 2019, 18, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1089, 52, 12, 10, 2019, 1, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1140, 52, 49, 11, 2019, 5, 1000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1123, 71, 23, 12, 2019, 21, 400);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1124, 26, 23, 12, 2019, 1, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1125, 26, 23, 11, 2019, 2, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1126, 26, 23, 10, 2019, 0.5, 560);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1127, 19, 8, 11, 2019, 3, 1890);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1129, 38, 8, 11, 2019, 3, 1638);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1130, 38, 41, 11, 2019, 2, 550);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1131, 38, 9, 11, 2019, 2, 1690);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1132, 19, 51, 10, 2019, 18, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1133, 19, 51, 11, 2019, 10, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1141, 23, 17, 10, 2019, 1, 990);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1142, 23, 9, 10, 2019, 2, 2000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1143, 23, 26, 10, 2019, 1, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1135, 19, 51, 12, 2019, 6, 900);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1144, 23, 52, 10, 2019, 2.5, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1145, 23, 52, 11, 2019, 3, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1146, 23, 26, 11, 2019, 3, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1148, 23, 26, 12, 2019, 3, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1151, 23, 16, 12, 2019, 2, 1150);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1152, 23, 52, 12, 2019, 3, 1100);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1147, 23, 17, 12, 2019, 1, 950);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1153, 30, 9, 11, 2019, 2, 6000);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1154, 38, 9, 10, 2019, 1, 2700);
INSERT INTO public.staffing (id_staffing, id_consultant, id_customer, month, year, duration, price) VALUES (1155, 10, 21, 1, 2020, 1, 1);


--
-- TOC entry 2955 (class 0 OID 0)
-- Dependencies: 196
-- Name: absence_jaz_id_absence_jaz_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.absence_jaz_id_absence_jaz_seq', 759, true);


--
-- TOC entry 2956 (class 0 OID 0)
-- Dependencies: 198
-- Name: absence_off_id_absence_off_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.absence_off_id_absence_off_seq', 1615, true);


--
-- TOC entry 2957 (class 0 OID 0)
-- Dependencies: 200
-- Name: billable_days_id_billable_day_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.billable_days_id_billable_day_seq', 740, true);


--
-- TOC entry 2958 (class 0 OID 0)
-- Dependencies: 202
-- Name: consultants_id_consultant_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.consultants_id_consultant_seq', 74, true);


--
-- TOC entry 2959 (class 0 OID 0)
-- Dependencies: 204
-- Name: customers_id_customer_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.customers_id_customer_seq', 53, true);


--
-- TOC entry 2960 (class 0 OID 0)
-- Dependencies: 208
-- Name: daily_costs_id_daily_cost_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.daily_costs_id_daily_cost_seq', 2, true);


--
-- TOC entry 2961 (class 0 OID 0)
-- Dependencies: 206
-- Name: staffing_id_staffing_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.staffing_id_staffing_seq', 1161, true);


--
-- TOC entry 2788 (class 2606 OID 16395)
-- Name: absence_jaz absence_jaz_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.absence_jaz
    ADD CONSTRAINT absence_jaz_pkey PRIMARY KEY (id_absence_jaz);


--
-- TOC entry 2790 (class 2606 OID 16406)
-- Name: absence_off absence_off_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.absence_off
    ADD CONSTRAINT absence_off_pkey PRIMARY KEY (id_absence_off);


--
-- TOC entry 2792 (class 2606 OID 16414)
-- Name: billable_days billable_days_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.billable_days
    ADD CONSTRAINT billable_days_pkey PRIMARY KEY (id_billable_day);


--
-- TOC entry 2794 (class 2606 OID 16425)
-- Name: consultants consultants_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.consultants
    ADD CONSTRAINT consultants_pkey PRIMARY KEY (id_consultant);


--
-- TOC entry 2796 (class 2606 OID 16436)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id_customer);


--
-- TOC entry 2800 (class 2606 OID 16452)
-- Name: daily_costs daily_costs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.daily_costs
    ADD CONSTRAINT daily_costs_pkey PRIMARY KEY (id_daily_cost);


--
-- TOC entry 2798 (class 2606 OID 16444)
-- Name: staffing staffing_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.staffing
    ADD CONSTRAINT staffing_pkey PRIMARY KEY (id_staffing);


--
-- TOC entry 2801 (class 2606 OID 16453)
-- Name: absence_jaz absence_jaz_id_consultant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.absence_jaz
    ADD CONSTRAINT absence_jaz_id_consultant_fkey FOREIGN KEY (id_consultant) REFERENCES public.consultants(id_consultant);


--
-- TOC entry 2802 (class 2606 OID 16458)
-- Name: absence_off absence_off_id_consultant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.absence_off
    ADD CONSTRAINT absence_off_id_consultant_fkey FOREIGN KEY (id_consultant) REFERENCES public.consultants(id_consultant);


--
-- TOC entry 2803 (class 2606 OID 16463)
-- Name: billable_days billable_days_id_consultant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.billable_days
    ADD CONSTRAINT billable_days_id_consultant_fkey FOREIGN KEY (id_consultant) REFERENCES public.consultants(id_consultant);


--
-- TOC entry 2806 (class 2606 OID 16478)
-- Name: daily_costs daily_costs_id_consultant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.daily_costs
    ADD CONSTRAINT daily_costs_id_consultant_fkey FOREIGN KEY (id_consultant) REFERENCES public.consultants(id_consultant);


--
-- TOC entry 2804 (class 2606 OID 16468)
-- Name: staffing staffing_id_consultant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.staffing
    ADD CONSTRAINT staffing_id_consultant_fkey FOREIGN KEY (id_consultant) REFERENCES public.consultants(id_consultant);


--
-- TOC entry 2805 (class 2606 OID 16473)
-- Name: staffing staffing_id_customer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.staffing
    ADD CONSTRAINT staffing_id_customer_fkey FOREIGN KEY (id_customer) REFERENCES public.customers(id_customer);


-- Completed on 2020-02-14 15:15:46 CET

--
-- PostgreSQL database dump complete
--

