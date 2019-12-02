--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-02 14:05:32

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 38 (class 2615 OID 20191)
-- Name: mtmustary; Type: SCHEMA; Schema: -; Owner: datama2mi182
--

CREATE SCHEMA mtmustary;


ALTER SCHEMA mtmustary OWNER TO datama2mi182;

SET default_tablespace = '';

--
-- TOC entry 437 (class 1259 OID 22014)
-- Name: employee; Type: TABLE; Schema: mtmustary; Owner: datama2mi182
--

CREATE TABLE mtmustary.employee (
    id bigint NOT NULL,
    fname character varying,
    mname character varying,
    lname character varying,
    pnumber character varying,
    email character varying,
    "position" character varying,
    hiredate character varying,
    salary character varying
);


ALTER TABLE mtmustary.employee OWNER TO datama2mi182;

--
-- TOC entry 438 (class 1259 OID 22140)
-- Name: employee_id; Type: VIEW; Schema: mtmustary; Owner: datama2mi182
--

CREATE VIEW mtmustary.employee_id AS
 SELECT employee.id,
    employee.*::mtmustary.employee AS employee
   FROM mtmustary.employee;


ALTER TABLE mtmustary.employee_id OWNER TO datama2mi182;

--
-- TOC entry 433 (class 1259 OID 21708)
-- Name: job; Type: TABLE; Schema: mtmustary; Owner: datama2mi182
--

CREATE TABLE mtmustary.job (
    id bigint,
    minimumsalary character varying,
    maximumsalary character varying
);


ALTER TABLE mtmustary.job OWNER TO datama2mi182;

--
-- TOC entry 458 (class 1259 OID 23495)
-- Name: job_id; Type: VIEW; Schema: mtmustary; Owner: datama2mi182
--

CREATE VIEW mtmustary.job_id AS
 SELECT job.id,
    job.*::mtmustary.job AS job
   FROM mtmustary.job;


ALTER TABLE mtmustary.job_id OWNER TO datama2mi182;

--
-- TOC entry 4034 (class 0 OID 22014)
-- Dependencies: 437
-- Data for Name: employee; Type: TABLE DATA; Schema: mtmustary; Owner: datama2mi182
--

COPY mtmustary.employee (id, fname, mname, lname, pnumber, email, "position", hiredate, salary) FROM stdin;
2015	Mohammad DArwish	Tamano	Mustary	09773720206	mtmustary@student.apc.edu.ph	\N	January 28, 2022	40000
2015	Mohammad Darwish	Tamano	Mustary	09773720206	mtmustary@student.apc.edu.ph	\N	January 28, 2022	40000
2015	Mohammad Darwish	Tamano	Mustary	09773720206	mtmustary@student.apc.edu.ph	\N	January 28, 2022	40000
\.


--
-- TOC entry 4033 (class 0 OID 21708)
-- Dependencies: 433
-- Data for Name: job; Type: TABLE DATA; Schema: mtmustary; Owner: datama2mi182
--

COPY mtmustary.job (id, minimumsalary, maximumsalary) FROM stdin;
\N	40,000	1,000,000
2015	40,000	1,000,000
\.


-- Completed on 2019-12-02 14:05:33

--
-- PostgreSQL database dump complete
--

