--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6 (Debian 11.6-1.pgdg90+1)
-- Dumped by pg_dump version 12.0

-- Started on 2020-02-14 15:15:10 CET

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
-- TOC entry 2933 (class 0 OID 0)
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
-- TOC entry 2934 (class 0 OID 0)
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
-- TOC entry 2935 (class 0 OID 0)
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
-- TOC entry 2936 (class 0 OID 0)
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
-- TOC entry 2937 (class 0 OID 0)
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
-- TOC entry 2938 (class 0 OID 0)
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
-- TOC entry 2939 (class 0 OID 0)
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


-- Completed on 2020-02-14 15:15:10 CET

--
-- PostgreSQL database dump complete
--

