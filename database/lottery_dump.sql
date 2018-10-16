--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: bank; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bank (
    id integer NOT NULL,
    jackpot_5_36 real,
    jackpot_6_45 real,
    jackpot_4_21 real,
    superjackpot real,
    rapidos real,
    supers real,
    top3 real,
    two_numbers real,
    prize_jackpot real
);


ALTER TABLE public.bank OWNER TO postgres;

--
-- Name: bank_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bank_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bank_id_seq OWNER TO postgres;

--
-- Name: bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bank_id_seq OWNED BY public.bank.id;


--
-- Name: bets_100_cash_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_100_cash_id_seq
    START WITH 43
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_100_cash_id_seq OWNER TO postgres;

--
-- Name: bets_100_cash; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bets_100_cash (
    id bigint DEFAULT nextval('public.bets_100_cash_id_seq'::regclass) NOT NULL,
    user_id integer,
    combination integer[],
    win_combination integer[],
    is_active boolean,
    is_win boolean,
    made_on timestamp without time zone
);


ALTER TABLE public.bets_100_cash OWNER TO postgres;

--
-- Name: bets_33_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_33_id_seq
    START WITH 43
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_33_id_seq OWNER TO postgres;

--
-- Name: bets_777_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_777_id_seq
    START WITH 43
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_777_id_seq OWNER TO postgres;

--
-- Name: bets_777; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bets_777 (
    id bigint DEFAULT nextval('public.bets_777_id_seq'::regclass) NOT NULL,
    user_id integer,
    combination integer[],
    win_combination integer[],
    is_active boolean,
    is_win boolean,
    made_on timestamp without time zone
);


ALTER TABLE public.bets_777 OWNER TO postgres;

--
-- Name: bets_fruity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_fruity_id_seq
    START WITH 49
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_fruity_id_seq OWNER TO postgres;

--
-- Name: bets_fruity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bets_fruity (
    id bigint DEFAULT nextval('public.bets_fruity_id_seq'::regclass) NOT NULL,
    user_id integer,
    combination integer[],
    win_combination integer[],
    is_active boolean,
    is_win boolean,
    made_on timestamp without time zone
);


ALTER TABLE public.bets_fruity OWNER TO postgres;

--
-- Name: bets_jackpot_4_21_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_jackpot_4_21_id_seq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_jackpot_4_21_id_seq OWNER TO postgres;

--
-- Name: bets_jackpot_4_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bets_jackpot_4_21 (
    id bigint DEFAULT nextval('public.bets_jackpot_4_21_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    combination integer[],
    made_on timestamp without time zone,
    amount_bets integer
);


ALTER TABLE public.bets_jackpot_4_21 OWNER TO postgres;

--
-- Name: bets_jackpot_5_36_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_jackpot_5_36_id_seq
    START WITH 11
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_jackpot_5_36_id_seq OWNER TO postgres;

--
-- Name: bets_jackpot_5_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bets_jackpot_5_36 (
    id bigint DEFAULT nextval('public.bets_jackpot_5_36_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    combination integer[],
    made_on timestamp without time zone,
    amount_bets integer
);


ALTER TABLE public.bets_jackpot_5_36 OWNER TO postgres;

--
-- Name: bets_jackpot_6_45_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_jackpot_6_45_id_seq
    START WITH 11
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_jackpot_6_45_id_seq OWNER TO postgres;

--
-- Name: bets_jackpot_6_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bets_jackpot_6_45 (
    id bigint DEFAULT nextval('public.bets_jackpot_6_45_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    combination integer[],
    made_on timestamp without time zone,
    amount_bets integer
);


ALTER TABLE public.bets_jackpot_6_45 OWNER TO postgres;

--
-- Name: lottery_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lottery_tokens (
    id integer NOT NULL,
    user_id integer,
    amount bigint
);


ALTER TABLE public.lottery_tokens OWNER TO postgres;

--
-- Name: bets_lottery_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_lottery_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_lottery_tokens_id_seq OWNER TO postgres;

--
-- Name: bets_lottery_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bets_lottery_tokens_id_seq OWNED BY public.lottery_tokens.id;


--
-- Name: bets_prize_jackpot_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_prize_jackpot_id_seq
    START WITH 38
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_prize_jackpot_id_seq OWNER TO postgres;

--
-- Name: bets_prize_jackpot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bets_prize_jackpot (
    id bigint DEFAULT nextval('public.bets_prize_jackpot_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    combination integer[],
    made_on timestamp without time zone,
    amount_bets integer
);


ALTER TABLE public.bets_prize_jackpot OWNER TO postgres;

--
-- Name: bets_rapidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_rapidos_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_rapidos_id_seq OWNER TO postgres;

--
-- Name: bets_rapidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bets_rapidos (
    id bigint DEFAULT nextval('public.bets_rapidos_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    combination integer[],
    made_on timestamp without time zone,
    amount_bets integer
);


ALTER TABLE public.bets_rapidos OWNER TO postgres;

--
-- Name: bets_supers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_supers_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_supers_id_seq OWNER TO postgres;

--
-- Name: bets_top3_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_top3_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_top3_id_seq OWNER TO postgres;

--
-- Name: bets_two_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bets_two_numbers_id_seq
    START WITH 38
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bets_two_numbers_id_seq OWNER TO postgres;

--
-- Name: bets_two_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bets_two_numbers (
    id bigint DEFAULT nextval('public.bets_two_numbers_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    combination integer[],
    made_on timestamp without time zone,
    amount_bets integer
);


ALTER TABLE public.bets_two_numbers OWNER TO postgres;

--
-- Name: blacklist_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blacklist_tokens (
    id integer NOT NULL,
    token character varying(500) NOT NULL,
    blacklisted_on timestamp without time zone NOT NULL
);


ALTER TABLE public.blacklist_tokens OWNER TO postgres;

--
-- Name: blacklist_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blacklist_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blacklist_tokens_id_seq OWNER TO postgres;

--
-- Name: blacklist_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blacklist_tokens_id_seq OWNED BY public.blacklist_tokens.id;


--
-- Name: jackpot_4_21_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jackpot_4_21_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jackpot_4_21_id_seq OWNER TO postgres;

--
-- Name: jackpot_4_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jackpot_4_21 (
    id bigint DEFAULT nextval('public.jackpot_4_21_id_seq'::regclass) NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE public.jackpot_4_21 OWNER TO postgres;

--
-- Name: jackpot_5_36_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jackpot_5_36_id_seq
    START WITH 207
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jackpot_5_36_id_seq OWNER TO postgres;

--
-- Name: jackpot_5_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jackpot_5_36 (
    id bigint DEFAULT nextval('public.jackpot_5_36_id_seq'::regclass) NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE public.jackpot_5_36 OWNER TO postgres;

--
-- Name: jackpot_6_45_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jackpot_6_45_id_seq
    START WITH 207
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jackpot_6_45_id_seq OWNER TO postgres;

--
-- Name: jackpot_6_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jackpot_6_45 (
    id bigint DEFAULT nextval('public.jackpot_6_45_id_seq'::regclass) NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE public.jackpot_6_45 OWNER TO postgres;

--
-- Name: prize_jackpot_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prize_jackpot_id_seq
    START WITH 18107
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prize_jackpot_id_seq OWNER TO postgres;

--
-- Name: prize_jackpot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prize_jackpot (
    id bigint DEFAULT nextval('public.prize_jackpot_id_seq'::regclass) NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE public.prize_jackpot OWNER TO postgres;

--
-- Name: raffles_jackpot_4_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.raffles_jackpot_4_21 (
    id bigint NOT NULL,
    ticket_id bigint NOT NULL,
    lottery_id bigint NOT NULL,
    combination integer[],
    win_combination integer[],
    date timestamp without time zone,
    user_id integer NOT NULL,
    is_win boolean
);


ALTER TABLE public.raffles_jackpot_4_21 OWNER TO postgres;

--
-- Name: raffles_jackpot_4_21_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.raffles_jackpot_4_21_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.raffles_jackpot_4_21_id_seq OWNER TO postgres;

--
-- Name: raffles_jackpot_4_21_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.raffles_jackpot_4_21_id_seq OWNED BY public.raffles_jackpot_4_21.id;


--
-- Name: raffles_jackpot_5_36_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.raffles_jackpot_5_36_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.raffles_jackpot_5_36_id_seq OWNER TO postgres;

--
-- Name: raffles_jackpot_5_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.raffles_jackpot_5_36 (
    id bigint DEFAULT nextval('public.raffles_jackpot_5_36_id_seq'::regclass) NOT NULL,
    ticket_id bigint NOT NULL,
    lottery_id bigint NOT NULL,
    combination integer[],
    win_combination integer[],
    date timestamp without time zone,
    user_id integer NOT NULL,
    is_win boolean
);


ALTER TABLE public.raffles_jackpot_5_36 OWNER TO postgres;

--
-- Name: raffles_jackpot_6_45_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.raffles_jackpot_6_45_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.raffles_jackpot_6_45_id_seq OWNER TO postgres;

--
-- Name: raffles_jackpot_6_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.raffles_jackpot_6_45 (
    id bigint DEFAULT nextval('public.raffles_jackpot_6_45_id_seq'::regclass) NOT NULL,
    ticket_id bigint NOT NULL,
    lottery_id bigint NOT NULL,
    combination integer[],
    win_combination integer[],
    date timestamp without time zone,
    user_id integer NOT NULL,
    is_win boolean
);


ALTER TABLE public.raffles_jackpot_6_45 OWNER TO postgres;

--
-- Name: raffles_prize_jackpot_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.raffles_prize_jackpot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.raffles_prize_jackpot_id_seq OWNER TO postgres;

--
-- Name: raffles_prize_jackpot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.raffles_prize_jackpot (
    id bigint DEFAULT nextval('public.raffles_prize_jackpot_id_seq'::regclass) NOT NULL,
    ticket_id bigint NOT NULL,
    lottery_id bigint NOT NULL,
    combination integer[],
    win_combination integer[],
    date timestamp without time zone,
    user_id integer NOT NULL,
    is_win boolean
);


ALTER TABLE public.raffles_prize_jackpot OWNER TO postgres;

--
-- Name: raffles_rapidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.raffles_rapidos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.raffles_rapidos_id_seq OWNER TO postgres;

--
-- Name: raffles_rapidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.raffles_rapidos (
    id bigint DEFAULT nextval('public.raffles_rapidos_id_seq'::regclass) NOT NULL,
    ticket_id bigint NOT NULL,
    lottery_id bigint NOT NULL,
    combination integer[],
    win_combination integer[],
    date timestamp without time zone,
    user_id integer NOT NULL,
    is_win boolean
);


ALTER TABLE public.raffles_rapidos OWNER TO postgres;

--
-- Name: raffles_two_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.raffles_two_numbers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.raffles_two_numbers_id_seq OWNER TO postgres;

--
-- Name: raffles_two_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.raffles_two_numbers (
    id bigint DEFAULT nextval('public.raffles_two_numbers_id_seq'::regclass) NOT NULL,
    ticket_id bigint NOT NULL,
    lottery_id bigint NOT NULL,
    combination integer[],
    win_combination integer[],
    date timestamp without time zone,
    user_id integer NOT NULL,
    is_win boolean
);


ALTER TABLE public.raffles_two_numbers OWNER TO postgres;

--
-- Name: rapidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rapidos_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rapidos_id_seq OWNER TO postgres;

--
-- Name: rapidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rapidos (
    id bigint DEFAULT nextval('public.rapidos_id_seq'::regclass) NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE public.rapidos OWNER TO postgres;

--
-- Name: supers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.supers_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supers_id_seq OWNER TO postgres;

--
-- Name: top3_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.top3_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.top3_id_seq OWNER TO postgres;

--
-- Name: two_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.two_numbers_id_seq
    START WITH 18107
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.two_numbers_id_seq OWNER TO postgres;

--
-- Name: two_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.two_numbers (
    id bigint DEFAULT nextval('public.two_numbers_id_seq'::regclass) NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE public.two_numbers OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    registered_on timestamp without time zone NOT NULL,
    admin boolean NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: waiting_tickets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.waiting_tickets (
    id bigint NOT NULL,
    email character varying,
    lottery_type character varying,
    combination integer[],
    raffles integer,
    win_combination integer[],
    is_win boolean
);


ALTER TABLE public.waiting_tickets OWNER TO postgres;

--
-- Name: waiting_tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.waiting_tickets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.waiting_tickets_id_seq OWNER TO postgres;

--
-- Name: waiting_tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.waiting_tickets_id_seq OWNED BY public.waiting_tickets.id;


--
-- Name: wallets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wallets (
    id integer NOT NULL,
    user_id integer,
    amount real
);


ALTER TABLE public.wallets OWNER TO postgres;

--
-- Name: wallets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wallets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wallets_id_seq OWNER TO postgres;

--
-- Name: wallets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wallets_id_seq OWNED BY public.wallets.id;


--
-- Name: bank id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank ALTER COLUMN id SET DEFAULT nextval('public.bank_id_seq'::regclass);


--
-- Name: blacklist_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blacklist_tokens ALTER COLUMN id SET DEFAULT nextval('public.blacklist_tokens_id_seq'::regclass);


--
-- Name: lottery_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lottery_tokens ALTER COLUMN id SET DEFAULT nextval('public.bets_lottery_tokens_id_seq'::regclass);


--
-- Name: raffles_jackpot_4_21 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_4_21 ALTER COLUMN id SET DEFAULT nextval('public.raffles_jackpot_4_21_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: waiting_tickets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.waiting_tickets ALTER COLUMN id SET DEFAULT nextval('public.waiting_tickets_id_seq'::regclass);


--
-- Name: wallets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wallets ALTER COLUMN id SET DEFAULT nextval('public.wallets_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
\.


--
-- Data for Name: bank; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bank (id, jackpot_5_36, jackpot_6_45, jackpot_4_21, superjackpot, rapidos, supers, top3, two_numbers, prize_jackpot) FROM stdin;
1	151	339	392	1376	149	145	179	138	131
\.


--
-- Name: bank_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bank_id_seq', 3, true);


--
-- Data for Name: bets_100_cash; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bets_100_cash (id, user_id, combination, win_combination, is_active, is_win, made_on) FROM stdin;
78	5	{4,7,3,8,9,6,5,2,1}	{1,4,7,0,5,6,3,2,9}	f	f	2018-08-16 18:42:16.175885
43	1	{2,1,8,7,3}	{5,4,2,3,8}	f	f	2018-08-04 03:32:53.961397
44	1	{9,1,2,8,4}	{5,4,2,3,8}	f	f	2018-08-04 03:32:53.989996
45	1	{0,8,4,1,7}	{3,0,1,9,8}	f	f	2018-08-04 03:38:52.825266
46	1	{8,0,1,5,9}	{5,7,9,6,4}	f	f	2018-08-04 03:42:55.68909
47	1	{0,7,9,5,2}	{5,7,9,6,4}	f	f	2018-08-04 03:42:55.707917
48	1	{6,9,5,3,7}	{3,9,5,1,2}	f	f	2018-08-04 03:57:37.965354
49	1	{5,2,6,4,3}	{3,9,5,1,2}	f	f	2018-08-04 03:57:37.996071
50	6	{3,1,5,2,9}	{8,2,4,1,9}	f	f	2018-08-04 18:04:54.690965
51	6	{3,7,8,5,6}	{0,4,7,6,5}	f	f	2018-08-04 18:04:56.623199
52	5	{4,9,8,2,0}	{3,6,2,4,9}	f	f	2018-08-04 22:02:38.980253
53	5	{4,2,1,3,7}	{5,7,6,9,0}	f	f	2018-08-04 22:02:39.844049
54	5	{6,2,4,0,5}	{1,5,8,6,7}	f	f	2018-08-04 22:02:42.877756
55	1	{2,0,5,9,8,1,4,3,6}	{7,4,0,3,9,8,5,2,1}	f	f	2018-08-06 20:19:54.988062
56	1	{3,4,5,9,7,2,0,8,1}	{7,4,0,3,9,8,5,2,1}	f	t	2018-08-06 20:19:55.025405
58	1	{2,0,6,9,5,8,4,1,3}	{2,7,8,1,3,5,9,4,6}	f	f	2018-08-06 20:49:29.29057
59	1	{8,1,7,0,6,2,3,9,5}	{9,2,5,8,3,7,4,6,0}	f	f	2018-08-10 17:42:30.60321
60	1	{8,1,3,2,5,9,4,6,0}	{9,2,5,8,3,7,4,6,0}	f	f	2018-08-10 17:42:30.625376
61	1	{1,3,4,8,2,7,0,9,6}	{2,9,1,6,8,5,3,0,7}	f	f	2018-08-10 17:45:42.424051
62	1	{0,6,9,4,5,3,8,1,7}	{5,1,7,9,4,3,8,0,6}	f	t	2018-08-10 17:46:34.029769
63	1	{0,9,8,6,2,1,5,4,7}	{4,0,9,7,8,6,1,3,5}	f	f	2018-08-10 17:47:03.114042
57	1	{1,9,3,7,0,8,4,6,2}	{2,7,8,1,3,5,9,4,6}	f	f	2018-08-06 20:49:29.267573
64	5	{5,9,2,6,1,3,4,7,0}	{9,6,4,8,5,2,3,0,1}	f	f	2018-08-11 21:34:20.666715
65	1	{1,0,6,3,8,9,2,4,7}	{7,2,1,6,5,3,0,9,8}	f	f	2018-08-11 22:26:02.077127
66	1	{2,9,3,0,8,1,6,7,4}	{8,5,4,0,3,2,7,6,1}	f	f	2018-08-11 22:32:56.187505
71	1	{8,6,0,7,4,3,9,5,1}	{3,7,6,0,8,5,4,2,9}	f	f	2018-08-11 23:03:45.658421
72	1	{4,6,1,8,5,0,2,9,3}	{0,7,4,1,6,2,5,8,3}	f	f	2018-08-11 23:07:27.447504
73	1	{0,2,1,6,4,9,5,8,3}	{3,6,4,7,8,2,9,5,1}	f	f	2018-08-11 23:14:53.5327
68	1	{1,6,3,5,7,2,0,9,8}	{3,2,0,6,7,4,1,8,9}	f	f	2018-08-11 22:42:30.550305
74	6	{4,0,2,3,7,6,5,1,8}	{3,8,1,9,5,0,6,2,4}	f	f	2018-08-13 21:25:31.49469
75	6	{0,5,2,7,8,9,6,3,1}	{8,6,5,2,9,3,0,1,7}	f	t	2018-08-13 21:25:33.675104
76	6	{8,0,4,3,9,5,6,1,7}	{3,9,5,0,1,8,7,2,4}	f	f	2018-08-13 21:25:35.280104
77	6	{7,3,6,2,4,9,1,0,8}	{9,2,0,4,1,3,5,6,8}	f	f	2018-08-13 21:25:42.883579
79	5	{4,3,6,5,1,0,2,9,7}	{1,3,0,5,9,6,7,4,8}	f	f	2018-08-23 14:55:24.31666
80	5	{6,0,2,4,3,1,8,5,9}	{0,3,5,9,7,4,6,2,8}	f	f	2018-08-23 14:55:43.216148
81	5	{1,3,8,6,0,4,2,5,9}	{9,5,8,7,1,3,0,2,6}	f	f	2018-08-23 14:55:47.483242
82	5	{8,6,1,3,4,9,0,7,5}	{8,5,2,4,3,9,1,0,6}	f	f	2018-08-23 14:55:51.596532
83	5	{9,3,1,2,4,0,7,5,8}	{1,6,9,2,3,5,4,0,8}	f	f	2018-08-23 14:55:54.657759
84	1	{9,6,7,2,4,8,0,3,5}	{6,4,8,3,0,9,2,1,7}	f	f	2018-08-24 01:26:34.654819
67	1	{3,7,8,5,9,0,2,4,6}	{3,2,0,6,7,4,1,8,9}	f	f	2018-08-11 22:42:30.524124
69	1	{4,9,1,6,2,0,3,5,7}	{6,1,5,8,7,9,4,2,0}	f	f	2018-08-11 22:42:30.564219
70	1	{2,9,4,1,3,5,0,8,6}	{6,1,5,8,7,9,4,2,0}	f	f	2018-08-11 22:42:30.574889
85	37	{7,4,6,2,0,9,1,5,3}	{5,7,6,2,3,0,4,1,9}	t	t	2018-09-01 00:01:53.181728
86	37	{4,7,0,2,1,5,9,3,8}	{5,7,6,2,3,0,4,1,9}	t	f	2018-09-01 00:01:53.181885
87	5	{4,2,6,7,9,0,3,1,8}	{4,1,5,6,2,8,9,7,3}	f	f	2018-09-04 10:40:22.075924
\.


--
-- Name: bets_100_cash_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_100_cash_id_seq', 87, true);


--
-- Name: bets_33_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_33_id_seq', 49, true);


--
-- Data for Name: bets_777; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bets_777 (id, user_id, combination, win_combination, is_active, is_win, made_on) FROM stdin;
43	1	{8,0,3}	{4,6,8}	f	f	2018-08-04 03:32:31.506424
44	1	{4,3,2}	{6,0,2}	f	f	2018-08-04 03:41:27.659318
45	1	{5,2,6}	{6,0,2}	f	f	2018-08-04 03:41:27.681653
46	1	{7,0,3}	{6,2,4}	f	f	2018-08-04 06:24:41.164779
47	5	{3,0,2}	{4,5,7}	f	f	2018-08-04 23:54:11.008512
48	5	{0,1,6}	{6,4,0}	f	f	2018-08-04 23:54:21.559232
49	5	{2,7,4}	{7,8,9}	f	f	2018-08-04 23:54:23.428487
50	1	{5,8,1,0,3,2,7,4,6}	{7,0,9,8,3,4,1,5,6}	f	f	2018-08-10 17:47:49.120707
51	1	{4,6,1,0,7,8,3,9,2}	{7,0,9,8,3,4,1,5,6}	f	f	2018-08-10 17:47:49.131967
52	1	{7,0,3,6,8,1,2,5,4}	{3,5,1,4,9,6,0,2,7}	f	f	2018-08-10 17:52:53.31059
53	1	{3,8,1,9,6,2,5,0,4}	{3,5,1,4,9,6,0,2,7}	f	f	2018-08-10 17:52:53.33347
54	1	{0,7,1,8,5,2,4,3,9}	{6,2,7,5,9,4,3,1,8}	f	f	2018-08-10 18:02:28.97539
55	1	{1,8,4,6,2,5,3,0,7}	{6,2,7,5,9,4,3,1,8}	f	f	2018-08-10 18:02:28.986904
56	1	{9,6,8,4,3,1,0,5,7}	{7,2,9,5,0,6,1,3,8}	f	f	2018-08-10 18:04:07.004264
57	1	{5,9,1,8,0,6,3,4,7}	{7,2,9,5,0,6,1,3,8}	f	f	2018-08-10 18:04:07.012345
58	1	{2,5,0,6,1,9,7,3,8}	{7,3,8,1,2,6,0,9,5}	f	t	2018-08-10 19:32:27.043794
59	1	{5,3,7,8,9,1,6,2,0}	{7,3,8,1,2,6,0,9,5}	f	t	2018-08-10 19:32:27.070295
60	1	{6,5,9,8,3,1,0,2,4}	{7,1,2,9,0,4,8,3,6}	f	f	2018-08-11 23:05:20.330214
61	1	{1,9,0,6,5,4,8,2,7}	{8,0,2,6,7,4,5,1,3}	f	f	2018-08-11 23:10:10.893398
62	1	{0,4,8,5,7,9,2,3,6}	{8,6,4,2,7,5,0,3,9}	f	t	2018-08-11 23:38:32.861396
63	5	{3,4,8,0,2,5,6,1,7}	{3,6,4,7,8,9,5,1,0}	f	f	2018-08-23 14:53:25.10765
64	5	{4,8,3,9,1,6,7,5,2}	{5,2,0,7,6,8,4,3,9}	f	f	2018-08-23 14:53:28.442749
66	1	{0,1,2,6,9,3,7,5,4}	{4,2,9,5,8,3,1,7,0}	f	f	2018-08-24 01:25:39.261868
65	1	{8,4,9,3,7,0,6,2,5}	{4,2,9,5,8,3,1,7,0}	f	f	2018-08-24 01:25:39.208857
67	1	{1,6,8,5,3,4,2,9,7}	{9,6,5,2,7,3,1,4,0}	f	f	2018-08-24 20:27:50.652357
68	5	{3,1,4,5,0,8,7,9,6}	{1,9,5,7,6,8,3,0,4}	f	t	2018-08-27 13:50:51.787835
\.


--
-- Name: bets_777_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_777_id_seq', 68, true);


--
-- Data for Name: bets_fruity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bets_fruity (id, user_id, combination, win_combination, is_active, is_win, made_on) FROM stdin;
49	1	{4,8,7,1,2,3,9,6,0}	{8,2,5,3,4,7,1,6,9}	f	f	2018-08-06 20:00:45.353407
50	1	{3,5,4,9,8,2,0,6,7}	{9,6,7,1,5,4,3,2,8}	f	f	2018-08-07 22:32:34.277166
51	1	{7,4,5,3,6,8,2,1,9}	{4,8,6,3,7,2,1,9,0}	f	f	2018-08-07 22:35:32.562802
52	1	{7,8,5,2,0,9,6,3,1}	{2,6,7,9,1,5,4,3,0}	f	f	2018-08-07 22:38:29.619218
53	1	{7,6,3,5,1,8,0,2,4}	{3,2,5,0,4,1,6,8,9}	f	f	2018-08-07 22:56:45.254288
54	1	{3,1,2,5,8,0,6,4,9}	{9,3,2,4,8,7,1,6,0}	f	f	2018-08-10 02:52:25.348566
55	1	{5,6,3,1,2,9,4,0,8}	{9,3,2,4,8,7,1,6,0}	f	f	2018-08-10 02:52:25.361874
56	1	{6,3,4,7,9,8,2,5,0}	{2,7,4,9,0,1,3,6,8}	f	f	2018-08-10 02:59:20.742528
57	1	{0,6,5,3,1,7,8,9,4}	{2,7,4,9,0,1,3,6,8}	f	f	2018-08-10 02:59:20.753374
58	1	{9,6,2,8,5,0,1,4,3}	{0,7,4,8,3,2,6,5,1}	f	f	2018-08-10 03:00:32.780954
59	1	{2,6,5,4,3,7,0,1,9}	{0,7,4,8,3,2,6,5,1}	f	f	2018-08-10 03:00:32.805879
60	1	{1,7,3,0,8,9,2,6,4}	{7,0,8,9,1,2,6,5,3}	f	f	2018-08-10 03:02:15.413014
61	1	{5,9,0,3,4,7,6,8,1}	{7,0,8,9,1,2,6,5,3}	f	f	2018-08-10 03:02:15.439625
62	1	{5,1,0,8,3,2,9,6,7}	{8,9,7,4,0,2,6,3,5}	f	f	2018-08-10 03:03:06.952546
63	1	{5,3,1,6,7,2,0,9,4}	{7,8,2,0,6,4,5,3,1}	f	f	2018-08-10 03:03:28.447947
64	1	{8,5,9,3,4,2,6,1,7}	{6,9,1,5,7,0,2,8,3}	f	f	2018-08-10 03:28:59.412371
65	1	{5,1,4,8,0,7,3,9,2}	{1,8,4,5,7,0,6,2,9}	f	f	2018-08-10 16:09:20.939167
66	1	{0,7,8,3,4,9,2,5,6}	{1,8,4,5,7,0,6,2,9}	f	f	2018-08-10 16:09:20.964595
67	1	{2,7,8,5,0,1,6,9,4}	{6,4,7,8,1,9,5,0,2}	f	t	2018-08-10 18:15:45.318439
70	1	{4,8,7,6,0,5,3,9,1}	{1,6,3,8,5,7,2,0,4}	f	f	2018-08-11 22:06:12.160438
71	1	{8,1,3,7,5,6,2,4,0}	{4,9,0,6,1,3,5,7,8}	f	f	2018-08-11 22:37:01.410839
72	5	{2,0,5,1,3,4,7,6,9}	{5,4,2,3,8,7,1,9,6}	f	f	2018-08-11 22:39:21.252266
75	1	{1,2,7,9,5,3,8,0,4}	{8,0,6,9,5,7,1,2,4}	f	f	2018-08-11 22:55:07.71733
76	1	{1,5,8,0,3,4,7,9,6}	{9,2,7,6,3,4,5,0,8}	f	f	2018-08-11 22:57:11.202754
69	1	{1,6,4,8,5,0,7,2,3}	{6,4,7,8,1,9,5,0,2}	f	f	2018-08-10 18:15:45.348268
78	1	{4,5,0,1,9,6,8,2,3}	{1,7,2,4,9,0,5,8,3}	f	f	2018-08-11 23:02:47.033106
79	1	{2,3,0,5,8,4,1,9,7}	{7,9,2,5,0,1,3,6,8}	f	f	2018-08-11 23:05:59.510768
80	1	{8,6,4,2,1,7,0,3,5}	{3,1,8,0,5,2,4,9,6}	f	f	2018-08-11 23:06:48.545913
74	1	{5,4,2,1,3,9,8,7,0}	{6,3,1,8,5,4,7,9,2}	f	f	2018-08-11 22:42:30.657316
81	1	{9,5,3,4,1,6,0,8,7}	{5,2,9,7,6,1,4,0,8}	f	f	2018-08-11 23:14:06.227341
82	1	{6,8,5,9,3,4,7,2,0}	{6,9,7,4,3,8,5,2,0}	f	t	2018-08-11 23:37:31.304441
83	6	{9,1,0,5,2,4,7,3,8}	{3,9,7,5,0,4,1,2,8}	t	t	2018-08-13 21:52:06.177942
84	5	{0,1,3,4,5,2,9,7,8}	{7,8,6,9,2,0,4,5,3}	f	f	2018-08-14 17:50:59.162704
86	19	{1,5,9,2,7,4,3,8,6}	{3,1,9,4,8,6,2,7,5}	t	t	2018-08-18 18:02:38.432839
85	19	{2,1,9,5,4,7,8,6,3}	{3,1,9,4,8,6,2,7,5}	f	t	2018-08-18 18:02:38.408019
87	1	{0,2,8,6,7,3,9,1,5}	{8,1,2,7,9,6,4,3,0}	f	f	2018-08-19 18:52:43.699742
77	1	{8,1,6,4,7,2,3,5,9}	{0,6,4,3,7,9,2,8,1}	f	f	2018-08-11 22:58:18.541067
73	1	{0,9,1,5,3,7,4,6,8}	{4,9,8,3,7,0,1,2,6}	f	f	2018-08-11 22:42:30.644097
68	1	{5,8,3,6,4,7,9,2,0}	{6,4,7,8,1,9,5,0,2}	f	f	2018-08-10 18:15:45.339949
88	5	{1,0,3,9,7,8,6,4,2}	{3,1,0,2,5,9,8,4,6}	f	f	2018-08-27 13:49:26.766933
89	1	{1,5,0,4,2,9,6,7,3}	{3,6,7,9,2,0,4,1,8}	f	f	2018-08-31 15:27:12.075002
90	1	{8,2,0,6,9,3,4,5,7}	{8,4,2,7,6,5,0,9,1}	t	f	2018-08-31 16:40:20.853654
91	1	{9,8,7,0,5,4,1,2,3}	{8,4,2,7,6,5,0,9,1}	t	f	2018-08-31 16:40:20.877957
92	20	{0,2,8,4,5,1,9,6,7}	{3,4,8,5,2,9,6,7,0}	f	f	2018-09-25 21:45:55.464857
93	20	{9,8,2,4,3,0,1,5,7}	{2,9,8,4,5,1,6,0,3}	f	f	2018-10-01 21:05:59.446756
94	20	{9,8,0,3,7,1,5,4,6}	{7,9,8,6,5,3,0,2,4}	f	f	2018-10-01 21:06:38.235275
95	20	{3,0,4,7,2,1,5,9,8}	{5,4,6,8,3,1,7,9,0}	f	f	2018-10-01 21:07:49.749839
\.


--
-- Name: bets_fruity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_fruity_id_seq', 95, true);


--
-- Data for Name: bets_jackpot_4_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bets_jackpot_4_21 (id, user_id, combination, made_on, amount_bets) FROM stdin;
57	1	{11,15,17,7}	2018-08-23 23:24:41.958406	-47
56	1	{14,7,3,11}	2018-08-23 23:24:41.958164	-46
58	1	{11,17,7,13}	2018-08-24 20:18:09.744098	-43
59	1	{13,6,17,20}	2018-08-24 20:50:44.081805	-43
60	1	{14,12,10,2}	2018-08-24 20:50:44.08202	-43
61	5	{10,18,19,13}	2018-08-27 13:51:54.590734	-27
62	19	{20,19,1,18}	2018-08-29 23:35:54.824041	-12
66	37	{14,1,6,16}	2018-09-01 00:01:53.181525	0
65	37	{12,10,7,21}	2018-09-01 00:01:53.181358	0
67	5	{10,11,12,21}	2018-09-04 10:02:32.107015	0
68	20	{6,14,15,13}	2018-09-24 20:46:40.575988	0
69	20	{1,17,12,19}	2018-10-01 20:04:28.646765	0
70	20	{1,17,12,19}	2018-10-01 20:04:30.591794	0
71	20	{20,2,19,12}	2018-10-01 21:01:12.970959	0
\.


--
-- Name: bets_jackpot_4_21_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_jackpot_4_21_id_seq', 71, true);


--
-- Data for Name: bets_jackpot_5_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bets_jackpot_5_36 (id, user_id, combination, made_on, amount_bets) FROM stdin;
14	1	{26,20,18,12,23}	2018-08-24 00:37:40.243206	-30
15	1	{34,16,25,4,2}	2018-08-24 19:38:33.479563	-27
17	1	{3,9,20,2,17}	2018-08-24 20:06:07.455991	-27
16	1	{1,2,3,4,5}	2018-08-24 20:06:07.455766	-27
19	1	{15,23,22,11,33}	2018-08-31 16:28:13.987434	0
18	1	{1,33,13,34,5}	2018-08-31 16:28:13.987215	0
21	5	{28,19,8,30,18}	2018-09-04 10:27:11.827981	0
20	5	{25,31,36,16,22}	2018-09-04 10:27:11.827759	0
\.


--
-- Name: bets_jackpot_5_36_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_jackpot_5_36_id_seq', 21, true);


--
-- Data for Name: bets_jackpot_6_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bets_jackpot_6_45 (id, user_id, combination, made_on, amount_bets) FROM stdin;
12	1	{37,20,13,36,33,27}	2018-08-24 00:37:48.774088	-16
13	1	{20,6,32,2,11,28}	2018-08-24 20:04:08.721763	-15
14	1	{45,42,23,8,15,12}	2018-08-24 20:04:08.721995	-15
15	1	{26,24,37,4,30,42}	2018-08-24 20:48:06.667169	-15
16	1	{9,19,41,37,28,38}	2018-08-24 20:48:06.667387	-15
18	5	{14,32,27,17,25,20}	2018-09-04 10:27:59.347451	0
17	5	{30,34,22,13,9,5}	2018-09-04 10:27:59.347217	0
\.


--
-- Name: bets_jackpot_6_45_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_jackpot_6_45_id_seq', 18, true);


--
-- Name: bets_lottery_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_lottery_tokens_id_seq', 19, true);


--
-- Data for Name: bets_prize_jackpot; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bets_prize_jackpot (id, user_id, combination, made_on, amount_bets) FROM stdin;
4674466	1	{1,14,18,22,20,6,10,3,21,4,23,5}	2018-08-24 00:43:03.038846	-779
4674467	1	{10,5,3,12,14,4,18,6,15,1,21,8}	2018-08-24 01:33:00.457207	-776
4674468	5	{17,12,6,3,9,15,21,22,13,7,1,14}	2018-09-04 10:36:50.364564	0
\.


--
-- Name: bets_prize_jackpot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_prize_jackpot_id_seq', 4674468, true);


--
-- Data for Name: bets_rapidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bets_rapidos (id, user_id, combination, made_on, amount_bets) FROM stdin;
51	1	{17,19,10,9,15,18,13,16}	2018-08-24 01:10:50.395903	-779
52	1	{5,15,12,1,18,20,11,10}	2018-08-24 20:53:00.797139	-702
53	1	{9,15,2,14,12,4,13,18}	2018-08-24 20:53:00.797355	-702
\.


--
-- Name: bets_rapidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_rapidos_id_seq', 53, true);


--
-- Name: bets_supers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_supers_id_seq', 36, true);


--
-- Name: bets_top3_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_top3_id_seq', 36, true);


--
-- Data for Name: bets_two_numbers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bets_two_numbers (id, user_id, combination, made_on, amount_bets) FROM stdin;
55	1	{10,11}	2018-08-24 00:42:52.094005	-779
56	1	{54,22}	2018-08-24 20:24:54.379408	-702
57	20	{45,57}	2018-10-01 20:04:51.09825	0
\.


--
-- Name: bets_two_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bets_two_numbers_id_seq', 57, true);


--
-- Data for Name: blacklist_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blacklist_tokens (id, token, blacklisted_on) FROM stdin;
\.


--
-- Name: blacklist_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blacklist_tokens_id_seq', 1, false);


--
-- Data for Name: jackpot_4_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jackpot_4_21 (id, combination, win_tickets, date) FROM stdin;
226	{16,9,12,1}	{}	2018-08-24 05:00:00.006272
227	{10,17,3,20}	{}	2018-08-24 08:00:00.005806
228	{10,1,20,16}	{}	2018-08-24 11:00:00.005847
229	{1,20,16,14}	{}	2018-08-24 17:00:00.005554
230	{15,20,4,14}	{}	2018-08-24 20:00:00.00562
231	{9,6,15,2}	{}	2018-08-24 23:00:00.005753
232	{16,4,1,3}	{}	2018-08-25 05:00:00.005547
233	{18,17,9,14}	{}	2018-08-25 08:00:00.005575
234	{19,4,3,17}	{}	2018-08-25 11:00:00.005547
235	{14,17,3,4}	{}	2018-08-25 17:00:00.005585
236	{13,18,5,8}	{}	2018-08-25 20:00:00.005546
237	{13,5,10,6}	{}	2018-08-25 23:00:00.005586
238	{4,10,20,16}	{}	2018-08-26 05:00:00.005602
239	{16,15,20,6}	{}	2018-08-26 08:00:00.005901
240	{20,16,17,6}	{}	2018-08-26 11:00:00.005609
241	{21,17,3,12}	{}	2018-08-26 17:00:00.005692
242	{4,13,6,3}	{}	2018-08-26 20:00:00.005669
243	{1,3,18,2}	{}	2018-08-26 23:00:00.005281
244	{14,10,18,17}	{}	2018-08-27 05:00:00.005537
245	{11,21,20,4}	{}	2018-08-27 08:00:00.005523
246	{2,6,15,8}	{}	2018-08-27 11:00:00.005575
247	{8,11,14,10}	{}	2018-08-27 17:00:00.0057
248	{17,2,13,9}	{}	2018-08-27 20:00:00.005815
249	{10,18,14,3}	{}	2018-08-27 23:00:00.005528
250	{11,9,17,8}	{}	2018-08-28 05:00:00.005575
251	{11,6,21,9}	{}	2018-08-28 08:00:00.006177
252	{13,2,19,21}	{}	2018-08-28 11:00:00.005513
253	{20,17,1,6}	{}	2018-08-28 17:00:00.005512
254	{7,6,20,14}	{}	2018-08-28 20:00:00.005569
255	{5,2,10,19}	{}	2018-08-28 23:00:00.00554
256	{14,5,3,19}	{}	2018-08-29 05:00:00.006309
257	{8,10,15,7}	{}	2018-08-29 08:00:00.005555
258	{9,5,7,10}	{}	2018-08-29 11:00:00.00559
259	{8,16,12,9}	{}	2018-08-29 17:00:00.005632
260	{14,4,1,16}	{}	2018-08-29 20:00:00.005572
261	{17,11,9,13}	{}	2018-08-29 23:00:00.005595
262	{12,8,20,13}	{}	2018-08-30 05:00:00.005597
263	{17,6,7,13}	{}	2018-08-30 08:00:00.005617
264	{18,11,5,14}	{}	2018-08-30 11:00:00.005561
265	{1,18,11,10}	{}	2018-08-30 17:00:00.00563
266	{2,18,6,21}	{}	2018-08-30 20:00:00.00554
267	{18,8,3,7}	{}	2018-08-30 23:00:00.005618
268	{20,4,9,14}	{}	2018-08-31 05:00:00.005311
269	{17,3,21,10}	\N	2018-08-31 08:00:00.005822
270	{8,21,14,11}	{}	2018-08-31 08:00:00.00814
271	{3,2,7,11}	{}	2018-08-31 11:00:00.004652
272	{19,15,21,8}	{}	2018-08-31 17:00:00.009367
273	{7,12,17,19}	{}	2018-08-31 20:00:00.008377
274	{3,18,19,6}	{}	2018-08-31 23:00:00.005837
275	{6,13,11,4}	{}	2018-09-01 05:00:00.007965
276	{10,15,5,2}	{}	2018-09-01 08:00:00.007256
277	{20,18,8,11}	{}	2018-09-01 11:00:00.007177
278	{18,16,9,20}	{}	2018-09-01 17:00:00.007144
279	{13,6,19,10}	{}	2018-09-01 20:00:00.007207
280	{18,4,15,19}	{}	2018-09-01 23:00:00.007199
281	{3,6,17,8}	{}	2018-09-02 05:00:00.006854
282	{3,10,14,12}	{}	2018-09-02 08:00:00.007756
283	{19,15,18,5}	{}	2018-09-02 11:00:00.00727
284	{5,1,9,2}	{}	2018-09-02 17:00:00.007222
285	{6,3,12,14}	{}	2018-09-02 20:00:00.00713
286	{9,14,19,18}	{}	2018-09-02 23:00:00.006933
287	{19,13,4,20}	{}	2018-09-03 05:00:00.007887
288	{9,18,2,4}	{}	2018-09-03 08:00:00.007295
289	{19,1,21,15}	{}	2018-09-03 11:00:00.007181
290	{11,20,8,15}	{}	2018-09-03 17:00:00.007231
291	{7,18,13,9}	{}	2018-09-03 20:00:00.007162
292	{19,12,15,3}	{}	2018-09-03 23:00:00.007009
293	{10,16,4,7}	{}	2018-09-04 05:00:00.007244
294	{5,21,20,6}	{}	2018-09-04 08:00:00.007311
295	{14,18,13,9}	{}	2018-09-04 11:00:00.00725
296	{6,2,12,5}	{}	2018-09-04 17:00:00.00717
297	{4,14,1,7}	{}	2018-09-04 20:00:00.007223
298	{18,21,3,9}	{}	2018-09-04 23:00:00.007166
299	{3,15,10,20}	{}	2018-09-05 05:00:00.008212
300	{13,9,15,1}	{}	2018-09-05 08:00:00.00719
301	{5,19,16,9}	{}	2018-09-05 11:00:00.007203
302	{5,8,17,10}	{}	2018-09-05 17:00:00.007229
303	{17,20,21,13}	{}	2018-09-05 20:00:00.007137
306	{4,16,7,21}	{}	2018-09-06 08:00:00.007763
309	{7,6,14,1}	{}	2018-09-06 20:00:00.007234
312	{6,14,18,13}	{}	2018-09-07 08:00:00.007175
315	{10,4,20,5}	{}	2018-09-07 20:00:00.007233
318	{15,1,7,3}	{}	2018-09-08 08:00:00.007181
321	{13,4,10,12}	{}	2018-09-08 20:00:00.007099
324	{21,17,15,3}	{}	2018-09-09 08:00:00.007304
304	{2,21,10,8}	{}	2018-09-05 23:00:00.007187
305	{1,11,21,9}	{}	2018-09-06 05:00:00.007187
307	{2,19,7,21}	{}	2018-09-06 11:00:00.007364
308	{19,8,18,12}	{}	2018-09-06 17:00:00.007237
310	{2,12,21,13}	{}	2018-09-06 23:00:00.00721
311	{19,7,5,4}	{}	2018-09-07 05:00:00.00727
313	{10,9,19,2}	{}	2018-09-07 11:00:00.007158
314	{17,19,21,12}	{}	2018-09-07 17:00:00.007193
316	{9,16,4,2}	{}	2018-09-07 23:00:00.007209
317	{9,2,1,6}	{}	2018-09-08 05:00:00.007155
319	{13,15,3,19}	{}	2018-09-08 11:00:00.007071
320	{17,2,6,18}	{}	2018-09-08 17:00:00.007267
322	{11,16,21,2}	{}	2018-09-08 23:00:00.007213
323	{6,3,9,4}	{}	2018-09-09 05:00:00.007202
325	{8,3,10,6}	{}	2018-09-09 11:00:00.007264
326	{21,9,4,5}	{}	2018-09-09 17:00:00.00724
327	{7,6,15,21}	{}	2018-09-09 20:00:00.007293
328	{12,4,5,14}	{}	2018-09-09 23:00:00.007089
329	{21,10,18,19}	{}	2018-09-10 05:00:00.007702
330	{8,21,17,3}	{}	2018-09-10 08:00:00.007253
331	{8,5,2,16}	{}	2018-09-10 11:00:00.007168
332	{15,11,5,12}	{}	2018-09-10 17:00:00.007235
333	{19,1,3,12}	{}	2018-09-10 20:00:00.007052
334	{17,6,7,4}	{}	2018-09-10 23:00:00.007343
335	{8,20,7,13}	{}	2018-09-11 05:00:00.007163
336	{10,3,9,6}	{}	2018-09-11 08:00:00.007873
337	{12,14,6,3}	{}	2018-09-11 11:00:00.00718
338	{1,7,5,10}	{}	2018-09-11 17:00:00.007274
339	{7,16,20,21}	{}	2018-09-11 20:00:00.007112
340	{11,21,8,19}	{}	2018-09-11 23:00:00.007187
341	{19,20,2,12}	{}	2018-09-12 05:00:00.00735
342	{12,4,17,13}	{}	2018-09-12 08:00:00.007285
343	{13,12,1,21}	{}	2018-09-12 11:00:00.007236
344	{10,9,2,20}	{}	2018-09-12 17:00:00.007136
345	{7,13,12,18}	{}	2018-09-12 20:00:00.007171
346	{5,10,7,8}	{}	2018-09-12 23:00:00.007253
347	{21,15,16,13}	{}	2018-09-13 05:00:00.007208
348	{20,15,14,12}	{}	2018-09-13 08:00:00.007268
349	{8,18,4,20}	{}	2018-09-13 11:00:00.007275
350	{3,7,13,2}	{}	2018-09-13 17:00:00.007192
351	{19,17,12,2}	{}	2018-09-13 20:00:00.007194
352	{15,6,16,11}	{}	2018-09-13 23:00:00.007124
353	{15,9,5,11}	{}	2018-09-14 05:00:00.007185
354	{16,5,6,3}	{}	2018-09-14 08:00:00.007174
355	{6,1,20,8}	{}	2018-09-14 11:00:00.007241
356	{14,13,6,11}	{}	2018-09-14 17:00:00.007257
357	{14,19,21,5}	{}	2018-09-14 20:00:00.007209
358	{10,17,19,18}	{}	2018-09-14 23:00:00.007047
359	{2,1,17,3}	{}	2018-09-15 05:00:00.007137
360	{8,11,12,16}	{}	2018-09-15 08:00:00.007271
361	{4,19,6,8}	{}	2018-09-15 11:00:00.007306
362	{3,5,11,1}	{}	2018-09-15 17:00:00.007212
363	{21,17,19,4}	{}	2018-09-15 20:00:00.006939
364	{9,10,6,1}	{}	2018-09-15 23:00:00.007262
365	{1,20,21,2}	{}	2018-09-16 05:00:00.007295
366	{12,19,16,8}	{}	2018-09-16 08:00:00.00703
367	{6,19,2,1}	{}	2018-09-16 11:00:00.007219
368	{13,6,7,9}	{}	2018-09-16 17:00:00.007254
369	{11,20,8,4}	{}	2018-09-16 20:00:00.007137
370	{11,18,20,9}	{}	2018-09-16 23:00:00.007257
371	{14,16,15,7}	{}	2018-09-17 05:00:00.007226
372	{8,17,14,18}	{}	2018-09-17 08:00:00.007243
373	{13,10,21,16}	{}	2018-09-17 11:00:00.007222
374	{8,7,5,14}	{}	2018-09-17 17:00:00.007291
375	{1,2,21,9}	{}	2018-09-17 20:00:00.007302
376	{11,17,21,6}	{}	2018-09-17 23:00:00.007143
377	{2,18,9,17}	{}	2018-09-18 05:00:00.007266
378	{16,5,6,20}	{}	2018-09-18 08:00:00.007295
379	{4,3,15,11}	{}	2018-09-18 11:00:00.007112
380	{17,3,5,14}	{}	2018-09-18 17:00:00.007121
381	{6,1,5,21}	{}	2018-09-18 20:00:00.007156
382	{7,18,14,9}	{}	2018-09-18 23:00:00.006038
383	{17,2,20,21}	{}	2018-09-19 05:00:00.007305
384	{16,5,14,4}	{}	2018-09-19 08:00:00.007179
385	{1,13,9,5}	{}	2018-09-19 11:00:00.00709
386	{15,5,1,21}	{}	2018-09-19 17:00:00.00733
387	{6,8,16,14}	{}	2018-09-19 20:00:00.007283
388	{10,16,11,12}	{}	2018-09-19 23:00:00.007276
389	{5,1,2,17}	{}	2018-09-20 05:00:00.007203
390	{10,18,15,16}	{}	2018-09-20 08:00:00.007296
391	{14,7,2,8}	{}	2018-09-20 11:00:00.007242
392	{15,9,11,6}	{}	2018-09-20 17:00:00.008022
393	{6,1,8,2}	{}	2018-09-20 20:00:00.007164
394	{9,20,13,21}	{}	2018-09-20 23:00:00.006097
395	{5,20,10,21}	{}	2018-09-21 05:00:00.007234
396	{8,7,1,9}	{}	2018-09-21 08:00:00.007029
397	{13,3,11,16}	{}	2018-09-21 11:00:00.007196
398	{18,6,11,3}	{}	2018-09-21 17:00:00.007101
399	{20,10,17,1}	{}	2018-09-21 20:00:00.007223
400	{8,9,18,21}	{}	2018-09-21 23:00:00.006119
401	{5,18,10,3}	{}	2018-09-22 05:00:00.007226
402	{9,4,19,6}	{}	2018-09-22 08:00:00.007277
403	{20,13,9,5}	{}	2018-09-22 11:00:00.007226
404	{1,14,21,5}	{}	2018-09-22 17:00:00.007164
405	{4,9,21,6}	{}	2018-09-22 20:00:00.007151
406	{12,13,20,11}	{}	2018-09-22 23:00:00.007153
407	{7,10,14,12}	{}	2018-09-23 05:00:00.007245
408	{4,1,2,9}	{}	2018-09-23 08:00:00.009608
409	{2,20,12,8}	{}	2018-09-23 11:00:00.007292
410	{7,3,5,10}	{}	2018-09-23 17:00:00.007268
411	{12,2,13,21}	{}	2018-09-23 20:00:00.007279
412	{16,12,3,2}	{}	2018-09-23 23:00:00.007218
413	{1,7,5,17}	{}	2018-09-24 05:00:00.007855
414	{6,11,21,15}	{}	2018-09-24 08:00:00.007236
415	{11,12,17,5}	{}	2018-09-24 11:00:00.007289
416	{7,6,13,5}	{}	2018-09-24 17:00:00.007315
417	{11,10,3,19}	{}	2018-09-24 20:00:00.007187
418	{12,4,11,15}	{}	2018-09-24 23:00:00.007367
419	{7,14,10,8}	{}	2018-09-25 05:00:00.007079
420	{4,1,14,2}	{}	2018-09-25 08:00:00.007227
421	{15,13,4,20}	{}	2018-09-25 11:00:00.007138
422	{16,17,19,5}	{}	2018-09-25 17:00:00.00724
423	{1,20,2,4}	{}	2018-09-25 20:00:00.007184
424	{2,14,5,15}	{}	2018-09-25 23:00:00.007299
425	{5,4,19,7}	{}	2018-09-26 05:00:00.007232
426	{9,12,17,10}	{}	2018-09-26 08:00:00.007236
427	{1,19,5,3}	{}	2018-09-26 11:00:00.007048
428	{6,10,17,2}	{}	2018-09-26 17:00:00.007231
429	{1,19,2,4}	{}	2018-09-26 20:00:00.007217
430	{17,19,6,3}	{}	2018-09-26 23:00:00.007176
431	{15,4,9,19}	{}	2018-09-27 05:00:00.00726
432	{4,3,20,11}	{}	2018-09-27 08:00:00.007094
433	{9,5,17,8}	{}	2018-09-27 11:00:00.007166
434	{2,9,6,11}	{}	2018-09-27 17:00:00.007291
435	{17,4,18,3}	{}	2018-09-27 20:00:00.007737
436	{20,19,1,7}	{}	2018-09-27 23:00:00.007267
437	{9,15,5,4}	{}	2018-09-28 05:00:00.007301
438	{2,14,9,11}	{}	2018-09-28 08:00:00.007313
439	{9,2,1,3}	{}	2018-09-28 11:00:00.00736
440	{16,9,10,12}	{}	2018-09-28 17:00:00.007258
441	{20,10,21,19}	{}	2018-09-28 20:00:00.007957
442	{19,21,2,10}	{}	2018-09-28 23:00:00.007265
443	{12,20,5,9}	{}	2018-09-29 05:00:00.00759
444	{3,14,21,2}	{}	2018-09-29 08:00:00.008427
445	{21,8,13,17}	{}	2018-09-29 11:00:00.007125
446	{1,17,2,14}	{}	2018-09-29 17:00:00.007171
447	{4,17,14,19}	{}	2018-09-29 20:00:00.007196
448	{8,7,16,1}	{}	2018-09-29 23:00:00.007025
449	{11,4,5,14}	{}	2018-09-30 05:00:00.007253
450	{8,4,19,11}	{}	2018-09-30 08:00:00.007179
451	{10,19,12,5}	{}	2018-09-30 11:00:00.00713
452	{14,5,11,16}	{}	2018-09-30 17:00:00.007022
453	{13,20,11,19}	{}	2018-09-30 20:00:00.007284
454	{17,14,8,19}	{}	2018-09-30 23:00:00.00703
455	{11,17,8,14}	{}	2018-10-01 05:00:00.007153
456	{6,5,16,4}	{}	2018-10-01 08:00:00.007088
457	{16,8,15,9}	{}	2018-10-01 11:00:00.007174
458	{10,3,15,13}	{}	2018-10-01 17:00:00.007301
459	{3,5,10,11}	{}	2018-10-01 20:00:00.006979
460	{5,14,4,20}	{}	2018-10-01 23:00:00.007413
461	{16,12,5,19}	{71}	2018-10-02 05:00:00.007225
462	{12,9,15,5}	{}	2018-10-02 08:00:00.00815
463	{21,3,10,13}	{}	2018-10-02 11:00:00.007368
464	{21,19,20,5}	{}	2018-10-02 17:00:00.007116
465	{9,3,5,21}	{}	2018-10-02 20:00:00.007113
468	{20,4,18,7}	{}	2018-10-03 08:00:00.007083
471	{8,12,14,15}	{}	2018-10-03 20:00:00.006286
474	{2,10,16,5}	{}	2018-10-04 08:00:00.007253
466	{7,5,10,19}	{}	2018-10-02 23:00:00.007042
467	{9,20,4,1}	{}	2018-10-03 05:00:00.007969
469	{8,14,5,18}	{}	2018-10-03 11:00:00.007232
470	{3,13,10,17}	{}	2018-10-03 17:00:00.007364
472	{2,11,8,4}	{}	2018-10-03 23:00:00.007206
473	{7,17,5,6}	{}	2018-10-04 05:00:00.007102
475	{9,14,8,5}	{}	2018-10-04 11:00:00.007142
\.


--
-- Name: jackpot_4_21_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jackpot_4_21_id_seq', 475, true);


--
-- Data for Name: jackpot_5_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jackpot_5_36 (id, combination, win_tickets, date) FROM stdin;
219	{14,21,6,3}	{}	2018-08-24 07:00:00.006343
220	{8,17,11,2}	{}	2018-08-24 13:00:00.005638
221	{7,14,1,9}	{}	2018-08-24 19:00:00.005559
222	{12,10,19,16}	{}	2018-08-25 01:00:00.005752
223	{3,17,16,15}	{}	2018-08-25 07:00:00.005744
224	{17,14,5,20}	{}	2018-08-25 13:00:00.0065
225	{20,16,10,15}	{}	2018-08-25 19:00:00.005631
226	{10,7,9,2}	{}	2018-08-26 01:00:00.005601
227	{7,4,18,12}	{}	2018-08-26 07:00:00.006206
228	{6,19,3,11}	{}	2018-08-26 13:00:00.005598
229	{13,7,16,9}	{}	2018-08-26 19:00:00.005651
230	{9,2,4,1}	{}	2018-08-27 01:00:00.00556
231	{13,15,14,16}	{}	2018-08-27 07:00:00.005687
232	{16,3,12,19}	{}	2018-08-27 13:00:00.005564
233	{13,11,19,21}	{}	2018-08-27 19:00:00.005617
234	{15,2,14,9}	{}	2018-08-28 01:00:00.00565
235	{18,7,11,17}	{}	2018-08-28 07:00:00.005635
236	{12,4,7,17}	{}	2018-08-28 13:00:00.005584
237	{20,19,17,12}	{}	2018-08-28 19:00:00.005584
238	{3,8,17,11}	{}	2018-08-29 01:00:00.005551
239	{14,8,1,16}	{}	2018-08-29 07:00:00.006235
240	{10,13,8,6}	{}	2018-08-29 13:00:00.005664
241	{17,5,14,11}	{}	2018-08-29 19:00:00.005588
242	{13,21,18,14}	{}	2018-08-30 01:00:00.005599
243	{1,8,21,6}	{}	2018-08-30 07:00:00.005605
244	{14,16,3,1}	{}	2018-08-30 13:00:00.005509
245	{4,14,1,20}	{}	2018-08-30 19:00:00.005622
246	{19,20,17,9}	{}	2018-08-31 01:00:00.005573
247	{11,10,15,16}	{}	2018-08-31 07:00:00.005637
248	{17,14,19,21}	{}	2018-08-31 13:00:00.005637
249	{4,16,14,12}	{}	2018-09-01 01:00:00.00916
250	{19,5,18,10}	{}	2018-09-01 07:00:00.008119
251	{6,20,13,17}	{}	2018-09-01 13:00:00.00715
252	{16,8,2,21}	{}	2018-09-01 19:00:00.007196
253	{9,15,17,19}	{}	2018-09-02 01:00:00.007105
254	{14,20,5,18}	{}	2018-09-02 07:00:00.007125
255	{4,9,11,19}	{}	2018-09-02 13:00:00.006888
256	{10,1,15,7}	{}	2018-09-02 19:00:00.007327
257	{20,9,21,19}	{}	2018-09-03 01:00:00.007252
258	{1,2,4,8}	{}	2018-09-03 07:00:00.007868
259	{19,13,12,3}	{}	2018-09-03 13:00:00.007297
260	{20,19,16,14}	{}	2018-09-03 19:00:00.007239
261	{14,9,6,8}	{}	2018-09-04 01:00:00.007073
262	{21,19,4,1}	{}	2018-09-04 07:00:00.007176
263	{3,4,19,15}	{}	2018-09-04 13:00:00.006214
264	{7,6,11,13}	{}	2018-09-04 19:00:00.00728
265	{14,12,5,4}	{}	2018-09-05 01:00:00.007278
266	{7,4,5,1}	{}	2018-09-05 07:00:00.007784
267	{1,4,5,14}	{}	2018-09-05 13:00:00.007231
268	{10,17,20,6}	{}	2018-09-05 19:00:00.007082
269	{15,14,21,7}	{}	2018-09-06 01:00:00.007203
270	{5,6,9,16}	{}	2018-09-06 07:00:00.007171
271	{5,2,19,7}	{}	2018-09-06 13:00:00.007177
272	{3,10,12,21}	{}	2018-09-06 19:00:00.007196
273	{14,17,3,21}	{}	2018-09-07 01:00:00.007278
274	{14,13,8,18}	{}	2018-09-07 07:00:00.007176
275	{6,16,20,21}	{}	2018-09-07 13:00:00.007117
276	{17,19,15,20}	{}	2018-09-07 19:00:00.007175
277	{18,6,20,19}	{}	2018-09-08 01:00:00.007281
278	{13,3,10,9}	{}	2018-09-08 07:00:00.007093
279	{6,21,1,12}	{}	2018-09-08 13:00:00.007266
280	{17,18,2,16}	{}	2018-09-08 19:00:00.007169
281	{17,3,18,7}	{}	2018-09-09 01:00:00.00718
282	{14,13,20,7}	{}	2018-09-09 07:00:00.007219
283	{15,5,9,7}	{}	2018-09-09 13:00:00.007172
284	{2,11,16,21}	{}	2018-09-09 19:00:00.00726
285	{12,3,19,9}	{}	2018-09-10 01:00:00.007082
286	{18,4,8,3}	{}	2018-09-10 07:00:00.007758
287	{4,14,16,9}	{}	2018-09-10 13:00:00.00726
288	{3,2,10,9}	{}	2018-09-10 19:00:00.007168
289	{12,11,8,19}	{}	2018-09-11 01:00:00.007193
290	{6,3,16,8}	{}	2018-09-11 07:00:00.007291
291	{6,14,11,2}	{}	2018-09-11 13:00:00.007202
292	{8,16,4,7}	{}	2018-09-11 19:00:00.007209
293	{12,9,14,6}	{}	2018-09-12 01:00:00.007184
294	{5,19,18,13}	{}	2018-09-12 07:00:00.007225
295	{15,11,4,2}	{}	2018-09-12 13:00:00.007078
296	{20,14,15,2}	{}	2018-09-12 19:00:00.007608
298	{17,5,15,2}	{}	2018-09-13 07:00:00.007157
300	{2,18,10,15}	{}	2018-09-13 19:00:00.007136
302	{1,12,16,8}	{}	2018-09-14 07:00:00.00719
304	{16,17,6,18}	{}	2018-09-14 19:00:00.007219
306	{14,2,5,15}	{}	2018-09-15 07:00:00.007175
308	{6,4,11,21}	{}	2018-09-15 19:00:00.007847
310	{16,4,18,6}	{}	2018-09-16 07:00:00.007233
312	{9,8,16,15}	{}	2018-09-16 19:00:00.00591
314	{1,15,18,14}	{}	2018-09-17 07:00:00.007267
316	{2,4,17,5}	{}	2018-09-17 19:00:00.007182
318	{4,19,12,18}	{}	2018-09-18 07:00:00.00709
320	{2,6,5,19}	{}	2018-09-18 19:00:00.00803
297	{15,12,8,1}	{}	2018-09-13 01:00:00.007231
299	{4,17,12,2}	{}	2018-09-13 13:00:00.006994
301	{1,13,17,4}	{}	2018-09-14 01:00:00.007186
303	{12,9,4,14}	{}	2018-09-14 13:00:00.007118
305	{10,3,12,15}	{}	2018-09-15 01:00:00.006955
307	{2,18,3,16}	{}	2018-09-15 13:00:00.007255
309	{1,5,11,4}	{}	2018-09-16 01:00:00.007234
311	{2,17,8,16}	{}	2018-09-16 13:00:00.007264
313	{15,6,2,5}	{}	2018-09-17 01:00:00.007302
315	{12,2,3,7}	{}	2018-09-17 13:00:00.007238
317	{12,3,2,10}	{}	2018-09-18 01:00:00.007317
319	{3,12,1,14}	{}	2018-09-18 13:00:00.00728
321	{5,6,8,16}	{}	2018-09-19 01:00:00.007292
322	{6,16,21,14}	{}	2018-09-19 07:00:00.007223
323	{14,3,8,5}	{}	2018-09-19 13:00:00.007261
324	{15,7,8,1}	{}	2018-09-19 19:00:00.00717
325	{20,19,3,12}	{}	2018-09-20 01:00:00.007199
326	{20,9,2,21}	{}	2018-09-20 07:00:00.007115
327	{17,11,19,7}	{}	2018-09-20 13:00:00.007301
328	{11,15,9,4}	{}	2018-09-20 19:00:00.007885
329	{13,3,5,11}	{}	2018-09-21 01:00:00.007278
330	{14,13,16,9}	{}	2018-09-21 07:00:00.007119
331	{2,9,13,7}	{}	2018-09-21 13:00:00.007172
332	{7,20,12,3}	{}	2018-09-21 19:00:00.007065
333	{5,15,11,7}	{}	2018-09-22 01:00:00.007173
334	{6,11,19,21}	{}	2018-09-22 07:00:00.007343
335	{9,15,8,7}	{}	2018-09-22 13:00:00.007334
336	{12,17,1,11}	{}	2018-09-22 19:00:00.007226
337	{12,19,8,4}	{}	2018-09-23 01:00:00.007218
338	{15,19,3,20}	{}	2018-09-23 07:00:00.007008
339	{16,5,18,4}	{}	2018-09-23 13:00:00.007231
340	{6,20,1,16}	{}	2018-09-23 19:00:00.007189
341	{13,3,6,2}	{}	2018-09-24 01:00:00.007815
342	{3,9,19,2}	{}	2018-09-24 07:00:00.007929
343	{12,21,15,7}	{}	2018-09-24 13:00:00.007259
344	{13,9,6,8}	{}	2018-09-24 19:00:00.007324
345	{11,15,7,6}	{}	2018-09-25 01:00:00.007314
346	{12,15,11,17}	{}	2018-09-25 07:00:00.007104
347	{21,10,6,13}	{}	2018-09-25 13:00:00.007196
348	{16,4,14,7}	{}	2018-09-25 19:00:00.007104
349	{10,8,3,9}	{}	2018-09-26 01:00:00.00726
350	{6,13,17,4}	{}	2018-09-26 07:00:00.007268
351	{3,1,11,8}	{}	2018-09-26 13:00:00.007294
352	{16,8,2,4}	{}	2018-09-26 19:00:00.007941
353	{13,16,4,10}	{}	2018-09-27 01:00:00.007285
354	{4,6,8,21}	{}	2018-09-27 07:00:00.007282
355	{21,14,19,20}	{}	2018-09-27 13:00:00.00724
356	{11,20,4,5}	{}	2018-09-27 19:00:00.007294
357	{13,18,16,11}	{}	2018-09-28 01:00:00.007257
358	{15,8,16,5}	{}	2018-09-28 07:00:00.007281
359	{15,3,16,2}	{}	2018-09-28 13:00:00.007272
360	{17,1,11,2}	{}	2018-09-28 19:00:00.007915
361	{14,12,4,1}	{}	2018-09-29 01:00:00.007003
362	{3,14,9,5}	{}	2018-09-29 07:00:00.007062
363	{19,9,8,12}	{}	2018-09-29 13:00:00.007078
364	{14,17,1,18}	{}	2018-09-29 19:00:00.007063
365	{4,5,7,2}	{}	2018-09-30 01:00:00.007277
366	{20,11,15,3}	{}	2018-09-30 07:00:00.007223
367	{14,19,16,4}	{}	2018-09-30 13:00:00.007418
368	{16,19,2,6}	{}	2018-09-30 19:00:00.007158
369	{16,10,8,1}	{}	2018-10-01 01:00:00.007139
370	{20,9,19,18}	{}	2018-10-01 07:00:00.007137
371	{13,2,12,8}	{}	2018-10-01 13:00:00.00766
372	{1,9,8,12}	{}	2018-10-01 19:00:00.007131
373	{8,19,6,2}	{}	2018-10-02 01:00:00.007456
374	{2,19,21,20}	{}	2018-10-02 07:00:00.007159
375	{20,8,12,14}	{}	2018-10-02 13:00:00.007039
376	{17,1,9,21}	{}	2018-10-02 19:00:00.007116
377	{8,5,19,4}	{}	2018-10-03 01:00:00.007199
378	{7,2,21,5}	{}	2018-10-03 07:00:00.007779
379	{7,3,19,14}	{}	2018-10-03 13:00:00.007183
380	{10,8,16,17}	{}	2018-10-03 19:00:00.007138
381	{20,17,15,11}	{}	2018-10-04 01:00:00.007251
382	{15,10,18,5}	{}	2018-10-04 07:00:00.007149
383	{9,16,11,20}	{}	2018-10-04 13:00:00.007229
\.


--
-- Name: jackpot_5_36_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jackpot_5_36_id_seq', 383, true);


--
-- Data for Name: jackpot_6_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jackpot_6_45 (id, combination, win_tickets, date) FROM stdin;
213	{10,14,19,18}	{}	2018-08-24 12:00:00.006281
214	{9,10,7,19}	{}	2018-08-25 00:00:00.005837
215	{20,10,15,18}	{}	2018-08-25 12:00:00.005493
216	{11,17,7,21}	{}	2018-08-26 00:00:00.005507
217	{4,6,21,8}	{}	2018-08-26 12:00:00.005593
218	{17,20,10,15}	{}	2018-08-27 00:00:00.005515
219	{1,17,21,13}	{}	2018-08-27 12:00:00.00556
220	{2,7,21,18}	{}	2018-08-28 00:00:00.005509
221	{1,2,16,3}	{}	2018-08-28 12:00:00.005613
222	{3,12,11,15}	{}	2018-08-29 00:00:00.005384
223	{6,18,7,1}	{}	2018-08-29 12:00:00.005534
224	{19,10,13,2}	\N	2018-08-30 00:00:00.005786
225	{3,18,21,11}	{}	2018-08-30 00:00:00.009277
226	{6,7,5,2}	{}	2018-08-30 12:00:00.005896
227	{3,8,13,6}	{}	2018-08-31 00:00:00.005834
228	{16,13,12,17}	{}	2018-08-31 12:00:00.006715
229	{18,19,4,8}	{}	2018-09-01 00:00:00.019698
230	{20,14,21,11}	{}	2018-09-01 12:00:00.007995
231	{1,16,14,13}	{}	2018-09-02 00:00:00.007028
232	{19,3,5,10}	{}	2018-09-02 12:00:00.007205
233	{18,5,17,14}	{}	2018-09-03 00:00:00.007132
234	{13,14,4,21}	{}	2018-09-03 12:00:00.007259
235	{6,1,9,15}	{}	2018-09-04 00:00:00.006979
236	{11,15,19,20}	{}	2018-09-04 12:00:00.007065
237	{2,16,14,6}	{}	2018-09-05 00:00:00.007127
238	{10,20,1,11}	{}	2018-09-05 12:00:00.007103
239	{10,19,17,21}	{}	2018-09-06 00:00:00.007164
240	{1,3,19,15}	{}	2018-09-06 12:00:00.007266
241	{20,21,3,15}	{}	2018-09-07 00:00:00.007147
242	{12,8,3,18}	{}	2018-09-07 12:00:00.007224
243	{9,19,21,2}	{}	2018-09-08 00:00:00.007159
244	{13,4,1,18}	{}	2018-09-08 12:00:00.007164
245	{5,3,10,6}	{}	2018-09-09 00:00:00.007062
246	{18,14,21,16}	{}	2018-09-09 12:00:00.007238
247	{20,4,10,2}	{}	2018-09-10 00:00:00.007184
248	{3,19,14,18}	{}	2018-09-10 12:00:00.005875
249	{7,8,9,10}	{}	2018-09-11 00:00:00.007062
250	{12,8,16,5}	{}	2018-09-11 12:00:00.007208
251	{21,20,17,19}	{}	2018-09-12 00:00:00.007007
252	{21,17,19,4}	{}	2018-09-12 12:00:00.007169
253	{20,18,14,4}	{}	2018-09-13 00:00:00.006948
254	{4,10,2,15}	{}	2018-09-13 12:00:00.007271
255	{4,6,18,17}	{}	2018-09-14 00:00:00.007058
256	{12,18,20,21}	{}	2018-09-14 12:00:00.007163
257	{21,10,11,18}	{}	2018-09-15 00:00:00.007064
258	{15,16,12,9}	{}	2018-09-15 12:00:00.007144
259	{12,7,21,11}	{}	2018-09-16 00:00:00.007027
260	{13,10,20,19}	{}	2018-09-16 12:00:00.007274
261	{13,17,14,19}	{}	2018-09-17 00:00:00.007085
262	{7,17,12,5}	{}	2018-09-17 12:00:00.007082
263	{18,19,8,17}	{}	2018-09-18 00:00:00.006859
264	{20,3,5,19}	{}	2018-09-18 12:00:00.007281
265	{7,17,2,18}	{}	2018-09-19 00:00:00.007198
266	{1,17,11,3}	{}	2018-09-19 12:00:00.007228
267	{8,15,19,4}	{}	2018-09-20 00:00:00.006968
268	{20,13,17,14}	{}	2018-09-20 12:00:00.007227
269	{2,20,6,16}	{}	2018-09-21 00:00:00.008037
270	{16,1,21,20}	{}	2018-09-21 12:00:00.007605
271	{13,20,5,1}	{}	2018-09-22 00:00:00.007066
272	{21,11,6,17}	{}	2018-09-22 12:00:00.007159
273	{16,20,17,4}	{}	2018-09-23 00:00:00.007184
274	{6,4,2,12}	{}	2018-09-23 12:00:00.007269
275	{6,4,3,19}	{}	2018-09-24 00:00:00.007121
276	{17,19,7,14}	{}	2018-09-24 12:00:00.007187
277	{20,3,18,5}	{}	2018-09-25 00:00:00.007191
278	{7,17,4,19}	{}	2018-09-25 12:00:00.007306
279	{8,14,20,19}	{}	2018-09-26 00:00:00.00778
280	{14,2,19,12}	{}	2018-09-26 12:00:00.007192
281	{14,13,10,19}	{}	2018-09-27 00:00:00.007203
282	{6,9,11,7}	{}	2018-09-27 12:00:00.007299
283	{16,19,8,12}	{}	2018-09-28 00:00:00.007135
284	{20,5,21,13}	{}	2018-09-28 12:00:00.007216
285	{19,16,15,7}	{}	2018-09-29 00:00:00.008187
286	{21,13,8,1}	{}	2018-09-29 12:00:00.007467
287	{6,21,4,16}	{}	2018-09-30 00:00:00.007132
288	{17,10,3,11}	{}	2018-09-30 12:00:00.007272
289	{18,1,2,16}	{}	2018-10-01 00:00:00.00709
290	{10,3,17,14}	{}	2018-10-01 12:00:00.007273
291	{15,3,8,1}	{}	2018-10-02 00:00:00.007175
292	{19,21,7,4}	{}	2018-10-02 12:00:00.007127
293	{18,1,14,3}	{}	2018-10-03 00:00:00.007044
294	{19,6,21,11}	{}	2018-10-03 12:00:00.007
295	{8,10,13,19}	{}	2018-10-04 00:00:00.006954
296	{6,14,3,13}	{}	2018-10-04 12:00:00.007094
\.


--
-- Name: jackpot_6_45_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jackpot_6_45_id_seq', 296, true);


--
-- Data for Name: lottery_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lottery_tokens (id, user_id, amount) FROM stdin;
3	6	0
4	7	0
5	8	0
6	9	0
7	10	0
8	11	0
9	12	0
10	13	0
11	14	0
1	1	4
12	15	0
13	16	0
14	17	0
15	18	0
16	19	0
17	20	0
19	37	0
2	5	11992
\.


--
-- Data for Name: prize_jackpot; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prize_jackpot (id, combination, win_tickets, date) FROM stdin;
20194	{21,11,17,14}	{}	2018-08-24 01:25:00.006924
20195	{6,20,14,7}	{}	2018-08-24 01:40:00.006058
20196	{3,21,19,12}	{}	2018-08-24 01:55:00.006238
20197	{1,6,21,15}	{}	2018-08-24 02:10:00.006041
20198	{13,3,10,21}	{}	2018-08-24 02:25:00.006231
20199	{13,14,17,10}	{}	2018-08-24 02:40:00.004607
20200	{3,13,1,6}	{}	2018-08-24 02:55:00.004547
20201	{19,10,8,17}	{}	2018-08-24 03:10:00.004676
20202	{7,16,6,1}	{}	2018-08-24 03:25:00.004556
20203	{9,3,8,10}	{}	2018-08-24 03:40:00.004647
20204	{2,5,20,1}	{}	2018-08-24 03:55:00.004618
20205	{19,7,3,16}	{}	2018-08-24 04:10:00.004638
20206	{1,16,18,6}	{}	2018-08-24 04:25:00.00466
20207	{17,10,6,12}	{}	2018-08-24 04:40:00.004681
20208	{9,6,19,18}	{}	2018-08-24 04:55:00.004682
20209	{1,17,7,19}	{}	2018-08-24 05:10:00.004978
20210	{9,1,2,13}	{}	2018-08-24 05:25:00.004685
20211	{19,13,1,2}	{}	2018-08-24 05:40:00.004473
20212	{20,13,2,3}	{}	2018-08-24 05:55:00.004617
20213	{19,12,14,18}	{}	2018-08-24 06:10:00.004714
20214	{1,15,20,13}	{}	2018-08-24 06:25:00.004724
20215	{3,15,9,16}	{}	2018-08-24 06:40:00.004602
20216	{14,8,3,5}	{}	2018-08-24 06:55:00.004481
20217	{7,19,8,2}	{}	2018-08-24 07:10:00.004906
20218	{1,8,18,2}	{}	2018-08-24 07:25:00.004648
20219	{6,12,18,7}	{}	2018-08-24 07:40:00.004868
20220	{17,3,16,18}	{}	2018-08-24 07:55:00.004824
20221	{18,2,16,6}	{}	2018-08-24 08:10:00.004888
20222	{17,7,19,3}	{}	2018-08-24 08:25:00.004653
20223	{11,9,20,16}	{}	2018-08-24 08:40:00.004648
20224	{18,10,13,5}	{}	2018-08-24 08:55:00.004649
20225	{16,20,7,6}	{}	2018-08-24 09:10:00.004718
20226	{10,3,15,14}	{}	2018-08-24 09:25:00.00463
20227	{3,19,12,7}	{}	2018-08-24 09:40:00.004578
20228	{20,7,19,13}	{}	2018-08-24 09:55:00.004668
20229	{11,10,21,8}	{}	2018-08-24 10:10:00.004677
20230	{8,12,7,5}	{}	2018-08-24 10:25:00.004654
20231	{4,20,11,21}	{}	2018-08-24 10:40:00.00455
20232	{18,1,20,6}	{}	2018-08-24 10:55:00.004604
20233	{19,7,2,8}	{}	2018-08-24 11:10:00.004887
20234	{4,10,20,2}	{}	2018-08-24 11:25:00.004631
20235	{18,11,19,9}	{}	2018-08-24 11:40:00.005101
20236	{15,8,6,12}	{}	2018-08-24 11:55:00.004616
20237	{10,16,5,19}	{}	2018-08-24 12:10:00.004623
20238	{1,8,19,20}	{}	2018-08-24 12:25:00.004578
20239	{14,19,11,16}	{}	2018-08-24 12:40:00.004713
20240	{5,9,6,13}	{}	2018-08-24 12:55:00.004749
20241	{8,20,6,17}	{}	2018-08-24 13:10:00.004689
20242	{13,6,17,8}	{}	2018-08-24 13:25:00.004739
20243	{13,2,10,17}	{}	2018-08-24 13:40:00.004636
20244	{8,10,13,5}	{}	2018-08-24 13:55:00.004718
20245	{16,7,5,12}	{}	2018-08-24 14:10:00.004912
20246	{20,3,13,14}	{}	2018-08-24 14:25:00.004806
20247	{14,18,4,16}	{}	2018-08-24 14:40:00.004682
20248	{2,17,16,11}	{}	2018-08-24 14:55:00.004716
20249	{1,8,13,17}	{}	2018-08-24 15:10:00.004682
20250	{2,3,21,11}	{}	2018-08-24 15:25:00.00453
20251	{11,3,13,17}	{}	2018-08-24 15:40:00.004714
20252	{20,11,21,6}	{}	2018-08-24 15:55:00.004709
20253	{19,10,2,17}	{}	2018-08-24 16:10:00.004698
20254	{1,3,21,20}	{}	2018-08-24 16:25:00.004663
20255	{6,14,12,21}	{}	2018-08-24 16:40:00.004624
20256	{19,14,12,1}	{}	2018-08-24 16:55:00.004793
20257	{11,20,18,6}	{}	2018-08-24 17:10:00.004936
20258	{1,14,8,20}	{}	2018-08-24 17:25:00.004796
20259	{2,5,11,18}	{}	2018-08-24 17:40:00.004769
20260	{21,11,7,16}	{}	2018-08-24 17:55:00.004674
20261	{1,20,13,14}	{}	2018-08-24 18:10:00.004711
20262	{16,6,8,18}	{}	2018-08-24 18:25:00.004767
20263	{1,14,7,15}	{}	2018-08-24 18:40:00.004708
20264	{6,3,1,12}	{}	2018-08-24 18:55:00.004655
20265	{10,12,17,1}	{}	2018-08-24 19:10:00.004753
20266	{19,21,12,9}	{}	2018-08-24 19:25:00.004844
20267	{5,13,8,12}	{}	2018-08-24 19:40:00.004798
20268	{20,12,2,19}	{}	2018-08-24 19:55:00.004738
20269	{13,3,11,20}	{}	2018-08-24 20:10:00.00481
20270	{2,10,4,11}	{}	2018-08-24 20:25:00.004714
20271	{14,4,10,13}	{}	2018-08-24 20:40:00.004838
20272	{4,2,16,15}	{}	2018-08-24 20:55:00.00486
20273	{18,13,11,2}	{}	2018-08-24 21:10:00.004678
20274	{14,20,3,12}	{}	2018-08-24 21:25:00.004653
20275	{15,3,7,1}	{}	2018-08-24 21:40:00.004731
20276	{15,13,4,1}	{}	2018-08-24 21:55:00.004689
20277	{6,16,18,2}	{}	2018-08-24 22:10:00.004629
20278	{21,16,18,17}	{}	2018-08-24 22:25:00.00474
20279	{2,1,12,18}	{}	2018-08-24 22:40:00.004674
20280	{1,2,6,14}	{}	2018-08-24 22:55:00.004698
20281	{18,16,7,14}	{}	2018-08-24 23:10:00.00502
20285	{17,16,12,14}	{}	2018-08-25 00:10:00.004928
20286	{18,12,19,16}	{}	2018-08-25 00:25:00.004764
20287	{17,14,16,13}	{}	2018-08-25 00:40:00.004632
20288	{18,10,11,9}	{}	2018-08-25 00:55:00.004634
20289	{15,17,16,4}	{}	2018-08-25 01:10:00.004667
20290	{2,19,11,16}	{}	2018-08-25 01:25:00.004495
21030	{9,4,18,13}	{}	2018-09-01 15:55:00.006013
21421	{18,13,16,5}	{}	2018-09-05 17:40:00.006021
22192	{7,12,5,14}	{}	2018-09-13 18:25:00.006695
22193	{6,19,5,9}	{}	2018-09-13 18:40:00.006046
22194	{7,15,6,1}	{}	2018-09-13 18:55:00.005903
22211	{18,17,4,10}	{}	2018-09-13 23:10:00.006285
22212	{12,13,11,2}	{}	2018-09-13 23:25:00.006203
22213	{18,15,5,3}	{}	2018-09-13 23:40:00.006244
22214	{16,21,20,6}	{}	2018-09-13 23:55:00.005944
22235	{5,14,1,19}	{}	2018-09-14 05:10:00.006167
22236	{18,13,19,3}	{}	2018-09-14 05:25:00.006005
22237	{13,7,17,21}	{}	2018-09-14 05:40:00.006069
22238	{2,17,11,5}	{}	2018-09-14 05:55:00.006663
22239	{3,14,8,19}	{}	2018-09-14 06:10:00.005814
22240	{15,1,13,6}	{}	2018-09-14 06:25:00.006016
22241	{11,3,12,7}	{}	2018-09-14 06:40:00.006094
22242	{2,7,6,9}	{}	2018-09-14 06:55:00.006038
22259	{21,8,9,5}	{}	2018-09-14 11:10:00.006185
22260	{6,9,1,2}	{}	2018-09-14 11:25:00.006037
22261	{8,20,15,19}	{}	2018-09-14 11:40:00.00599
22262	{1,12,18,9}	{}	2018-09-14 11:55:00.00661
22283	{3,5,19,11}	{}	2018-09-14 17:10:00.005942
22284	{16,9,21,15}	{}	2018-09-14 17:25:00.006104
22285	{13,7,10,6}	{}	2018-09-14 17:40:00.00605
22286	{1,2,15,3}	{}	2018-09-14 17:55:00.005945
22287	{20,9,11,18}	{}	2018-09-14 18:10:00.005933
22288	{10,4,16,21}	{}	2018-09-14 18:25:00.005994
22289	{18,6,9,14}	{}	2018-09-14 18:40:00.005997
22290	{9,12,14,1}	{}	2018-09-14 18:55:00.006053
22307	{7,20,1,11}	{}	2018-09-14 23:10:00.006214
22308	{15,2,6,11}	{}	2018-09-14 23:25:00.006193
22309	{20,16,4,9}	{}	2018-09-14 23:40:00.006142
22310	{11,16,19,17}	{}	2018-09-14 23:55:00.006319
22743	{20,2,8,1}	{}	2018-09-19 12:10:00.006053
22744	{9,7,2,8}	{}	2018-09-19 12:25:00.006659
22745	{5,4,17,21}	{}	2018-09-19 12:40:00.006042
22746	{2,12,7,1}	{}	2018-09-19 12:55:00.00616
22771	{8,6,21,4}	{}	2018-09-19 19:10:00.006086
22772	{12,19,6,1}	{}	2018-09-19 19:25:00.006068
22773	{9,5,4,3}	{}	2018-09-19 19:40:00.006106
22774	{15,13,1,6}	{}	2018-09-19 19:55:00.006113
22791	{21,12,3,5}	{}	2018-09-20 00:10:00.006025
22792	{13,18,4,17}	{}	2018-09-20 00:25:00.006023
22793	{15,20,1,19}	{}	2018-09-20 00:40:00.006126
22794	{5,8,11,1}	{}	2018-09-20 00:55:00.006163
22819	{9,16,11,4}	{}	2018-09-20 07:10:00.006074
22820	{13,8,5,2}	{}	2018-09-20 07:25:00.005835
22821	{12,4,5,2}	{}	2018-09-20 07:40:00.006716
22822	{3,2,17,12}	{}	2018-09-20 07:55:00.006128
22839	{12,1,15,4}	{}	2018-09-20 12:10:00.006114
22840	{11,1,13,15}	{}	2018-09-20 12:25:00.00604
22841	{9,8,21,10}	{}	2018-09-20 12:40:00.005861
22842	{21,1,12,5}	{}	2018-09-20 12:55:00.006095
23047	{8,11,21,20}	{}	2018-09-22 16:10:00.006101
23050	{10,9,18,15}	{}	2018-09-22 16:55:00.006193
23059	{7,6,1,2}	{}	2018-09-22 19:10:00.00604
23060	{21,14,15,18}	{}	2018-09-22 19:25:00.005897
23061	{16,15,8,21}	{}	2018-09-22 19:40:00.006221
23062	{10,18,17,12}	{}	2018-09-22 19:55:00.006083
23063	{9,15,8,5}	{}	2018-09-22 20:10:00.006064
23075	{10,4,19,11}	{}	2018-09-22 23:10:00.006296
20282	{15,11,16,10}	{}	2018-08-24 23:25:00.0049
20283	{2,10,21,11}	{}	2018-08-24 23:40:00.004772
20284	{4,7,18,13}	{}	2018-08-24 23:55:00.004778
20291	{20,4,9,7}	{}	2018-08-25 01:40:00.004746
20292	{3,8,10,5}	{}	2018-08-25 01:55:00.004625
20293	{1,18,9,2}	{}	2018-08-25 02:10:00.004592
20294	{9,8,4,1}	{}	2018-08-25 02:25:00.004707
20295	{14,9,5,12}	{}	2018-08-25 02:40:00.004532
20296	{2,1,13,9}	{}	2018-08-25 02:55:00.00474
20297	{9,8,3,15}	{}	2018-08-25 03:10:00.004803
20298	{2,9,11,13}	{}	2018-08-25 03:25:00.004725
20299	{20,2,6,12}	{}	2018-08-25 03:40:00.004737
20300	{13,17,19,16}	{}	2018-08-25 03:55:00.004717
20301	{17,14,12,3}	{}	2018-08-25 04:10:00.00466
20302	{20,4,15,7}	{}	2018-08-25 04:25:00.00466
20303	{8,7,2,21}	{}	2018-08-25 04:40:00.003893
20304	{12,15,20,11}	{}	2018-08-25 04:55:00.004676
20305	{4,1,13,11}	{}	2018-08-25 05:10:00.004879
20306	{20,4,1,18}	{}	2018-08-25 05:25:00.004749
20307	{4,19,11,5}	{}	2018-08-25 05:40:00.004684
20308	{3,5,2,14}	{}	2018-08-25 05:55:00.004688
20309	{15,17,9,2}	{}	2018-08-25 06:10:00.004646
20310	{21,5,17,19}	{}	2018-08-25 06:25:00.004715
20311	{1,16,5,6}	{}	2018-08-25 06:40:00.004577
20312	{13,8,12,18}	{}	2018-08-25 06:55:00.004632
20313	{12,4,8,20}	{}	2018-08-25 07:10:00.004689
20314	{20,21,12,1}	{}	2018-08-25 07:25:00.004695
20315	{6,2,1,16}	{}	2018-08-25 07:40:00.004692
20316	{2,21,8,15}	{}	2018-08-25 07:55:00.004686
20317	{13,9,2,3}	{}	2018-08-25 08:10:00.004582
20318	{1,17,21,7}	{}	2018-08-25 08:25:00.004654
20319	{6,14,8,10}	{}	2018-08-25 08:40:00.004712
20320	{19,20,15,2}	{}	2018-08-25 08:55:00.004529
20321	{16,1,11,8}	{}	2018-08-25 09:10:00.004729
20322	{16,3,5,6}	{}	2018-08-25 09:25:00.004398
20323	{15,17,6,10}	{}	2018-08-25 09:40:00.004813
20324	{7,3,14,20}	{}	2018-08-25 09:55:00.004758
20325	{20,3,6,18}	{}	2018-08-25 10:10:00.004692
20326	{2,3,11,10}	{}	2018-08-25 10:25:00.004676
20327	{15,9,11,8}	{}	2018-08-25 10:40:00.004683
20328	{18,1,14,9}	{}	2018-08-25 10:55:00.004719
20329	{7,21,5,18}	{}	2018-08-25 11:10:00.004836
20330	{3,10,21,2}	{}	2018-08-25 11:25:00.004705
20331	{8,4,1,2}	{}	2018-08-25 11:40:00.004735
20332	{3,19,16,1}	{}	2018-08-25 11:55:00.004722
20333	{8,13,6,3}	{}	2018-08-25 12:10:00.004685
20334	{21,1,16,20}	{}	2018-08-25 12:25:00.004644
20335	{7,10,2,16}	{}	2018-08-25 12:40:00.004708
20336	{21,12,15,4}	{}	2018-08-25 12:55:00.004723
20337	{16,13,20,5}	{}	2018-08-25 13:10:00.004701
20338	{19,10,5,21}	{}	2018-08-25 13:25:00.004601
20339	{3,19,11,12}	{}	2018-08-25 13:40:00.004694
20340	{5,15,11,10}	{}	2018-08-25 13:55:00.004699
20341	{9,16,5,19}	{}	2018-08-25 14:10:00.004652
20342	{19,21,1,11}	{}	2018-08-25 14:25:00.004674
20343	{1,8,4,11}	{}	2018-08-25 14:40:00.004681
20344	{6,1,3,7}	{}	2018-08-25 14:55:00.00471
20345	{8,7,9,16}	{}	2018-08-25 15:10:00.004609
20346	{11,20,6,19}	{}	2018-08-25 15:25:00.004683
20347	{8,5,10,1}	{}	2018-08-25 15:40:00.004796
20348	{5,6,16,10}	{}	2018-08-25 15:55:00.00473
20349	{1,6,18,5}	{}	2018-08-25 16:10:00.004895
20350	{3,1,17,4}	{}	2018-08-25 16:25:00.004827
20351	{7,6,19,15}	{}	2018-08-25 16:40:00.004719
20352	{12,3,19,18}	{}	2018-08-25 16:55:00.004583
20353	{18,6,5,9}	{}	2018-08-25 17:10:00.004655
20354	{20,12,16,7}	{}	2018-08-25 17:25:00.004679
20355	{11,3,20,8}	{}	2018-08-25 17:40:00.004639
20356	{3,13,8,7}	{}	2018-08-25 17:55:00.004676
20357	{5,15,12,16}	{}	2018-08-25 18:10:00.004725
20358	{11,17,5,9}	{}	2018-08-25 18:25:00.004658
20359	{19,1,3,15}	{}	2018-08-25 18:40:00.004696
20360	{10,5,18,11}	{}	2018-08-25 18:55:00.004647
20361	{19,2,14,3}	{}	2018-08-25 19:10:00.004722
20362	{4,2,13,18}	{}	2018-08-25 19:25:00.004658
20363	{6,1,3,18}	{}	2018-08-25 19:40:00.004715
20364	{17,20,9,11}	{}	2018-08-25 19:55:00.004756
20365	{2,14,21,16}	{}	2018-08-25 20:10:00.004671
20366	{8,14,12,7}	{}	2018-08-25 20:25:00.004694
20367	{11,1,18,12}	{}	2018-08-25 20:40:00.004701
20368	{8,4,9,20}	{}	2018-08-25 20:55:00.00466
20369	{21,19,2,17}	{}	2018-08-25 21:10:00.004671
20370	{14,15,12,11}	{}	2018-08-25 21:25:00.004687
20371	{3,12,19,5}	{}	2018-08-25 21:40:00.00465
20372	{16,3,6,20}	{}	2018-08-25 21:55:00.004635
20373	{9,12,7,18}	{}	2018-08-25 22:10:00.004379
20374	{9,5,12,19}	{}	2018-08-25 22:25:00.004597
20375	{8,14,2,12}	{}	2018-08-25 22:40:00.004803
20376	{5,21,11,19}	{}	2018-08-25 22:55:00.004781
20377	{16,17,4,2}	{}	2018-08-25 23:10:00.004926
20385	{4,3,7,21}	{}	2018-08-26 01:10:00.004726
21031	{5,15,21,16}	{}	2018-09-01 16:10:00.006142
21035	{6,3,5,13}	{}	2018-09-01 17:10:00.006038
21036	{3,9,16,14}	{}	2018-09-01 17:25:00.006221
21037	{18,19,17,20}	{}	2018-09-01 17:40:00.006029
21038	{10,7,20,2}	{}	2018-09-01 17:55:00.006037
21039	{11,3,14,5}	{}	2018-09-01 18:10:00.005959
21040	{8,5,3,17}	{}	2018-09-01 18:25:00.006099
21041	{9,5,13,21}	{}	2018-09-01 18:40:00.006742
21042	{21,7,19,14}	{}	2018-09-01 18:55:00.006002
21044	{19,20,21,13}	{}	2018-09-01 19:25:00.006072
21059	{11,10,17,1}	{}	2018-09-01 23:10:00.006159
21060	{1,14,12,10}	{}	2018-09-01 23:25:00.006201
21061	{19,3,6,16}	{}	2018-09-01 23:40:00.006176
21062	{20,8,2,16}	{}	2018-09-01 23:55:00.006094
21422	{1,17,6,20}	{}	2018-09-05 17:55:00.005897
22195	{20,6,9,11}	{}	2018-09-13 19:10:00.006121
22196	{21,18,11,2}	{}	2018-09-13 19:25:00.006055
22197	{8,17,7,18}	{}	2018-09-13 19:40:00.005988
22198	{18,1,5,3}	{}	2018-09-13 19:55:00.006143
22215	{5,3,4,6}	{}	2018-09-14 00:10:00.00608
22216	{3,21,10,17}	{}	2018-09-14 00:25:00.005931
22217	{1,12,2,10}	{}	2018-09-14 00:40:00.006025
22218	{11,9,8,15}	{}	2018-09-14 00:55:00.005959
22243	{5,19,8,14}	{}	2018-09-14 07:10:00.005895
22244	{9,6,20,3}	{}	2018-09-14 07:25:00.006007
22245	{12,16,19,14}	{}	2018-09-14 07:40:00.00595
22246	{11,10,13,19}	{}	2018-09-14 07:55:00.006606
22252	{6,4,1,15}	{}	2018-09-14 09:25:00.006135
22263	{15,1,3,17}	{}	2018-09-14 12:10:00.006058
22264	{5,12,10,14}	{}	2018-09-14 12:25:00.006039
22265	{8,17,2,13}	{}	2018-09-14 12:40:00.006165
22266	{6,12,21,7}	{}	2018-09-14 12:55:00.006
22291	{1,14,17,15}	{}	2018-09-14 19:10:00.006052
22292	{20,13,7,10}	{}	2018-09-14 19:25:00.006038
22293	{1,7,17,13}	{}	2018-09-14 19:40:00.006614
22294	{7,16,21,13}	{}	2018-09-14 19:55:00.006089
22311	{19,21,6,9}	{}	2018-09-15 00:10:00.006097
22312	{3,10,16,21}	{}	2018-09-15 00:25:00.006123
22313	{21,9,17,15}	{}	2018-09-15 00:40:00.006026
22314	{6,15,18,3}	{}	2018-09-15 00:55:00.0061
22828	{10,21,2,15}	{}	2018-09-20 09:25:00.006036
22829	{5,14,16,20}	{}	2018-09-20 09:40:00.00669
22830	{10,6,8,7}	{}	2018-09-20 09:55:00.006105
22831	{2,10,13,16}	{}	2018-09-20 10:10:00.006146
22832	{15,12,6,20}	{}	2018-09-20 10:25:00.006088
22833	{2,8,5,7}	{}	2018-09-20 10:40:00.006095
22834	{4,9,17,3}	{}	2018-09-20 10:55:00.006133
22843	{11,4,12,10}	{}	2018-09-20 13:10:00.006059
22844	{17,6,21,13}	{}	2018-09-20 13:25:00.00614
22845	{21,4,6,19}	{}	2018-09-20 13:40:00.006111
22846	{20,17,3,2}	{}	2018-09-20 13:55:00.006071
22847	{17,1,4,13}	{}	2018-09-20 14:10:00.005942
22848	{13,6,9,3}	{}	2018-09-20 14:25:00.005901
22849	{20,19,2,3}	{}	2018-09-20 14:40:00.006032
22850	{8,14,5,13}	{}	2018-09-20 14:55:00.006189
23048	{6,4,2,1}	{}	2018-09-22 16:25:00.00606
23051	{12,17,11,15}	{}	2018-09-22 17:10:00.006094
23052	{16,9,11,3}	{}	2018-09-22 17:25:00.006022
23053	{3,16,15,21}	{}	2018-09-22 17:40:00.006059
23054	{2,5,8,18}	{}	2018-09-22 17:55:00.006166
23055	{11,7,17,20}	{}	2018-09-22 18:10:00.006002
23056	{14,17,8,18}	{}	2018-09-22 18:25:00.006142
23057	{16,13,19,21}	{}	2018-09-22 18:40:00.006074
23058	{18,15,19,3}	{}	2018-09-22 18:55:00.00609
20378	{7,15,20,14}	{}	2018-08-25 23:25:00.00478
20379	{13,8,20,12}	{}	2018-08-25 23:40:00.004781
20380	{7,20,21,16}	{}	2018-08-25 23:55:00.004779
21032	{11,19,2,10}	{}	2018-09-01 16:25:00.005994
21033	{18,6,11,10}	{}	2018-09-01 16:40:00.005889
21034	{16,3,21,6}	{}	2018-09-01 16:55:00.006021
21043	{9,16,5,18}	{}	2018-09-01 19:10:00.006086
21047	{12,21,17,13}	{}	2018-09-01 20:10:00.005987
21048	{5,20,16,1}	{}	2018-09-01 20:25:00.00606
21049	{21,10,13,1}	{}	2018-09-01 20:40:00.005983
21050	{12,21,20,14}	{}	2018-09-01 20:55:00.006003
21051	{2,14,12,18}	{}	2018-09-01 21:10:00.006033
21052	{10,11,13,3}	{}	2018-09-01 21:25:00.005948
21053	{19,7,12,14}	{}	2018-09-01 21:40:00.006098
21054	{3,9,16,18}	{}	2018-09-01 21:55:00.006132
21055	{5,11,18,14}	{}	2018-09-01 22:10:00.006079
21056	{7,5,12,15}	{}	2018-09-01 22:25:00.006607
21057	{21,15,16,6}	{}	2018-09-01 22:40:00.005992
21058	{12,10,7,14}	{}	2018-09-01 22:55:00.005964
21067	{8,2,6,17}	{}	2018-09-02 01:10:00.006017
21068	{2,17,5,21}	{}	2018-09-02 01:25:00.00608
21069	{2,6,4,9}	{}	2018-09-02 01:40:00.005976
21070	{2,18,3,20}	{}	2018-09-02 01:55:00.006097
21071	{17,6,18,5}	{}	2018-09-02 02:10:00.006045
21072	{20,3,4,5}	{}	2018-09-02 02:25:00.006026
21073	{6,15,13,21}	{}	2018-09-02 02:40:00.005978
21074	{16,4,7,1}	{}	2018-09-02 02:55:00.006057
21075	{11,21,14,4}	{}	2018-09-02 03:10:00.005957
21076	{19,9,10,20}	{}	2018-09-02 03:25:00.006058
21077	{1,20,5,13}	{}	2018-09-02 03:40:00.005988
21078	{3,2,8,19}	{}	2018-09-02 03:55:00.006106
21079	{3,18,17,15}	{}	2018-09-02 04:10:00.006004
21080	{13,8,2,12}	{}	2018-09-02 04:25:00.006019
21081	{21,11,2,4}	{}	2018-09-02 04:40:00.006054
21423	{17,4,12,14}	{}	2018-09-05 18:10:00.006048
21424	{21,16,11,7}	{}	2018-09-05 18:25:00.006027
21425	{12,11,15,19}	{}	2018-09-05 18:40:00.006051
21426	{10,12,6,3}	{}	2018-09-05 18:55:00.005983
21428	{16,14,4,18}	{}	2018-09-05 19:25:00.006022
21443	{12,2,21,10}	{}	2018-09-05 23:10:00.006281
21444	{21,9,12,16}	{}	2018-09-05 23:25:00.006159
21445	{6,9,3,7}	{}	2018-09-05 23:40:00.006078
21446	{15,13,19,14}	{}	2018-09-05 23:55:00.006073
21467	{19,2,5,4}	{}	2018-09-06 05:10:00.006143
22199	{19,15,16,6}	{}	2018-09-13 20:10:00.006122
22200	{13,9,14,10}	{}	2018-09-13 20:25:00.006036
22201	{6,19,12,14}	{}	2018-09-13 20:40:00.006014
22202	{21,3,16,12}	{}	2018-09-13 20:55:00.005952
22203	{19,6,11,5}	{}	2018-09-13 21:10:00.006
22204	{17,3,16,5}	{}	2018-09-13 21:25:00.00613
22205	{15,3,4,17}	{}	2018-09-13 21:40:00.006123
22206	{11,1,17,6}	{}	2018-09-13 21:55:00.006035
22207	{16,5,4,10}	{}	2018-09-13 22:10:00.006087
22208	{21,7,17,1}	{}	2018-09-13 22:25:00.006008
22209	{20,5,12,19}	{}	2018-09-13 22:40:00.006069
22210	{20,5,19,8}	{}	2018-09-13 22:55:00.006094
22219	{13,5,19,8}	{}	2018-09-14 01:10:00.006115
22220	{17,20,6,19}	{}	2018-09-14 01:25:00.006133
22221	{15,17,11,21}	{}	2018-09-14 01:40:00.006173
22222	{19,12,14,20}	{}	2018-09-14 01:55:00.006134
22223	{3,7,19,9}	{}	2018-09-14 02:10:00.00606
22224	{16,13,1,9}	{}	2018-09-14 02:25:00.006193
22225	{4,19,1,2}	{}	2018-09-14 02:40:00.006053
22226	{17,16,7,12}	{}	2018-09-14 02:55:00.006072
22227	{21,18,1,16}	{}	2018-09-14 03:10:00.006137
22228	{11,21,6,3}	{}	2018-09-14 03:25:00.006002
22229	{9,11,12,13}	{}	2018-09-14 03:40:00.005956
22230	{8,9,4,19}	{}	2018-09-14 03:55:00.006111
22231	{1,3,16,14}	{}	2018-09-14 04:10:00.005896
22232	{9,8,10,2}	{}	2018-09-14 04:25:00.006095
22233	{1,18,12,19}	{}	2018-09-14 04:40:00.006104
22234	{3,10,8,7}	{}	2018-09-14 04:55:00.006097
22247	{4,7,15,17}	{}	2018-09-14 08:10:00.006103
22248	{2,12,8,9}	{}	2018-09-14 08:25:00.006056
22249	{14,11,6,21}	{}	2018-09-14 08:40:00.006051
22250	{18,17,14,15}	{}	2018-09-14 08:55:00.006013
22251	{17,6,16,21}	{}	2018-09-14 09:10:00.006061
20381	{18,14,17,10}	{}	2018-08-26 00:10:00.004708
20382	{13,3,21,6}	{}	2018-08-26 00:25:00.004646
20383	{2,4,10,6}	{}	2018-08-26 00:40:00.004707
20384	{15,2,13,21}	{}	2018-08-26 00:55:00.004667
20386	{1,15,7,16}	{}	2018-08-26 01:25:00.004626
20387	{20,16,13,17}	{}	2018-08-26 01:40:00.004668
20388	{9,21,15,2}	{}	2018-08-26 01:55:00.004687
20389	{3,13,4,10}	{}	2018-08-26 02:10:00.004767
20390	{9,17,11,2}	{}	2018-08-26 02:25:00.004615
20391	{13,14,6,1}	{}	2018-08-26 02:40:00.004711
20392	{5,7,6,13}	{}	2018-08-26 02:55:00.004716
20393	{4,19,1,5}	{}	2018-08-26 03:10:00.0047
20394	{16,10,5,3}	{}	2018-08-26 03:25:00.004697
20395	{3,17,1,15}	{}	2018-08-26 03:40:00.004627
20396	{15,19,16,9}	{}	2018-08-26 03:55:00.004747
20397	{18,15,9,6}	{}	2018-08-26 04:10:00.004669
20398	{3,11,20,8}	{}	2018-08-26 04:25:00.004716
20399	{16,17,7,11}	{}	2018-08-26 04:40:00.004718
20400	{19,6,7,16}	{}	2018-08-26 04:55:00.00478
20401	{5,12,1,20}	{}	2018-08-26 05:10:00.004818
20402	{3,19,8,1}	{}	2018-08-26 05:25:00.00478
20403	{14,15,17,13}	{}	2018-08-26 05:40:00.004641
20404	{4,17,5,19}	{}	2018-08-26 05:55:00.004659
20405	{3,21,20,1}	{}	2018-08-26 06:10:00.004727
20406	{11,19,14,8}	{}	2018-08-26 06:25:00.004656
20407	{15,19,14,2}	{}	2018-08-26 06:40:00.004628
20408	{4,14,16,17}	{}	2018-08-26 06:55:00.004654
20409	{11,14,7,1}	{}	2018-08-26 07:10:00.004834
20410	{3,16,1,12}	{}	2018-08-26 07:25:00.004678
20411	{7,10,17,1}	{}	2018-08-26 07:40:00.004692
20412	{14,8,2,3}	{}	2018-08-26 07:55:00.004709
20413	{14,17,2,5}	{}	2018-08-26 08:10:00.004697
20414	{17,21,18,15}	{}	2018-08-26 08:25:00.004617
20415	{11,16,4,19}	{}	2018-08-26 08:40:00.004752
20416	{19,6,11,4}	{}	2018-08-26 08:55:00.004682
20417	{13,21,15,20}	{}	2018-08-26 09:10:00.00468
20418	{6,3,21,2}	{}	2018-08-26 09:25:00.004673
20419	{3,15,1,5}	{}	2018-08-26 09:40:00.004652
20420	{19,5,12,9}	{}	2018-08-26 09:55:00.004695
20421	{8,19,17,13}	{}	2018-08-26 10:10:00.004695
20422	{4,2,16,10}	{}	2018-08-26 10:25:00.00468
20423	{4,7,2,11}	{}	2018-08-26 10:40:00.004727
20424	{13,12,18,15}	{}	2018-08-26 10:55:00.004649
20425	{5,21,9,4}	{}	2018-08-26 11:10:00.004677
20426	{8,5,2,1}	{}	2018-08-26 11:25:00.004696
20427	{3,4,9,19}	{}	2018-08-26 11:40:00.004826
20428	{3,4,12,10}	{}	2018-08-26 11:55:00.004772
20429	{17,3,5,20}	{}	2018-08-26 12:10:00.004857
20430	{11,6,15,2}	{}	2018-08-26 12:25:00.004713
20431	{19,9,12,18}	{}	2018-08-26 12:40:00.004714
20432	{9,19,8,4}	{}	2018-08-26 12:55:00.004704
20433	{9,13,11,12}	{}	2018-08-26 13:10:00.004702
20434	{20,5,16,14}	{}	2018-08-26 13:25:00.004664
20435	{15,5,19,11}	{}	2018-08-26 13:40:00.004535
20436	{13,18,10,21}	{}	2018-08-26 13:55:00.004624
20437	{9,19,11,4}	{}	2018-08-26 14:10:00.004617
20438	{12,5,8,7}	{}	2018-08-26 14:25:00.004678
20439	{3,20,21,8}	{}	2018-08-26 14:40:00.004725
20440	{1,13,6,7}	{}	2018-08-26 14:55:00.004681
20441	{10,8,7,12}	{}	2018-08-26 15:10:00.004645
20442	{7,11,14,19}	{}	2018-08-26 15:25:00.004672
20443	{12,7,17,11}	{}	2018-08-26 15:40:00.004775
20444	{9,1,3,15}	{}	2018-08-26 15:55:00.00461
20445	{5,18,10,11}	{}	2018-08-26 16:10:00.004726
20446	{11,3,16,21}	{}	2018-08-26 16:25:00.004693
20447	{11,2,4,14}	{}	2018-08-26 16:40:00.004696
20448	{15,8,20,3}	{}	2018-08-26 16:55:00.004726
20449	{20,13,12,4}	{}	2018-08-26 17:10:00.004772
20450	{17,8,20,13}	{}	2018-08-26 17:25:00.004725
20451	{19,11,18,3}	{}	2018-08-26 17:40:00.004653
20452	{5,14,13,6}	{}	2018-08-26 17:55:00.004699
20453	{21,17,14,11}	{}	2018-08-26 18:10:00.004837
20454	{8,16,11,7}	{}	2018-08-26 18:25:00.004796
20455	{11,20,18,17}	{}	2018-08-26 18:40:00.004747
20456	{17,10,8,21}	{}	2018-08-26 18:55:00.004664
20457	{10,15,18,16}	{}	2018-08-26 19:10:00.004828
20458	{14,6,2,3}	{}	2018-08-26 19:25:00.004579
20459	{8,15,9,12}	{}	2018-08-26 19:40:00.004718
20460	{9,20,11,8}	{}	2018-08-26 19:55:00.004693
20461	{1,15,17,6}	{}	2018-08-26 20:10:00.004742
20462	{19,10,13,12}	{}	2018-08-26 20:25:00.004699
20463	{15,16,3,6}	{}	2018-08-26 20:40:00.004659
20464	{15,5,14,1}	{}	2018-08-26 20:55:00.004612
20465	{19,16,1,17}	{}	2018-08-26 21:10:00.004649
20466	{6,2,8,1}	{}	2018-08-26 21:25:00.004658
20467	{17,14,13,10}	{}	2018-08-26 21:40:00.004695
20468	{5,4,16,3}	{}	2018-08-26 21:55:00.004675
20469	{15,4,3,6}	{}	2018-08-26 22:10:00.004671
20470	{19,20,6,11}	{}	2018-08-26 22:25:00.004705
20471	{14,9,6,12}	{}	2018-08-26 22:40:00.004645
20472	{12,20,21,7}	{}	2018-08-26 22:55:00.003889
20473	{16,2,1,12}	{}	2018-08-26 23:10:00.004866
20474	{14,12,7,6}	{}	2018-08-26 23:25:00.004794
20475	{9,14,1,8}	{}	2018-08-26 23:40:00.00485
20476	{8,7,3,12}	{}	2018-08-26 23:55:00.004729
20477	{3,6,1,9}	{}	2018-08-27 00:10:00.004678
20478	{9,7,16,14}	{}	2018-08-27 00:25:00.004724
20479	{2,4,10,12}	{}	2018-08-27 00:40:00.004886
20480	{18,5,16,17}	{}	2018-08-27 00:55:00.004852
20481	{15,9,10,8}	{}	2018-08-27 01:10:00.004872
20482	{3,16,4,17}	{}	2018-08-27 01:25:00.004653
20483	{19,8,21,15}	{}	2018-08-27 01:40:00.004678
20484	{4,21,18,8}	{}	2018-08-27 01:55:00.00471
20485	{13,20,14,15}	{}	2018-08-27 02:10:00.004727
20486	{7,18,1,15}	{}	2018-08-27 02:25:00.004702
20487	{20,19,21,16}	{}	2018-08-27 02:40:00.004763
20488	{21,20,16,1}	{}	2018-08-27 02:55:00.004738
20489	{10,2,3,4}	{}	2018-08-27 03:10:00.004731
20490	{2,21,16,19}	{}	2018-08-27 03:25:00.00467
20491	{12,17,15,11}	{}	2018-08-27 03:40:00.004746
20492	{19,2,14,5}	{}	2018-08-27 03:55:00.004664
20493	{10,4,11,1}	{}	2018-08-27 04:10:00.004578
20494	{2,8,1,20}	{}	2018-08-27 04:25:00.004653
20495	{9,12,7,6}	{}	2018-08-27 04:40:00.004653
20496	{14,11,12,16}	{}	2018-08-27 04:55:00.004584
20497	{12,10,8,9}	{}	2018-08-27 05:10:00.004711
20498	{4,14,21,11}	{}	2018-08-27 05:25:00.004655
20499	{8,6,11,9}	{}	2018-08-27 05:40:00.004681
20500	{19,2,7,20}	{}	2018-08-27 05:55:00.00462
20501	{21,7,12,17}	{}	2018-08-27 06:10:00.004708
20502	{4,11,9,18}	{}	2018-08-27 06:25:00.004696
20503	{18,8,15,20}	{}	2018-08-27 06:40:00.004674
20504	{1,4,16,20}	{}	2018-08-27 06:55:00.004706
20505	{12,2,20,21}	{}	2018-08-27 07:10:00.004858
20506	{20,21,1,11}	{}	2018-08-27 07:25:00.004808
20507	{15,16,3,12}	{}	2018-08-27 07:40:00.004675
20508	{9,3,13,20}	{}	2018-08-27 07:55:00.004655
20509	{2,19,1,4}	{}	2018-08-27 08:10:00.004921
20510	{21,3,19,6}	{}	2018-08-27 08:25:00.004711
20511	{2,4,6,20}	{}	2018-08-27 08:40:00.00466
20512	{19,6,14,15}	{}	2018-08-27 08:55:00.004692
20513	{5,15,6,1}	{}	2018-08-27 09:10:00.004643
20514	{1,13,2,6}	{}	2018-08-27 09:25:00.004648
20515	{4,19,18,21}	{}	2018-08-27 09:40:00.004673
20516	{2,20,15,16}	{}	2018-08-27 09:55:00.004676
20517	{21,17,6,4}	{}	2018-08-27 10:10:00.004662
20518	{4,18,10,17}	{}	2018-08-27 10:25:00.004674
20519	{8,5,9,1}	{}	2018-08-27 10:40:00.004629
20520	{20,9,21,14}	{}	2018-08-27 10:55:00.004649
20521	{3,5,12,6}	{}	2018-08-27 11:10:00.004653
20522	{12,21,8,17}	{}	2018-08-27 11:25:00.00468
20523	{12,21,7,13}	{}	2018-08-27 11:40:00.004679
20524	{21,8,2,17}	{}	2018-08-27 11:55:00.00466
20525	{16,9,10,8}	{}	2018-08-27 12:10:00.004699
20526	{12,21,10,16}	{}	2018-08-27 12:25:00.004653
20527	{16,12,3,9}	{}	2018-08-27 12:40:00.004558
20528	{1,16,11,13}	{}	2018-08-27 12:55:00.004709
20529	{19,15,18,5}	{}	2018-08-27 13:10:00.00473
20530	{19,18,12,15}	{}	2018-08-27 13:25:00.004449
20531	{2,10,20,12}	{}	2018-08-27 13:40:00.004887
20532	{14,16,18,4}	{}	2018-08-27 13:55:00.004764
20533	{2,15,4,11}	{}	2018-08-27 14:10:00.004707
20534	{10,6,14,18}	{}	2018-08-27 14:25:00.004628
20535	{1,13,18,3}	{}	2018-08-27 14:40:00.004707
21427	{19,11,4,15}	{}	2018-09-05 19:10:00.005983
20536	{8,17,15,7}	{}	2018-08-27 14:55:00.004724
20537	{15,9,21,2}	{}	2018-08-27 15:10:00.004688
20538	{16,1,8,2}	{}	2018-08-27 15:25:00.004732
20539	{5,15,10,2}	{}	2018-08-27 15:40:00.004629
20540	{20,17,4,18}	{}	2018-08-27 15:55:00.004678
20541	{1,9,14,2}	{}	2018-08-27 16:10:00.004715
20542	{5,2,13,11}	{}	2018-08-27 16:25:00.00454
20543	{13,9,10,19}	{}	2018-08-27 16:40:00.004631
20544	{14,9,18,17}	{}	2018-08-27 16:55:00.004666
20545	{11,5,1,2}	{}	2018-08-27 17:10:00.004887
20546	{16,1,9,6}	{}	2018-08-27 17:25:00.004728
20547	{14,17,18,7}	{}	2018-08-27 17:40:00.004669
20548	{14,7,21,10}	{}	2018-08-27 17:55:00.00468
20549	{4,1,19,7}	{}	2018-08-27 18:10:00.004738
20550	{17,6,9,5}	{}	2018-08-27 18:25:00.004663
20551	{14,3,11,18}	{}	2018-08-27 18:40:00.004675
20552	{20,8,9,6}	{}	2018-08-27 18:55:00.004696
20553	{14,6,9,2}	{}	2018-08-27 19:10:00.004654
20554	{11,10,16,13}	{}	2018-08-27 19:25:00.0047
20555	{4,18,2,8}	{}	2018-08-27 19:40:00.004665
20556	{18,4,6,20}	{}	2018-08-27 19:55:00.00464
20557	{1,4,18,12}	{}	2018-08-27 20:10:00.004882
20558	{13,17,4,7}	{}	2018-08-27 20:25:00.004784
20559	{3,18,10,5}	{}	2018-08-27 20:40:00.004651
20560	{9,14,19,11}	{}	2018-08-27 20:55:00.004729
20561	{6,8,4,21}	{}	2018-08-27 21:10:00.004636
20562	{10,6,11,19}	{}	2018-08-27 21:25:00.004706
20563	{6,14,10,9}	{}	2018-08-27 21:40:00.004616
20564	{3,10,19,12}	{}	2018-08-27 21:55:00.004691
20565	{17,12,5,8}	{}	2018-08-27 22:10:00.004676
20566	{19,5,18,4}	{}	2018-08-27 22:25:00.00472
20567	{3,10,11,7}	{}	2018-08-27 22:40:00.004782
20568	{4,5,3,7}	{}	2018-08-27 22:55:00.004699
20569	{6,9,8,19}	{}	2018-08-27 23:10:00.004928
20570	{20,5,15,13}	{}	2018-08-27 23:25:00.004799
20571	{14,9,10,1}	{}	2018-08-27 23:40:00.004788
20572	{16,2,13,6}	{}	2018-08-27 23:55:00.004805
20573	{17,3,15,16}	{}	2018-08-28 00:10:00.004623
20574	{10,4,21,7}	{}	2018-08-28 00:25:00.004783
20575	{3,4,20,5}	{}	2018-08-28 00:40:00.004703
20576	{15,10,16,17}	{}	2018-08-28 00:55:00.004682
20577	{20,6,2,17}	{}	2018-08-28 01:10:00.004681
20578	{4,9,11,3}	{}	2018-08-28 01:25:00.00466
20579	{9,3,6,14}	{}	2018-08-28 01:40:00.004705
20580	{2,6,7,14}	{}	2018-08-28 01:55:00.004627
20581	{19,15,2,11}	{}	2018-08-28 02:10:00.004694
20582	{6,2,8,16}	{}	2018-08-28 02:25:00.004747
20583	{16,3,15,6}	{}	2018-08-28 02:40:00.004816
20584	{13,3,9,14}	{}	2018-08-28 02:55:00.004644
20585	{10,13,17,5}	{}	2018-08-28 03:10:00.004747
20586	{9,8,16,20}	{}	2018-08-28 03:25:00.004693
20587	{10,2,4,18}	{}	2018-08-28 03:40:00.004703
20588	{9,16,2,12}	{}	2018-08-28 03:55:00.004587
20589	{1,10,4,15}	{}	2018-08-28 04:10:00.004683
20590	{2,11,16,6}	{}	2018-08-28 04:25:00.004717
20591	{10,14,1,12}	{}	2018-08-28 04:40:00.004689
20592	{13,9,10,19}	{}	2018-08-28 04:55:00.004706
20593	{11,8,2,15}	{}	2018-08-28 05:10:00.004816
20594	{10,17,11,16}	{}	2018-08-28 05:25:00.004695
20595	{10,13,2,3}	{}	2018-08-28 05:40:00.004759
20596	{12,3,1,18}	{}	2018-08-28 05:55:00.004637
20597	{21,4,15,16}	{}	2018-08-28 06:10:00.004693
20598	{5,1,14,20}	{}	2018-08-28 06:25:00.00464
20599	{16,11,13,21}	{}	2018-08-28 06:40:00.004661
20600	{5,20,11,18}	{}	2018-08-28 06:55:00.004649
20601	{14,21,15,8}	{}	2018-08-28 07:10:00.004664
20602	{7,20,10,4}	{}	2018-08-28 07:25:00.004601
20603	{11,17,8,2}	{}	2018-08-28 07:40:00.0047
20604	{4,3,2,7}	{}	2018-08-28 07:55:00.004762
20605	{1,21,6,2}	{}	2018-08-28 08:10:00.004734
20606	{7,17,3,2}	{}	2018-08-28 08:25:00.004682
20607	{11,7,10,3}	{}	2018-08-28 08:40:00.004714
20608	{1,9,3,21}	{}	2018-08-28 08:55:00.003952
20609	{1,19,20,8}	{}	2018-08-28 09:10:00.004819
20610	{13,7,4,11}	{}	2018-08-28 09:25:00.004839
20611	{8,2,21,19}	{}	2018-08-28 09:40:00.004675
20612	{8,14,10,2}	{}	2018-08-28 09:55:00.004568
20613	{5,20,15,16}	{}	2018-08-28 10:10:00.004678
20614	{9,19,7,13}	{}	2018-08-28 10:25:00.004702
20615	{19,2,5,11}	{}	2018-08-28 10:40:00.004715
20616	{3,20,1,17}	{}	2018-08-28 10:55:00.004674
20625	{5,14,11,15}	{}	2018-08-28 13:10:00.004725
21045	{15,20,4,5}	{}	2018-09-01 19:40:00.005077
21429	{19,16,13,11}	{}	2018-09-05 19:40:00.006027
21430	{7,21,12,2}	{}	2018-09-05 19:55:00.005922
21447	{10,14,21,6}	{}	2018-09-06 00:10:00.005961
21448	{9,2,14,7}	{}	2018-09-06 00:25:00.005979
21449	{9,13,19,20}	{}	2018-09-06 00:40:00.006143
21450	{8,3,12,16}	{}	2018-09-06 00:55:00.006158
22253	{13,19,2,17}	{}	2018-09-14 09:40:00.00584
22851	{17,21,8,14}	{}	2018-09-20 15:10:00.008401
23049	{6,2,19,13}	{}	2018-09-22 16:40:00.006132
23079	{7,14,6,20}	{}	2018-09-23 00:10:00.006265
23080	{16,2,12,6}	{}	2018-09-23 00:25:00.00617
23081	{3,6,14,9}	{}	2018-09-23 00:40:00.006105
23082	{12,7,13,15}	{}	2018-09-23 00:55:00.00608
23086	{10,17,14,7}	{}	2018-09-23 01:55:00.006125
23101	{7,1,12,8}	{}	2018-09-23 05:40:00.006077
23107	{1,14,16,18}	{}	2018-09-23 07:10:00.006137
23108	{3,19,10,16}	{}	2018-09-23 07:25:00.006024
23109	{10,18,14,5}	{}	2018-09-23 07:40:00.006068
23110	{5,15,18,20}	{}	2018-09-23 07:55:00.006149
23120	{12,15,4,17}	{}	2018-09-23 10:25:00.006142
23123	{11,3,8,20}	{}	2018-09-23 11:10:00.006194
23124	{6,8,1,7}	{}	2018-09-23 11:25:00.006161
23125	{8,10,9,12}	{}	2018-09-23 11:40:00.006119
23126	{12,16,14,11}	{}	2018-09-23 11:55:00.006162
23166	{8,12,19,15}	{}	2018-09-23 21:55:00.005945
23175	{17,7,12,13}	{}	2018-09-24 00:10:00.006036
23176	{2,20,6,12}	{}	2018-09-24 00:25:00.006123
23177	{20,2,9,14}	{}	2018-09-24 00:40:00.005956
23178	{3,21,5,13}	{}	2018-09-24 00:55:00.006166
23203	{13,16,1,17}	{}	2018-09-24 07:10:00.006088
23204	{8,10,12,9}	{}	2018-09-24 07:25:00.006048
23205	{13,5,12,20}	{}	2018-09-24 07:40:00.006202
23206	{4,18,6,19}	{}	2018-09-24 07:55:00.006111
23212	{3,1,14,15}	{}	2018-09-24 09:25:00.005782
23213	{1,13,18,9}	{}	2018-09-24 09:40:00.006095
23214	{17,21,7,10}	{}	2018-09-24 09:55:00.006097
23215	{20,21,1,7}	{}	2018-09-24 10:10:00.00601
23216	{1,8,7,13}	{}	2018-09-24 10:25:00.006112
23217	{10,18,5,20}	{}	2018-09-24 10:40:00.006002
23218	{15,11,21,16}	{}	2018-09-24 10:55:00.006216
23225	{6,18,10,16}	{}	2018-09-24 12:40:00.006129
23226	{6,19,21,4}	{}	2018-09-24 12:55:00.0061
23243	{10,19,4,8}	{}	2018-09-24 17:10:00.005999
23244	{14,7,11,9}	{}	2018-09-24 17:25:00.006028
23245	{1,19,12,5}	{}	2018-09-24 17:40:00.006005
23246	{12,7,17,19}	{}	2018-09-24 17:55:00.005802
23247	{7,21,10,16}	{}	2018-09-24 18:10:00.006068
23248	{3,2,5,9}	{}	2018-09-24 18:25:00.006075
23249	{21,14,10,17}	{}	2018-09-24 18:40:00.006097
23250	{2,16,8,5}	{}	2018-09-24 18:55:00.006066
23251	{15,17,3,20}	{}	2018-09-24 19:10:00.006066
23252	{17,20,4,21}	{}	2018-09-24 19:25:00.005558
23253	{17,2,9,16}	{}	2018-09-24 19:40:00.005972
23254	{9,5,18,10}	{}	2018-09-24 19:55:00.006093
23255	{9,13,8,10}	{}	2018-09-24 20:10:00.006108
23265	{14,9,8,5}	{}	2018-09-24 22:40:00.006082
23266	{1,11,9,10}	{}	2018-09-24 22:55:00.006213
23267	{18,7,19,15}	{}	2018-09-24 23:10:00.006633
23268	{10,1,21,18}	{}	2018-09-24 23:25:00.006213
23269	{5,7,9,10}	{}	2018-09-24 23:40:00.006247
23270	{7,20,9,16}	{}	2018-09-24 23:55:00.006152
23271	{10,21,18,16}	{}	2018-09-25 00:10:00.00605
23272	{11,10,15,16}	{}	2018-09-25 00:25:00.005897
23273	{9,19,14,21}	{}	2018-09-25 00:40:00.00612
23274	{4,10,19,6}	{}	2018-09-25 00:55:00.006092
23275	{10,11,13,1}	{}	2018-09-25 01:10:00.006062
23276	{3,7,13,11}	{}	2018-09-25 01:25:00.006019
23277	{14,11,21,10}	{}	2018-09-25 01:40:00.006107
23278	{15,7,16,6}	{}	2018-09-25 01:55:00.006045
23279	{20,6,10,19}	{}	2018-09-25 02:10:00.006109
23280	{10,13,7,19}	{}	2018-09-25 02:25:00.006042
23281	{10,14,5,21}	{}	2018-09-25 02:40:00.005949
20617	{2,21,11,3}	{}	2018-08-28 11:10:00.004903
20618	{10,21,9,1}	{}	2018-08-28 11:25:00.004703
20619	{4,2,3,7}	{}	2018-08-28 11:40:00.004627
20620	{3,16,15,11}	{}	2018-08-28 11:55:00.004753
21046	{11,12,1,21}	{}	2018-09-01 19:55:00.005971
21063	{18,19,11,5}	{}	2018-09-02 00:10:00.006028
21064	{6,18,4,2}	{}	2018-09-02 00:25:00.006054
21065	{4,16,13,12}	{}	2018-09-02 00:40:00.006091
21066	{10,13,11,14}	{}	2018-09-02 00:55:00.005715
21431	{11,6,4,16}	{}	2018-09-05 20:10:00.006002
21432	{13,18,7,3}	{}	2018-09-05 20:25:00.005957
21433	{15,3,12,1}	{}	2018-09-05 20:40:00.006013
21434	{12,4,1,21}	{}	2018-09-05 20:55:00.005956
21435	{4,11,20,19}	{}	2018-09-05 21:10:00.00601
21436	{12,21,16,19}	{}	2018-09-05 21:25:00.006129
21437	{19,6,3,18}	{}	2018-09-05 21:40:00.006171
21438	{3,10,2,15}	{}	2018-09-05 21:55:00.006117
21439	{5,13,10,9}	{}	2018-09-05 22:10:00.006032
21440	{15,6,8,1}	{}	2018-09-05 22:25:00.006144
21441	{16,7,6,3}	{}	2018-09-05 22:40:00.005941
21442	{1,13,9,16}	{}	2018-09-05 22:55:00.006288
21451	{12,17,18,10}	{}	2018-09-06 01:10:00.006059
21452	{2,16,14,6}	{}	2018-09-06 01:25:00.005999
21453	{16,1,10,21}	{}	2018-09-06 01:40:00.005969
21454	{19,7,1,20}	{}	2018-09-06 01:55:00.00602
21455	{3,17,6,1}	{}	2018-09-06 02:10:00.006088
21456	{15,10,6,14}	{}	2018-09-06 02:25:00.006008
21457	{17,7,14,3}	{}	2018-09-06 02:40:00.006019
21458	{6,8,21,14}	{}	2018-09-06 02:55:00.006022
21459	{14,6,18,10}	{}	2018-09-06 03:10:00.005958
21460	{18,6,11,15}	{}	2018-09-06 03:25:00.005999
21461	{11,4,13,17}	{}	2018-09-06 03:40:00.005924
21462	{9,15,1,3}	{}	2018-09-06 03:55:00.006016
21463	{4,18,17,7}	{}	2018-09-06 04:10:00.006127
21464	{20,4,5,14}	{}	2018-09-06 04:25:00.006009
21465	{7,2,4,11}	{}	2018-09-06 04:40:00.006056
21466	{5,19,14,1}	{}	2018-09-06 04:55:00.006197
22254	{14,15,5,20}	{}	2018-09-14 09:55:00.006724
22255	{1,17,5,9}	{}	2018-09-14 10:10:00.006105
22256	{9,2,14,4}	{}	2018-09-14 10:25:00.006073
22257	{4,19,5,17}	{}	2018-09-14 10:40:00.006045
22258	{21,16,14,11}	{}	2018-09-14 10:55:00.00608
22267	{7,12,6,13}	{}	2018-09-14 13:10:00.006027
22268	{11,20,3,17}	{}	2018-09-14 13:25:00.005947
22269	{21,2,19,7}	{}	2018-09-14 13:40:00.005979
22270	{2,8,12,21}	{}	2018-09-14 13:55:00.006148
22271	{16,12,8,19}	{}	2018-09-14 14:10:00.005502
22272	{5,10,1,21}	{}	2018-09-14 14:25:00.006055
22273	{15,12,4,3}	{}	2018-09-14 14:40:00.006004
22274	{7,18,17,19}	{}	2018-09-14 14:55:00.005968
22275	{10,17,5,18}	{}	2018-09-14 15:10:00.005716
22276	{3,1,20,10}	{}	2018-09-14 15:25:00.006069
22277	{10,21,3,19}	{}	2018-09-14 15:40:00.006158
22278	{8,18,17,9}	{}	2018-09-14 15:55:00.00607
22279	{3,13,12,11}	{}	2018-09-14 16:10:00.006109
22280	{8,17,14,12}	{}	2018-09-14 16:25:00.006024
22281	{14,9,11,13}	{}	2018-09-14 16:40:00.006022
22282	{5,8,12,2}	{}	2018-09-14 16:55:00.00607
22295	{19,10,12,14}	{}	2018-09-14 20:10:00.005987
22296	{13,2,17,4}	{}	2018-09-14 20:25:00.006017
22297	{12,5,9,20}	{}	2018-09-14 20:40:00.00582
22298	{11,12,17,14}	{}	2018-09-14 20:55:00.006046
22299	{8,4,3,21}	{}	2018-09-14 21:10:00.006071
22300	{7,16,13,12}	{}	2018-09-14 21:25:00.006022
22301	{20,1,19,21}	{}	2018-09-14 21:40:00.006062
22302	{2,16,18,10}	{}	2018-09-14 21:55:00.006116
22303	{2,7,19,3}	{}	2018-09-14 22:10:00.006128
22304	{16,20,9,13}	{}	2018-09-14 22:25:00.006101
22305	{4,9,8,6}	{}	2018-09-14 22:40:00.006062
22306	{12,15,18,21}	{}	2018-09-14 22:55:00.00614
22315	{4,9,5,18}	{}	2018-09-15 01:10:00.006117
22316	{3,8,1,12}	{}	2018-09-15 01:25:00.006724
22852	{19,16,12,21}	{}	2018-09-20 15:25:00.007525
22853	{11,20,5,19}	{}	2018-09-20 15:40:00.006928
22854	{5,4,17,19}	{}	2018-09-20 15:55:00.007492
22855	{16,2,4,11}	{}	2018-09-20 16:10:00.006139
22856	{5,19,18,9}	{}	2018-09-20 16:25:00.006152
20621	{5,21,14,8}	{}	2018-08-28 12:10:00.004685
20622	{8,12,1,2}	{}	2018-08-28 12:25:00.004675
20623	{17,10,5,21}	{}	2018-08-28 12:40:00.004726
20624	{20,7,18,11}	{}	2018-08-28 12:55:00.004753
20626	{20,4,15,7}	{}	2018-08-28 13:25:00.004672
20627	{3,17,7,16}	{}	2018-08-28 13:40:00.004691
20628	{15,18,4,21}	{}	2018-08-28 13:55:00.004714
20629	{7,20,15,21}	{}	2018-08-28 14:10:00.004523
20630	{18,6,1,14}	{}	2018-08-28 14:25:00.004707
20631	{5,18,13,16}	{}	2018-08-28 14:40:00.004634
20632	{12,4,5,7}	{}	2018-08-28 14:55:00.004683
20633	{16,7,8,9}	{}	2018-08-28 15:10:00.004499
20634	{17,12,16,18}	{}	2018-08-28 15:25:00.004691
20635	{7,11,18,2}	{}	2018-08-28 15:40:00.004905
20636	{7,20,2,10}	{}	2018-08-28 15:55:00.004797
20637	{1,3,8,9}	{}	2018-08-28 16:10:00.004675
20638	{15,18,2,7}	{}	2018-08-28 16:25:00.004618
20639	{8,6,15,20}	{}	2018-08-28 16:40:00.004689
20640	{11,13,18,7}	{}	2018-08-28 16:55:00.004661
20641	{16,17,9,1}	{}	2018-08-28 17:10:00.004911
20642	{4,5,6,16}	{}	2018-08-28 17:25:00.004615
20643	{18,9,4,15}	{}	2018-08-28 17:40:00.004678
20644	{8,19,15,6}	{}	2018-08-28 17:55:00.004691
20645	{14,4,18,6}	{}	2018-08-28 18:10:00.004622
20646	{14,17,2,3}	{}	2018-08-28 18:25:00.004686
20647	{19,7,13,5}	{}	2018-08-28 18:40:00.004704
20648	{1,18,5,8}	{}	2018-08-28 18:55:00.004572
20649	{8,21,2,10}	{}	2018-08-28 19:10:00.004749
20650	{6,11,4,3}	{}	2018-08-28 19:25:00.004443
20651	{2,14,7,5}	{}	2018-08-28 19:40:00.004618
20652	{20,8,15,11}	{}	2018-08-28 19:55:00.004706
20653	{5,10,1,11}	{}	2018-08-28 20:10:00.004656
20654	{15,9,10,18}	{}	2018-08-28 20:25:00.004534
20655	{3,11,2,8}	{}	2018-08-28 20:40:00.004691
20656	{15,20,1,7}	{}	2018-08-28 20:55:00.004546
20657	{5,10,6,20}	{}	2018-08-28 21:10:00.00464
20658	{5,12,7,8}	{}	2018-08-28 21:25:00.004632
20659	{7,6,18,2}	{}	2018-08-28 21:40:00.00471
20660	{4,17,15,9}	{}	2018-08-28 21:55:00.004735
20661	{11,21,8,15}	{}	2018-08-28 22:10:00.004921
20662	{9,17,21,2}	{}	2018-08-28 22:25:00.004358
20663	{13,7,21,19}	{}	2018-08-28 22:40:00.004668
20664	{4,20,6,8}	{}	2018-08-28 22:55:00.00471
20665	{14,20,4,15}	{}	2018-08-28 23:10:00.004914
20666	{11,9,4,5}	{}	2018-08-28 23:25:00.004835
20667	{13,15,4,1}	{}	2018-08-28 23:40:00.004735
20668	{9,18,13,21}	{}	2018-08-28 23:55:00.004832
20669	{20,11,19,16}	{}	2018-08-29 00:10:00.004676
20670	{8,6,21,2}	{}	2018-08-29 00:25:00.004739
20671	{3,10,16,21}	{}	2018-08-29 00:40:00.004718
20672	{1,19,17,18}	{}	2018-08-29 00:55:00.004736
20673	{2,14,7,8}	{}	2018-08-29 01:10:00.004706
20674	{8,17,14,4}	{}	2018-08-29 01:25:00.004676
20675	{2,11,7,15}	{}	2018-08-29 01:40:00.004659
20676	{11,9,18,3}	{}	2018-08-29 01:55:00.00462
20677	{4,18,1,13}	{}	2018-08-29 02:10:00.004672
20678	{2,15,14,8}	{}	2018-08-29 02:25:00.004567
20679	{20,5,19,15}	{}	2018-08-29 02:40:00.004724
20680	{4,11,3,7}	{}	2018-08-29 02:55:00.00464
20681	{6,4,15,14}	{}	2018-08-29 03:10:00.004751
20682	{19,5,12,11}	{}	2018-08-29 03:25:00.004656
20683	{5,18,1,19}	{}	2018-08-29 03:40:00.004677
20684	{19,9,20,6}	{}	2018-08-29 03:55:00.004735
20685	{9,16,8,5}	{}	2018-08-29 04:10:00.004649
20686	{5,21,19,14}	{}	2018-08-29 04:25:00.004746
20687	{19,12,7,14}	{}	2018-08-29 04:40:00.004762
20688	{14,3,15,21}	{}	2018-08-29 04:55:00.004697
20689	{13,1,19,17}	{}	2018-08-29 05:10:00.004878
20690	{17,6,19,3}	{}	2018-08-29 05:25:00.004667
20691	{6,10,20,9}	{}	2018-08-29 05:40:00.004699
20692	{16,2,5,20}	{}	2018-08-29 05:55:00.004501
20693	{19,15,12,2}	{}	2018-08-29 06:10:00.004681
20694	{16,3,7,21}	{}	2018-08-29 06:25:00.00459
20695	{10,21,3,18}	{}	2018-08-29 06:40:00.004428
20696	{1,19,15,17}	{}	2018-08-29 06:55:00.004629
20697	{2,12,11,15}	{}	2018-08-29 07:10:00.004651
20698	{9,20,17,6}	{}	2018-08-29 07:25:00.004702
20699	{18,9,11,4}	{}	2018-08-29 07:40:00.004677
20700	{5,7,20,4}	{}	2018-08-29 07:55:00.004673
20717	{3,7,17,18}	{}	2018-08-29 12:10:00.004878
20718	{18,11,13,7}	{}	2018-08-29 12:25:00.004646
20719	{3,2,12,4}	{}	2018-08-29 12:40:00.004689
20720	{11,14,15,19}	{}	2018-08-29 12:55:00.004676
21082	{14,11,7,21}	{}	2018-09-02 04:55:00.006028
21468	{11,14,10,8}	{}	2018-09-06 05:25:00.005896
21479	{12,21,18,10}	{}	2018-09-06 08:10:00.006098
21480	{3,11,5,17}	{}	2018-09-06 08:25:00.00596
21481	{16,7,17,13}	{}	2018-09-06 08:40:00.006032
21482	{6,5,11,16}	{}	2018-09-06 08:55:00.006045
21483	{10,17,20,8}	{}	2018-09-06 09:10:00.006042
21484	{21,5,12,10}	{}	2018-09-06 09:25:00.006052
21485	{16,5,10,11}	{}	2018-09-06 09:40:00.006039
21486	{16,17,11,18}	{}	2018-09-06 09:55:00.005984
21487	{4,12,2,5}	{}	2018-09-06 10:10:00.006072
21488	{12,11,6,3}	{}	2018-09-06 10:25:00.006049
21489	{10,8,9,18}	{}	2018-09-06 10:40:00.005971
21490	{20,18,15,3}	{}	2018-09-06 10:55:00.006186
21499	{14,15,1,7}	{}	2018-09-06 13:10:00.006029
21500	{8,13,20,2}	{}	2018-09-06 13:25:00.005778
21501	{16,1,21,3}	{}	2018-09-06 13:40:00.005981
21502	{13,6,15,21}	{}	2018-09-06 13:55:00.006118
21503	{17,11,16,3}	{}	2018-09-06 14:10:00.005993
21504	{15,13,14,8}	{}	2018-09-06 14:25:00.006035
21505	{9,3,8,2}	{}	2018-09-06 14:40:00.00596
21506	{15,18,8,2}	{}	2018-09-06 14:55:00.005913
21507	{11,20,2,5}	{}	2018-09-06 15:10:00.006016
21508	{20,13,16,4}	{}	2018-09-06 15:25:00.005657
21509	{7,14,17,8}	{}	2018-09-06 15:40:00.005987
21510	{5,20,13,2}	{}	2018-09-06 15:55:00.005897
21511	{19,8,15,16}	{}	2018-09-06 16:10:00.006057
21512	{7,10,4,12}	{}	2018-09-06 16:25:00.006053
21513	{4,15,3,20}	{}	2018-09-06 16:40:00.006012
21514	{20,10,8,2}	{}	2018-09-06 16:55:00.00617
21527	{2,14,6,12}	{}	2018-09-06 20:10:00.006054
21528	{18,20,9,8}	{}	2018-09-06 20:25:00.005958
21529	{11,8,9,17}	{}	2018-09-06 20:40:00.005889
21530	{9,14,4,11}	{}	2018-09-06 20:55:00.006042
21531	{9,19,7,20}	{}	2018-09-06 21:10:00.006133
21532	{18,21,10,20}	{}	2018-09-06 21:25:00.006073
21533	{2,18,20,15}	{}	2018-09-06 21:40:00.006038
21534	{13,8,11,4}	{}	2018-09-06 21:55:00.00596
21535	{17,12,21,10}	{}	2018-09-06 22:10:00.006039
21536	{18,2,11,14}	{}	2018-09-06 22:25:00.006076
21537	{19,1,9,13}	{}	2018-09-06 22:40:00.005419
21538	{21,3,4,1}	{}	2018-09-06 22:55:00.006115
21547	{18,12,6,14}	{}	2018-09-07 01:10:00.006021
21548	{15,9,20,8}	{}	2018-09-07 01:25:00.006082
21549	{13,8,16,21}	{}	2018-09-07 01:40:00.005996
21550	{10,19,15,18}	{}	2018-09-07 01:55:00.006037
21551	{11,5,12,2}	{}	2018-09-07 02:10:00.006101
21552	{20,17,9,18}	{}	2018-09-07 02:25:00.006014
21553	{10,6,20,5}	{}	2018-09-07 02:40:00.006046
21554	{18,1,17,3}	{}	2018-09-07 02:55:00.006059
21555	{15,13,8,17}	{}	2018-09-07 03:10:00.006047
21556	{16,9,15,13}	{}	2018-09-07 03:25:00.005994
22317	{11,4,12,10}	{}	2018-09-15 01:40:00.006154
22318	{7,14,4,13}	{}	2018-09-15 01:55:00.006107
22319	{19,15,16,18}	{}	2018-09-15 02:10:00.006133
22320	{20,7,11,5}	{}	2018-09-15 02:25:00.006206
22321	{8,12,19,18}	{}	2018-09-15 02:40:00.006076
22322	{3,18,6,11}	{}	2018-09-15 02:55:00.006035
22323	{21,17,6,11}	{}	2018-09-15 03:10:00.006086
22324	{11,2,18,12}	{}	2018-09-15 03:25:00.006117
22325	{6,12,19,3}	{}	2018-09-15 03:40:00.006078
22326	{9,17,14,6}	{}	2018-09-15 03:55:00.00608
22327	{13,4,14,19}	{}	2018-09-15 04:10:00.006132
22328	{3,1,15,18}	{}	2018-09-15 04:25:00.006094
22329	{11,8,5,12}	{}	2018-09-15 04:40:00.006113
22330	{15,8,21,4}	{}	2018-09-15 04:55:00.006234
22343	{6,9,2,10}	{}	2018-09-15 08:10:00.006135
22344	{14,21,8,5}	{}	2018-09-15 08:25:00.006103
22345	{4,18,1,15}	{}	2018-09-15 08:40:00.006067
22346	{9,10,21,7}	{}	2018-09-15 08:55:00.006164
22347	{14,3,8,12}	{}	2018-09-15 09:10:00.006014
20701	{18,4,10,1}	{}	2018-08-29 08:10:00.00477
20702	{9,11,5,7}	{}	2018-08-29 08:25:00.004685
20703	{11,3,17,16}	{}	2018-08-29 08:40:00.004681
20704	{2,20,4,8}	{}	2018-08-29 08:55:00.00473
20705	{17,18,6,21}	{}	2018-08-29 09:10:00.004675
20706	{5,10,16,2}	{}	2018-08-29 09:25:00.004728
20707	{16,18,7,5}	{}	2018-08-29 09:40:00.004711
20708	{17,10,9,18}	{}	2018-08-29 09:55:00.004691
20709	{17,11,7,19}	{}	2018-08-29 10:10:00.00475
20710	{15,19,12,6}	{}	2018-08-29 10:25:00.004648
20711	{3,15,20,2}	{}	2018-08-29 10:40:00.004389
20712	{8,7,5,3}	{}	2018-08-29 10:55:00.004753
20721	{1,7,4,13}	{}	2018-08-29 13:10:00.004749
21083	{4,6,3,16}	{}	2018-09-02 05:10:00.006092
21084	{19,13,12,14}	{}	2018-09-02 05:25:00.006234
21085	{3,20,11,7}	{}	2018-09-02 05:40:00.006151
21086	{10,7,14,19}	{}	2018-09-02 05:55:00.005998
21087	{6,21,3,19}	{}	2018-09-02 06:10:00.006043
21088	{19,1,7,11}	{}	2018-09-02 06:25:00.005992
21089	{11,18,6,7}	{}	2018-09-02 06:40:00.006051
21090	{21,17,3,5}	{}	2018-09-02 06:55:00.006099
21107	{17,19,13,10}	{}	2018-09-02 11:10:00.006004
21108	{3,4,16,18}	{}	2018-09-02 11:25:00.006183
21109	{1,19,15,21}	{}	2018-09-02 11:40:00.006069
21110	{20,8,21,18}	{}	2018-09-02 11:55:00.006099
21131	{12,8,4,10}	{}	2018-09-02 17:10:00.006018
21132	{4,17,18,15}	{}	2018-09-02 17:25:00.006135
21133	{16,7,1,6}	{}	2018-09-02 17:40:00.006048
21134	{15,9,10,13}	{}	2018-09-02 17:55:00.006003
21135	{4,13,5,1}	{}	2018-09-02 18:10:00.006126
21136	{13,20,19,3}	{}	2018-09-02 18:25:00.005705
21137	{11,20,6,14}	{}	2018-09-02 18:40:00.006055
21138	{19,20,18,15}	{}	2018-09-02 18:55:00.006047
21469	{17,13,16,5}	{}	2018-09-06 05:40:00.006067
21470	{5,4,18,1}	{}	2018-09-06 05:55:00.006099
21471	{15,3,11,21}	{}	2018-09-06 06:10:00.006166
21472	{16,11,7,20}	{}	2018-09-06 06:25:00.005983
21473	{21,7,5,16}	{}	2018-09-06 06:40:00.006034
21474	{17,13,20,6}	{}	2018-09-06 06:55:00.006028
21491	{18,11,6,2}	{}	2018-09-06 11:10:00.006145
21492	{5,8,9,6}	{}	2018-09-06 11:25:00.006129
21493	{16,6,8,7}	{}	2018-09-06 11:40:00.006089
21494	{14,17,7,12}	{}	2018-09-06 11:55:00.006047
21515	{21,15,1,11}	{}	2018-09-06 17:10:00.006236
21516	{11,12,13,2}	{}	2018-09-06 17:25:00.006092
21517	{18,2,14,17}	{}	2018-09-06 17:40:00.006066
21518	{13,15,2,16}	{}	2018-09-06 17:55:00.006046
21519	{19,5,11,18}	{}	2018-09-06 18:10:00.006027
21520	{16,19,5,4}	{}	2018-09-06 18:25:00.006065
21521	{1,13,6,7}	{}	2018-09-06 18:40:00.006062
21522	{21,14,8,5}	{}	2018-09-06 18:55:00.005994
21539	{5,14,8,9}	{}	2018-09-06 23:10:00.006256
21540	{8,21,17,4}	{}	2018-09-06 23:25:00.006279
21541	{20,12,8,2}	{}	2018-09-06 23:40:00.006261
21542	{15,10,12,7}	{}	2018-09-06 23:55:00.006166
22331	{14,11,15,19}	{}	2018-09-15 05:10:00.006174
22332	{20,13,18,17}	{}	2018-09-15 05:25:00.006571
22333	{4,2,6,9}	{}	2018-09-15 05:40:00.006059
22334	{4,18,8,14}	{}	2018-09-15 05:55:00.00609
22335	{4,3,6,10}	{}	2018-09-15 06:10:00.006068
22336	{17,13,2,8}	{}	2018-09-15 06:25:00.006061
22337	{4,6,8,21}	{}	2018-09-15 06:40:00.006128
22338	{13,11,18,4}	{}	2018-09-15 06:55:00.006106
22355	{11,7,6,1}	{}	2018-09-15 11:10:00.006043
22356	{15,13,17,18}	{}	2018-09-15 11:25:00.006767
22357	{11,18,6,16}	{}	2018-09-15 11:40:00.006054
22358	{9,17,20,2}	{}	2018-09-15 11:55:00.005984
22379	{18,7,4,21}	{}	2018-09-15 17:10:00.00619
22380	{6,12,8,2}	{}	2018-09-15 17:25:00.006102
22381	{18,11,3,7}	{}	2018-09-15 17:40:00.005963
22382	{2,14,12,15}	{}	2018-09-15 17:55:00.006086
22383	{5,7,19,17}	{}	2018-09-15 18:10:00.006063
22384	{3,16,9,2}	{}	2018-09-15 18:25:00.005946
22385	{9,19,11,13}	{}	2018-09-15 18:40:00.006042
22386	{15,19,13,7}	{}	2018-09-15 18:55:00.006039
22403	{6,13,5,21}	{}	2018-09-15 23:10:00.006165
22404	{13,11,21,7}	{}	2018-09-15 23:25:00.006162
20713	{6,3,7,1}	{}	2018-08-29 11:10:00.004815
20714	{14,13,6,8}	{}	2018-08-29 11:25:00.004817
20715	{2,9,18,15}	{}	2018-08-29 11:40:00.004757
20716	{3,20,5,15}	{}	2018-08-29 11:55:00.004546
20722	{12,10,11,3}	{}	2018-08-29 13:25:00.004674
20723	{2,1,5,10}	{}	2018-08-29 13:40:00.004782
20724	{10,2,12,19}	{}	2018-08-29 13:55:00.004703
20725	{20,7,12,3}	{}	2018-08-29 14:10:00.004698
20726	{6,1,18,17}	{}	2018-08-29 14:25:00.004657
20727	{5,16,20,18}	{}	2018-08-29 14:40:00.00472
20728	{14,20,2,16}	{}	2018-08-29 14:55:00.004722
20729	{16,1,15,17}	{}	2018-08-29 15:10:00.004681
20730	{18,11,9,5}	{}	2018-08-29 15:25:00.004655
20731	{11,2,5,14}	{}	2018-08-29 15:40:00.004754
20732	{15,14,21,8}	{}	2018-08-29 15:55:00.004671
20733	{16,1,13,15}	{}	2018-08-29 16:10:00.004661
20734	{6,2,10,19}	{}	2018-08-29 16:25:00.004731
20735	{8,2,12,9}	{}	2018-08-29 16:40:00.004698
20736	{2,4,17,11}	{}	2018-08-29 16:55:00.004645
20737	{13,6,21,16}	{}	2018-08-29 17:10:00.004743
20738	{18,20,5,14}	{}	2018-08-29 17:25:00.004712
20739	{3,7,15,8}	{}	2018-08-29 17:40:00.004835
20740	{4,19,10,13}	{}	2018-08-29 17:55:00.004705
20741	{18,13,1,10}	{}	2018-08-29 18:10:00.004713
20742	{8,12,4,11}	{}	2018-08-29 18:25:00.004694
20743	{21,12,7,9}	{}	2018-08-29 18:40:00.004669
20744	{9,21,2,17}	{}	2018-08-29 18:55:00.004559
20745	{17,4,8,11}	{}	2018-08-29 19:10:00.004835
20746	{3,8,12,20}	{}	2018-08-29 19:25:00.004674
20747	{8,5,11,3}	{}	2018-08-29 19:40:00.004667
20748	{10,4,1,21}	{}	2018-08-29 19:55:00.004719
20749	{8,4,21,10}	{}	2018-08-29 20:10:00.004646
20750	{12,15,7,9}	{}	2018-08-29 20:25:00.004701
20751	{21,13,2,6}	{}	2018-08-29 20:40:00.004701
20752	{12,11,17,14}	{}	2018-08-29 20:55:00.004688
20753	{5,2,16,6}	{}	2018-08-29 21:10:00.004625
20754	{14,9,2,11}	{}	2018-08-29 21:25:00.004716
20755	{11,9,20,12}	{}	2018-08-29 21:40:00.004687
20756	{6,19,10,18}	{}	2018-08-29 21:55:00.004683
20757	{9,6,13,21}	{}	2018-08-29 22:10:00.004618
20758	{19,13,21,12}	{}	2018-08-29 22:25:00.004677
20759	{21,4,10,9}	{}	2018-08-29 22:40:00.00471
20760	{7,16,18,3}	{}	2018-08-29 22:55:00.004701
20761	{15,5,21,19}	{}	2018-08-29 23:10:00.004838
20762	{3,19,9,16}	{}	2018-08-29 23:25:00.004809
20763	{3,2,5,15}	\N	2018-08-29 23:40:00.005337
20764	{11,6,14,1}	{}	2018-08-29 23:40:00.00697
20765	{17,11,8,1}	\N	2018-08-29 23:55:00.005027
20766	{4,21,9,3}	{}	2018-08-29 23:55:00.006324
20767	{18,8,14,9}	{}	2018-08-30 00:10:00.004823
20768	{15,11,3,18}	{}	2018-08-30 00:25:00.00464
20769	{14,12,20,11}	{}	2018-08-30 00:40:00.004712
20770	{14,9,13,6}	{}	2018-08-30 00:55:00.004657
20771	{18,19,8,17}	{}	2018-08-30 01:10:00.004824
20772	{16,19,7,18}	{}	2018-08-30 01:25:00.004709
20773	{3,10,5,4}	{}	2018-08-30 01:40:00.004648
20774	{11,1,12,8}	{}	2018-08-30 01:55:00.004641
20775	{15,14,8,11}	{}	2018-08-30 02:10:00.00455
20776	{14,13,10,16}	{}	2018-08-30 02:25:00.004653
20777	{9,18,15,7}	{}	2018-08-30 02:40:00.004646
20778	{4,12,18,6}	{}	2018-08-30 02:55:00.004705
20779	{3,17,2,15}	{}	2018-08-30 03:10:00.004677
20780	{8,2,10,15}	{}	2018-08-30 03:25:00.004623
20781	{6,21,12,19}	{}	2018-08-30 03:40:00.00471
20782	{14,3,18,4}	{}	2018-08-30 03:55:00.004654
20783	{13,15,19,16}	{}	2018-08-30 04:10:00.004703
20784	{7,10,18,8}	{}	2018-08-30 04:25:00.004713
20785	{16,11,9,8}	{}	2018-08-30 04:40:00.004657
20786	{10,17,1,16}	{}	2018-08-30 04:55:00.004679
20787	{3,5,7,13}	{}	2018-08-30 05:10:00.00454
20788	{7,3,2,18}	{}	2018-08-30 05:25:00.004683
20789	{1,14,17,6}	{}	2018-08-30 05:40:00.004676
20790	{7,11,14,9}	{}	2018-08-30 05:55:00.004616
20791	{7,20,3,5}	{}	2018-08-30 06:10:00.004837
20792	{4,15,3,13}	{}	2018-08-30 06:25:00.004636
20793	{4,7,10,14}	{}	2018-08-30 06:40:00.00484
20794	{6,14,7,13}	{}	2018-08-30 06:55:00.004709
20795	{10,1,20,2}	{}	2018-08-30 07:10:00.00481
20796	{12,21,11,20}	{}	2018-08-30 07:25:00.00469
20797	{2,13,9,5}	{}	2018-08-30 07:40:00.004686
20798	{17,21,1,8}	{}	2018-08-30 07:55:00.004672
20815	{21,12,1,11}	{}	2018-08-30 12:10:00.004635
20816	{2,1,19,6}	{}	2018-08-30 12:25:00.004664
20817	{18,6,19,1}	{}	2018-08-30 12:40:00.004837
20818	{11,16,15,18}	{}	2018-08-30 12:55:00.004701
21091	{7,11,5,3}	{}	2018-09-02 07:10:00.006119
21092	{1,15,19,5}	{}	2018-09-02 07:25:00.005982
21093	{4,8,9,17}	{}	2018-09-02 07:40:00.006034
21094	{13,21,16,8}	{}	2018-09-02 07:55:00.006004
21111	{8,9,1,17}	{}	2018-09-02 12:10:00.005982
21112	{20,7,11,19}	{}	2018-09-02 12:25:00.006041
21113	{14,8,10,1}	{}	2018-09-02 12:40:00.006046
21114	{8,15,6,2}	{}	2018-09-02 12:55:00.005908
21139	{4,10,20,14}	{}	2018-09-02 19:10:00.006027
21140	{1,7,13,20}	{}	2018-09-02 19:25:00.005961
21141	{3,21,6,17}	{}	2018-09-02 19:40:00.005955
21142	{8,17,9,1}	{}	2018-09-02 19:55:00.006017
21475	{7,15,20,17}	{}	2018-09-06 07:10:00.005564
21476	{18,14,4,17}	{}	2018-09-06 07:25:00.006038
21477	{4,7,2,21}	{}	2018-09-06 07:40:00.006025
21478	{18,12,13,17}	{}	2018-09-06 07:55:00.005982
21495	{13,7,20,12}	{}	2018-09-06 12:10:00.006061
21496	{18,2,14,12}	{}	2018-09-06 12:25:00.006017
21497	{20,3,18,13}	{}	2018-09-06 12:40:00.006012
21498	{12,14,16,2}	{}	2018-09-06 12:55:00.005929
21523	{13,19,17,2}	{}	2018-09-06 19:10:00.00608
21524	{2,15,3,13}	{}	2018-09-06 19:25:00.006066
21525	{18,6,20,10}	{}	2018-09-06 19:40:00.006662
21526	{7,16,20,9}	{}	2018-09-06 19:55:00.006038
21543	{18,9,8,5}	{}	2018-09-07 00:10:00.006007
21544	{16,20,5,9}	{}	2018-09-07 00:25:00.006209
21545	{17,10,5,13}	{}	2018-09-07 00:40:00.006109
21546	{1,3,15,8}	{}	2018-09-07 00:55:00.005987
22339	{3,5,20,13}	{}	2018-09-15 07:10:00.006045
22340	{4,15,12,13}	{}	2018-09-15 07:25:00.006759
22341	{15,11,13,17}	{}	2018-09-15 07:40:00.006077
22342	{11,12,20,16}	{}	2018-09-15 07:55:00.006055
22348	{18,7,9,15}	{}	2018-09-15 09:25:00.006706
22359	{21,13,4,20}	{}	2018-09-15 12:10:00.00603
22360	{19,1,18,20}	{}	2018-09-15 12:25:00.005987
22361	{10,13,3,6}	{}	2018-09-15 12:40:00.006048
22362	{11,3,16,17}	{}	2018-09-15 12:55:00.006052
22387	{1,18,14,21}	{}	2018-09-15 19:10:00.006044
22388	{6,5,13,4}	{}	2018-09-15 19:25:00.006087
22389	{10,6,19,2}	{}	2018-09-15 19:40:00.006047
22390	{13,3,16,21}	{}	2018-09-15 19:55:00.006092
22407	{9,13,4,1}	{}	2018-09-16 00:10:00.00606
22408	{2,12,13,21}	{}	2018-09-16 00:25:00.006081
22409	{15,14,1,20}	{}	2018-09-16 00:40:00.005995
22410	{13,3,14,2}	{}	2018-09-16 00:55:00.006081
22412	{12,4,11,6}	{}	2018-09-16 01:25:00.005874
22435	{8,12,11,4}	{}	2018-09-16 07:10:00.00608
22436	{18,17,20,12}	{}	2018-09-16 07:25:00.006044
22437	{11,17,9,3}	{}	2018-09-16 07:40:00.006031
22438	{2,5,16,3}	{}	2018-09-16 07:55:00.006037
22857	{18,19,17,2}	{}	2018-09-20 16:40:00.006056
22858	{17,11,5,20}	{}	2018-09-20 16:55:00.006577
22867	{15,14,10,9}	{}	2018-09-20 19:10:00.006163
22868	{12,18,15,16}	{}	2018-09-20 19:25:00.006159
22869	{5,6,10,20}	{}	2018-09-20 19:40:00.006043
22870	{19,3,15,17}	{}	2018-09-20 19:55:00.00513
22883	{1,3,19,4}	{}	2018-09-20 23:10:00.006192
23064	{17,1,7,8}	{}	2018-09-22 20:25:00.006097
23065	{17,6,2,10}	{}	2018-09-22 20:40:00.006117
23066	{13,14,12,15}	{}	2018-09-22 20:55:00.006129
23067	{4,7,8,20}	{}	2018-09-22 21:10:00.006108
23068	{16,15,18,1}	{}	2018-09-22 21:25:00.006121
23069	{12,17,5,2}	{}	2018-09-22 21:40:00.006187
23070	{13,8,7,9}	{}	2018-09-22 21:55:00.00605
23071	{4,20,14,16}	{}	2018-09-22 22:10:00.006075
23072	{20,12,14,8}	{}	2018-09-22 22:25:00.006131
23073	{5,6,11,17}	{}	2018-09-22 22:40:00.006199
23074	{9,17,3,4}	{}	2018-09-22 22:55:00.006194
23084	{1,15,2,21}	{}	2018-09-23 01:25:00.006053
23099	{21,2,15,5}	{}	2018-09-23 05:10:00.006044
20799	{5,19,15,11}	{}	2018-08-30 08:10:00.00468
20800	{21,5,14,10}	{}	2018-08-30 08:25:00.004655
20801	{8,19,7,5}	{}	2018-08-30 08:40:00.004626
20802	{4,11,5,3}	{}	2018-08-30 08:55:00.004682
20803	{21,17,15,19}	{}	2018-08-30 09:10:00.003913
20804	{15,9,6,19}	{}	2018-08-30 09:25:00.004691
20805	{1,21,3,17}	{}	2018-08-30 09:40:00.004692
20806	{18,19,7,12}	{}	2018-08-30 09:55:00.004675
20807	{19,1,12,18}	{}	2018-08-30 10:10:00.004612
20808	{16,17,12,9}	{}	2018-08-30 10:25:00.004667
20809	{17,3,15,19}	{}	2018-08-30 10:40:00.004724
20810	{6,17,8,18}	{}	2018-08-30 10:55:00.004662
20819	{14,2,4,7}	{}	2018-08-30 13:10:00.004843
20820	{16,21,5,14}	{}	2018-08-30 13:25:00.004643
20821	{4,6,15,21}	{}	2018-08-30 13:40:00.004626
20822	{19,10,6,7}	{}	2018-08-30 13:55:00.004645
20823	{17,16,9,10}	{}	2018-08-30 14:10:00.004688
20824	{8,15,19,7}	{}	2018-08-30 14:25:00.004699
20825	{4,1,10,13}	{}	2018-08-30 14:40:00.00458
20826	{19,21,7,10}	{}	2018-08-30 14:55:00.004729
20827	{7,20,1,14}	{}	2018-08-30 15:10:00.004655
20828	{11,12,10,14}	{}	2018-08-30 15:25:00.004534
20829	{15,14,17,3}	{}	2018-08-30 15:40:00.004646
21095	{2,15,11,9}	{}	2018-09-02 08:10:00.005146
21096	{17,16,3,8}	{}	2018-09-02 08:25:00.005985
21097	{6,8,19,3}	{}	2018-09-02 08:40:00.006024
21098	{18,7,13,11}	{}	2018-09-02 08:55:00.006027
21099	{18,6,19,2}	{}	2018-09-02 09:10:00.005964
21100	{14,10,17,11}	{}	2018-09-02 09:25:00.006048
21101	{19,7,10,16}	{}	2018-09-02 09:40:00.005884
21102	{1,11,15,21}	{}	2018-09-02 09:55:00.006604
21103	{17,2,9,4}	{}	2018-09-02 10:10:00.006006
21104	{4,12,14,17}	{}	2018-09-02 10:25:00.006076
21105	{1,13,21,5}	{}	2018-09-02 10:40:00.006107
21106	{17,1,3,7}	{}	2018-09-02 10:55:00.00604
21115	{12,3,17,4}	{}	2018-09-02 13:10:00.006029
21116	{10,6,21,12}	{}	2018-09-02 13:25:00.00602
21117	{5,10,14,18}	{}	2018-09-02 13:40:00.006019
21118	{4,10,17,7}	{}	2018-09-02 13:55:00.006071
21119	{14,17,20,2}	{}	2018-09-02 14:10:00.006109
21120	{18,15,12,14}	{}	2018-09-02 14:25:00.005917
21121	{12,3,19,16}	{}	2018-09-02 14:40:00.006041
21122	{4,3,21,10}	{}	2018-09-02 14:55:00.006037
21123	{7,2,8,9}	{}	2018-09-02 15:10:00.006071
21124	{17,19,9,11}	{}	2018-09-02 15:25:00.006125
21125	{6,5,13,18}	{}	2018-09-02 15:40:00.005959
21126	{17,12,9,19}	{}	2018-09-02 15:55:00.006086
21127	{7,17,15,21}	{}	2018-09-02 16:10:00.006069
21128	{18,20,4,3}	{}	2018-09-02 16:25:00.005491
21129	{10,1,16,17}	{}	2018-09-02 16:40:00.006031
21130	{18,7,19,9}	{}	2018-09-02 16:55:00.005959
21143	{20,18,14,10}	{}	2018-09-02 20:10:00.006049
21144	{13,4,2,16}	{}	2018-09-02 20:25:00.006015
21145	{13,20,9,21}	{}	2018-09-02 20:40:00.006011
21146	{10,15,12,17}	{}	2018-09-02 20:55:00.006006
21147	{4,11,15,13}	{}	2018-09-02 21:10:00.006039
21148	{13,15,7,21}	{}	2018-09-02 21:25:00.006076
21149	{10,3,17,1}	{}	2018-09-02 21:40:00.005059
21150	{20,14,16,15}	{}	2018-09-02 21:55:00.006007
21557	{13,4,19,5}	{}	2018-09-07 03:40:00.006065
21558	{11,2,13,5}	{}	2018-09-07 03:55:00.006032
21559	{3,1,10,12}	{}	2018-09-07 04:10:00.006028
21560	{13,18,20,10}	{}	2018-09-07 04:25:00.005994
21561	{20,10,11,18}	{}	2018-09-07 04:40:00.006055
21562	{10,4,21,17}	{}	2018-09-07 04:55:00.006132
21575	{11,21,3,15}	{}	2018-09-07 08:10:00.006082
21576	{5,18,1,10}	{}	2018-09-07 08:25:00.006054
21577	{5,14,9,17}	{}	2018-09-07 08:40:00.00605
21578	{2,5,7,6}	{}	2018-09-07 08:55:00.005842
21579	{16,15,20,21}	{}	2018-09-07 09:10:00.006033
21580	{17,8,7,6}	{}	2018-09-07 09:25:00.006047
21581	{10,21,13,14}	{}	2018-09-07 09:40:00.006083
21582	{16,3,14,2}	{}	2018-09-07 09:55:00.005999
21583	{11,15,5,6}	{}	2018-09-07 10:10:00.006069
21584	{6,19,18,14}	{}	2018-09-07 10:25:00.006043
21585	{1,10,19,12}	{}	2018-09-07 10:40:00.006075
21586	{13,16,17,8}	{}	2018-09-07 10:55:00.006204
20811	{17,9,7,6}	{}	2018-08-30 11:10:00.004651
20812	{4,1,3,20}	{}	2018-08-30 11:25:00.004582
20813	{18,14,21,4}	{}	2018-08-30 11:40:00.004712
20814	{9,10,15,21}	{}	2018-08-30 11:55:00.004666
20830	{21,11,7,1}	{}	2018-08-30 15:55:00.004677
20831	{3,16,8,14}	{}	2018-08-30 16:10:00.004671
20832	{21,15,18,2}	{}	2018-08-30 16:25:00.004712
20833	{21,16,18,10}	{}	2018-08-30 16:40:00.004681
20834	{20,1,18,4}	{}	2018-08-30 16:55:00.004709
20835	{21,14,19,16}	{}	2018-08-30 17:10:00.004868
20836	{12,7,1,10}	{}	2018-08-30 17:25:00.004712
20837	{6,20,13,4}	{}	2018-08-30 17:40:00.00464
20838	{6,5,17,18}	{}	2018-08-30 17:55:00.004704
20839	{21,6,5,15}	{}	2018-08-30 18:10:00.004692
20840	{21,20,16,10}	{}	2018-08-30 18:25:00.003974
20841	{20,9,10,18}	{}	2018-08-30 18:40:00.004644
20842	{21,7,5,17}	{}	2018-08-30 18:55:00.004653
20843	{5,4,7,12}	{}	2018-08-30 19:10:00.00483
20844	{16,8,1,10}	{}	2018-08-30 19:25:00.004658
20845	{14,3,8,5}	{}	2018-08-30 19:40:00.004794
20846	{18,6,1,16}	{}	2018-08-30 19:55:00.004682
20847	{8,12,16,4}	{}	2018-08-30 20:10:00.004843
20848	{1,16,17,20}	{}	2018-08-30 20:25:00.004689
20849	{10,12,9,8}	{}	2018-08-30 20:40:00.004711
20850	{19,6,8,20}	{}	2018-08-30 20:55:00.004661
20851	{2,11,4,16}	{}	2018-08-30 21:10:00.004661
20852	{19,5,12,11}	{}	2018-08-30 21:25:00.004635
20853	{19,6,16,7}	{}	2018-08-30 21:40:00.004714
20854	{3,6,19,14}	{}	2018-08-30 21:55:00.004595
20855	{18,15,16,11}	{}	2018-08-30 22:10:00.004678
20856	{10,13,20,16}	{}	2018-08-30 22:25:00.004703
20857	{10,19,14,21}	{}	2018-08-30 22:40:00.004692
20858	{10,5,1,21}	{}	2018-08-30 22:55:00.004729
20859	{17,12,5,15}	{}	2018-08-30 23:10:00.004579
20860	{7,3,18,15}	{}	2018-08-30 23:25:00.004756
20861	{5,6,4,14}	{}	2018-08-30 23:40:00.00494
20862	{19,7,12,20}	{}	2018-08-30 23:55:00.004868
20863	{11,6,14,19}	{}	2018-08-31 00:10:00.004678
20864	{8,17,7,12}	{}	2018-08-31 00:25:00.004724
20865	{1,13,10,6}	{}	2018-08-31 00:40:00.004411
20866	{20,2,17,8}	{}	2018-08-31 00:55:00.004676
20867	{15,14,2,20}	{}	2018-08-31 01:10:00.00467
20868	{1,19,17,11}	{}	2018-08-31 01:25:00.004727
20869	{5,15,18,21}	{}	2018-08-31 01:40:00.004858
20870	{21,8,10,11}	{}	2018-08-31 01:55:00.004669
20871	{20,8,17,4}	{}	2018-08-31 02:10:00.004768
20872	{21,1,17,7}	{}	2018-08-31 02:25:00.004725
20873	{7,11,21,17}	{}	2018-08-31 02:40:00.004635
20874	{1,6,17,13}	{}	2018-08-31 02:55:00.004751
20875	{10,4,14,17}	{}	2018-08-31 03:10:00.004671
20876	{13,7,8,16}	{}	2018-08-31 03:25:00.004616
20877	{19,7,13,2}	{}	2018-08-31 03:40:00.004706
20878	{5,16,20,1}	{}	2018-08-31 03:55:00.004682
20879	{19,20,16,15}	{}	2018-08-31 04:10:00.004716
20880	{8,13,2,20}	{}	2018-08-31 04:25:00.004619
20881	{21,13,6,10}	{}	2018-08-31 04:40:00.004681
20882	{15,6,16,12}	{}	2018-08-31 04:55:00.004666
20883	{6,19,2,10}	{}	2018-08-31 05:10:00.004864
20884	{19,18,5,11}	{}	2018-08-31 05:25:00.004684
20885	{10,13,16,19}	{}	2018-08-31 05:40:00.004548
20886	{10,8,18,1}	{}	2018-08-31 05:55:00.004722
20887	{13,21,2,15}	{}	2018-08-31 06:10:00.004603
20888	{10,15,8,4}	{}	2018-08-31 06:25:00.004682
20889	{2,13,7,3}	{}	2018-08-31 06:40:00.004725
20890	{7,15,14,11}	{}	2018-08-31 06:55:00.004536
20891	{20,4,2,12}	{}	2018-08-31 07:10:00.004686
20892	{3,4,21,12}	{}	2018-08-31 07:25:00.004734
20893	{9,21,1,11}	{}	2018-08-31 07:40:00.004659
20894	{6,15,16,5}	\N	2018-08-31 07:55:00.004787
20895	{1,6,21,16}	{}	2018-08-31 07:55:00.00652
20896	{2,13,18,9}	\N	2018-08-31 08:10:00.004887
20897	{9,21,12,2}	{}	2018-08-31 08:10:00.006378
20898	{7,20,2,16}	\N	2018-08-31 08:25:00.004785
20899	{3,21,16,11}	{}	2018-08-31 08:25:00.006288
20900	{18,12,13,15}	\N	2018-08-31 08:40:00.004646
20901	{21,15,5,19}	{}	2018-08-31 08:40:00.005944
20902	{2,12,21,15}	\N	2018-08-31 08:55:00.004582
20903	{17,15,9,11}	{}	2018-08-31 08:55:00.004606
20904	{15,10,5,6}	\N	2018-08-31 09:10:00.004619
21151	{8,1,18,19}	{}	2018-09-02 22:10:00.006058
20913	{13,7,1,2}	{}	2018-08-31 10:10:00.004697
21155	{17,3,1,12}	{}	2018-09-02 23:10:00.006236
21156	{8,1,12,9}	{}	2018-09-02 23:25:00.006289
21157	{13,1,9,2}	{}	2018-09-02 23:40:00.006247
21158	{11,20,4,2}	{}	2018-09-02 23:55:00.006187
21179	{1,19,9,11}	{}	2018-09-03 05:10:00.005812
21180	{2,13,12,15}	{}	2018-09-03 05:25:00.00622
21181	{4,19,10,1}	{}	2018-09-03 05:40:00.006098
21182	{2,13,5,20}	{}	2018-09-03 05:55:00.006042
21183	{2,16,8,4}	{}	2018-09-03 06:10:00.006077
21184	{10,18,1,5}	{}	2018-09-03 06:25:00.006112
21185	{18,1,6,16}	{}	2018-09-03 06:40:00.005982
21186	{10,6,17,21}	{}	2018-09-03 06:55:00.006071
21203	{16,21,12,4}	{}	2018-09-03 11:10:00.006139
21204	{3,15,5,10}	{}	2018-09-03 11:25:00.006162
21205	{16,10,9,8}	{}	2018-09-03 11:40:00.006165
21206	{17,6,5,12}	{}	2018-09-03 11:55:00.005999
21563	{2,11,14,16}	{}	2018-09-07 05:10:00.006146
21571	{4,8,12,15}	{}	2018-09-07 07:10:00.006019
21572	{1,18,6,3}	{}	2018-09-07 07:25:00.006046
21573	{13,12,17,5}	{}	2018-09-07 07:40:00.006026
21574	{8,21,14,2}	{}	2018-09-07 07:55:00.006003
21591	{12,4,6,1}	{}	2018-09-07 12:10:00.006097
21592	{14,16,5,4}	{}	2018-09-07 12:25:00.005985
21593	{11,5,16,19}	{}	2018-09-07 12:40:00.006083
21594	{13,5,15,19}	{}	2018-09-07 12:55:00.005801
21619	{20,11,21,2}	{}	2018-09-07 19:10:00.006162
21620	{9,16,2,15}	{}	2018-09-07 19:25:00.006072
21621	{10,20,21,19}	{}	2018-09-07 19:40:00.005986
21622	{1,20,7,12}	{}	2018-09-07 19:55:00.006046
21639	{19,16,14,18}	{}	2018-09-08 00:10:00.006081
21640	{1,10,19,16}	{}	2018-09-08 00:25:00.006585
21641	{2,4,14,16}	{}	2018-09-08 00:40:00.006099
21642	{6,5,19,15}	{}	2018-09-08 00:55:00.006051
22349	{8,13,15,18}	{}	2018-09-15 09:40:00.006048
22414	{17,4,13,19}	{}	2018-09-16 01:55:00.006068
22859	{10,21,15,9}	{}	2018-09-20 17:10:00.006045
22860	{10,21,6,4}	{}	2018-09-20 17:25:00.00606
22861	{3,6,15,4}	{}	2018-09-20 17:40:00.006012
22862	{12,15,1,6}	{}	2018-09-20 17:55:00.005949
22863	{16,17,21,20}	{}	2018-09-20 18:10:00.006083
22864	{8,5,15,21}	{}	2018-09-20 18:25:00.006369
22865	{10,21,12,20}	{}	2018-09-20 18:40:00.005935
22866	{3,17,15,10}	{}	2018-09-20 18:55:00.006046
23076	{7,19,18,10}	{}	2018-09-22 23:25:00.006205
23077	{20,5,7,2}	{}	2018-09-22 23:40:00.006279
23078	{21,20,5,9}	{}	2018-09-22 23:55:00.006345
23085	{9,4,5,7}	{}	2018-09-23 01:40:00.005834
23100	{2,6,13,4}	{}	2018-09-23 05:25:00.006146
23121	{1,17,13,11}	{}	2018-09-23 10:40:00.006093
23127	{14,5,12,10}	{}	2018-09-23 12:10:00.005944
23128	{18,14,6,17}	{}	2018-09-23 12:25:00.00606
23129	{3,10,21,7}	{}	2018-09-23 12:40:00.0061
23130	{5,7,1,16}	{}	2018-09-23 12:55:00.00612
23155	{15,5,20,11}	{}	2018-09-23 19:10:00.006002
23156	{12,10,6,5}	{}	2018-09-23 19:25:00.006153
23157	{12,7,10,16}	{}	2018-09-23 19:40:00.006061
23158	{3,12,18,9}	{}	2018-09-23 19:55:00.006123
23165	{11,2,8,21}	{}	2018-09-23 21:40:00.006012
23171	{9,18,14,3}	{}	2018-09-23 23:10:00.006162
23172	{12,11,2,20}	{}	2018-09-23 23:25:00.006198
23173	{10,15,12,9}	{}	2018-09-23 23:40:00.006296
23174	{1,7,4,6}	{}	2018-09-23 23:55:00.006234
23219	{2,20,4,14}	{}	2018-09-24 11:10:00.006045
23220	{6,15,2,16}	{}	2018-09-24 11:25:00.006064
23221	{8,19,13,6}	{}	2018-09-24 11:40:00.006045
23222	{3,6,17,2}	{}	2018-09-24 11:55:00.006144
23256	{10,19,5,9}	{}	2018-09-24 20:25:00.005993
23257	{18,15,17,4}	{}	2018-09-24 20:40:00.006172
23258	{21,15,20,3}	{}	2018-09-24 20:55:00.006092
23259	{10,18,3,13}	{}	2018-09-24 21:10:00.00618
23260	{2,1,3,12}	{}	2018-09-24 21:25:00.005996
23261	{5,14,20,17}	{}	2018-09-24 21:40:00.006107
23262	{18,20,21,4}	{}	2018-09-24 21:55:00.00602
23263	{4,10,15,6}	{}	2018-09-24 22:10:00.00603
23264	{16,8,15,3}	{}	2018-09-24 22:25:00.006086
20906	{13,8,15,1}	\N	2018-08-31 09:25:00.004597
20914	{19,9,6,14}	\N	2018-08-31 10:25:00.004549
20955	{5,12,4,8}	{}	2018-08-31 21:10:00.004681
20959	{8,3,4,15}	{}	2018-08-31 22:10:00.004651
21152	{20,6,1,11}	{}	2018-09-02 22:25:00.006048
21153	{16,12,21,7}	{}	2018-09-02 22:40:00.00609
21154	{18,19,5,8}	{}	2018-09-02 22:55:00.006108
21163	{4,16,11,19}	{}	2018-09-03 01:10:00.006014
21164	{20,12,19,13}	{}	2018-09-03 01:25:00.006077
21165	{8,11,2,19}	{}	2018-09-03 01:40:00.00604
21166	{21,14,17,18}	{}	2018-09-03 01:55:00.005843
21167	{21,13,11,2}	{}	2018-09-03 02:10:00.00611
21168	{14,13,9,8}	{}	2018-09-03 02:25:00.005994
21169	{10,6,20,11}	{}	2018-09-03 02:40:00.006095
21170	{16,19,8,10}	{}	2018-09-03 02:55:00.00597
21171	{21,9,5,3}	{}	2018-09-03 03:10:00.006016
21172	{20,1,12,6}	{}	2018-09-03 03:25:00.005975
21173	{2,17,9,16}	{}	2018-09-03 03:40:00.005987
21174	{8,19,5,15}	{}	2018-09-03 03:55:00.006029
21175	{3,14,5,9}	{}	2018-09-03 04:10:00.006026
21176	{17,9,7,5}	{}	2018-09-03 04:25:00.005788
21177	{20,8,18,2}	{}	2018-09-03 04:40:00.006072
21178	{15,14,5,1}	{}	2018-09-03 04:55:00.006159
21191	{11,16,19,12}	{}	2018-09-03 08:10:00.005951
21192	{5,4,13,6}	{}	2018-09-03 08:25:00.006008
21193	{17,14,11,4}	{}	2018-09-03 08:40:00.006037
21194	{16,14,7,10}	{}	2018-09-03 08:55:00.006092
21195	{6,17,16,15}	{}	2018-09-03 09:10:00.006108
21196	{12,7,9,3}	{}	2018-09-03 09:25:00.006018
21197	{8,6,12,20}	{}	2018-09-03 09:40:00.006053
21198	{15,16,10,18}	{}	2018-09-03 09:55:00.006096
21199	{19,3,6,17}	{}	2018-09-03 10:10:00.006027
21200	{13,1,9,7}	{}	2018-09-03 10:25:00.006097
21201	{21,17,19,12}	{}	2018-09-03 10:40:00.00601
21202	{20,16,18,7}	{}	2018-09-03 10:55:00.006068
21211	{13,3,18,7}	{}	2018-09-03 13:10:00.005986
21212	{2,4,5,11}	{}	2018-09-03 13:25:00.005985
21213	{18,15,14,11}	{}	2018-09-03 13:40:00.006008
21214	{13,12,14,20}	{}	2018-09-03 13:55:00.006102
21215	{2,9,11,3}	{}	2018-09-03 14:10:00.005331
21216	{16,12,13,4}	{}	2018-09-03 14:25:00.006082
21217	{10,1,14,7}	{}	2018-09-03 14:40:00.006077
21218	{18,13,14,10}	{}	2018-09-03 14:55:00.006007
21219	{7,2,15,5}	{}	2018-09-03 15:10:00.006033
21220	{11,16,1,14}	{}	2018-09-03 15:25:00.006032
21221	{13,7,4,10}	{}	2018-09-03 15:40:00.00608
21222	{1,16,18,4}	{}	2018-09-03 15:55:00.006055
21223	{7,10,5,6}	{}	2018-09-03 16:10:00.006098
21564	{17,9,7,10}	{}	2018-09-07 05:25:00.006058
21565	{9,19,16,18}	{}	2018-09-07 05:40:00.006048
21566	{2,1,13,18}	{}	2018-09-07 05:55:00.006028
21567	{11,4,7,18}	{}	2018-09-07 06:10:00.006138
21568	{4,2,8,3}	{}	2018-09-07 06:25:00.006044
21569	{2,21,13,7}	{}	2018-09-07 06:40:00.00605
21570	{3,5,18,10}	{}	2018-09-07 06:55:00.006
21587	{17,19,4,10}	{}	2018-09-07 11:10:00.006147
21588	{20,5,8,18}	{}	2018-09-07 11:25:00.006058
21589	{19,11,9,1}	{}	2018-09-07 11:40:00.006021
21590	{5,18,17,11}	{}	2018-09-07 11:55:00.006087
21611	{2,11,4,14}	{}	2018-09-07 17:10:00.00614
21612	{16,9,5,21}	{}	2018-09-07 17:25:00.00608
21613	{17,13,14,6}	{}	2018-09-07 17:40:00.006097
21614	{14,7,12,17}	{}	2018-09-07 17:55:00.005993
21615	{11,20,8,6}	{}	2018-09-07 18:10:00.006043
21616	{5,21,1,2}	{}	2018-09-07 18:25:00.006076
21617	{21,7,5,19}	{}	2018-09-07 18:40:00.006676
21618	{6,18,21,16}	{}	2018-09-07 18:55:00.005969
21635	{16,18,17,9}	{}	2018-09-07 23:10:00.006179
21636	{8,3,13,4}	{}	2018-09-07 23:25:00.006164
21637	{16,17,7,4}	{}	2018-09-07 23:40:00.00618
21638	{18,6,2,10}	{}	2018-09-07 23:55:00.006146
22350	{20,17,3,14}	{}	2018-09-15 09:55:00.006069
22351	{16,20,21,3}	{}	2018-09-15 10:10:00.005977
22352	{17,7,16,8}	{}	2018-09-15 10:25:00.00603
22353	{17,6,9,7}	{}	2018-09-15 10:40:00.006087
22354	{1,9,11,5}	{}	2018-09-15 10:55:00.006249
22363	{17,19,16,21}	{}	2018-09-15 13:10:00.006054
22364	{3,6,8,2}	{}	2018-09-15 13:25:00.006056
20908	{13,10,6,20}	\N	2018-08-31 09:40:00.004534
20963	{7,10,6,2}	{}	2018-08-31 23:10:00.010584
20964	{9,18,6,13}	{}	2018-08-31 23:25:00.006365
21159	{12,15,13,1}	{}	2018-09-03 00:10:00.006096
21160	{16,21,20,15}	{}	2018-09-03 00:25:00.005985
21161	{15,14,9,1}	{}	2018-09-03 00:40:00.006032
21162	{4,5,1,21}	{}	2018-09-03 00:55:00.006065
21187	{11,7,13,6}	{}	2018-09-03 07:10:00.005999
21188	{6,7,21,2}	{}	2018-09-03 07:25:00.006034
21189	{8,13,6,4}	{}	2018-09-03 07:40:00.005955
21190	{5,18,1,16}	{}	2018-09-03 07:55:00.005826
21207	{3,18,10,13}	{}	2018-09-03 12:10:00.005953
21208	{13,11,3,14}	{}	2018-09-03 12:25:00.006111
21209	{2,14,4,20}	{}	2018-09-03 12:40:00.006074
21210	{5,3,20,8}	{}	2018-09-03 12:55:00.006035
21595	{2,16,19,12}	{}	2018-09-07 13:10:00.006022
21596	{18,11,14,15}	{}	2018-09-07 13:25:00.006132
21597	{21,17,20,15}	{}	2018-09-07 13:40:00.006126
21598	{12,18,4,9}	{}	2018-09-07 13:55:00.006013
21599	{17,11,8,16}	{}	2018-09-07 14:10:00.006033
21600	{7,20,15,12}	{}	2018-09-07 14:25:00.005968
21601	{2,9,8,15}	{}	2018-09-07 14:40:00.006047
21602	{5,4,21,1}	{}	2018-09-07 14:55:00.006169
21603	{1,13,12,15}	{}	2018-09-07 15:10:00.006043
21604	{9,19,8,4}	{}	2018-09-07 15:25:00.006
21605	{16,8,21,7}	{}	2018-09-07 15:40:00.006017
21606	{19,18,20,5}	{}	2018-09-07 15:55:00.006005
21607	{12,16,11,1}	{}	2018-09-07 16:10:00.006111
21608	{6,1,11,20}	{}	2018-09-07 16:25:00.006022
21609	{12,15,21,3}	{}	2018-09-07 16:40:00.006095
21610	{10,13,16,21}	{}	2018-09-07 16:55:00.006211
21623	{1,14,10,13}	{}	2018-09-07 20:10:00.006031
21624	{15,14,7,18}	{}	2018-09-07 20:25:00.006088
21625	{15,2,20,5}	{}	2018-09-07 20:40:00.006008
21626	{9,14,21,2}	{}	2018-09-07 20:55:00.006047
21627	{18,11,2,6}	{}	2018-09-07 21:10:00.00537
21628	{5,13,17,2}	{}	2018-09-07 21:25:00.00609
21629	{4,1,17,16}	{}	2018-09-07 21:40:00.006072
21630	{15,20,11,2}	{}	2018-09-07 21:55:00.006045
21631	{16,15,7,4}	{}	2018-09-07 22:10:00.00596
21632	{9,10,8,21}	{}	2018-09-07 22:25:00.006038
21633	{14,17,1,9}	{}	2018-09-07 22:40:00.006129
21634	{6,17,3,9}	{}	2018-09-07 22:55:00.006228
21643	{19,4,15,6}	{}	2018-09-08 01:10:00.006131
21644	{13,17,15,3}	{}	2018-09-08 01:25:00.006081
21645	{20,12,11,6}	{}	2018-09-08 01:40:00.006079
21646	{17,2,6,7}	{}	2018-09-08 01:55:00.006036
21647	{20,16,14,4}	{}	2018-09-08 02:10:00.006001
21648	{8,13,9,7}	{}	2018-09-08 02:25:00.006161
21649	{5,2,14,1}	{}	2018-09-08 02:40:00.006006
21650	{21,1,12,8}	{}	2018-09-08 02:55:00.005816
22365	{1,11,18,10}	{}	2018-09-15 13:40:00.006039
22366	{6,16,15,7}	{}	2018-09-15 13:55:00.00568
22367	{2,10,3,7}	{}	2018-09-15 14:10:00.006016
22368	{18,9,2,8}	{}	2018-09-15 14:25:00.006113
22369	{15,21,4,10}	{}	2018-09-15 14:40:00.006023
22370	{9,6,14,8}	{}	2018-09-15 14:55:00.006067
22371	{12,4,21,2}	{}	2018-09-15 15:10:00.006006
22372	{1,18,19,20}	{}	2018-09-15 15:25:00.005966
22373	{17,14,7,1}	{}	2018-09-15 15:40:00.006014
22374	{11,10,21,8}	{}	2018-09-15 15:55:00.005884
22375	{10,1,7,19}	{}	2018-09-15 16:10:00.006031
22376	{5,6,17,12}	{}	2018-09-15 16:25:00.006126
22377	{1,19,11,12}	{}	2018-09-15 16:40:00.00609
22378	{20,9,16,14}	{}	2018-09-15 16:55:00.006193
22391	{14,20,8,6}	{}	2018-09-15 20:10:00.006025
22392	{9,18,16,13}	{}	2018-09-15 20:25:00.006027
22393	{6,18,4,9}	{}	2018-09-15 20:40:00.005993
22394	{9,1,20,14}	{}	2018-09-15 20:55:00.006904
22395	{15,18,19,2}	{}	2018-09-15 21:10:00.006015
22396	{5,1,16,7}	{}	2018-09-15 21:25:00.00601
22397	{5,12,17,9}	{}	2018-09-15 21:40:00.006018
22398	{10,17,5,8}	{}	2018-09-15 21:55:00.006157
22399	{3,12,20,15}	{}	2018-09-15 22:10:00.006093
22400	{8,19,4,2}	{}	2018-09-15 22:25:00.006019
22401	{5,2,13,11}	{}	2018-09-15 22:40:00.006111
22402	{13,18,16,9}	{}	2018-09-15 22:55:00.006116
20910	{8,16,4,12}	\N	2018-08-31 09:55:00.004394
20965	{8,6,21,7}	{}	2018-08-31 23:40:00.006063
21224	{4,19,9,8}	{}	2018-09-03 16:25:00.00605
21225	{8,19,20,1}	{}	2018-09-03 16:40:00.00606
21226	{2,11,3,21}	{}	2018-09-03 16:55:00.006073
21239	{7,18,8,4}	{}	2018-09-03 20:10:00.006039
21240	{9,19,10,2}	{}	2018-09-03 20:25:00.006006
21241	{8,15,3,19}	{}	2018-09-03 20:40:00.006005
21242	{13,15,20,3}	{}	2018-09-03 20:55:00.006059
21243	{19,9,2,10}	{}	2018-09-03 21:10:00.006124
21244	{19,16,14,12}	{}	2018-09-03 21:25:00.005998
21245	{1,7,3,4}	{}	2018-09-03 21:40:00.006033
21246	{13,7,6,20}	{}	2018-09-03 21:55:00.006161
21247	{6,2,8,18}	{}	2018-09-03 22:10:00.006052
21248	{13,8,11,1}	{}	2018-09-03 22:25:00.006098
21249	{21,13,15,14}	{}	2018-09-03 22:40:00.006046
21250	{2,9,19,10}	{}	2018-09-03 22:55:00.006005
21259	{19,18,2,3}	{}	2018-09-04 01:10:00.006045
21260	{21,1,17,9}	{}	2018-09-04 01:25:00.005957
21261	{17,11,13,19}	{}	2018-09-04 01:40:00.006041
21262	{11,19,15,12}	{}	2018-09-04 01:55:00.006031
21263	{7,20,1,18}	{}	2018-09-04 02:10:00.006043
21264	{8,3,14,20}	{}	2018-09-04 02:25:00.006028
21265	{8,13,18,17}	{}	2018-09-04 02:40:00.006097
21266	{19,9,1,16}	{}	2018-09-04 02:55:00.005961
21267	{17,15,7,9}	{}	2018-09-04 03:10:00.005994
21268	{16,18,5,21}	{}	2018-09-04 03:25:00.006109
21269	{12,3,9,14}	{}	2018-09-04 03:40:00.005938
21270	{9,19,7,10}	{}	2018-09-04 03:55:00.00609
21271	{20,7,21,6}	{}	2018-09-04 04:10:00.006046
21272	{21,6,17,9}	{}	2018-09-04 04:25:00.006169
21273	{3,9,10,7}	{}	2018-09-04 04:40:00.0061
21274	{7,1,5,10}	{}	2018-09-04 04:55:00.006029
21287	{16,6,19,7}	{}	2018-09-04 08:10:00.006018
21288	{8,21,5,18}	{}	2018-09-04 08:25:00.006082
21289	{12,2,5,17}	{}	2018-09-04 08:40:00.006014
21290	{14,18,19,11}	{}	2018-09-04 08:55:00.00596
21291	{8,19,13,5}	{}	2018-09-04 09:10:00.005995
21292	{14,11,6,16}	{}	2018-09-04 09:25:00.006114
21293	{8,20,4,5}	{}	2018-09-04 09:40:00.006077
21294	{19,2,15,4}	{}	2018-09-04 09:55:00.005114
21295	{1,15,7,12}	{}	2018-09-04 10:10:00.006175
21296	{12,11,9,15}	{}	2018-09-04 10:25:00.006074
21297	{13,2,5,17}	{}	2018-09-04 10:40:00.006243
21651	{20,19,3,5}	{}	2018-09-08 03:10:00.006081
21652	{14,3,16,15}	{}	2018-09-08 03:25:00.00605
21653	{6,12,11,17}	{}	2018-09-08 03:40:00.006095
21654	{1,5,20,6}	{}	2018-09-08 03:55:00.006022
21655	{17,3,15,18}	{}	2018-09-08 04:10:00.006096
21656	{6,17,13,16}	{}	2018-09-08 04:25:00.00663
21657	{6,14,18,15}	{}	2018-09-08 04:40:00.006038
21658	{17,6,4,18}	{}	2018-09-08 04:55:00.006154
21671	{17,1,2,4}	{}	2018-09-08 08:10:00.006113
21672	{4,13,19,1}	{}	2018-09-08 08:25:00.006142
21673	{10,6,8,15}	{}	2018-09-08 08:40:00.005998
21674	{9,10,17,21}	{}	2018-09-08 08:55:00.006064
21675	{10,5,2,6}	{}	2018-09-08 09:10:00.006108
21676	{12,17,18,19}	{}	2018-09-08 09:25:00.006098
21677	{19,1,21,18}	{}	2018-09-08 09:40:00.006112
21678	{10,3,6,5}	{}	2018-09-08 09:55:00.00607
21679	{13,8,16,9}	{}	2018-09-08 10:10:00.00604
21680	{8,6,21,9}	{}	2018-09-08 10:25:00.006095
21681	{1,13,3,19}	{}	2018-09-08 10:40:00.006077
21682	{1,9,7,18}	{}	2018-09-08 10:55:00.006028
21691	{20,4,18,12}	{}	2018-09-08 13:10:00.006185
21692	{11,2,18,20}	{}	2018-09-08 13:25:00.006065
21693	{16,5,20,7}	{}	2018-09-08 13:40:00.006093
21694	{18,19,21,8}	{}	2018-09-08 13:55:00.006055
21695	{4,7,1,10}	{}	2018-09-08 14:10:00.006055
21696	{17,6,2,16}	{}	2018-09-08 14:25:00.006045
21697	{9,6,13,3}	{}	2018-09-08 14:40:00.006042
21698	{12,1,6,15}	{}	2018-09-08 14:55:00.005979
21699	{12,15,19,9}	{}	2018-09-08 15:10:00.006094
21700	{7,9,19,3}	{}	2018-09-08 15:25:00.00606
21701	{21,12,3,13}	{}	2018-09-08 15:40:00.006114
21702	{2,8,15,19}	{}	2018-09-08 15:55:00.00602
21703	{15,17,4,16}	{}	2018-09-08 16:10:00.00609
20918	{14,13,9,3}	{}	2018-08-31 11:10:00.004813
20919	{11,10,4,19}	{}	2018-08-31 11:25:00.00465
20920	{18,5,7,6}	{}	2018-08-31 11:40:00.004642
20921	{5,15,7,9}	{}	2018-08-31 11:55:00.00462
20966	{9,17,5,21}	{}	2018-08-31 23:55:00.006881
21227	{21,20,18,10}	{}	2018-09-03 17:10:00.00604
21228	{1,9,18,21}	{}	2018-09-03 17:25:00.006186
21229	{6,3,19,7}	{}	2018-09-03 17:40:00.006061
21230	{20,21,4,5}	{}	2018-09-03 17:55:00.00595
21231	{17,16,8,14}	{}	2018-09-03 18:10:00.006142
21232	{18,11,10,9}	{}	2018-09-03 18:25:00.006119
21233	{1,9,11,17}	{}	2018-09-03 18:40:00.006076
21234	{21,16,17,8}	{}	2018-09-03 18:55:00.00601
21251	{21,15,4,17}	{}	2018-09-03 23:10:00.006228
21252	{7,3,21,5}	{}	2018-09-03 23:25:00.006298
21253	{10,13,2,15}	{}	2018-09-03 23:40:00.006209
21254	{13,8,3,6}	{}	2018-09-03 23:55:00.006211
21275	{10,16,12,11}	{}	2018-09-04 05:10:00.005974
21276	{19,13,6,8}	{}	2018-09-04 05:25:00.006118
21277	{17,7,13,19}	{}	2018-09-04 05:40:00.006124
21278	{11,4,21,12}	{}	2018-09-04 05:55:00.005991
21279	{12,6,2,5}	{}	2018-09-04 06:10:00.005991
21280	{2,18,7,9}	{}	2018-09-04 06:25:00.006032
21281	{10,8,6,9}	{}	2018-09-04 06:40:00.006073
21282	{8,5,6,4}	{}	2018-09-04 06:55:00.005936
21299	{15,14,20,21}	{}	2018-09-04 11:10:00.006008
21300	{6,3,12,16}	{}	2018-09-04 11:25:00.005942
21659	{12,9,18,15}	{}	2018-09-08 05:10:00.005979
21660	{5,21,12,15}	{}	2018-09-08 05:25:00.006051
21661	{16,14,10,15}	{}	2018-09-08 05:40:00.006087
21662	{8,3,17,11}	{}	2018-09-08 05:55:00.006138
21663	{13,17,6,10}	{}	2018-09-08 06:10:00.005923
21664	{12,1,13,15}	{}	2018-09-08 06:25:00.006786
21665	{15,16,4,5}	{}	2018-09-08 06:40:00.005857
21666	{7,8,5,18}	{}	2018-09-08 06:55:00.006058
21683	{11,21,17,19}	{}	2018-09-08 11:10:00.00615
21684	{7,4,21,18}	{}	2018-09-08 11:25:00.006106
21685	{3,20,15,12}	{}	2018-09-08 11:40:00.006097
21686	{8,10,1,13}	{}	2018-09-08 11:55:00.006084
21707	{10,6,17,2}	{}	2018-09-08 17:10:00.006176
21708	{20,16,1,13}	{}	2018-09-08 17:25:00.00605
21709	{15,10,21,9}	{}	2018-09-08 17:40:00.006055
21710	{8,18,1,15}	{}	2018-09-08 17:55:00.006651
21711	{11,8,13,6}	{}	2018-09-08 18:10:00.006078
21712	{18,4,1,11}	{}	2018-09-08 18:25:00.006088
21713	{10,16,9,13}	{}	2018-09-08 18:40:00.00608
21714	{12,10,3,16}	{}	2018-09-08 18:55:00.006083
21719	{6,4,12,19}	{}	2018-09-08 20:10:00.006126
21731	{18,3,17,11}	{}	2018-09-08 23:10:00.006345
21732	{5,16,18,6}	{}	2018-09-08 23:25:00.006275
21733	{21,1,17,14}	{}	2018-09-08 23:40:00.006223
21734	{12,7,2,11}	{}	2018-09-08 23:55:00.00621
22405	{20,9,10,17}	{}	2018-09-15 23:40:00.006149
22406	{2,9,21,3}	{}	2018-09-15 23:55:00.006164
22411	{16,4,1,2}	{}	2018-09-16 01:10:00.006092
22415	{12,18,20,4}	{}	2018-09-16 02:10:00.005924
22427	{4,1,15,8}	{}	2018-09-16 05:10:00.006148
22428	{12,2,19,7}	{}	2018-09-16 05:25:00.006099
22429	{15,16,2,5}	{}	2018-09-16 05:40:00.006011
22430	{8,21,7,14}	{}	2018-09-16 05:55:00.006048
22431	{12,13,10,7}	{}	2018-09-16 06:10:00.006065
22432	{18,13,2,7}	{}	2018-09-16 06:25:00.006086
22433	{1,19,4,3}	{}	2018-09-16 06:40:00.006735
22434	{15,18,9,7}	{}	2018-09-16 06:55:00.00597
22871	{15,10,9,5}	{}	2018-09-20 20:10:00.006042
22872	{6,13,3,10}	{}	2018-09-20 20:25:00.006048
22873	{21,18,16,17}	{}	2018-09-20 20:40:00.00614
22874	{10,7,11,13}	{}	2018-09-20 20:55:00.005979
22875	{4,14,9,20}	{}	2018-09-20 21:10:00.006037
22876	{13,9,8,11}	{}	2018-09-20 21:25:00.006108
22877	{3,20,10,21}	{}	2018-09-20 21:40:00.006114
22878	{4,7,5,11}	{}	2018-09-20 21:55:00.006655
22879	{16,11,2,20}	{}	2018-09-20 22:10:00.006125
22880	{17,9,21,3}	{}	2018-09-20 22:25:00.006019
22881	{16,18,2,8}	{}	2018-09-20 22:40:00.006008
22882	{4,1,18,6}	{}	2018-09-20 22:55:00.006158
23083	{8,2,3,7}	{}	2018-09-23 01:10:00.00609
20922	{16,13,12,10}	{}	2018-08-31 12:10:00.004888
20923	{1,15,18,12}	{}	2018-08-31 12:25:00.004683
20924	{12,6,20,4}	{}	2018-08-31 12:40:00.004812
20925	{21,3,8,16}	{}	2018-08-31 12:55:00.0047
20967	{4,6,14,11}	{}	2018-09-01 00:10:00.005522
21235	{5,4,13,14}	{}	2018-09-03 19:10:00.005996
21236	{11,6,14,16}	{}	2018-09-03 19:25:00.006025
21237	{5,11,4,10}	{}	2018-09-03 19:40:00.005924
21238	{6,18,5,4}	{}	2018-09-03 19:55:00.006029
21255	{2,11,1,18}	{}	2018-09-04 00:10:00.005975
21256	{15,14,4,17}	{}	2018-09-04 00:25:00.00605
21257	{11,5,14,20}	{}	2018-09-04 00:40:00.006048
21258	{15,10,18,17}	{}	2018-09-04 00:55:00.005992
21283	{18,8,15,14}	{}	2018-09-04 07:10:00.006117
21284	{11,1,13,9}	{}	2018-09-04 07:25:00.005955
21285	{18,9,19,7}	{}	2018-09-04 07:40:00.006039
21286	{20,12,11,14}	{}	2018-09-04 07:55:00.006041
21667	{5,6,9,3}	{}	2018-09-08 07:10:00.005885
21668	{20,19,11,1}	{}	2018-09-08 07:25:00.006054
21669	{10,4,13,15}	{}	2018-09-08 07:40:00.006051
21670	{4,17,18,21}	{}	2018-09-08 07:55:00.005949
21687	{2,11,13,19}	{}	2018-09-08 12:10:00.006139
21688	{5,9,10,14}	{}	2018-09-08 12:25:00.006017
21689	{5,11,18,12}	{}	2018-09-08 12:40:00.006116
21690	{14,13,5,17}	{}	2018-09-08 12:55:00.00603
21704	{18,15,4,11}	{}	2018-09-08 16:25:00.006127
21715	{15,7,18,1}	{}	2018-09-08 19:10:00.006062
21716	{10,18,3,6}	{}	2018-09-08 19:25:00.006077
21717	{8,13,15,11}	{}	2018-09-08 19:40:00.005987
21718	{1,17,6,16}	{}	2018-09-08 19:55:00.00669
21720	{16,2,14,8}	{}	2018-09-08 20:25:00.006113
21735	{2,9,7,20}	{}	2018-09-09 00:10:00.006001
21736	{10,6,17,5}	{}	2018-09-09 00:25:00.005995
21737	{20,16,11,8}	{}	2018-09-09 00:40:00.006014
21738	{9,17,7,15}	{}	2018-09-09 00:55:00.006007
22413	{2,5,7,1}	{}	2018-09-16 01:40:00.005925
22884	{9,7,10,5}	{}	2018-09-20 23:25:00.006147
22885	{14,18,5,13}	{}	2018-09-20 23:40:00.006188
22886	{7,19,10,2}	{}	2018-09-20 23:55:00.006238
22935	{12,19,11,3}	{}	2018-09-21 12:10:00.006103
22936	{14,16,9,8}	{}	2018-09-21 12:25:00.006032
22937	{16,3,5,7}	{}	2018-09-21 12:40:00.00608
22938	{10,14,4,2}	{}	2018-09-21 12:55:00.006146
22963	{20,6,18,5}	{}	2018-09-21 19:10:00.006099
22964	{15,12,9,8}	{}	2018-09-21 19:25:00.006184
22965	{21,10,13,7}	{}	2018-09-21 19:40:00.006024
22966	{6,2,15,12}	{}	2018-09-21 19:55:00.006058
22979	{3,20,2,18}	{}	2018-09-21 23:10:00.006207
22980	{1,14,12,10}	{}	2018-09-21 23:25:00.006265
22981	{2,4,12,9}	{}	2018-09-21 23:40:00.006291
22982	{11,18,15,16}	{}	2018-09-21 23:55:00.006275
23031	{5,9,17,20}	{}	2018-09-22 12:10:00.006156
23032	{5,7,6,9}	{}	2018-09-22 12:25:00.00608
23033	{1,15,6,7}	{}	2018-09-22 12:40:00.006139
23034	{15,10,2,16}	{}	2018-09-22 12:55:00.006112
23087	{2,6,19,10}	{}	2018-09-23 02:10:00.006008
23088	{13,7,1,11}	{}	2018-09-23 02:25:00.0061
23089	{7,18,10,4}	{}	2018-09-23 02:40:00.006067
23090	{21,7,5,17}	{}	2018-09-23 02:55:00.006059
23091	{20,3,6,1}	{}	2018-09-23 03:10:00.006156
23092	{1,17,21,12}	{}	2018-09-23 03:25:00.006093
23093	{18,5,12,4}	{}	2018-09-23 03:40:00.006093
23094	{16,14,7,5}	{}	2018-09-23 03:55:00.005765
23095	{21,20,9,5}	{}	2018-09-23 04:10:00.005997
23096	{4,9,1,12}	{}	2018-09-23 04:25:00.006054
23097	{14,2,1,7}	{}	2018-09-23 04:40:00.006103
23098	{12,19,6,8}	{}	2018-09-23 04:55:00.006147
23102	{17,8,20,19}	{}	2018-09-23 05:55:00.006031
23111	{7,15,5,11}	{}	2018-09-23 08:10:00.006026
23112	{13,17,14,9}	{}	2018-09-23 08:25:00.006035
23113	{7,10,11,18}	{}	2018-09-23 08:40:00.006043
23114	{20,2,3,8}	{}	2018-09-23 08:55:00.006051
23115	{21,7,11,1}	{}	2018-09-23 09:10:00.006085
23116	{13,6,4,1}	{}	2018-09-23 09:25:00.006086
23117	{8,1,20,4}	{}	2018-09-23 09:40:00.006081
23118	{14,13,1,19}	{}	2018-09-23 09:55:00.006171
23119	{7,19,1,13}	{}	2018-09-23 10:10:00.005665
20937	{17,14,13,11}	{}	2018-08-31 15:55:00.006689
20968	{5,15,14,19}	{}	2018-09-01 00:25:00.00607
21298	{21,18,12,8}	{}	2018-09-04 10:55:00.006088
21705	{8,11,21,5}	{}	2018-09-08 16:40:00.006053
22416	{19,9,21,6}	{}	2018-09-16 02:25:00.006004
22417	{21,18,2,13}	{}	2018-09-16 02:40:00.006031
22418	{5,11,4,13}	{}	2018-09-16 02:55:00.006036
22419	{9,7,1,16}	{}	2018-09-16 03:10:00.006086
22420	{9,21,20,12}	{}	2018-09-16 03:25:00.006158
22421	{6,8,9,18}	{}	2018-09-16 03:40:00.006026
22422	{10,11,1,13}	{}	2018-09-16 03:55:00.005978
22423	{17,12,15,9}	{}	2018-09-16 04:10:00.005991
22424	{17,2,13,18}	{}	2018-09-16 04:25:00.006111
22425	{3,18,20,11}	{}	2018-09-16 04:40:00.006081
22426	{1,15,10,14}	{}	2018-09-16 04:55:00.00617
22439	{15,20,21,5}	{}	2018-09-16 08:10:00.006132
22440	{3,2,7,16}	{}	2018-09-16 08:25:00.006068
22441	{19,20,7,2}	{}	2018-09-16 08:40:00.006066
22442	{10,14,11,15}	{}	2018-09-16 08:55:00.006056
22443	{10,9,21,19}	{}	2018-09-16 09:10:00.006012
22444	{11,10,16,18}	{}	2018-09-16 09:25:00.006066
22445	{8,9,17,5}	{}	2018-09-16 09:40:00.006124
22446	{3,2,19,17}	{}	2018-09-16 09:55:00.005928
22447	{20,2,16,11}	{}	2018-09-16 10:10:00.006135
22448	{2,9,4,20}	{}	2018-09-16 10:25:00.006102
22887	{1,4,13,16}	{}	2018-09-21 00:10:00.006066
22888	{10,13,20,7}	{}	2018-09-21 00:25:00.006083
22889	{9,12,18,6}	{}	2018-09-21 00:40:00.006098
22890	{11,19,8,14}	{}	2018-09-21 00:55:00.006038
22915	{5,6,11,13}	{}	2018-09-21 07:10:00.006144
22916	{14,21,10,13}	{}	2018-09-21 07:25:00.006039
22917	{12,17,2,3}	{}	2018-09-21 07:40:00.006045
22918	{18,10,4,20}	{}	2018-09-21 07:55:00.005996
22931	{12,6,2,7}	{}	2018-09-21 11:10:00.006028
22932	{21,18,10,13}	{}	2018-09-21 11:25:00.005973
22933	{16,10,9,7}	{}	2018-09-21 11:40:00.006008
22934	{5,11,18,14}	{}	2018-09-21 11:55:00.005954
22983	{18,3,13,5}	{}	2018-09-22 00:10:00.006104
22984	{14,3,4,10}	{}	2018-09-22 00:25:00.006135
22985	{12,15,16,2}	{}	2018-09-22 00:40:00.006118
22986	{13,21,5,8}	{}	2018-09-22 00:55:00.006007
23005	{18,15,21,5}	{}	2018-09-22 05:40:00.00606
23011	{12,11,19,1}	{}	2018-09-22 07:10:00.006074
23012	{7,9,15,11}	{}	2018-09-22 07:25:00.005995
23013	{4,3,14,6}	{}	2018-09-22 07:40:00.006107
23014	{14,13,16,7}	{}	2018-09-22 07:55:00.006062
23027	{13,9,1,7}	{}	2018-09-22 11:10:00.00614
23028	{6,13,7,5}	{}	2018-09-22 11:25:00.006011
23029	{19,1,21,6}	{}	2018-09-22 11:40:00.006054
23030	{20,14,1,18}	{}	2018-09-22 11:55:00.006089
23103	{7,18,21,6}	{}	2018-09-23 06:10:00.005966
23104	{10,21,14,2}	{}	2018-09-23 06:25:00.005976
23105	{20,11,2,16}	{}	2018-09-23 06:40:00.006116
23106	{10,2,3,9}	{}	2018-09-23 06:55:00.006125
23122	{13,10,2,3}	{}	2018-09-23 10:55:00.00622
23131	{7,5,16,17}	{}	2018-09-23 13:10:00.006124
23132	{6,20,15,1}	{}	2018-09-23 13:25:00.006158
23133	{18,1,17,6}	{}	2018-09-23 13:40:00.006157
23134	{4,5,1,13}	{}	2018-09-23 13:55:00.006073
23135	{11,6,13,9}	{}	2018-09-23 14:10:00.006065
23136	{16,18,13,11}	{}	2018-09-23 14:25:00.006075
23137	{21,17,5,13}	{}	2018-09-23 14:40:00.006078
23138	{1,7,20,11}	{}	2018-09-23 14:55:00.006122
23139	{12,18,11,6}	{}	2018-09-23 15:10:00.006138
23140	{10,6,1,19}	{}	2018-09-23 15:25:00.00605
23141	{18,16,14,9}	{}	2018-09-23 15:40:00.006186
23142	{8,21,11,9}	{}	2018-09-23 15:55:00.006101
23143	{15,2,3,8}	{}	2018-09-23 16:10:00.006148
23144	{11,7,3,17}	{}	2018-09-23 16:25:00.006121
23145	{14,16,18,12}	{}	2018-09-23 16:40:00.006095
23146	{11,9,14,15}	{}	2018-09-23 16:55:00.00621
23147	{16,13,5,18}	{}	2018-09-23 17:10:00.006051
23159	{10,14,15,6}	{}	2018-09-23 20:10:00.006194
23160	{17,20,10,12}	{}	2018-09-23 20:25:00.006091
23161	{20,21,14,10}	{}	2018-09-23 20:40:00.006029
23162	{2,9,13,10}	{}	2018-09-23 20:55:00.006019
23163	{11,1,3,17}	{}	2018-09-23 21:10:00.006114
20938	{11,18,10,12}	{}	2018-08-31 16:10:00.006939
20969	{1,4,5,13}	{}	2018-09-01 00:40:00.012024
21301	{20,11,7,12}	{}	2018-09-04 11:40:00.006019
21302	{3,11,20,4}	{}	2018-09-04 11:55:00.006068
21323	{11,18,14,5}	{}	2018-09-04 17:10:00.00617
21324	{20,17,11,9}	{}	2018-09-04 17:25:00.006091
21325	{16,13,6,2}	{}	2018-09-04 17:40:00.006004
21326	{17,1,14,6}	{}	2018-09-04 17:55:00.00611
21327	{7,19,17,12}	{}	2018-09-04 18:10:00.005945
21328	{20,6,8,17}	{}	2018-09-04 18:25:00.00603
21329	{15,6,1,18}	{}	2018-09-04 18:40:00.00605
21330	{20,14,17,18}	{}	2018-09-04 18:55:00.006044
21335	{1,15,4,9}	{}	2018-09-04 20:10:00.006122
21336	{7,12,18,10}	{}	2018-09-04 20:25:00.006003
21337	{7,1,20,11}	{}	2018-09-04 20:40:00.006088
21338	{17,20,18,21}	{}	2018-09-04 20:55:00.006068
21339	{3,15,20,9}	{}	2018-09-04 21:10:00.005982
21340	{19,7,18,20}	{}	2018-09-04 21:25:00.00589
21341	{10,1,2,14}	{}	2018-09-04 21:40:00.006012
21342	{2,12,18,20}	{}	2018-09-04 21:55:00.006031
21343	{13,3,14,4}	{}	2018-09-04 22:10:00.006098
21344	{8,10,16,19}	{}	2018-09-04 22:25:00.005998
21345	{14,8,7,9}	{}	2018-09-04 22:40:00.006024
21346	{7,14,1,11}	{}	2018-09-04 22:55:00.006103
21379	{16,5,2,12}	{}	2018-09-05 07:10:00.006046
21380	{3,10,1,15}	{}	2018-09-05 07:25:00.006114
21381	{20,8,18,21}	{}	2018-09-05 07:40:00.006063
21706	{14,18,20,21}	{}	2018-09-08 16:55:00.006185
22449	{9,6,5,2}	{}	2018-09-16 10:40:00.005669
22450	{13,15,21,8}	{}	2018-09-16 10:55:00.006159
22459	{10,6,19,4}	{}	2018-09-16 13:10:00.006034
22460	{5,19,10,13}	{}	2018-09-16 13:25:00.006111
22461	{18,10,21,11}	{}	2018-09-16 13:40:00.006014
22462	{4,13,17,9}	{}	2018-09-16 13:55:00.005976
22463	{21,17,14,1}	{}	2018-09-16 14:10:00.006079
22464	{16,3,6,13}	{}	2018-09-16 14:25:00.006663
22465	{20,3,11,13}	{}	2018-09-16 14:40:00.006068
22466	{17,19,9,13}	{}	2018-09-16 14:55:00.006001
22467	{1,5,2,11}	{}	2018-09-16 15:10:00.005975
22468	{10,9,15,1}	{}	2018-09-16 15:25:00.006134
22469	{17,10,3,12}	{}	2018-09-16 15:40:00.006006
22470	{9,6,7,16}	{}	2018-09-16 15:55:00.005955
22471	{13,15,17,4}	{}	2018-09-16 16:10:00.006107
22472	{9,19,6,5}	{}	2018-09-16 16:25:00.006072
22473	{3,15,9,10}	{}	2018-09-16 16:40:00.006157
22474	{10,3,11,2}	{}	2018-09-16 16:55:00.006137
22487	{17,11,4,1}	{}	2018-09-16 20:10:00.005969
22488	{1,10,20,9}	{}	2018-09-16 20:25:00.00597
22489	{11,5,6,20}	{}	2018-09-16 20:40:00.006112
22490	{12,4,10,7}	{}	2018-09-16 20:55:00.005981
22491	{11,12,5,8}	{}	2018-09-16 21:10:00.005841
22492	{4,12,3,1}	{}	2018-09-16 21:25:00.006102
22493	{14,19,17,10}	{}	2018-09-16 21:40:00.006039
22494	{19,14,4,15}	{}	2018-09-16 21:55:00.006106
22495	{20,17,14,4}	{}	2018-09-16 22:10:00.006104
22496	{6,12,11,13}	{}	2018-09-16 22:25:00.006071
22497	{2,13,21,7}	{}	2018-09-16 22:40:00.006064
22498	{7,17,20,3}	{}	2018-09-16 22:55:00.006136
22507	{7,1,6,14}	{}	2018-09-17 01:10:00.005385
22508	{19,2,7,17}	{}	2018-09-17 01:25:00.006073
22509	{15,8,16,11}	{}	2018-09-17 01:40:00.006009
22510	{14,7,10,21}	{}	2018-09-17 01:55:00.005901
22511	{1,13,3,16}	{}	2018-09-17 02:10:00.006049
22512	{14,19,9,13}	{}	2018-09-17 02:25:00.006124
22513	{12,15,10,20}	{}	2018-09-17 02:40:00.006017
22514	{11,5,13,14}	{}	2018-09-17 02:55:00.006049
22515	{2,11,7,16}	{}	2018-09-17 03:10:00.006126
22516	{12,2,19,9}	{}	2018-09-17 03:25:00.00611
22517	{15,19,14,9}	{}	2018-09-17 03:40:00.005869
22518	{14,12,19,2}	{}	2018-09-17 03:55:00.005939
22519	{11,5,18,16}	{}	2018-09-17 04:10:00.00604
22520	{10,15,9,2}	{}	2018-09-17 04:25:00.006053
22521	{2,12,18,11}	{}	2018-09-17 04:40:00.005997
22522	{13,16,5,9}	{}	2018-09-17 04:55:00.006135
22535	{1,5,9,4}	{}	2018-09-17 08:10:00.006068
22536	{16,1,2,10}	{}	2018-09-17 08:25:00.005984
22537	{19,4,10,2}	{}	2018-09-17 08:40:00.006039
20939	{16,20,13,5}	{}	2018-08-31 16:25:00.006554
20970	{8,9,11,14}	{}	2018-09-01 00:55:00.010304
20971	{2,6,20,17}	{}	2018-09-01 01:10:00.006397
20972	{12,5,14,15}	{}	2018-09-01 01:25:00.006032
20973	{3,1,7,16}	{}	2018-09-01 01:40:00.006128
21303	{13,7,2,15}	{}	2018-09-04 12:10:00.006024
21304	{10,19,9,14}	{}	2018-09-04 12:25:00.005974
21305	{13,10,1,5}	{}	2018-09-04 12:40:00.005975
21306	{20,5,8,15}	{}	2018-09-04 12:55:00.006719
21721	{1,9,8,18}	{}	2018-09-08 20:40:00.006036
21722	{8,13,5,21}	{}	2018-09-08 20:55:00.006053
21723	{12,11,9,20}	{}	2018-09-08 21:10:00.006094
21724	{3,12,18,6}	{}	2018-09-08 21:25:00.005985
21725	{7,9,21,6}	{}	2018-09-08 21:40:00.006065
21726	{2,12,20,1}	{}	2018-09-08 21:55:00.006653
21727	{8,12,9,3}	{}	2018-09-08 22:10:00.006121
21728	{14,10,6,16}	{}	2018-09-08 22:25:00.006046
21729	{16,6,10,7}	{}	2018-09-08 22:40:00.006008
21730	{15,8,1,11}	{}	2018-09-08 22:55:00.006171
21739	{4,3,11,10}	{}	2018-09-09 01:10:00.005979
21740	{18,19,6,21}	{}	2018-09-09 01:25:00.006042
21741	{13,1,9,11}	{}	2018-09-09 01:40:00.006057
21742	{18,12,7,16}	{}	2018-09-09 01:55:00.006081
21743	{15,7,18,16}	{}	2018-09-09 02:10:00.00596
21744	{17,9,13,3}	{}	2018-09-09 02:25:00.006073
21745	{18,2,17,9}	{}	2018-09-09 02:40:00.006099
21746	{18,19,9,11}	{}	2018-09-09 02:55:00.006136
21747	{5,13,20,9}	{}	2018-09-09 03:10:00.005942
21748	{2,21,1,3}	{}	2018-09-09 03:25:00.006071
22451	{14,8,11,10}	{}	2018-09-16 11:10:00.00619
22452	{8,5,10,7}	{}	2018-09-16 11:25:00.006125
22453	{4,19,7,6}	{}	2018-09-16 11:40:00.006079
22454	{5,2,10,4}	{}	2018-09-16 11:55:00.006098
22475	{11,14,15,16}	{}	2018-09-16 17:10:00.006073
22476	{9,10,17,15}	{}	2018-09-16 17:25:00.005982
22477	{3,14,13,12}	{}	2018-09-16 17:40:00.0061
22478	{13,9,14,21}	{}	2018-09-16 17:55:00.006033
22479	{17,1,14,8}	{}	2018-09-16 18:10:00.006099
22480	{8,15,7,17}	{}	2018-09-16 18:25:00.006728
22481	{9,3,20,13}	{}	2018-09-16 18:40:00.006087
22482	{13,3,11,6}	{}	2018-09-16 18:55:00.006067
22499	{10,7,18,3}	{}	2018-09-16 23:10:00.006256
22500	{14,15,13,18}	{}	2018-09-16 23:25:00.006115
22501	{14,5,4,10}	{}	2018-09-16 23:40:00.006168
22502	{4,10,17,1}	{}	2018-09-16 23:55:00.006179
22523	{6,4,14,7}	{}	2018-09-17 05:10:00.006181
22524	{5,2,18,13}	{}	2018-09-17 05:25:00.006047
22525	{21,4,17,10}	{}	2018-09-17 05:40:00.006029
22526	{4,19,7,5}	{}	2018-09-17 05:55:00.006757
22527	{16,12,8,11}	{}	2018-09-17 06:10:00.006006
22528	{6,21,2,16}	{}	2018-09-17 06:25:00.006042
22529	{6,14,3,13}	{}	2018-09-17 06:40:00.006041
22530	{4,14,5,12}	{}	2018-09-17 06:55:00.006009
22547	{18,19,16,15}	{}	2018-09-17 11:10:00.006107
22548	{20,17,9,2}	{}	2018-09-17 11:25:00.006025
22549	{18,2,15,9}	{}	2018-09-17 11:40:00.006001
22550	{9,3,13,7}	{}	2018-09-17 11:55:00.006678
22571	{9,19,16,14}	{}	2018-09-17 17:10:00.006121
22572	{21,2,1,17}	{}	2018-09-17 17:25:00.006026
22573	{10,8,16,12}	{}	2018-09-17 17:40:00.006085
22574	{6,20,8,17}	{}	2018-09-17 17:55:00.006072
22575	{3,11,9,14}	{}	2018-09-17 18:10:00.006142
22576	{7,21,12,18}	{}	2018-09-17 18:25:00.005853
22577	{3,2,13,20}	{}	2018-09-17 18:40:00.006142
22578	{11,21,3,13}	{}	2018-09-17 18:55:00.006112
22891	{4,19,6,7}	{}	2018-09-21 01:10:00.00592
22892	{3,12,8,17}	{}	2018-09-21 01:25:00.006099
22893	{7,8,9,21}	{}	2018-09-21 01:40:00.006138
22894	{15,5,13,20}	{}	2018-09-21 01:55:00.006122
22895	{12,6,9,7}	{}	2018-09-21 02:10:00.005938
22896	{12,7,1,5}	{}	2018-09-21 02:25:00.006102
22897	{7,8,3,19}	{}	2018-09-21 02:40:00.006143
22898	{6,12,9,1}	{}	2018-09-21 02:55:00.006139
22899	{4,1,18,14}	{}	2018-09-21 03:10:00.006052
22900	{13,3,11,9}	{}	2018-09-21 03:25:00.006099
22901	{2,5,19,14}	{}	2018-09-21 03:40:00.006021
22902	{9,14,13,17}	{}	2018-09-21 03:55:00.006062
20940	{7,9,3,13}	{}	2018-08-31 16:40:00.01048
20974	{14,5,1,20}	{}	2018-09-01 01:55:00.010652
21307	{3,2,10,16}	{}	2018-09-04 13:10:00.006086
21308	{13,18,7,16}	{}	2018-09-04 13:25:00.00599
21309	{2,7,18,17}	{}	2018-09-04 13:40:00.006035
21310	{11,10,2,5}	{}	2018-09-04 13:55:00.005906
21311	{4,17,12,7}	{}	2018-09-04 14:10:00.006078
21312	{3,20,11,10}	{}	2018-09-04 14:25:00.005973
21313	{18,4,1,10}	{}	2018-09-04 14:40:00.00592
21314	{21,14,5,17}	{}	2018-09-04 14:55:00.006
21315	{18,10,6,3}	{}	2018-09-04 15:10:00.005938
21316	{16,3,1,11}	{}	2018-09-04 15:25:00.005978
21317	{3,18,1,4}	{}	2018-09-04 15:40:00.006068
21318	{6,19,21,16}	{}	2018-09-04 15:55:00.005953
21319	{19,7,1,11}	{}	2018-09-04 16:10:00.006096
21320	{16,17,6,18}	{}	2018-09-04 16:25:00.006116
21321	{3,12,5,18}	{}	2018-09-04 16:40:00.006015
21322	{19,17,3,15}	{}	2018-09-04 16:55:00.006225
21749	{10,5,8,16}	{}	2018-09-09 03:40:00.005871
21750	{17,15,7,13}	{}	2018-09-09 03:55:00.005956
21751	{1,14,7,12}	{}	2018-09-09 04:10:00.00609
21752	{7,12,4,2}	{}	2018-09-09 04:25:00.006142
21753	{15,16,11,1}	{}	2018-09-09 04:40:00.006038
21754	{8,19,18,15}	{}	2018-09-09 04:55:00.006135
21767	{1,9,3,17}	{}	2018-09-09 08:10:00.006134
21768	{8,4,3,2}	{}	2018-09-09 08:25:00.006035
21769	{21,7,17,18}	{}	2018-09-09 08:40:00.005964
21770	{2,20,7,18}	{}	2018-09-09 08:55:00.005951
21771	{13,17,3,11}	{}	2018-09-09 09:10:00.006064
21772	{6,1,4,14}	{}	2018-09-09 09:25:00.006091
21773	{9,4,17,1}	{}	2018-09-09 09:40:00.006691
21774	{20,8,4,16}	{}	2018-09-09 09:55:00.006089
21775	{21,18,7,17}	{}	2018-09-09 10:10:00.006045
21776	{1,18,10,14}	{}	2018-09-09 10:25:00.006035
21777	{8,7,14,17}	{}	2018-09-09 10:40:00.005971
21778	{11,8,19,15}	{}	2018-09-09 10:55:00.006186
21787	{16,5,8,9}	{}	2018-09-09 13:10:00.006062
21788	{9,6,11,4}	{}	2018-09-09 13:25:00.006047
21789	{10,17,18,20}	{}	2018-09-09 13:40:00.006019
21790	{15,21,17,14}	{}	2018-09-09 13:55:00.005938
21791	{8,20,10,21}	{}	2018-09-09 14:10:00.006069
21792	{19,15,18,13}	{}	2018-09-09 14:25:00.005882
21793	{11,18,16,17}	{}	2018-09-09 14:40:00.00611
21794	{4,20,19,6}	{}	2018-09-09 14:55:00.005962
21795	{10,19,11,6}	{}	2018-09-09 15:10:00.006069
21796	{7,1,21,16}	{}	2018-09-09 15:25:00.006091
21797	{14,17,9,4}	{}	2018-09-09 15:40:00.005998
21798	{13,18,16,6}	{}	2018-09-09 15:55:00.006137
21799	{16,13,6,3}	{}	2018-09-09 16:10:00.006038
21800	{1,19,16,6}	{}	2018-09-09 16:25:00.006055
21801	{1,17,20,12}	{}	2018-09-09 16:40:00.006008
21802	{15,14,2,13}	{}	2018-09-09 16:55:00.006117
21815	{3,7,1,11}	{}	2018-09-09 20:10:00.006044
21816	{8,1,18,3}	{}	2018-09-09 20:25:00.006046
21817	{15,19,9,14}	{}	2018-09-09 20:40:00.006056
21818	{2,15,18,7}	{}	2018-09-09 20:55:00.006027
21819	{2,14,20,1}	{}	2018-09-09 21:10:00.005982
21820	{6,9,19,20}	{}	2018-09-09 21:25:00.006689
21821	{2,19,16,7}	{}	2018-09-09 21:40:00.005931
21822	{6,7,16,5}	{}	2018-09-09 21:55:00.006064
21823	{11,5,12,16}	{}	2018-09-09 22:10:00.00604
21824	{3,6,14,4}	{}	2018-09-09 22:25:00.005973
21825	{19,20,14,11}	{}	2018-09-09 22:40:00.006039
21826	{11,18,7,1}	{}	2018-09-09 22:55:00.006055
21835	{1,10,19,13}	{}	2018-09-10 01:10:00.006141
21836	{12,5,19,6}	{}	2018-09-10 01:25:00.006026
21837	{2,12,19,5}	{}	2018-09-10 01:40:00.0061
21838	{19,5,15,6}	{}	2018-09-10 01:55:00.006101
21839	{19,18,15,11}	{}	2018-09-10 02:10:00.005989
21840	{20,7,13,17}	{}	2018-09-10 02:25:00.00617
21841	{13,15,17,3}	{}	2018-09-10 02:40:00.006104
21842	{17,11,3,4}	{}	2018-09-10 02:55:00.00605
21843	{15,12,7,2}	{}	2018-09-10 03:10:00.00602
21844	{20,18,19,2}	{}	2018-09-10 03:25:00.006017
21845	{13,21,2,16}	{}	2018-09-10 03:40:00.006084
21846	{14,19,5,1}	{}	2018-09-10 03:55:00.006131
21847	{14,21,6,15}	{}	2018-09-10 04:10:00.006108
20941	{8,6,3,15}	{}	2018-08-31 16:55:00.005947
20975	{21,10,5,9}	{}	2018-09-01 02:10:00.005918
21331	{3,1,21,16}	{}	2018-09-04 19:10:00.006009
21332	{6,8,17,9}	{}	2018-09-04 19:25:00.00604
21333	{18,7,17,20}	{}	2018-09-04 19:40:00.006087
21334	{19,10,3,21}	{}	2018-09-04 19:55:00.005994
21351	{10,4,7,13}	{}	2018-09-05 00:10:00.006155
21352	{13,16,2,12}	{}	2018-09-05 00:25:00.006081
21353	{7,10,2,9}	{}	2018-09-05 00:40:00.006052
21354	{13,15,16,1}	{}	2018-09-05 00:55:00.00599
21371	{10,6,13,11}	{}	2018-09-05 05:10:00.006132
21372	{17,5,15,12}	{}	2018-09-05 05:25:00.005993
21373	{2,13,9,4}	{}	2018-09-05 05:40:00.005974
21374	{1,11,14,2}	{}	2018-09-05 05:55:00.005946
21375	{14,6,5,16}	{}	2018-09-05 06:10:00.006003
21376	{2,6,18,12}	{}	2018-09-05 06:25:00.006122
21377	{2,1,15,9}	{}	2018-09-05 06:40:00.006101
21378	{21,14,20,15}	{}	2018-09-05 06:55:00.006004
21755	{4,16,20,7}	{}	2018-09-09 05:10:00.006104
21756	{4,16,1,20}	{}	2018-09-09 05:25:00.006012
21757	{11,18,19,16}	{}	2018-09-09 05:40:00.006743
21758	{4,3,20,10}	{}	2018-09-09 05:55:00.006047
21759	{19,3,2,8}	{}	2018-09-09 06:10:00.006064
21760	{17,21,5,11}	{}	2018-09-09 06:25:00.006071
21761	{8,2,10,18}	{}	2018-09-09 06:40:00.00597
21762	{7,5,21,1}	{}	2018-09-09 06:55:00.006131
21779	{10,11,3,12}	{}	2018-09-09 11:10:00.006242
21780	{4,6,12,9}	{}	2018-09-09 11:25:00.006093
21781	{16,5,11,7}	{}	2018-09-09 11:40:00.006532
21782	{5,1,12,11}	{}	2018-09-09 11:55:00.006065
21803	{11,19,21,10}	{}	2018-09-09 17:10:00.006142
21804	{16,9,4,1}	{}	2018-09-09 17:25:00.006036
21805	{4,13,14,2}	{}	2018-09-09 17:40:00.006048
21806	{9,6,15,19}	{}	2018-09-09 17:55:00.006028
21807	{18,3,8,17}	{}	2018-09-09 18:10:00.006103
21808	{8,15,12,16}	{}	2018-09-09 18:25:00.006042
21809	{3,16,5,19}	{}	2018-09-09 18:40:00.00609
21810	{3,5,9,14}	{}	2018-09-09 18:55:00.005916
21827	{21,20,12,11}	{}	2018-09-09 23:10:00.006325
21828	{12,18,14,16}	{}	2018-09-09 23:25:00.006167
21829	{9,1,10,21}	{}	2018-09-09 23:40:00.00513
21830	{6,5,3,14}	{}	2018-09-09 23:55:00.006173
21851	{5,10,12,13}	{}	2018-09-10 05:10:00.006122
22455	{19,7,5,21}	{}	2018-09-16 12:10:00.006029
22456	{14,3,16,2}	{}	2018-09-16 12:25:00.006644
22457	{19,21,16,3}	{}	2018-09-16 12:40:00.006079
22458	{5,1,19,2}	{}	2018-09-16 12:55:00.006027
22483	{16,3,21,7}	{}	2018-09-16 19:10:00.006138
22484	{16,15,1,3}	{}	2018-09-16 19:25:00.006015
22485	{10,4,5,1}	{}	2018-09-16 19:40:00.006061
22486	{14,9,13,5}	{}	2018-09-16 19:55:00.006113
22503	{15,6,19,11}	{}	2018-09-17 00:10:00.006115
22504	{21,15,17,14}	{}	2018-09-17 00:25:00.00605
22505	{7,13,14,17}	{}	2018-09-17 00:40:00.006088
22506	{3,15,9,8}	{}	2018-09-17 00:55:00.006083
22531	{13,12,20,2}	{}	2018-09-17 07:10:00.006028
22532	{21,12,2,11}	{}	2018-09-17 07:25:00.006046
22533	{10,17,9,19}	{}	2018-09-17 07:40:00.006001
22534	{5,8,16,1}	{}	2018-09-17 07:55:00.006599
22551	{9,3,1,20}	{}	2018-09-17 12:10:00.006077
22552	{8,11,16,5}	{}	2018-09-17 12:25:00.006105
22553	{5,6,12,10}	{}	2018-09-17 12:40:00.006106
22554	{21,13,18,5}	{}	2018-09-17 12:55:00.006039
22579	{4,18,11,14}	{}	2018-09-17 19:10:00.006113
22580	{9,14,5,19}	{}	2018-09-17 19:25:00.006159
22581	{20,14,3,12}	{}	2018-09-17 19:40:00.006968
22582	{3,7,11,15}	{}	2018-09-17 19:55:00.006058
22903	{19,7,1,4}	{}	2018-09-21 04:10:00.006041
22904	{19,15,8,21}	{}	2018-09-21 04:25:00.006044
22905	{15,12,2,10}	{}	2018-09-21 04:40:00.006096
22906	{3,17,1,13}	{}	2018-09-21 04:55:00.006811
22919	{6,10,13,20}	{}	2018-09-21 08:10:00.005804
22920	{16,14,19,6}	{}	2018-09-21 08:25:00.00607
22921	{13,17,18,16}	{}	2018-09-21 08:40:00.006116
22922	{8,19,21,6}	{}	2018-09-21 08:55:00.006151
22923	{6,17,19,15}	{}	2018-09-21 09:10:00.006095
22924	{12,2,8,11}	{}	2018-09-21 09:25:00.005613
20942	{4,12,21,18}	{}	2018-08-31 17:10:00.006949
20976	{5,10,2,16}	{}	2018-09-01 02:25:00.006157
21347	{6,10,11,9}	{}	2018-09-04 23:10:00.006223
21348	{17,12,1,5}	{}	2018-09-04 23:25:00.006123
21349	{12,11,4,16}	{}	2018-09-04 23:40:00.006236
21350	{15,21,19,7}	{}	2018-09-04 23:55:00.006208
21355	{19,4,18,14}	{}	2018-09-05 01:10:00.00604
21356	{14,20,1,9}	{}	2018-09-05 01:25:00.005974
21357	{4,12,5,10}	{}	2018-09-05 01:40:00.005972
21358	{17,18,4,5}	{}	2018-09-05 01:55:00.006085
21359	{14,3,6,8}	{}	2018-09-05 02:10:00.006037
21360	{17,6,13,1}	{}	2018-09-05 02:25:00.006139
21361	{19,7,13,10}	{}	2018-09-05 02:40:00.00594
21362	{14,20,13,9}	{}	2018-09-05 02:55:00.006069
21363	{18,19,21,9}	{}	2018-09-05 03:10:00.006014
21364	{1,13,7,16}	{}	2018-09-05 03:25:00.006041
21365	{19,15,20,14}	{}	2018-09-05 03:40:00.005999
21366	{20,15,10,5}	{}	2018-09-05 03:55:00.005967
21367	{2,5,9,8}	{}	2018-09-05 04:10:00.006012
21368	{14,13,3,5}	{}	2018-09-05 04:25:00.006059
21369	{4,20,10,2}	{}	2018-09-05 04:40:00.006031
21370	{7,21,9,11}	{}	2018-09-05 04:55:00.006125
21763	{8,5,3,16}	{}	2018-09-09 07:10:00.005979
21764	{11,9,1,17}	{}	2018-09-09 07:25:00.00606
21765	{11,8,12,7}	{}	2018-09-09 07:40:00.006776
21766	{15,4,13,3}	{}	2018-09-09 07:55:00.006101
21783	{13,9,7,18}	{}	2018-09-09 12:10:00.005928
21784	{17,19,1,7}	{}	2018-09-09 12:25:00.006009
21785	{9,4,19,1}	{}	2018-09-09 12:40:00.006167
21786	{14,3,5,13}	{}	2018-09-09 12:55:00.006125
21811	{1,10,14,21}	{}	2018-09-09 19:10:00.006058
21812	{11,19,16,1}	{}	2018-09-09 19:25:00.006452
21813	{21,6,12,18}	{}	2018-09-09 19:40:00.006064
21814	{4,9,20,7}	{}	2018-09-09 19:55:00.006099
21831	{17,7,10,11}	{}	2018-09-10 00:10:00.006068
21832	{9,3,14,6}	{}	2018-09-10 00:25:00.006115
21833	{2,7,21,6}	{}	2018-09-10 00:40:00.006068
21834	{13,6,2,1}	{}	2018-09-10 00:55:00.006048
22538	{15,4,3,7}	{}	2018-09-17 08:55:00.006055
22907	{14,19,6,7}	{}	2018-09-21 05:10:00.006129
22908	{14,17,11,4}	{}	2018-09-21 05:25:00.006041
22909	{13,15,7,3}	{}	2018-09-21 05:40:00.006102
22910	{6,11,8,19}	{}	2018-09-21 05:55:00.006039
22911	{11,20,4,2}	{}	2018-09-21 06:10:00.006072
22912	{2,21,4,20}	{}	2018-09-21 06:25:00.006067
22913	{21,11,4,14}	{}	2018-09-21 06:40:00.006113
22914	{12,8,7,3}	{}	2018-09-21 06:55:00.006131
22939	{13,2,10,9}	{}	2018-09-21 13:10:00.006016
22940	{17,11,9,3}	{}	2018-09-21 13:25:00.006036
22941	{3,18,1,6}	{}	2018-09-21 13:40:00.005913
22942	{19,15,10,7}	{}	2018-09-21 13:55:00.005776
22943	{11,3,20,18}	{}	2018-09-21 14:10:00.006013
22944	{6,17,16,5}	{}	2018-09-21 14:25:00.00613
22945	{12,10,2,16}	{}	2018-09-21 14:40:00.006087
22946	{10,8,15,5}	{}	2018-09-21 14:55:00.00606
22947	{10,21,16,14}	{}	2018-09-21 15:10:00.006045
22948	{12,3,17,21}	{}	2018-09-21 15:25:00.006047
22949	{19,4,2,14}	{}	2018-09-21 15:40:00.005387
22950	{2,9,6,21}	{}	2018-09-21 15:55:00.006179
22951	{16,17,10,4}	{}	2018-09-21 16:10:00.006069
22952	{15,16,10,1}	{}	2018-09-21 16:25:00.005981
22953	{3,20,14,2}	{}	2018-09-21 16:40:00.006119
22954	{4,10,11,17}	{}	2018-09-21 16:55:00.006215
22967	{10,9,13,3}	{}	2018-09-21 20:10:00.006078
22968	{5,2,8,18}	{}	2018-09-21 20:25:00.006051
22969	{15,10,14,4}	{}	2018-09-21 20:40:00.006071
22970	{10,11,6,7}	{}	2018-09-21 20:55:00.006104
22971	{3,19,21,4}	{}	2018-09-21 21:10:00.006103
22972	{1,4,10,19}	{}	2018-09-21 21:25:00.006096
22973	{2,1,12,17}	{}	2018-09-21 21:40:00.006055
22974	{5,21,16,13}	{}	2018-09-21 21:55:00.006043
22975	{7,19,20,2}	{}	2018-09-21 22:10:00.00607
22976	{13,17,9,7}	{}	2018-09-21 22:25:00.006131
22977	{9,4,17,15}	{}	2018-09-21 22:40:00.006138
22978	{13,14,8,11}	{}	2018-09-21 22:55:00.006229
23003	{2,12,1,3}	{}	2018-09-22 05:10:00.004747
23004	{9,15,17,11}	{}	2018-09-22 05:25:00.006111
20943	{19,6,10,14}	{}	2018-08-31 17:25:00.005951
20977	{12,19,8,15}	{}	2018-09-01 02:40:00.009031
20978	{13,11,6,15}	{}	2018-09-01 02:55:00.007447
20979	{15,11,3,17}	{}	2018-09-01 03:10:00.007486
20980	{10,13,16,15}	{}	2018-09-01 03:25:00.006003
20981	{1,11,17,15}	{}	2018-09-01 03:40:00.00594
20982	{4,11,5,16}	{}	2018-09-01 03:55:00.005921
20983	{19,7,11,14}	{}	2018-09-01 04:10:00.005978
20984	{9,7,1,12}	{}	2018-09-01 04:25:00.005895
20985	{15,1,20,16}	{}	2018-09-01 04:40:00.006019
20986	{11,7,18,17}	{}	2018-09-01 04:55:00.006015
20999	{20,21,6,15}	{}	2018-09-01 08:10:00.006038
21000	{19,14,7,8}	{}	2018-09-01 08:25:00.006089
21001	{3,8,9,4}	{}	2018-09-01 08:40:00.005961
21002	{7,18,16,4}	{}	2018-09-01 08:55:00.005965
21003	{10,21,2,3}	{}	2018-09-01 09:10:00.006015
21004	{14,13,1,7}	{}	2018-09-01 09:25:00.005762
21005	{18,15,14,5}	{}	2018-09-01 09:40:00.006009
21006	{18,9,19,21}	{}	2018-09-01 09:55:00.006042
21007	{9,7,17,11}	{}	2018-09-01 10:10:00.00598
21008	{14,10,3,16}	{}	2018-09-01 10:25:00.006527
21009	{10,12,16,13}	{}	2018-09-01 10:40:00.005908
21010	{1,13,6,20}	{}	2018-09-01 10:55:00.005967
21382	{7,2,5,13}	{}	2018-09-05 07:55:00.005974
21399	{9,12,11,18}	{}	2018-09-05 12:10:00.006003
21400	{20,8,9,17}	{}	2018-09-05 12:25:00.006124
21401	{9,8,10,7}	{}	2018-09-05 12:40:00.006038
21402	{4,7,19,15}	{}	2018-09-05 12:55:00.006071
21848	{9,17,11,20}	{}	2018-09-10 04:25:00.006129
21849	{9,7,19,1}	{}	2018-09-10 04:40:00.006054
21850	{14,3,7,19}	{}	2018-09-10 04:55:00.006205
22539	{6,1,13,17}	{}	2018-09-17 09:10:00.00599
22540	{15,10,7,1}	{}	2018-09-17 09:25:00.006066
22541	{8,2,18,16}	{}	2018-09-17 09:40:00.006052
22542	{8,21,17,9}	{}	2018-09-17 09:55:00.006563
22543	{6,16,17,13}	{}	2018-09-17 10:10:00.005988
22544	{19,14,7,6}	{}	2018-09-17 10:25:00.005502
22545	{10,17,11,7}	{}	2018-09-17 10:40:00.00607
22546	{1,19,16,11}	{}	2018-09-17 10:55:00.006068
22555	{20,18,1,21}	{}	2018-09-17 13:10:00.006015
22556	{3,20,6,2}	{}	2018-09-17 13:25:00.006049
22557	{6,20,19,5}	{}	2018-09-17 13:40:00.00605
22558	{1,11,8,18}	{}	2018-09-17 13:55:00.006094
22559	{5,15,7,12}	{}	2018-09-17 14:10:00.006084
22560	{14,2,21,10}	{}	2018-09-17 14:25:00.006063
22561	{16,5,19,18}	{}	2018-09-17 14:40:00.005892
22562	{5,16,21,1}	{}	2018-09-17 14:55:00.006036
22563	{15,4,13,1}	{}	2018-09-17 15:10:00.005959
22564	{10,16,5,1}	{}	2018-09-17 15:25:00.006195
22565	{9,4,10,8}	{}	2018-09-17 15:40:00.006162
22566	{14,19,20,21}	{}	2018-09-17 15:55:00.006011
22567	{8,11,12,18}	{}	2018-09-17 16:10:00.006052
22568	{3,11,2,4}	{}	2018-09-17 16:25:00.006116
22569	{19,17,8,16}	{}	2018-09-17 16:40:00.005855
22570	{1,14,12,16}	{}	2018-09-17 16:55:00.00618
22583	{9,6,3,20}	{}	2018-09-17 20:10:00.006074
22584	{6,2,15,13}	{}	2018-09-17 20:25:00.006101
22585	{10,3,6,13}	{}	2018-09-17 20:40:00.005963
22586	{1,14,12,17}	{}	2018-09-17 20:55:00.006053
22925	{11,8,9,12}	{}	2018-09-21 09:40:00.006091
22926	{17,7,9,4}	{}	2018-09-21 09:55:00.006073
22927	{20,21,5,15}	{}	2018-09-21 10:10:00.006096
22928	{10,7,2,4}	{}	2018-09-21 10:25:00.006107
22929	{15,6,9,4}	{}	2018-09-21 10:40:00.006099
22930	{1,12,11,2}	{}	2018-09-21 10:55:00.006214
22955	{14,18,7,11}	{}	2018-09-21 17:10:00.006089
22956	{19,20,8,4}	{}	2018-09-21 17:25:00.006076
22957	{12,21,11,17}	{}	2018-09-21 17:40:00.006255
22958	{7,20,21,18}	{}	2018-09-21 17:55:00.006078
22959	{5,4,6,17}	{}	2018-09-21 18:10:00.005959
22960	{20,5,21,16}	{}	2018-09-21 18:25:00.006065
22961	{20,16,19,6}	{}	2018-09-21 18:40:00.006104
22962	{11,5,2,1}	{}	2018-09-21 18:55:00.006057
22987	{12,2,6,4}	{}	2018-09-22 01:10:00.006085
22988	{14,21,10,11}	{}	2018-09-22 01:25:00.006106
22989	{4,10,2,3}	{}	2018-09-22 01:40:00.006007
22990	{6,16,10,19}	{}	2018-09-22 01:55:00.006097
20944	{7,17,20,8}	{}	2018-08-31 17:40:00.006044
20987	{7,4,8,14}	{}	2018-09-01 05:10:00.00637
20988	{19,9,7,20}	{}	2018-09-01 05:25:00.006426
20989	{11,3,21,12}	{}	2018-09-01 05:40:00.006101
20990	{18,8,16,6}	{}	2018-09-01 05:55:00.005972
20991	{1,16,20,5}	{}	2018-09-01 06:10:00.005937
20992	{18,16,14,11}	{}	2018-09-01 06:25:00.005983
20993	{2,18,17,20}	{}	2018-09-01 06:40:00.005988
20994	{4,17,20,19}	{}	2018-09-01 06:55:00.005812
21383	{16,14,18,15}	{}	2018-09-05 08:10:00.005995
21384	{1,17,6,15}	{}	2018-09-05 08:25:00.006044
21385	{6,19,18,7}	{}	2018-09-05 08:40:00.005958
21386	{6,15,13,2}	{}	2018-09-05 08:55:00.006004
21387	{18,16,19,13}	{}	2018-09-05 09:10:00.006038
21388	{7,5,2,21}	{}	2018-09-05 09:25:00.006002
21389	{5,21,9,16}	{}	2018-09-05 09:40:00.006033
21390	{19,8,7,17}	{}	2018-09-05 09:55:00.005996
21391	{10,4,20,7}	{}	2018-09-05 10:10:00.006023
21392	{13,1,4,9}	{}	2018-09-05 10:25:00.006027
21393	{13,5,6,9}	{}	2018-09-05 10:40:00.006016
21394	{6,3,13,5}	{}	2018-09-05 10:55:00.006132
21403	{6,9,14,13}	{}	2018-09-05 13:10:00.005959
21404	{6,17,5,15}	{}	2018-09-05 13:25:00.005974
21405	{17,8,11,2}	{}	2018-09-05 13:40:00.005795
21406	{10,4,3,2}	{}	2018-09-05 13:55:00.006094
21407	{18,7,10,16}	{}	2018-09-05 14:10:00.006086
21408	{9,3,15,2}	{}	2018-09-05 14:25:00.006035
21409	{11,6,19,5}	{}	2018-09-05 14:40:00.006001
21410	{20,2,18,7}	{}	2018-09-05 14:55:00.006016
21411	{13,12,14,20}	{}	2018-09-05 15:10:00.006141
21412	{15,4,18,2}	{}	2018-09-05 15:25:00.006049
21413	{8,1,6,2}	{}	2018-09-05 15:40:00.006048
21414	{3,10,5,15}	{}	2018-09-05 15:55:00.0059
21415	{16,2,18,10}	{}	2018-09-05 16:10:00.005969
21416	{7,11,13,1}	{}	2018-09-05 16:25:00.006028
21417	{18,19,21,17}	{}	2018-09-05 16:40:00.005884
21418	{2,1,21,20}	{}	2018-09-05 16:55:00.006139
21852	{2,8,16,1}	{}	2018-09-10 05:25:00.006051
21853	{14,15,4,13}	{}	2018-09-10 05:40:00.006154
21854	{12,10,19,11}	{}	2018-09-10 05:55:00.006054
21855	{10,8,1,2}	{}	2018-09-10 06:10:00.006077
21856	{20,15,19,14}	{}	2018-09-10 06:25:00.006077
21857	{9,14,8,15}	{}	2018-09-10 06:40:00.006058
21858	{14,7,1,8}	{}	2018-09-10 06:55:00.005994
21875	{18,15,10,20}	{}	2018-09-10 11:10:00.006126
21876	{20,14,21,11}	{}	2018-09-10 11:25:00.0061
21877	{1,11,17,9}	{}	2018-09-10 11:40:00.00598
21878	{9,20,5,13}	{}	2018-09-10 11:55:00.006108
21899	{2,14,5,21}	{}	2018-09-10 17:10:00.005476
21900	{15,7,10,8}	{}	2018-09-10 17:25:00.006124
21901	{4,2,17,18}	{}	2018-09-10 17:40:00.006064
21902	{7,16,20,9}	{}	2018-09-10 17:55:00.006031
21903	{7,11,5,16}	{}	2018-09-10 18:10:00.006066
21904	{15,9,21,18}	{}	2018-09-10 18:25:00.006015
21905	{6,2,17,8}	{}	2018-09-10 18:40:00.006672
21906	{21,7,4,17}	{}	2018-09-10 18:55:00.005902
21923	{8,21,10,12}	{}	2018-09-10 23:10:00.006311
21924	{4,9,20,10}	{}	2018-09-10 23:25:00.006191
21925	{9,1,11,19}	{}	2018-09-10 23:40:00.006199
21926	{9,8,6,17}	{}	2018-09-10 23:55:00.00617
21947	{16,12,8,2}	{}	2018-09-11 05:10:00.00617
21948	{11,13,18,2}	{}	2018-09-11 05:25:00.006002
21949	{21,18,17,6}	{}	2018-09-11 05:40:00.006114
21950	{10,5,21,14}	{}	2018-09-11 05:55:00.006047
21951	{12,6,8,20}	{}	2018-09-11 06:10:00.006049
21952	{1,10,7,14}	{}	2018-09-11 06:25:00.006071
21953	{16,20,2,14}	{}	2018-09-11 06:40:00.006102
21954	{13,18,16,7}	{}	2018-09-11 06:55:00.006028
22587	{19,20,13,10}	{}	2018-09-17 21:10:00.005992
22588	{6,15,7,14}	{}	2018-09-17 21:25:00.006078
22589	{12,17,16,3}	{}	2018-09-17 21:40:00.006832
22590	{17,7,6,10}	{}	2018-09-17 21:55:00.006011
22591	{10,19,5,20}	{}	2018-09-17 22:10:00.006093
22592	{13,3,4,20}	{}	2018-09-17 22:25:00.006038
22593	{3,5,16,15}	{}	2018-09-17 22:40:00.005995
22594	{17,2,20,16}	{}	2018-09-17 22:55:00.006164
22603	{15,1,4,10}	{}	2018-09-18 01:10:00.006121
20945	{11,2,17,14}	{}	2018-08-31 17:55:00.005948
20995	{8,15,9,10}	{}	2018-09-01 07:10:00.0063
20996	{11,18,8,16}	{}	2018-09-01 07:25:00.005978
20997	{15,8,19,1}	{}	2018-09-01 07:40:00.005981
20998	{13,11,9,2}	{}	2018-09-01 07:55:00.005905
21011	{19,2,5,16}	{}	2018-09-01 11:10:00.005982
21012	{11,20,2,14}	{}	2018-09-01 11:25:00.005929
21013	{13,9,11,7}	{}	2018-09-01 11:40:00.005997
21014	{15,11,14,13}	{}	2018-09-01 11:55:00.005883
21395	{12,3,15,20}	{}	2018-09-05 11:10:00.006196
21396	{15,13,11,4}	{}	2018-09-05 11:25:00.005989
21397	{21,8,17,2}	{}	2018-09-05 11:40:00.006096
21398	{5,12,3,4}	{}	2018-09-05 11:55:00.005938
21419	{20,13,17,9}	{}	2018-09-05 17:10:00.006058
21420	{8,3,7,11}	{}	2018-09-05 17:25:00.006002
21859	{5,9,15,12}	{}	2018-09-10 07:10:00.006089
21860	{13,16,18,17}	{}	2018-09-10 07:25:00.00605
21861	{6,3,20,16}	{}	2018-09-10 07:40:00.006057
21862	{15,16,11,21}	{}	2018-09-10 07:55:00.006012
21879	{1,9,17,21}	{}	2018-09-10 12:10:00.006085
21880	{16,20,13,1}	{}	2018-09-10 12:25:00.006086
21881	{11,13,2,14}	{}	2018-09-10 12:40:00.006066
21882	{2,19,1,9}	{}	2018-09-10 12:55:00.006024
21907	{11,9,7,12}	{}	2018-09-10 19:10:00.006005
21908	{16,18,15,6}	{}	2018-09-10 19:25:00.006064
21909	{4,12,14,8}	{}	2018-09-10 19:40:00.006071
21910	{15,13,7,11}	{}	2018-09-10 19:55:00.006064
21927	{2,10,4,8}	{}	2018-09-11 00:10:00.005942
21928	{5,14,3,6}	{}	2018-09-11 00:25:00.006103
21929	{17,2,12,15}	{}	2018-09-11 00:40:00.00603
21930	{2,9,18,19}	{}	2018-09-11 00:55:00.006045
21955	{15,14,12,21}	{}	2018-09-11 07:10:00.006058
21956	{8,20,16,13}	{}	2018-09-11 07:25:00.006099
21957	{18,5,16,15}	{}	2018-09-11 07:40:00.006044
21958	{2,9,16,4}	{}	2018-09-11 07:55:00.006071
22595	{2,12,6,15}	{}	2018-09-17 23:10:00.006231
22596	{17,19,16,12}	{}	2018-09-17 23:25:00.006111
22597	{9,4,3,11}	{}	2018-09-17 23:40:00.006752
22598	{13,5,18,3}	{}	2018-09-17 23:55:00.006278
22619	{14,8,3,9}	{}	2018-09-18 05:10:00.006054
22620	{6,19,13,8}	{}	2018-09-18 05:25:00.006014
22621	{19,5,16,15}	{}	2018-09-18 05:40:00.006035
22622	{4,12,10,16}	{}	2018-09-18 05:55:00.005999
22623	{15,6,16,20}	{}	2018-09-18 06:10:00.006054
22624	{1,21,10,7}	{}	2018-09-18 06:25:00.005925
22625	{1,16,19,20}	{}	2018-09-18 06:40:00.006028
22626	{1,14,20,16}	{}	2018-09-18 06:55:00.006085
22643	{1,9,5,14}	{}	2018-09-18 11:10:00.006185
22644	{15,2,16,7}	{}	2018-09-18 11:25:00.006812
22645	{11,4,12,13}	{}	2018-09-18 11:40:00.006054
22646	{7,3,2,14}	{}	2018-09-18 11:55:00.006117
22667	{10,21,5,20}	{}	2018-09-18 17:10:00.00621
22668	{9,6,16,2}	{}	2018-09-18 17:25:00.006132
22669	{13,10,15,4}	{}	2018-09-18 17:40:00.006107
22670	{7,19,9,5}	{}	2018-09-18 17:55:00.006116
22671	{2,17,7,15}	{}	2018-09-18 18:10:00.006081
22672	{17,1,3,10}	{}	2018-09-18 18:25:00.005997
22673	{9,8,14,15}	{}	2018-09-18 18:40:00.006053
22674	{18,13,3,1}	{}	2018-09-18 18:55:00.006062
22691	{21,13,7,5}	{}	2018-09-18 23:10:00.006245
22692	{10,2,5,4}	{}	2018-09-18 23:25:00.005958
22693	{13,19,16,3}	{}	2018-09-18 23:40:00.00617
22694	{12,2,6,5}	{}	2018-09-18 23:55:00.006188
22715	{11,21,18,4}	{}	2018-09-19 05:10:00.006171
22716	{14,20,6,9}	{}	2018-09-19 05:25:00.006039
22717	{9,21,4,17}	{}	2018-09-19 05:40:00.006069
22718	{7,6,13,12}	{}	2018-09-19 05:55:00.006126
22719	{12,8,21,18}	{}	2018-09-19 06:10:00.005989
22720	{8,10,12,3}	{}	2018-09-19 06:25:00.006055
22721	{18,8,10,20}	{}	2018-09-19 06:40:00.006779
22722	{6,12,21,15}	{}	2018-09-19 06:55:00.00601
22991	{19,13,7,15}	{}	2018-09-22 02:10:00.0061
22992	{2,12,7,21}	{}	2018-09-22 02:25:00.006088
22993	{3,5,10,17}	{}	2018-09-22 02:40:00.006033
22994	{14,12,17,6}	{}	2018-09-22 02:55:00.006011
22995	{1,10,7,15}	{}	2018-09-22 03:10:00.006054
22996	{5,8,2,1}	{}	2018-09-22 03:25:00.00605
20946	{14,5,4,8}	{}	2018-08-31 18:10:00.006479
21015	{10,14,13,4}	{}	2018-09-01 12:10:00.006019
21016	{3,12,21,1}	{}	2018-09-01 12:25:00.005747
21017	{8,17,9,15}	{}	2018-09-01 12:40:00.006107
21018	{18,7,13,16}	{}	2018-09-01 12:55:00.005983
21863	{21,9,8,11}	{}	2018-09-10 08:10:00.006048
21864	{10,12,2,15}	{}	2018-09-10 08:25:00.005979
21865	{5,14,12,18}	{}	2018-09-10 08:40:00.006119
21866	{18,11,19,12}	{}	2018-09-10 08:55:00.006009
21867	{4,3,19,16}	{}	2018-09-10 09:10:00.006044
21868	{21,5,11,4}	{}	2018-09-10 09:25:00.006138
21869	{19,9,8,10}	{}	2018-09-10 09:40:00.005928
21870	{21,13,4,19}	{}	2018-09-10 09:55:00.005572
21871	{17,3,4,10}	{}	2018-09-10 10:10:00.006011
21872	{6,13,7,10}	{}	2018-09-10 10:25:00.006072
21873	{16,7,21,18}	{}	2018-09-10 10:40:00.006086
21874	{21,20,17,4}	{}	2018-09-10 10:55:00.006166
21883	{12,14,21,13}	{}	2018-09-10 13:10:00.006014
21884	{3,16,15,9}	{}	2018-09-10 13:25:00.006008
21885	{2,1,4,19}	{}	2018-09-10 13:40:00.006032
21886	{3,21,18,6}	{}	2018-09-10 13:55:00.006064
21887	{20,6,9,12}	{}	2018-09-10 14:10:00.006177
21888	{18,9,2,21}	{}	2018-09-10 14:25:00.006021
21889	{10,2,5,8}	{}	2018-09-10 14:40:00.006003
21890	{8,4,6,10}	{}	2018-09-10 14:55:00.006211
21891	{21,13,9,15}	{}	2018-09-10 15:10:00.00603
21892	{16,11,21,4}	{}	2018-09-10 15:25:00.005974
21893	{11,19,8,7}	{}	2018-09-10 15:40:00.006038
21894	{13,11,10,5}	{}	2018-09-10 15:55:00.005999
21895	{6,14,18,10}	{}	2018-09-10 16:10:00.006082
21896	{3,17,7,20}	{}	2018-09-10 16:25:00.006073
21897	{16,4,2,13}	{}	2018-09-10 16:40:00.006022
21898	{11,17,7,3}	{}	2018-09-10 16:55:00.006211
21911	{9,14,11,4}	{}	2018-09-10 20:10:00.006081
21912	{12,9,10,3}	{}	2018-09-10 20:25:00.006036
21913	{14,17,4,1}	{}	2018-09-10 20:40:00.006072
21914	{11,2,4,20}	{}	2018-09-10 20:55:00.006082
21915	{21,20,13,2}	{}	2018-09-10 21:10:00.006024
21916	{10,8,12,14}	{}	2018-09-10 21:25:00.00583
21917	{15,2,20,10}	{}	2018-09-10 21:40:00.006023
21918	{10,6,2,12}	{}	2018-09-10 21:55:00.006157
21919	{8,1,6,15}	{}	2018-09-10 22:10:00.006036
21920	{18,20,12,7}	{}	2018-09-10 22:25:00.006048
21921	{3,10,6,1}	{}	2018-09-10 22:40:00.006033
21922	{21,12,3,7}	{}	2018-09-10 22:55:00.006125
21931	{2,1,13,10}	{}	2018-09-11 01:10:00.006059
21932	{14,6,11,21}	{}	2018-09-11 01:25:00.005367
21933	{18,15,21,12}	{}	2018-09-11 01:40:00.006015
21934	{7,18,12,9}	{}	2018-09-11 01:55:00.006118
21935	{18,4,6,11}	{}	2018-09-11 02:10:00.006047
21936	{15,2,3,8}	{}	2018-09-11 02:25:00.005213
21937	{14,6,19,8}	{}	2018-09-11 02:40:00.006021
21938	{2,6,10,15}	{}	2018-09-11 02:55:00.006049
21939	{1,21,4,5}	{}	2018-09-11 03:10:00.006062
21940	{8,6,11,5}	{}	2018-09-11 03:25:00.006073
21941	{3,11,16,2}	{}	2018-09-11 03:40:00.006091
21942	{5,16,10,21}	{}	2018-09-11 03:55:00.006028
21943	{1,6,8,11}	{}	2018-09-11 04:10:00.006006
21944	{11,2,14,15}	{}	2018-09-11 04:25:00.006065
21945	{15,3,20,16}	{}	2018-09-11 04:40:00.006047
21946	{10,8,11,2}	{}	2018-09-11 04:55:00.005944
21959	{15,5,7,4}	{}	2018-09-11 08:10:00.006047
22599	{8,13,15,14}	{}	2018-09-18 00:10:00.006078
22600	{2,13,19,1}	{}	2018-09-18 00:25:00.006082
22601	{4,14,11,17}	{}	2018-09-18 00:40:00.005999
22602	{5,10,8,6}	{}	2018-09-18 00:55:00.006049
22627	{7,14,9,19}	{}	2018-09-18 07:10:00.006183
22628	{12,2,15,1}	{}	2018-09-18 07:25:00.006432
22629	{19,14,12,11}	{}	2018-09-18 07:40:00.006023
22630	{11,12,7,16}	{}	2018-09-18 07:55:00.006054
22647	{5,1,14,17}	{}	2018-09-18 12:10:00.006137
22648	{8,12,3,14}	{}	2018-09-18 12:25:00.006054
22649	{17,3,13,1}	{}	2018-09-18 12:40:00.006026
22650	{19,6,4,3}	{}	2018-09-18 12:55:00.005994
22675	{17,8,1,5}	{}	2018-09-18 19:10:00.006034
22676	{8,2,9,16}	{}	2018-09-18 19:25:00.005967
22677	{1,19,3,10}	{}	2018-09-18 19:40:00.006068
20947	{20,9,18,15}	{}	2018-08-31 19:10:00.00649
21019	{19,16,11,12}	{}	2018-09-01 13:10:00.005992
21020	{11,12,3,14}	{}	2018-09-01 13:25:00.005945
21021	{13,19,2,9}	{}	2018-09-01 13:40:00.006042
21022	{11,14,15,5}	{}	2018-09-01 13:55:00.006064
21023	{16,18,3,9}	{}	2018-09-01 14:10:00.006021
21024	{12,3,19,15}	{}	2018-09-01 14:25:00.006082
21025	{7,10,13,1}	{}	2018-09-01 14:40:00.006051
21026	{15,5,3,10}	{}	2018-09-01 14:55:00.005995
21027	{19,14,17,11}	{}	2018-09-01 15:10:00.006015
21028	{11,1,5,20}	{}	2018-09-01 15:25:00.005976
21029	{17,16,15,2}	{}	2018-09-01 15:40:00.006028
21960	{16,10,9,11}	{}	2018-09-11 08:25:00.005964
21961	{6,1,16,5}	{}	2018-09-11 08:40:00.005986
21962	{3,20,17,19}	{}	2018-09-11 08:55:00.005911
21963	{15,3,14,6}	{}	2018-09-11 09:10:00.00609
21964	{2,6,5,14}	{}	2018-09-11 09:25:00.00603
21965	{3,4,13,8}	{}	2018-09-11 09:40:00.006126
21966	{4,18,5,15}	{}	2018-09-11 09:55:00.006069
21967	{7,16,14,1}	{}	2018-09-11 10:10:00.006068
21968	{5,8,1,19}	{}	2018-09-11 10:25:00.006044
21969	{9,13,12,15}	{}	2018-09-11 10:40:00.006048
21970	{5,8,21,13}	{}	2018-09-11 10:55:00.006167
21979	{17,9,18,13}	{}	2018-09-11 13:10:00.006095
21980	{15,1,9,5}	{}	2018-09-11 13:25:00.006082
21981	{2,7,14,1}	{}	2018-09-11 13:40:00.006067
21982	{15,11,3,12}	{}	2018-09-11 13:55:00.006041
21983	{7,11,5,8}	{}	2018-09-11 14:10:00.006083
21984	{3,8,9,10}	{}	2018-09-11 14:25:00.006058
21985	{10,12,2,6}	{}	2018-09-11 14:40:00.005994
21986	{19,11,5,20}	{}	2018-09-11 14:55:00.005976
21987	{16,4,9,20}	{}	2018-09-11 15:10:00.006019
21988	{14,8,10,2}	{}	2018-09-11 15:25:00.006043
21989	{19,5,4,12}	{}	2018-09-11 15:40:00.005823
21990	{14,7,16,18}	{}	2018-09-11 15:55:00.005749
21991	{9,2,10,11}	{}	2018-09-11 16:10:00.006052
21992	{19,21,14,20}	{}	2018-09-11 16:25:00.006101
21993	{10,3,4,12}	{}	2018-09-11 16:40:00.00606
21994	{5,3,13,4}	{}	2018-09-11 16:55:00.006165
22007	{15,10,12,18}	{}	2018-09-11 20:10:00.00611
22008	{3,7,14,9}	{}	2018-09-11 20:25:00.006022
22009	{7,10,9,13}	{}	2018-09-11 20:40:00.006143
22010	{15,16,21,8}	{}	2018-09-11 20:55:00.006103
22011	{5,7,2,15}	{}	2018-09-11 21:10:00.006092
22012	{21,2,14,18}	{}	2018-09-11 21:25:00.006039
22013	{14,15,13,2}	{}	2018-09-11 21:40:00.006107
22014	{21,8,2,11}	{}	2018-09-11 21:55:00.006074
22015	{13,3,5,20}	{}	2018-09-11 22:10:00.00607
22016	{3,6,19,8}	{}	2018-09-11 22:25:00.005973
22017	{16,19,4,3}	{}	2018-09-11 22:40:00.006107
22018	{16,21,1,9}	{}	2018-09-11 22:55:00.006122
22027	{9,19,5,16}	{}	2018-09-12 01:10:00.005978
22028	{10,21,9,5}	{}	2018-09-12 01:25:00.006611
22029	{2,10,1,3}	{}	2018-09-12 01:40:00.006044
22030	{20,5,4,11}	{}	2018-09-12 01:55:00.006033
22031	{10,14,21,18}	{}	2018-09-12 02:10:00.006016
22032	{3,2,13,10}	{}	2018-09-12 02:25:00.00607
22033	{8,16,2,11}	{}	2018-09-12 02:40:00.006099
22034	{6,11,1,14}	{}	2018-09-12 02:55:00.006083
22035	{14,11,1,4}	{}	2018-09-12 03:10:00.006039
22036	{15,11,18,6}	{}	2018-09-12 03:25:00.005767
22037	{15,3,4,21}	{}	2018-09-12 03:40:00.006021
22038	{12,10,2,5}	{}	2018-09-12 03:55:00.006084
22039	{1,3,4,11}	{}	2018-09-12 04:10:00.006029
22040	{16,6,4,2}	{}	2018-09-12 04:25:00.006026
22041	{20,18,9,2}	{}	2018-09-12 04:40:00.006114
22042	{17,8,3,12}	{}	2018-09-12 04:55:00.006181
22055	{10,16,18,12}	{}	2018-09-12 08:10:00.006009
22056	{3,14,2,17}	{}	2018-09-12 08:25:00.006027
22057	{15,3,16,13}	{}	2018-09-12 08:40:00.006096
22058	{18,16,1,9}	{}	2018-09-12 08:55:00.005969
22059	{3,7,4,20}	{}	2018-09-12 09:10:00.006036
22060	{1,21,3,20}	{}	2018-09-12 09:25:00.00668
22061	{4,2,11,10}	{}	2018-09-12 09:40:00.005873
22062	{4,15,10,9}	{}	2018-09-12 09:55:00.006019
22063	{18,14,7,21}	{}	2018-09-12 10:10:00.006132
22064	{7,9,5,17}	{}	2018-09-12 10:25:00.005938
20948	{1,14,17,10}	{}	2018-08-31 19:25:00.006804
20950	{8,14,11,20}	{}	2018-08-31 19:55:00.006277
20951	{3,20,13,16}	{}	2018-08-31 20:10:00.004731
21971	{16,9,3,11}	{}	2018-09-11 11:10:00.006162
21972	{12,14,11,1}	{}	2018-09-11 11:25:00.006071
21973	{20,21,2,10}	{}	2018-09-11 11:40:00.006042
21974	{1,21,20,5}	{}	2018-09-11 11:55:00.005918
21995	{1,7,11,19}	{}	2018-09-11 17:10:00.006102
21996	{11,17,6,1}	{}	2018-09-11 17:25:00.005972
21997	{12,14,18,19}	{}	2018-09-11 17:40:00.006021
21998	{21,8,9,18}	{}	2018-09-11 17:55:00.006063
21999	{3,1,18,17}	{}	2018-09-11 18:10:00.005955
22000	{20,2,5,13}	{}	2018-09-11 18:25:00.005972
22001	{12,8,13,19}	{}	2018-09-11 18:40:00.006082
22002	{4,10,8,12}	{}	2018-09-11 18:55:00.006136
22019	{8,16,2,12}	{}	2018-09-11 23:10:00.006275
22020	{4,10,18,9}	{}	2018-09-11 23:25:00.006158
22021	{20,14,21,10}	{}	2018-09-11 23:40:00.006175
22022	{14,1,8,18}	{}	2018-09-11 23:55:00.006182
22043	{17,1,12,7}	{}	2018-09-12 05:10:00.006097
22044	{17,16,5,11}	{}	2018-09-12 05:25:00.006759
22045	{20,5,6,12}	{}	2018-09-12 05:40:00.006078
22046	{8,20,12,15}	{}	2018-09-12 05:55:00.006092
22047	{8,10,15,5}	{}	2018-09-12 06:10:00.006074
22048	{18,13,3,7}	{}	2018-09-12 06:25:00.006058
22049	{20,10,8,6}	{}	2018-09-12 06:40:00.006047
22050	{19,16,13,5}	{}	2018-09-12 06:55:00.006092
22067	{13,18,21,19}	{}	2018-09-12 11:10:00.006178
22068	{15,8,17,1}	{}	2018-09-12 11:25:00.006608
22069	{7,1,18,4}	{}	2018-09-12 11:40:00.006046
22070	{7,19,2,6}	{}	2018-09-12 11:55:00.006038
22604	{5,18,2,7}	{}	2018-09-18 01:25:00.006026
22605	{8,10,13,17}	{}	2018-09-18 01:40:00.006098
22606	{5,12,14,3}	{}	2018-09-18 01:55:00.006
22607	{15,14,21,7}	{}	2018-09-18 02:10:00.005548
22608	{10,2,5,17}	{}	2018-09-18 02:25:00.006024
22609	{3,10,2,7}	{}	2018-09-18 02:40:00.006059
22610	{13,4,19,14}	{}	2018-09-18 02:55:00.006022
22611	{18,8,5,19}	{}	2018-09-18 03:10:00.005987
22612	{2,4,6,21}	{}	2018-09-18 03:25:00.006078
22613	{7,14,1,2}	{}	2018-09-18 03:40:00.00599
22614	{19,20,13,5}	{}	2018-09-18 03:55:00.005882
22615	{20,6,15,5}	{}	2018-09-18 04:10:00.006137
22616	{20,10,6,2}	{}	2018-09-18 04:25:00.006025
22617	{2,20,8,14}	{}	2018-09-18 04:40:00.006025
22618	{1,18,6,13}	{}	2018-09-18 04:55:00.006085
22631	{16,18,12,1}	{}	2018-09-18 08:10:00.006056
22632	{2,15,17,9}	{}	2018-09-18 08:25:00.006026
22633	{21,7,4,6}	{}	2018-09-18 08:40:00.006049
22634	{8,3,12,6}	{}	2018-09-18 08:55:00.006069
22635	{7,6,16,15}	{}	2018-09-18 09:10:00.006055
22636	{2,15,14,20}	{}	2018-09-18 09:25:00.005612
22637	{11,5,9,16}	{}	2018-09-18 09:40:00.006085
22638	{19,15,1,4}	{}	2018-09-18 09:55:00.006055
22639	{14,8,11,13}	{}	2018-09-18 10:10:00.006073
22640	{9,3,18,14}	{}	2018-09-18 10:25:00.005252
22641	{3,11,1,10}	{}	2018-09-18 10:40:00.006123
22642	{6,19,3,21}	{}	2018-09-18 10:55:00.006173
22651	{16,8,5,20}	{}	2018-09-18 13:10:00.006076
22652	{3,7,12,17}	{}	2018-09-18 13:25:00.006098
22653	{3,20,17,18}	{}	2018-09-18 13:40:00.005887
22654	{17,8,13,6}	{}	2018-09-18 13:55:00.006094
22655	{20,17,19,9}	{}	2018-09-18 14:10:00.005978
22656	{7,16,15,17}	{}	2018-09-18 14:25:00.006105
22657	{3,4,1,17}	{}	2018-09-18 14:40:00.00606
22658	{2,13,8,7}	{}	2018-09-18 14:55:00.006001
22659	{13,20,17,15}	{}	2018-09-18 15:10:00.006034
22660	{2,11,16,3}	{}	2018-09-18 15:25:00.006038
22661	{13,14,5,18}	{}	2018-09-18 15:40:00.005776
22662	{13,19,6,8}	{}	2018-09-18 15:55:00.006023
22663	{12,18,13,21}	{}	2018-09-18 16:10:00.006063
22664	{2,8,20,5}	{}	2018-09-18 16:25:00.006078
22665	{10,9,19,12}	{}	2018-09-18 16:40:00.006027
22666	{8,16,10,6}	{}	2018-09-18 16:55:00.006186
22679	{6,12,16,2}	{}	2018-09-18 20:10:00.006057
22680	{11,16,5,9}	{}	2018-09-18 20:25:00.006075
22681	{21,15,17,19}	{}	2018-09-18 20:40:00.00607
20949	{1,8,7,11}	{}	2018-08-31 19:40:00.006071
21975	{5,15,3,21}	{}	2018-09-11 12:10:00.006122
21976	{19,9,20,11}	{}	2018-09-11 12:25:00.006029
21977	{1,15,9,12}	{}	2018-09-11 12:40:00.006034
21978	{16,18,3,14}	{}	2018-09-11 12:55:00.006091
22003	{8,6,20,11}	{}	2018-09-11 19:10:00.006026
22004	{3,12,13,18}	{}	2018-09-11 19:25:00.005971
22005	{7,3,20,18}	{}	2018-09-11 19:40:00.006634
22006	{15,14,13,21}	{}	2018-09-11 19:55:00.006131
22023	{17,18,12,11}	{}	2018-09-12 00:10:00.006104
22024	{13,15,16,14}	{}	2018-09-12 00:25:00.005976
22025	{15,7,16,5}	{}	2018-09-12 00:40:00.006007
22026	{9,12,10,18}	{}	2018-09-12 00:55:00.006004
22051	{8,6,20,9}	{}	2018-09-12 07:10:00.006021
22052	{2,14,19,20}	{}	2018-09-12 07:25:00.00675
22053	{6,5,10,7}	{}	2018-09-12 07:40:00.006029
22054	{6,3,19,5}	{}	2018-09-12 07:55:00.006011
22071	{15,13,14,11}	{}	2018-09-12 12:10:00.006001
22072	{16,11,8,20}	{}	2018-09-12 12:25:00.006086
22678	{9,3,10,13}	{}	2018-09-18 19:55:00.005995
22695	{19,14,1,8}	{}	2018-09-19 00:10:00.00605
22696	{13,10,18,17}	{}	2018-09-19 00:25:00.006008
22697	{5,7,14,21}	{}	2018-09-19 00:40:00.006042
22698	{17,1,10,15}	{}	2018-09-19 00:55:00.00612
22723	{16,15,1,17}	{}	2018-09-19 07:10:00.006029
22724	{8,3,11,10}	{}	2018-09-19 07:25:00.004862
22725	{14,1,20,13}	{}	2018-09-19 07:40:00.006084
22726	{3,6,2,13}	{}	2018-09-19 07:55:00.00604
22997	{11,3,8,4}	{}	2018-09-22 03:40:00.006176
22998	{2,15,12,21}	{}	2018-09-22 03:55:00.006167
22999	{15,13,2,5}	{}	2018-09-22 04:10:00.00584
23000	{5,15,16,9}	{}	2018-09-22 04:25:00.006013
23001	{21,15,2,18}	{}	2018-09-22 04:40:00.006117
23002	{11,9,12,19}	{}	2018-09-22 04:55:00.006141
23015	{11,18,10,15}	{}	2018-09-22 08:10:00.006157
23016	{17,5,7,4}	{}	2018-09-22 08:25:00.00623
23017	{12,1,20,10}	{}	2018-09-22 08:40:00.005981
23018	{12,6,17,19}	{}	2018-09-22 08:55:00.006014
23019	{9,6,8,19}	{}	2018-09-22 09:10:00.006064
23020	{13,3,17,19}	{}	2018-09-22 09:25:00.006042
23021	{16,7,15,11}	{}	2018-09-22 09:40:00.006069
23022	{6,1,9,20}	{}	2018-09-22 09:55:00.00655
23023	{19,2,1,6}	{}	2018-09-22 10:10:00.006171
23024	{20,19,10,6}	{}	2018-09-22 10:25:00.005826
23025	{9,21,8,3}	{}	2018-09-22 10:40:00.006053
23026	{9,13,14,15}	{}	2018-09-22 10:55:00.006241
23148	{9,3,16,8}	{}	2018-09-23 17:25:00.006061
23149	{16,3,12,2}	{}	2018-09-23 17:40:00.006061
23150	{20,2,9,15}	{}	2018-09-23 17:55:00.006107
23151	{20,4,5,17}	{}	2018-09-23 18:10:00.006159
23152	{13,17,19,6}	{}	2018-09-23 18:25:00.006008
23153	{17,11,12,8}	{}	2018-09-23 18:40:00.006095
23154	{16,12,15,18}	{}	2018-09-23 18:55:00.00595
23164	{21,5,20,17}	{}	2018-09-23 21:25:00.006075
23167	{18,1,11,19}	{}	2018-09-23 22:10:00.006034
23179	{21,8,18,13}	{}	2018-09-24 01:10:00.006145
23180	{15,5,16,14}	{}	2018-09-24 01:25:00.006093
23181	{21,2,1,12}	{}	2018-09-24 01:40:00.006124
23182	{13,1,10,8}	{}	2018-09-24 01:55:00.006063
23183	{10,14,11,18}	{}	2018-09-24 02:10:00.006178
23184	{7,1,19,15}	{}	2018-09-24 02:25:00.005998
23185	{14,21,7,19}	{}	2018-09-24 02:40:00.006083
23186	{8,9,7,16}	{}	2018-09-24 02:55:00.006154
23187	{21,11,10,20}	{}	2018-09-24 03:10:00.006075
23188	{12,10,15,17}	{}	2018-09-24 03:25:00.006054
23189	{6,12,1,8}	{}	2018-09-24 03:40:00.006061
23190	{1,15,17,4}	{}	2018-09-24 03:55:00.006118
23191	{9,8,11,16}	{}	2018-09-24 04:10:00.006112
23192	{16,13,12,15}	{}	2018-09-24 04:25:00.006039
23193	{9,12,11,14}	{}	2018-09-24 04:40:00.006121
23194	{15,10,5,16}	{}	2018-09-24 04:55:00.006226
23207	{3,14,2,21}	{}	2018-09-24 08:10:00.006129
23208	{4,10,2,8}	{}	2018-09-24 08:25:00.00609
23209	{17,16,1,5}	{}	2018-09-24 08:40:00.006159
23210	{7,2,15,3}	{}	2018-09-24 08:55:00.006075
23211	{9,17,1,20}	{}	2018-09-24 09:10:00.006082
23223	{4,5,10,1}	{}	2018-09-24 12:10:00.00615
20952	{8,18,16,17}	{}	2018-08-31 20:25:00.004612
20956	{18,14,1,4}	{}	2018-08-31 21:25:00.004612
20960	{16,18,6,5}	{}	2018-08-31 22:25:00.004697
22065	{14,10,12,18}	{}	2018-09-12 10:40:00.005993
22066	{16,2,19,17}	{}	2018-09-12 10:55:00.00612
22682	{10,6,12,2}	{}	2018-09-18 20:55:00.005173
22683	{10,18,11,3}	{}	2018-09-18 21:10:00.00606
22684	{2,6,12,4}	{}	2018-09-18 21:25:00.006122
22685	{20,2,15,1}	{}	2018-09-18 21:40:00.005806
22686	{3,11,4,14}	{}	2018-09-18 21:55:00.006045
22687	{14,18,6,9}	{}	2018-09-18 22:10:00.006087
22688	{12,20,17,8}	{}	2018-09-18 22:25:00.006053
22689	{1,3,10,15}	{}	2018-09-18 22:40:00.006146
22690	{20,11,15,21}	{}	2018-09-18 22:55:00.006139
22699	{12,1,16,15}	{}	2018-09-19 01:10:00.005839
22700	{21,17,8,16}	{}	2018-09-19 01:25:00.006081
22701	{20,10,16,7}	{}	2018-09-19 01:40:00.006012
22702	{6,8,13,9}	{}	2018-09-19 01:55:00.005996
22703	{16,6,13,9}	{}	2018-09-19 02:10:00.006128
22704	{20,7,16,15}	{}	2018-09-19 02:25:00.006019
22705	{4,10,21,11}	{}	2018-09-19 02:40:00.005994
22706	{5,15,14,4}	{}	2018-09-19 02:55:00.006059
22707	{10,19,5,15}	{}	2018-09-19 03:10:00.006066
22708	{9,15,6,19}	{}	2018-09-19 03:25:00.006097
22709	{3,19,16,1}	{}	2018-09-19 03:40:00.006007
22710	{17,4,15,12}	{}	2018-09-19 03:55:00.006097
22711	{7,21,16,4}	{}	2018-09-19 04:10:00.006069
22712	{8,12,3,6}	{}	2018-09-19 04:25:00.005963
22713	{4,3,13,1}	{}	2018-09-19 04:40:00.00607
22714	{4,10,19,20}	{}	2018-09-19 04:55:00.006131
22727	{17,14,4,13}	{}	2018-09-19 08:10:00.005986
22728	{5,1,17,6}	{}	2018-09-19 08:25:00.006014
22729	{15,9,18,12}	{}	2018-09-19 08:40:00.005991
22730	{12,13,20,17}	{}	2018-09-19 08:55:00.006001
22731	{21,6,17,4}	{}	2018-09-19 09:10:00.006013
23006	{8,17,7,10}	{}	2018-09-22 05:55:00.00612
23007	{10,17,11,13}	{}	2018-09-22 06:10:00.00608
23008	{8,4,2,16}	{}	2018-09-22 06:25:00.005949
23009	{14,20,8,13}	{}	2018-09-22 06:40:00.00607
23010	{7,9,19,11}	{}	2018-09-22 06:55:00.006084
23035	{11,9,3,4}	{}	2018-09-22 13:10:00.006092
23036	{17,9,8,14}	{}	2018-09-22 13:25:00.006072
23037	{17,16,13,19}	{}	2018-09-22 13:40:00.006091
23038	{21,15,13,17}	{}	2018-09-22 13:55:00.006105
23039	{7,15,5,19}	{}	2018-09-22 14:10:00.006095
23040	{14,19,18,11}	{}	2018-09-22 14:25:00.005986
23041	{19,16,5,18}	{}	2018-09-22 14:40:00.006184
23042	{14,18,10,11}	{}	2018-09-22 14:55:00.006053
23043	{14,1,6,18}	{}	2018-09-22 15:10:00.006075
23168	{6,11,19,1}	{}	2018-09-23 22:25:00.006079
23169	{19,3,7,2}	{}	2018-09-23 22:40:00.006118
23170	{18,9,7,20}	{}	2018-09-23 22:55:00.006151
23195	{1,19,12,15}	{}	2018-09-24 05:10:00.006068
23196	{7,9,2,12}	{}	2018-09-24 05:25:00.006039
23197	{10,21,9,3}	{}	2018-09-24 05:40:00.006179
23198	{2,10,3,7}	{}	2018-09-24 05:55:00.006062
23199	{13,11,10,8}	{}	2018-09-24 06:10:00.006124
23200	{10,1,17,3}	{}	2018-09-24 06:25:00.006064
23201	{10,14,20,18}	{}	2018-09-24 06:40:00.006137
23202	{9,1,2,5}	{}	2018-09-24 06:55:00.006047
23224	{15,3,1,8}	{}	2018-09-24 12:25:00.006107
23227	{13,4,6,12}	{}	2018-09-24 13:10:00.005881
23228	{13,19,20,15}	{}	2018-09-24 13:25:00.006095
23229	{5,9,7,14}	{}	2018-09-24 13:40:00.006037
23230	{18,21,12,14}	{}	2018-09-24 13:55:00.006014
23231	{1,10,19,13}	{}	2018-09-24 14:10:00.005991
23232	{16,4,15,8}	{}	2018-09-24 14:25:00.006108
23233	{3,2,9,4}	{}	2018-09-24 14:40:00.005995
23234	{4,3,20,14}	{}	2018-09-24 14:55:00.006113
23235	{3,19,9,20}	{}	2018-09-24 15:10:00.006138
23236	{3,17,18,1}	{}	2018-09-24 15:25:00.00604
23237	{17,15,7,16}	{}	2018-09-24 15:40:00.006039
23238	{3,2,9,14}	{}	2018-09-24 15:55:00.006041
23239	{4,1,8,15}	{}	2018-09-24 16:10:00.006044
23240	{3,13,8,14}	{}	2018-09-24 16:25:00.006142
23241	{15,20,2,9}	{}	2018-09-24 16:40:00.006047
23242	{7,6,1,13}	{}	2018-09-24 16:55:00.006259
20953	{11,9,8,16}	{}	2018-08-31 20:40:00.004769
20957	{11,6,8,12}	{}	2018-08-31 21:40:00.00468
20961	{18,15,17,6}	{}	2018-08-31 22:40:00.004651
22073	{6,10,5,19}	{}	2018-09-12 12:40:00.006051
22074	{8,14,3,9}	{}	2018-09-12 12:55:00.006084
22099	{18,19,5,15}	{}	2018-09-12 19:10:00.006083
22100	{7,6,10,1}	{}	2018-09-12 19:25:00.006019
22101	{1,16,2,10}	{}	2018-09-12 19:40:00.006129
22102	{18,8,19,10}	{}	2018-09-12 19:55:00.006129
22119	{7,15,5,11}	{}	2018-09-13 00:10:00.006069
22120	{2,15,6,20}	{}	2018-09-13 00:25:00.006077
22121	{6,20,10,13}	{}	2018-09-13 00:40:00.00596
22122	{20,19,12,10}	{}	2018-09-13 00:55:00.006019
22147	{13,16,12,19}	{}	2018-09-13 07:10:00.00616
22148	{1,4,2,20}	{}	2018-09-13 07:25:00.006081
22149	{4,20,16,18}	{}	2018-09-13 07:40:00.006032
22150	{14,17,1,3}	{}	2018-09-13 07:55:00.005976
22167	{7,18,14,21}	{}	2018-09-13 12:10:00.006086
22168	{11,5,7,6}	{}	2018-09-13 12:25:00.006648
22169	{5,19,21,8}	{}	2018-09-13 12:40:00.006083
22170	{13,3,4,6}	{}	2018-09-13 12:55:00.006065
22732	{2,5,10,13}	{}	2018-09-19 09:25:00.006023
22733	{17,6,14,1}	{}	2018-09-19 09:40:00.00598
22734	{1,9,19,12}	{}	2018-09-19 09:55:00.006021
22735	{18,4,3,21}	{}	2018-09-19 10:10:00.006087
22736	{12,1,17,5}	{}	2018-09-19 10:25:00.006118
22737	{20,13,10,1}	{}	2018-09-19 10:40:00.006041
22738	{8,14,12,9}	{}	2018-09-19 10:55:00.006165
22747	{16,18,13,17}	{}	2018-09-19 13:10:00.006127
22748	{1,5,16,9}	{}	2018-09-19 13:25:00.006058
22749	{16,5,4,12}	{}	2018-09-19 13:40:00.005997
22750	{16,10,18,1}	{}	2018-09-19 13:55:00.006059
22751	{16,2,12,17}	{}	2018-09-19 14:10:00.006085
22752	{6,16,2,10}	{}	2018-09-19 14:25:00.006023
22753	{16,3,10,6}	{}	2018-09-19 14:40:00.006073
22754	{18,6,14,9}	{}	2018-09-19 14:55:00.006052
22755	{21,18,1,5}	{}	2018-09-19 15:10:00.006135
22756	{13,3,19,9}	{}	2018-09-19 15:25:00.006087
22757	{14,17,13,7}	{}	2018-09-19 15:40:00.006039
22758	{6,14,4,9}	{}	2018-09-19 15:55:00.006049
22759	{10,6,18,1}	{}	2018-09-19 16:10:00.006021
22760	{15,14,16,19}	{}	2018-09-19 16:25:00.006685
22761	{17,4,14,19}	{}	2018-09-19 16:40:00.006015
22762	{8,9,1,15}	{}	2018-09-19 16:55:00.006205
22775	{19,4,11,21}	{}	2018-09-19 20:10:00.005951
22776	{1,19,12,18}	{}	2018-09-19 20:25:00.005954
22777	{3,5,14,19}	{}	2018-09-19 20:40:00.006059
22778	{16,18,6,3}	{}	2018-09-19 20:55:00.006107
22779	{7,14,19,5}	{}	2018-09-19 21:10:00.006026
22780	{15,10,19,4}	{}	2018-09-19 21:25:00.006119
22781	{20,14,8,6}	{}	2018-09-19 21:40:00.006152
22782	{18,15,4,10}	{}	2018-09-19 21:55:00.006029
22783	{11,21,16,8}	{}	2018-09-19 22:10:00.006033
22784	{1,11,13,19}	{}	2018-09-19 22:25:00.005982
22785	{9,17,2,3}	{}	2018-09-19 22:40:00.006072
22786	{12,7,17,13}	{}	2018-09-19 22:55:00.006132
22795	{16,18,4,13}	{}	2018-09-20 01:10:00.005072
22796	{2,5,12,8}	{}	2018-09-20 01:25:00.006052
22797	{19,5,20,9}	{}	2018-09-20 01:40:00.006044
22798	{3,1,13,21}	{}	2018-09-20 01:55:00.005956
22799	{15,16,12,17}	{}	2018-09-20 02:10:00.005984
22800	{6,18,17,3}	{}	2018-09-20 02:25:00.006019
22801	{19,13,16,15}	{}	2018-09-20 02:40:00.006116
22802	{19,6,13,9}	{}	2018-09-20 02:55:00.006076
22803	{8,21,11,16}	{}	2018-09-20 03:10:00.006025
22804	{9,7,19,2}	{}	2018-09-20 03:25:00.006136
22805	{8,7,16,21}	{}	2018-09-20 03:40:00.005998
22806	{18,20,2,13}	{}	2018-09-20 03:55:00.006064
22807	{10,3,5,12}	{}	2018-09-20 04:10:00.006024
22808	{17,20,10,15}	{}	2018-09-20 04:25:00.006063
22809	{6,1,10,11}	{}	2018-09-20 04:40:00.006075
22810	{20,7,4,10}	{}	2018-09-20 04:55:00.006245
22823	{6,19,1,8}	{}	2018-09-20 08:10:00.00604
22824	{2,18,7,20}	{}	2018-09-20 08:25:00.006017
22825	{11,5,2,18}	{}	2018-09-20 08:40:00.006017
22826	{11,20,21,19}	{}	2018-09-20 08:55:00.006045
22827	{4,8,11,17}	{}	2018-09-20 09:10:00.006081
20954	{3,19,4,10}	{}	2018-08-31 20:55:00.004687
20958	{18,12,8,6}	{}	2018-08-31 21:55:00.004657
20962	{11,6,17,12}	{}	2018-08-31 22:55:00.004705
22075	{14,11,2,8}	{}	2018-09-12 13:10:00.006062
22076	{1,15,14,2}	{}	2018-09-12 13:25:00.00604
22077	{5,6,1,15}	{}	2018-09-12 13:40:00.005951
22078	{2,19,7,20}	{}	2018-09-12 13:55:00.006145
22079	{9,18,17,2}	{}	2018-09-12 14:10:00.006043
22080	{9,17,13,5}	{}	2018-09-12 14:25:00.006018
22081	{10,4,8,11}	{}	2018-09-12 14:40:00.006108
22082	{13,12,4,19}	{}	2018-09-12 14:55:00.005969
22083	{20,19,16,11}	{}	2018-09-12 15:10:00.005971
22084	{17,19,18,10}	{}	2018-09-12 15:25:00.006022
22085	{7,3,2,18}	{}	2018-09-12 15:40:00.006037
22086	{16,19,20,1}	{}	2018-09-12 15:55:00.006099
22087	{18,4,1,7}	{}	2018-09-12 16:10:00.006064
22088	{1,16,6,21}	{}	2018-09-12 16:25:00.006084
22089	{5,13,19,20}	{}	2018-09-12 16:40:00.00605
22090	{14,15,21,11}	{}	2018-09-12 16:55:00.006144
22103	{12,19,10,9}	{}	2018-09-12 20:10:00.006002
22104	{15,11,4,5}	{}	2018-09-12 20:25:00.006068
22105	{13,19,3,15}	{}	2018-09-12 20:40:00.006031
22106	{15,12,9,13}	{}	2018-09-12 20:55:00.005904
22107	{1,17,14,13}	{}	2018-09-12 21:10:00.006067
22108	{16,18,1,21}	{}	2018-09-12 21:25:00.006159
22109	{2,14,4,5}	{}	2018-09-12 21:40:00.006109
22110	{20,11,15,9}	{}	2018-09-12 21:55:00.006071
22111	{13,14,1,17}	{}	2018-09-12 22:10:00.006064
22112	{15,8,21,12}	{}	2018-09-12 22:25:00.006049
22113	{16,9,12,7}	{}	2018-09-12 22:40:00.006094
22114	{5,21,9,12}	{}	2018-09-12 22:55:00.006117
22123	{6,17,19,2}	{}	2018-09-13 01:10:00.005955
22124	{11,20,21,9}	{}	2018-09-13 01:25:00.006138
22125	{2,18,17,5}	{}	2018-09-13 01:40:00.00614
22126	{5,6,13,18}	{}	2018-09-13 01:55:00.006122
22127	{5,1,11,9}	{}	2018-09-13 02:10:00.005972
22128	{15,7,13,1}	{}	2018-09-13 02:25:00.005972
22129	{9,15,7,19}	{}	2018-09-13 02:40:00.006007
22130	{5,13,11,4}	{}	2018-09-13 02:55:00.006015
22131	{3,18,20,15}	{}	2018-09-13 03:10:00.006076
22132	{20,12,6,14}	{}	2018-09-13 03:25:00.006045
22133	{12,6,16,19}	{}	2018-09-13 03:40:00.005989
22134	{10,15,12,6}	{}	2018-09-13 03:55:00.005975
22135	{9,10,4,1}	{}	2018-09-13 04:10:00.006075
22136	{19,7,6,8}	{}	2018-09-13 04:25:00.00613
22137	{15,7,8,6}	{}	2018-09-13 04:40:00.006016
22138	{11,4,15,16}	{}	2018-09-13 04:55:00.006148
22151	{10,16,18,3}	{}	2018-09-13 08:10:00.006014
22152	{9,13,8,12}	{}	2018-09-13 08:25:00.006036
22153	{1,15,20,21}	{}	2018-09-13 08:40:00.005998
22154	{13,9,2,8}	{}	2018-09-13 08:55:00.00602
22155	{5,11,19,15}	{}	2018-09-13 09:10:00.006037
22156	{11,1,13,18}	{}	2018-09-13 09:25:00.005301
22157	{2,18,17,13}	{}	2018-09-13 09:40:00.006047
22158	{20,7,8,5}	{}	2018-09-13 09:55:00.006011
22159	{14,18,16,17}	{}	2018-09-13 10:10:00.006104
22160	{20,10,1,16}	{}	2018-09-13 10:25:00.006066
22161	{6,15,21,5}	{}	2018-09-13 10:40:00.006109
22162	{4,18,3,5}	{}	2018-09-13 10:55:00.006059
22171	{7,8,21,16}	{}	2018-09-13 13:10:00.006113
22172	{8,3,19,10}	{}	2018-09-13 13:25:00.006112
22173	{9,19,15,16}	{}	2018-09-13 13:40:00.005959
22174	{3,19,17,11}	{}	2018-09-13 13:55:00.006094
22175	{21,4,17,20}	{}	2018-09-13 14:10:00.006108
22176	{21,5,4,11}	{}	2018-09-13 14:25:00.006633
22177	{5,16,17,7}	{}	2018-09-13 14:40:00.006042
22178	{1,5,16,17}	{}	2018-09-13 14:55:00.006096
22179	{6,8,1,15}	{}	2018-09-13 15:10:00.006141
22180	{4,2,15,7}	{}	2018-09-13 15:25:00.006048
22181	{19,11,17,3}	{}	2018-09-13 15:40:00.006131
22182	{8,16,3,18}	{}	2018-09-13 15:55:00.006097
22183	{16,13,17,11}	{}	2018-09-13 16:10:00.006067
22184	{10,6,18,13}	{}	2018-09-13 16:25:00.006064
22185	{14,12,7,2}	{}	2018-09-13 16:40:00.006033
22186	{14,5,3,10}	{}	2018-09-13 16:55:00.006057
22739	{2,1,12,20}	{}	2018-09-19 11:10:00.006161
22740	{7,8,9,5}	{}	2018-09-19 11:25:00.006058
20905	{19,13,8,20}	{}	2018-08-31 09:10:00.004645
20907	{13,16,8,7}	{}	2018-08-31 09:25:00.004615
20909	{8,2,13,5}	{}	2018-08-31 09:40:00.00455
20911	{5,4,16,9}	{}	2018-08-31 09:55:00.004391
20912	{11,10,16,8}	\N	2018-08-31 10:10:00.004679
20915	{5,7,18,12}	{}	2018-08-31 10:25:00.004566
20916	{21,9,17,7}	{}	2018-08-31 10:40:00.004731
20917	{7,2,9,16}	{}	2018-08-31 10:55:00.004635
20926	{2,19,13,17}	{}	2018-08-31 13:10:00.004828
20927	{14,2,20,13}	{}	2018-08-31 13:25:00.00473
20928	{5,4,20,9}	{}	2018-08-31 13:40:00.004692
20929	{9,7,4,8}	{}	2018-08-31 13:55:00.004719
20930	{5,12,9,18}	{}	2018-08-31 14:10:00.004692
20931	{15,19,20,6}	{}	2018-08-31 14:25:00.004695
20932	{18,10,13,16}	{}	2018-08-31 14:40:00.004695
20933	{17,10,9,6}	{}	2018-08-31 14:55:00.004689
20934	{12,9,13,21}	{}	2018-08-31 15:10:00.004705
20935	{11,20,14,4}	{}	2018-08-31 15:25:00.004643
20936	{4,16,15,18}	{}	2018-08-31 15:40:00.004647
22091	{4,3,16,1}	{}	2018-09-12 17:10:00.006174
22092	{3,15,8,1}	{}	2018-09-12 17:25:00.006048
22093	{1,16,14,21}	{}	2018-09-12 17:40:00.006068
22094	{1,11,15,21}	{}	2018-09-12 17:55:00.00603
22095	{3,20,11,16}	{}	2018-09-12 18:10:00.006014
22096	{9,3,14,18}	{}	2018-09-12 18:25:00.005975
22097	{2,13,18,19}	{}	2018-09-12 18:40:00.006083
22098	{8,6,17,14}	{}	2018-09-12 18:55:00.005926
22115	{17,6,18,8}	{}	2018-09-12 23:10:00.005935
22116	{9,21,5,15}	{}	2018-09-12 23:25:00.006103
22117	{15,11,13,21}	{}	2018-09-12 23:40:00.006182
22118	{16,18,11,3}	{}	2018-09-12 23:55:00.006195
22139	{18,7,20,8}	{}	2018-09-13 05:10:00.006098
22140	{19,21,15,8}	{}	2018-09-13 05:25:00.006048
22141	{14,5,20,17}	{}	2018-09-13 05:40:00.006059
22142	{16,4,15,2}	{}	2018-09-13 05:55:00.005981
22143	{10,20,13,19}	{}	2018-09-13 06:10:00.006063
22144	{4,2,21,8}	{}	2018-09-13 06:25:00.006057
22145	{18,7,21,3}	{}	2018-09-13 06:40:00.006606
22146	{6,14,19,18}	{}	2018-09-13 06:55:00.006085
22163	{21,2,20,6}	{}	2018-09-13 11:10:00.006252
22164	{11,17,6,14}	{}	2018-09-13 11:25:00.006004
22165	{6,1,12,16}	{}	2018-09-13 11:40:00.006005
22166	{21,13,4,12}	{}	2018-09-13 11:55:00.005992
22187	{11,14,19,15}	{}	2018-09-13 17:10:00.006131
22188	{8,7,1,5}	{}	2018-09-13 17:25:00.006096
22189	{16,5,11,7}	{}	2018-09-13 17:40:00.006024
22190	{11,3,12,2}	{}	2018-09-13 17:55:00.006047
22191	{9,20,16,11}	{}	2018-09-13 18:10:00.006082
22741	{15,16,8,5}	{}	2018-09-19 11:40:00.005967
22742	{12,20,1,21}	{}	2018-09-19 11:55:00.006131
22763	{7,8,18,21}	{}	2018-09-19 17:10:00.005961
22764	{4,14,8,9}	{}	2018-09-19 17:25:00.006068
22765	{20,2,11,7}	{}	2018-09-19 17:40:00.006035
22766	{17,12,8,13}	{}	2018-09-19 17:55:00.006071
22767	{19,21,9,17}	{}	2018-09-19 18:10:00.006054
22768	{5,6,19,15}	{}	2018-09-19 18:25:00.006
22769	{19,21,16,7}	{}	2018-09-19 18:40:00.006003
22770	{20,18,9,19}	{}	2018-09-19 18:55:00.006036
22787	{2,13,4,8}	{}	2018-09-19 23:10:00.006305
22788	{15,10,12,13}	{}	2018-09-19 23:25:00.006146
22789	{4,20,12,14}	{}	2018-09-19 23:40:00.006007
22790	{5,11,7,10}	{}	2018-09-19 23:55:00.006095
22811	{3,17,2,10}	{}	2018-09-20 05:10:00.006116
22812	{9,6,19,8}	{}	2018-09-20 05:25:00.005976
22813	{9,11,7,3}	{}	2018-09-20 05:40:00.006084
22814	{5,18,17,15}	{}	2018-09-20 05:55:00.006052
22815	{2,3,13,4}	{}	2018-09-20 06:10:00.006197
22816	{18,17,8,2}	{}	2018-09-20 06:25:00.006165
22817	{2,18,12,10}	{}	2018-09-20 06:40:00.006052
22818	{16,3,17,19}	{}	2018-09-20 06:55:00.006064
22835	{16,11,17,8}	{}	2018-09-20 11:10:00.006107
22836	{20,3,13,1}	{}	2018-09-20 11:25:00.006006
22837	{11,1,9,14}	{}	2018-09-20 11:40:00.006675
22838	{2,15,16,7}	{}	2018-09-20 11:55:00.006082
23044	{9,11,7,20}	{}	2018-09-22 15:25:00.006062
23045	{13,8,3,19}	{}	2018-09-22 15:40:00.006045
23046	{8,13,6,9}	{}	2018-09-22 15:55:00.006159
23282	{20,15,3,14}	{}	2018-09-25 02:55:00.006082
23283	{19,1,9,14}	{}	2018-09-25 03:10:00.006121
23284	{6,14,18,8}	{}	2018-09-25 03:25:00.006068
23285	{16,7,12,17}	{}	2018-09-25 03:40:00.006091
23286	{1,2,17,21}	{}	2018-09-25 03:55:00.005966
23287	{6,7,13,10}	{}	2018-09-25 04:10:00.006041
23288	{7,21,15,6}	{}	2018-09-25 04:25:00.006118
23289	{5,9,13,3}	{}	2018-09-25 04:40:00.005571
23290	{3,10,1,9}	{}	2018-09-25 04:55:00.006219
23303	{3,18,2,21}	{}	2018-09-25 08:10:00.006101
23304	{4,14,10,16}	{}	2018-09-25 08:25:00.006139
23305	{13,10,11,1}	{}	2018-09-25 08:40:00.006146
23306	{18,4,1,5}	{}	2018-09-25 08:55:00.005869
23307	{21,14,17,15}	{}	2018-09-25 09:10:00.006146
23308	{20,1,12,7}	{}	2018-09-25 09:25:00.006142
23309	{19,18,9,6}	{}	2018-09-25 09:40:00.00609
23310	{3,20,18,13}	{}	2018-09-25 09:55:00.006233
23311	{5,18,17,9}	{}	2018-09-25 10:10:00.006093
23312	{17,7,1,15}	{}	2018-09-25 10:25:00.006079
23313	{17,18,21,1}	{}	2018-09-25 10:40:00.006044
23314	{8,16,2,19}	{}	2018-09-25 10:55:00.005769
23323	{1,16,3,15}	{}	2018-09-25 13:10:00.006057
23324	{10,20,5,16}	{}	2018-09-25 13:25:00.005958
23325	{9,8,14,17}	{}	2018-09-25 13:40:00.006028
23326	{4,5,7,3}	{}	2018-09-25 13:55:00.006081
23327	{9,6,21,7}	{}	2018-09-25 14:10:00.00608
23328	{7,21,1,16}	{}	2018-09-25 14:25:00.006072
23329	{15,2,5,6}	{}	2018-09-25 14:40:00.006062
23330	{18,14,12,2}	{}	2018-09-25 14:55:00.006061
23331	{10,21,2,17}	{}	2018-09-25 15:10:00.00606
23332	{21,19,18,12}	{}	2018-09-25 15:25:00.006052
23333	{18,17,9,12}	{}	2018-09-25 15:40:00.00616
23334	{7,11,6,1}	{}	2018-09-25 15:55:00.00603
23335	{8,15,9,4}	{}	2018-09-25 16:10:00.00606
23336	{8,15,11,12}	{}	2018-09-25 16:25:00.006068
23337	{10,3,18,17}	{}	2018-09-25 16:40:00.006139
23338	{18,6,1,16}	{}	2018-09-25 16:55:00.00625
23351	{17,12,21,5}	{}	2018-09-25 20:10:00.0061
23352	{5,20,4,7}	{}	2018-09-25 20:25:00.006087
23353	{16,6,13,14}	{}	2018-09-25 20:40:00.006181
23354	{11,7,21,18}	{}	2018-09-25 20:55:00.006095
23355	{7,21,13,14}	{}	2018-09-25 21:10:00.00603
23356	{5,2,12,11}	{}	2018-09-25 21:25:00.006052
23357	{6,20,7,10}	{}	2018-09-25 21:40:00.006147
23358	{2,13,5,4}	{}	2018-09-25 21:55:00.006086
23359	{17,8,18,19}	{}	2018-09-25 22:10:00.006054
23360	{3,15,13,14}	{}	2018-09-25 22:25:00.006007
23361	{6,8,13,9}	{}	2018-09-25 22:40:00.006007
23362	{8,15,6,16}	{}	2018-09-25 22:55:00.00619
23371	{13,2,8,3}	{}	2018-09-26 01:10:00.006104
23372	{10,14,13,4}	{}	2018-09-26 01:25:00.005477
23373	{11,20,16,5}	{}	2018-09-26 01:40:00.006094
23374	{14,2,21,10}	{}	2018-09-26 01:55:00.006062
23375	{3,14,2,15}	{}	2018-09-26 02:10:00.006134
23376	{18,21,2,17}	{}	2018-09-26 02:25:00.006194
23377	{17,20,10,3}	{}	2018-09-26 02:40:00.005951
23378	{9,19,18,3}	{}	2018-09-26 02:55:00.005988
23379	{19,7,10,15}	{}	2018-09-26 03:10:00.006167
23380	{21,1,13,6}	{}	2018-09-26 03:25:00.006067
23381	{7,21,10,19}	{}	2018-09-26 03:40:00.00606
23382	{13,20,16,12}	{}	2018-09-26 03:55:00.006163
23383	{20,13,18,21}	{}	2018-09-26 04:10:00.006088
23384	{18,11,3,4}	{}	2018-09-26 04:25:00.006079
23385	{14,6,18,13}	{}	2018-09-26 04:40:00.006172
23386	{15,19,13,5}	{}	2018-09-26 04:55:00.006175
23291	{4,19,3,8}	{}	2018-09-25 05:10:00.00615
23292	{13,20,5,4}	{}	2018-09-25 05:25:00.00612
23293	{2,6,16,20}	{}	2018-09-25 05:40:00.006045
23294	{5,17,9,20}	{}	2018-09-25 05:55:00.00607
23295	{12,19,15,5}	{}	2018-09-25 06:10:00.005982
23296	{15,18,3,7}	{}	2018-09-25 06:25:00.006051
23297	{6,9,16,19}	{}	2018-09-25 06:40:00.006176
23298	{13,12,10,7}	{}	2018-09-25 06:55:00.005979
23315	{4,1,3,18}	{}	2018-09-25 11:10:00.006161
23316	{8,16,13,17}	{}	2018-09-25 11:25:00.006171
23317	{19,16,9,10}	{}	2018-09-25 11:40:00.005977
23318	{10,13,19,16}	{}	2018-09-25 11:55:00.006112
23339	{4,15,6,13}	{}	2018-09-25 17:10:00.005844
23340	{9,11,16,21}	{}	2018-09-25 17:25:00.006019
23341	{10,3,18,6}	{}	2018-09-25 17:40:00.006124
23342	{8,12,1,5}	{}	2018-09-25 17:55:00.006117
23343	{10,16,9,4}	{}	2018-09-25 18:10:00.006149
23344	{5,9,11,20}	{}	2018-09-25 18:25:00.006124
23345	{7,19,11,17}	{}	2018-09-25 18:40:00.006077
23346	{10,11,9,13}	{}	2018-09-25 18:55:00.006083
23363	{11,15,2,4}	{}	2018-09-25 23:10:00.00632
23364	{3,21,5,2}	{}	2018-09-25 23:25:00.006165
23365	{21,8,10,14}	{}	2018-09-25 23:40:00.006241
23366	{17,7,13,1}	{}	2018-09-25 23:55:00.006214
23387	{5,2,14,20}	{}	2018-09-26 05:10:00.00622
23299	{13,18,6,20}	{}	2018-09-25 07:10:00.006115
23300	{11,1,6,21}	{}	2018-09-25 07:25:00.006109
23301	{1,8,3,15}	{}	2018-09-25 07:40:00.006156
23302	{10,1,7,11}	{}	2018-09-25 07:55:00.006091
23319	{7,1,6,16}	{}	2018-09-25 12:10:00.006145
23320	{3,2,7,19}	{}	2018-09-25 12:25:00.006077
23321	{15,11,4,12}	{}	2018-09-25 12:40:00.006087
23322	{19,17,2,21}	{}	2018-09-25 12:55:00.006022
23347	{9,19,14,10}	{}	2018-09-25 19:10:00.006116
23348	{16,9,14,1}	{}	2018-09-25 19:25:00.006076
23349	{20,5,14,16}	{}	2018-09-25 19:40:00.006044
23350	{4,9,16,20}	{}	2018-09-25 19:55:00.006067
23367	{20,1,10,2}	{}	2018-09-26 00:10:00.006124
23368	{13,6,20,18}	{}	2018-09-26 00:25:00.006062
23369	{2,5,12,15}	{}	2018-09-26 00:40:00.005989
23370	{3,14,17,7}	{}	2018-09-26 00:55:00.00598
23388	{7,20,4,2}	{}	2018-09-26 05:25:00.006071
23389	{18,21,2,3}	{}	2018-09-26 05:40:00.006063
23390	{9,3,19,8}	{}	2018-09-26 05:55:00.006141
23391	{7,15,11,3}	{}	2018-09-26 06:10:00.006038
23392	{6,13,20,14}	{}	2018-09-26 06:25:00.006049
23393	{8,12,11,4}	{}	2018-09-26 06:40:00.006098
23394	{11,7,8,2}	{}	2018-09-26 06:55:00.006033
23395	{9,20,8,12}	{}	2018-09-26 07:10:00.006183
23396	{2,15,10,20}	{}	2018-09-26 07:25:00.006132
23397	{2,5,15,3}	{}	2018-09-26 07:40:00.006129
23398	{10,5,17,12}	{}	2018-09-26 07:55:00.006067
23399	{9,11,18,17}	{}	2018-09-26 08:10:00.005986
23400	{1,6,19,11}	{}	2018-09-26 08:25:00.006055
23401	{8,5,6,14}	{}	2018-09-26 08:40:00.006122
23402	{9,18,6,21}	{}	2018-09-26 08:55:00.006114
23403	{18,13,7,8}	{}	2018-09-26 09:10:00.006149
23404	{14,2,19,20}	{}	2018-09-26 09:25:00.006007
23405	{11,14,12,3}	{}	2018-09-26 09:40:00.006074
23406	{9,19,20,5}	{}	2018-09-26 09:55:00.006128
23407	{5,4,8,17}	{}	2018-09-26 10:10:00.006042
23408	{7,16,6,20}	{}	2018-09-26 10:25:00.006038
23409	{21,1,16,6}	{}	2018-09-26 10:40:00.005974
23410	{4,17,21,9}	{}	2018-09-26 10:55:00.006163
23411	{4,16,18,12}	{}	2018-09-26 11:10:00.006169
23412	{13,7,19,11}	{}	2018-09-26 11:25:00.006038
23413	{5,6,18,7}	{}	2018-09-26 11:40:00.006154
23414	{7,6,3,19}	{}	2018-09-26 11:55:00.006148
23415	{1,20,14,7}	{}	2018-09-26 12:10:00.006092
23416	{14,5,17,7}	{}	2018-09-26 12:25:00.006075
23417	{2,5,7,8}	{}	2018-09-26 12:40:00.006116
23418	{13,12,21,6}	{}	2018-09-26 12:55:00.006128
23419	{19,4,16,13}	{}	2018-09-26 13:10:00.006051
23420	{6,1,3,7}	{}	2018-09-26 13:25:00.006074
23421	{21,20,15,8}	{}	2018-09-26 13:40:00.006116
23422	{14,3,21,10}	{}	2018-09-26 13:55:00.00608
23423	{3,17,19,11}	{}	2018-09-26 14:10:00.006015
23424	{10,17,3,6}	{}	2018-09-26 14:25:00.006058
23425	{19,2,10,9}	{}	2018-09-26 14:40:00.006061
23426	{1,16,4,15}	{}	2018-09-26 14:55:00.006166
23427	{9,8,17,14}	{}	2018-09-26 15:10:00.00606
23428	{7,15,17,20}	{}	2018-09-26 15:25:00.006163
23429	{1,8,9,17}	{}	2018-09-26 15:40:00.006099
23430	{12,16,9,8}	{}	2018-09-26 15:55:00.006068
23431	{8,14,20,11}	{}	2018-09-26 16:10:00.006085
23432	{20,13,6,8}	{}	2018-09-26 16:25:00.006074
23433	{9,19,21,2}	{}	2018-09-26 16:40:00.006128
23434	{7,19,13,18}	{}	2018-09-26 16:55:00.00629
23435	{17,12,18,2}	{}	2018-09-26 17:10:00.006255
23436	{1,16,20,3}	{}	2018-09-26 17:25:00.006092
23437	{10,11,3,21}	{}	2018-09-26 17:40:00.006174
23438	{6,4,16,7}	{}	2018-09-26 17:55:00.006175
23439	{17,12,1,5}	{}	2018-09-26 18:10:00.006041
23440	{17,10,19,12}	{}	2018-09-26 18:25:00.006071
23441	{9,10,12,3}	{}	2018-09-26 18:40:00.00613
23442	{18,11,12,8}	{}	2018-09-26 18:55:00.006151
23443	{4,16,13,12}	{}	2018-09-26 19:10:00.006048
23444	{9,21,5,10}	{}	2018-09-26 19:25:00.006077
23445	{1,21,9,10}	{}	2018-09-26 19:40:00.006066
23446	{16,21,3,4}	{}	2018-09-26 19:55:00.006135
23447	{13,16,8,10}	{}	2018-09-26 20:10:00.006132
23448	{17,11,1,18}	{}	2018-09-26 20:25:00.006125
23449	{11,9,2,21}	{}	2018-09-26 20:40:00.006065
23450	{6,15,18,11}	{}	2018-09-26 20:55:00.00616
23451	{12,7,1,2}	{}	2018-09-26 21:10:00.006066
23452	{19,16,13,3}	{}	2018-09-26 21:25:00.006198
23453	{12,17,14,8}	{}	2018-09-26 21:40:00.006172
23454	{4,6,15,21}	{}	2018-09-26 21:55:00.006116
23455	{13,5,6,19}	{}	2018-09-26 22:10:00.006161
23456	{3,7,13,10}	{}	2018-09-26 22:25:00.006073
23457	{6,1,7,15}	{}	2018-09-26 22:40:00.006152
23458	{19,15,17,8}	{}	2018-09-26 22:55:00.006221
23467	{12,15,8,20}	{}	2018-09-27 01:10:00.006119
23468	{1,17,7,9}	{}	2018-09-27 01:25:00.005929
23469	{20,14,7,17}	{}	2018-09-27 01:40:00.006073
23470	{14,15,2,21}	{}	2018-09-27 01:55:00.006173
23471	{2,5,18,19}	{}	2018-09-27 02:10:00.006105
23472	{7,16,13,18}	{}	2018-09-27 02:25:00.006096
23473	{20,6,21,2}	{}	2018-09-27 02:40:00.006148
23474	{16,4,10,5}	{}	2018-09-27 02:55:00.006132
23475	{13,8,12,10}	{}	2018-09-27 03:10:00.006204
23476	{4,14,7,18}	{}	2018-09-27 03:25:00.006099
23477	{8,5,13,21}	{}	2018-09-27 03:40:00.006077
23478	{8,10,3,18}	{}	2018-09-27 03:55:00.006141
23479	{8,15,11,16}	{}	2018-09-27 04:10:00.006098
23480	{10,9,21,15}	{}	2018-09-27 04:25:00.005458
23481	{12,21,7,15}	{}	2018-09-27 04:40:00.006094
23482	{6,7,8,19}	{}	2018-09-27 04:55:00.006144
23495	{7,17,20,6}	{}	2018-09-27 08:10:00.006075
23496	{10,5,19,7}	{}	2018-09-27 08:25:00.006095
23497	{12,9,20,16}	{}	2018-09-27 08:40:00.006073
23498	{5,7,12,1}	{}	2018-09-27 08:55:00.006088
23499	{8,13,12,6}	{}	2018-09-27 09:10:00.00618
23500	{15,7,21,6}	{}	2018-09-27 09:25:00.00624
23501	{16,18,11,20}	{}	2018-09-27 09:40:00.005901
23502	{16,11,10,12}	{}	2018-09-27 09:55:00.006201
23503	{21,16,15,1}	{}	2018-09-27 10:10:00.006108
23504	{19,14,10,17}	{}	2018-09-27 10:25:00.00611
23505	{14,19,8,9}	{}	2018-09-27 10:40:00.005645
23506	{7,6,21,13}	{}	2018-09-27 10:55:00.006176
23515	{15,11,19,21}	{}	2018-09-27 13:10:00.005989
23516	{1,10,21,18}	{}	2018-09-27 13:25:00.006093
23517	{2,20,15,13}	{}	2018-09-27 13:40:00.006111
23518	{8,19,12,13}	{}	2018-09-27 13:55:00.006004
23519	{7,14,2,9}	{}	2018-09-27 14:10:00.006118
23520	{16,14,19,5}	{}	2018-09-27 14:25:00.006083
23521	{17,14,10,1}	{}	2018-09-27 14:40:00.00609
23522	{1,6,21,16}	{}	2018-09-27 14:55:00.006207
23523	{1,17,14,4}	{}	2018-09-27 15:10:00.00612
23524	{5,4,6,2}	{}	2018-09-27 15:25:00.006139
23525	{2,16,8,5}	{}	2018-09-27 15:40:00.006038
23526	{4,2,16,8}	{}	2018-09-27 15:55:00.006063
23527	{12,13,3,5}	{}	2018-09-27 16:10:00.006128
23528	{6,17,10,12}	{}	2018-09-27 16:25:00.006155
23529	{19,10,14,15}	{}	2018-09-27 16:40:00.006041
23530	{16,14,11,8}	{}	2018-09-27 16:55:00.006176
23543	{6,7,8,12}	{}	2018-09-27 20:10:00.006196
23544	{13,17,9,12}	{}	2018-09-27 20:25:00.00609
23545	{1,5,2,21}	{}	2018-09-27 20:40:00.006059
23546	{6,13,14,3}	{}	2018-09-27 20:55:00.006155
23547	{13,16,14,9}	{}	2018-09-27 21:10:00.006149
23548	{18,15,19,20}	{}	2018-09-27 21:25:00.006057
23549	{15,9,20,21}	{}	2018-09-27 21:40:00.006209
23550	{21,3,8,12}	{}	2018-09-27 21:55:00.006113
23551	{17,11,15,12}	{}	2018-09-27 22:10:00.006015
23552	{12,17,19,1}	{}	2018-09-27 22:25:00.006144
23553	{17,4,6,21}	{}	2018-09-27 22:40:00.006107
23554	{16,1,4,5}	{}	2018-09-27 22:55:00.006085
23563	{10,5,16,6}	{}	2018-09-28 01:10:00.006062
23564	{9,17,6,1}	{}	2018-09-28 01:25:00.006212
23565	{17,2,13,9}	{}	2018-09-28 01:40:00.005938
23566	{12,7,20,16}	{}	2018-09-28 01:55:00.006185
23567	{10,18,17,11}	{}	2018-09-28 02:10:00.006125
23568	{2,18,12,15}	{}	2018-09-28 02:25:00.006099
23569	{16,5,2,13}	{}	2018-09-28 02:40:00.006098
23570	{21,15,11,12}	{}	2018-09-28 02:55:00.006182
23571	{20,5,13,16}	{}	2018-09-28 03:10:00.005982
23572	{18,14,13,20}	{}	2018-09-28 03:25:00.006145
23459	{1,15,13,17}	{}	2018-09-26 23:10:00.006326
23463	{10,14,16,6}	{}	2018-09-27 00:10:00.00603
23464	{15,8,9,21}	{}	2018-09-27 00:25:00.006185
23465	{18,21,12,6}	{}	2018-09-27 00:40:00.006158
23466	{15,2,5,12}	{}	2018-09-27 00:55:00.006079
23491	{11,14,17,19}	{}	2018-09-27 07:10:00.006122
23492	{16,20,11,6}	{}	2018-09-27 07:25:00.006059
23493	{20,5,19,17}	{}	2018-09-27 07:40:00.006151
23494	{15,20,19,3}	{}	2018-09-27 07:55:00.006061
23511	{10,13,3,2}	{}	2018-09-27 12:10:00.006134
23512	{21,20,1,16}	{}	2018-09-27 12:25:00.006107
23513	{10,1,15,20}	{}	2018-09-27 12:40:00.006129
23514	{5,18,4,11}	{}	2018-09-27 12:55:00.006142
23539	{11,5,12,10}	{}	2018-09-27 19:10:00.006127
23540	{21,10,8,1}	{}	2018-09-27 19:25:00.006135
23541	{8,2,21,10}	{}	2018-09-27 19:40:00.006095
23542	{7,9,8,14}	{}	2018-09-27 19:55:00.00616
23559	{6,17,7,5}	{}	2018-09-28 00:10:00.006057
23560	{13,6,5,15}	{}	2018-09-28 00:25:00.005982
23561	{13,11,16,12}	{}	2018-09-28 00:40:00.006135
23562	{6,8,19,9}	{}	2018-09-28 00:55:00.006103
23460	{4,2,16,19}	{}	2018-09-26 23:25:00.006184
23461	{15,2,11,16}	{}	2018-09-26 23:40:00.006267
23462	{19,18,17,4}	{}	2018-09-26 23:55:00.00621
23483	{2,4,14,3}	{}	2018-09-27 05:10:00.006191
23484	{18,13,5,21}	{}	2018-09-27 05:25:00.006081
23485	{4,13,18,8}	{}	2018-09-27 05:40:00.006065
23486	{19,7,3,11}	{}	2018-09-27 05:55:00.006114
23487	{11,9,14,21}	{}	2018-09-27 06:10:00.006134
23488	{19,7,5,3}	{}	2018-09-27 06:25:00.00596
23489	{3,16,18,14}	{}	2018-09-27 06:40:00.006039
23490	{12,13,4,10}	{}	2018-09-27 06:55:00.006092
23507	{15,13,1,12}	{}	2018-09-27 11:10:00.006129
23508	{10,5,6,7}	{}	2018-09-27 11:25:00.006115
23509	{14,20,8,10}	{}	2018-09-27 11:40:00.006151
23510	{10,19,1,16}	{}	2018-09-27 11:55:00.006188
23531	{15,9,13,8}	{}	2018-09-27 17:10:00.006181
23532	{14,6,1,2}	{}	2018-09-27 17:25:00.006162
23533	{2,4,12,10}	{}	2018-09-27 17:40:00.006185
23534	{2,5,10,15}	{}	2018-09-27 17:55:00.005643
23535	{6,9,21,16}	{}	2018-09-27 18:10:00.006746
23536	{21,9,17,15}	{}	2018-09-27 18:25:00.006129
23537	{8,9,16,3}	{}	2018-09-27 18:40:00.006109
23538	{9,14,1,8}	{}	2018-09-27 18:55:00.006126
23555	{9,19,18,12}	{}	2018-09-27 23:10:00.00635
23556	{15,12,9,1}	{}	2018-09-27 23:25:00.006147
23557	{5,15,19,17}	{}	2018-09-27 23:40:00.006307
23558	{9,5,11,6}	{}	2018-09-27 23:55:00.006289
23573	{3,2,19,18}	{}	2018-09-28 03:40:00.006051
23574	{9,11,18,7}	{}	2018-09-28 03:55:00.006101
23575	{10,6,18,19}	{}	2018-09-28 04:10:00.006107
23576	{20,5,15,7}	{}	2018-09-28 04:25:00.00618
23577	{6,18,2,13}	{}	2018-09-28 04:40:00.0062
23578	{10,1,14,5}	{}	2018-09-28 04:55:00.006241
23579	{19,10,18,1}	{}	2018-09-28 05:10:00.006209
23580	{11,19,2,1}	{}	2018-09-28 05:25:00.006184
23581	{7,20,5,3}	{}	2018-09-28 05:40:00.006157
23582	{2,12,17,18}	{}	2018-09-28 05:55:00.006132
23583	{5,10,17,12}	{}	2018-09-28 06:10:00.006115
23584	{10,13,8,18}	{}	2018-09-28 06:25:00.006042
23585	{18,6,2,20}	{}	2018-09-28 06:40:00.006173
23586	{17,1,5,15}	{}	2018-09-28 06:55:00.006138
23587	{6,8,15,14}	{}	2018-09-28 07:10:00.006142
23588	{7,10,3,21}	{}	2018-09-28 07:25:00.006179
23589	{2,6,20,13}	{}	2018-09-28 07:40:00.00684
23590	{9,18,3,10}	{}	2018-09-28 07:55:00.00612
23591	{15,7,6,14}	{}	2018-09-28 08:10:00.006122
23592	{10,8,5,14}	{}	2018-09-28 08:25:00.006104
23593	{14,16,15,21}	{}	2018-09-28 08:40:00.00608
23594	{6,4,2,13}	{}	2018-09-28 08:55:00.006134
23595	{3,14,19,12}	{}	2018-09-28 09:10:00.006045
23596	{4,20,2,1}	{}	2018-09-28 09:25:00.006169
23597	{20,1,21,18}	{}	2018-09-28 09:40:00.006707
23598	{12,19,10,13}	{}	2018-09-28 09:55:00.006191
23599	{9,15,3,17}	{}	2018-09-28 10:10:00.006164
23600	{17,2,1,7}	{}	2018-09-28 10:25:00.006118
23601	{2,14,15,13}	{}	2018-09-28 10:40:00.006059
23602	{20,21,15,8}	{}	2018-09-28 10:55:00.006255
23603	{4,6,16,3}	{}	2018-09-28 11:10:00.006203
23604	{16,19,1,11}	{}	2018-09-28 11:25:00.005921
23605	{3,15,16,9}	{}	2018-09-28 11:40:00.006782
23606	{5,17,6,18}	{}	2018-09-28 11:55:00.006127
23607	{17,6,10,15}	{}	2018-09-28 12:10:00.006111
23608	{15,17,20,16}	{}	2018-09-28 12:25:00.006088
23609	{2,1,16,14}	{}	2018-09-28 12:40:00.006088
23610	{7,14,1,18}	{}	2018-09-28 12:55:00.006133
23611	{3,6,20,14}	{}	2018-09-28 13:10:00.006201
23612	{19,1,3,15}	{}	2018-09-28 13:25:00.006184
23613	{21,12,19,6}	{}	2018-09-28 13:40:00.006029
23614	{16,8,7,9}	{}	2018-09-28 13:55:00.006161
23615	{8,1,3,19}	{}	2018-09-28 14:10:00.006136
23616	{4,7,14,10}	{}	2018-09-28 14:25:00.00599
23617	{1,17,8,7}	{}	2018-09-28 14:40:00.005935
23618	{16,1,3,13}	{}	2018-09-28 14:55:00.006074
23619	{8,10,16,7}	{}	2018-09-28 15:10:00.006081
23620	{8,13,7,21}	{}	2018-09-28 15:25:00.006038
23621	{5,8,11,20}	{}	2018-09-28 15:40:00.006116
23622	{12,9,5,19}	{}	2018-09-28 15:55:00.006136
23623	{2,8,6,16}	{}	2018-09-28 16:10:00.006066
23624	{14,3,15,1}	{}	2018-09-28 16:25:00.006065
23625	{20,14,1,16}	{}	2018-09-28 16:40:00.006169
23626	{21,12,20,13}	{}	2018-09-28 16:55:00.006142
23627	{13,8,19,16}	{}	2018-09-28 17:10:00.006148
23628	{4,9,12,6}	{}	2018-09-28 17:25:00.00606
23629	{2,10,16,20}	{}	2018-09-28 17:40:00.008387
23630	{6,19,20,7}	{}	2018-09-28 17:55:00.007569
23631	{3,16,1,9}	{}	2018-09-28 18:10:00.007406
23632	{1,20,13,8}	{}	2018-09-28 18:25:00.007407
23633	{8,4,12,21}	{}	2018-09-28 18:40:00.005945
23634	{17,12,5,8}	{}	2018-09-28 18:55:00.005976
23635	{11,6,12,7}	{}	2018-09-28 19:10:00.006298
23636	{19,5,16,17}	{}	2018-09-28 19:25:00.006308
23637	{16,14,13,8}	{}	2018-09-28 19:40:00.006057
23638	{17,1,3,10}	{}	2018-09-28 19:55:00.005942
23639	{5,6,19,2}	{}	2018-09-28 20:10:00.005986
23640	{7,14,21,19}	{}	2018-09-28 20:25:00.005957
23641	{19,8,15,14}	{}	2018-09-28 20:40:00.005977
23642	{12,10,9,14}	{}	2018-09-28 20:55:00.005998
23643	{17,13,15,18}	{}	2018-09-28 21:10:00.005937
23644	{11,20,16,12}	{}	2018-09-28 21:25:00.005994
23645	{3,19,4,13}	{}	2018-09-28 21:40:00.005948
23646	{5,19,4,12}	{}	2018-09-28 21:55:00.005935
23647	{19,15,3,17}	{}	2018-09-28 22:10:00.005968
23648	{2,20,9,4}	{}	2018-09-28 22:25:00.006
23649	{11,1,8,20}	{}	2018-09-28 22:40:00.00598
23650	{7,12,9,5}	{}	2018-09-28 22:55:00.006069
23651	{19,7,11,17}	{}	2018-09-28 23:10:00.006006
23652	{16,11,12,19}	{}	2018-09-28 23:25:00.006213
23653	{9,12,13,2}	{}	2018-09-28 23:40:00.006049
23654	{20,1,13,14}	{}	2018-09-28 23:55:00.006154
23655	{15,19,3,10}	{}	2018-09-29 00:10:00.005901
23656	{20,16,6,5}	{}	2018-09-29 00:25:00.005917
23657	{17,5,7,18}	{}	2018-09-29 00:40:00.006011
23658	{4,5,3,12}	{}	2018-09-29 00:55:00.006033
23659	{12,3,9,4}	{}	2018-09-29 01:10:00.006058
23660	{18,10,11,9}	{}	2018-09-29 01:25:00.006008
23661	{5,17,10,13}	{}	2018-09-29 01:40:00.005967
23662	{1,12,3,19}	{}	2018-09-29 01:55:00.006074
23663	{21,12,2,15}	{}	2018-09-29 02:10:00.006039
23664	{6,18,12,21}	{}	2018-09-29 02:25:00.006032
23665	{14,1,16,13}	{}	2018-09-29 02:40:00.006035
23666	{9,6,19,11}	{}	2018-09-29 02:55:00.006019
23667	{16,11,14,4}	{}	2018-09-29 03:10:00.006029
23668	{21,2,15,5}	{}	2018-09-29 03:25:00.005858
23669	{14,20,6,21}	{}	2018-09-29 03:40:00.005998
23670	{16,10,15,20}	{}	2018-09-29 03:55:00.005994
23671	{6,20,1,8}	{}	2018-09-29 04:10:00.006012
23672	{9,2,17,18}	{}	2018-09-29 04:25:00.006056
23673	{20,4,12,7}	{}	2018-09-29 04:40:00.006003
23674	{6,8,1,2}	{}	2018-09-29 04:55:00.006187
23675	{17,11,6,19}	{}	2018-09-29 05:10:00.006047
23676	{4,20,5,6}	{}	2018-09-29 05:25:00.005964
23677	{5,21,9,8}	{}	2018-09-29 05:40:00.006009
23678	{4,21,8,18}	{}	2018-09-29 05:55:00.006082
23679	{16,18,2,5}	{}	2018-09-29 06:10:00.006061
23680	{20,16,21,19}	{}	2018-09-29 06:25:00.006034
23681	{4,20,12,5}	{}	2018-09-29 06:40:00.006035
23682	{6,5,19,16}	{}	2018-09-29 06:55:00.005953
23683	{1,5,8,20}	{}	2018-09-29 07:10:00.00606
23684	{10,12,17,5}	{}	2018-09-29 07:25:00.006077
23685	{4,15,14,7}	{}	2018-09-29 07:40:00.005987
23686	{19,4,21,2}	{}	2018-09-29 07:55:00.005965
23687	{17,7,5,12}	{}	2018-09-29 08:10:00.005907
23688	{6,20,5,15}	{}	2018-09-29 08:25:00.005794
23689	{11,7,8,9}	{}	2018-09-29 08:40:00.006079
23690	{7,11,13,3}	{}	2018-09-29 08:55:00.005961
23691	{9,20,11,2}	{}	2018-09-29 09:10:00.005924
23692	{21,6,7,5}	{}	2018-09-29 09:25:00.006058
23693	{18,14,2,16}	{}	2018-09-29 09:40:00.00601
23694	{19,2,10,8}	{}	2018-09-29 09:55:00.005971
23695	{17,3,13,8}	{}	2018-09-29 10:10:00.005932
23696	{9,14,21,6}	{}	2018-09-29 10:25:00.00597
23697	{5,3,1,13}	{}	2018-09-29 10:40:00.006025
23698	{5,3,14,17}	{}	2018-09-29 10:55:00.006101
23699	{19,6,3,13}	{}	2018-09-29 11:10:00.005965
23700	{11,10,5,14}	{}	2018-09-29 11:25:00.005946
23701	{6,15,9,16}	{}	2018-09-29 11:40:00.006034
23702	{14,4,13,5}	{}	2018-09-29 11:55:00.005972
23703	{3,17,13,5}	{}	2018-09-29 12:10:00.006038
23704	{13,11,16,2}	{}	2018-09-29 12:25:00.005973
23705	{16,13,21,3}	{}	2018-09-29 12:40:00.006062
23706	{1,20,13,18}	{}	2018-09-29 12:55:00.00579
23731	{13,8,4,7}	{}	2018-09-29 19:10:00.006003
23732	{3,19,4,12}	{}	2018-09-29 19:25:00.005945
23733	{14,12,9,15}	{}	2018-09-29 19:40:00.005953
23734	{12,21,3,1}	{}	2018-09-29 19:55:00.006009
23747	{21,10,7,18}	{}	2018-09-29 23:10:00.006117
23748	{12,9,16,6}	{}	2018-09-29 23:25:00.006091
23749	{14,21,18,11}	{}	2018-09-29 23:40:00.006083
23750	{3,14,4,13}	{}	2018-09-29 23:55:00.006039
23751	{17,1,13,11}	{}	2018-09-30 00:10:00.005988
23707	{3,8,19,12}	{}	2018-09-29 13:10:00.005964
23708	{21,8,6,20}	{}	2018-09-29 13:25:00.005899
23709	{8,9,4,7}	{}	2018-09-29 13:40:00.006084
23710	{15,19,12,9}	{}	2018-09-29 13:55:00.00606
23711	{5,16,9,2}	{}	2018-09-29 14:10:00.006033
23712	{9,14,2,10}	{}	2018-09-29 14:25:00.005901
23713	{16,5,15,19}	{}	2018-09-29 14:40:00.006039
23714	{9,11,16,1}	{}	2018-09-29 14:55:00.00601
23715	{14,13,5,19}	{}	2018-09-29 15:10:00.005994
23716	{9,13,15,20}	{}	2018-09-29 15:25:00.005957
23717	{5,4,16,2}	{}	2018-09-29 15:40:00.006013
23718	{5,1,15,2}	{}	2018-09-29 15:55:00.005945
23719	{6,14,20,13}	{}	2018-09-29 16:10:00.005975
23720	{19,5,4,8}	{}	2018-09-29 16:25:00.006019
23721	{12,7,13,17}	{}	2018-09-29 16:40:00.006112
23722	{19,2,10,3}	{}	2018-09-29 16:55:00.006065
23735	{1,11,13,21}	{}	2018-09-29 20:10:00.005951
23736	{14,9,19,10}	{}	2018-09-29 20:25:00.006053
23737	{5,17,15,9}	{}	2018-09-29 20:40:00.005988
23738	{17,10,18,14}	{}	2018-09-29 20:55:00.005111
23739	{8,6,3,19}	{}	2018-09-29 21:10:00.005972
23740	{9,20,13,10}	{}	2018-09-29 21:25:00.006016
23741	{17,12,21,13}	{}	2018-09-29 21:40:00.005939
23742	{16,8,3,12}	{}	2018-09-29 21:55:00.006008
23743	{8,1,11,14}	{}	2018-09-29 22:10:00.005986
23744	{16,10,4,21}	{}	2018-09-29 22:25:00.005933
23745	{2,9,12,6}	{}	2018-09-29 22:40:00.005996
23746	{16,21,9,8}	{}	2018-09-29 22:55:00.006168
23723	{8,9,1,3}	{}	2018-09-29 17:10:00.005726
23724	{20,6,15,21}	{}	2018-09-29 17:25:00.005975
23725	{5,6,19,12}	{}	2018-09-29 17:40:00.006043
23726	{2,4,11,8}	{}	2018-09-29 17:55:00.005815
23727	{1,11,10,12}	{}	2018-09-29 18:10:00.005938
23728	{18,14,2,15}	{}	2018-09-29 18:25:00.005954
23729	{11,16,10,2}	{}	2018-09-29 18:40:00.005951
23730	{3,13,9,11}	{}	2018-09-29 18:55:00.006031
23755	{8,3,17,10}	{}	2018-09-30 01:10:00.005825
23756	{8,15,2,21}	{}	2018-09-30 01:25:00.005958
23757	{16,6,14,2}	{}	2018-09-30 01:40:00.005911
23758	{1,8,14,3}	{}	2018-09-30 01:55:00.006019
23759	{11,16,13,14}	{}	2018-09-30 02:10:00.006
23760	{13,14,8,20}	{}	2018-09-30 02:25:00.006064
23761	{14,4,20,18}	{}	2018-09-30 02:40:00.005995
23762	{14,3,15,1}	{}	2018-09-30 02:55:00.006023
23763	{4,18,2,13}	{}	2018-09-30 03:10:00.006097
23764	{13,12,20,17}	{}	2018-09-30 03:25:00.005898
23765	{11,8,18,3}	{}	2018-09-30 03:40:00.006064
23766	{8,4,20,5}	{}	2018-09-30 03:55:00.006031
23752	{20,10,16,7}	{}	2018-09-30 00:25:00.006038
23753	{9,21,11,14}	{}	2018-09-30 00:40:00.005897
23754	{2,9,5,14}	{}	2018-09-30 00:55:00.006107
23767	{1,10,2,3}	{}	2018-09-30 04:10:00.005959
23768	{10,15,16,19}	{}	2018-09-30 04:25:00.00605
23769	{18,12,4,21}	{}	2018-09-30 04:40:00.006041
23770	{1,9,5,6}	{}	2018-09-30 04:55:00.006086
23771	{1,10,12,20}	{}	2018-09-30 05:10:00.006064
23772	{15,1,9,7}	{}	2018-09-30 05:25:00.006048
23773	{16,15,20,3}	{}	2018-09-30 05:40:00.00594
23774	{17,11,5,16}	{}	2018-09-30 05:55:00.00598
23775	{3,9,19,5}	{}	2018-09-30 06:10:00.006053
23776	{2,3,19,21}	{}	2018-09-30 06:25:00.006052
23777	{1,8,15,20}	{}	2018-09-30 06:40:00.005986
23778	{2,17,10,1}	{}	2018-09-30 06:55:00.006004
23779	{9,14,21,5}	{}	2018-09-30 07:10:00.006058
23780	{20,12,13,15}	{}	2018-09-30 07:25:00.006013
23781	{21,5,3,10}	{}	2018-09-30 07:40:00.005922
23782	{3,16,6,12}	{}	2018-09-30 07:55:00.006026
23783	{7,17,13,6}	{}	2018-09-30 08:10:00.00602
23784	{10,15,9,18}	{}	2018-09-30 08:25:00.005853
23785	{1,6,19,13}	{}	2018-09-30 08:40:00.006002
23786	{8,14,11,3}	{}	2018-09-30 08:55:00.005978
23787	{13,20,8,10}	{}	2018-09-30 09:10:00.006083
23788	{8,11,13,10}	{}	2018-09-30 09:25:00.006388
23789	{10,1,2,15}	{}	2018-09-30 09:40:00.005974
23790	{15,8,20,21}	{}	2018-09-30 09:55:00.006018
23791	{17,13,20,4}	{}	2018-09-30 10:10:00.006011
23792	{10,7,13,21}	{}	2018-09-30 10:25:00.004766
23793	{6,14,12,8}	{}	2018-09-30 10:40:00.00588
23794	{19,8,11,1}	{}	2018-09-30 10:55:00.006116
23795	{17,19,2,13}	{}	2018-09-30 11:10:00.006097
23796	{21,17,4,6}	{}	2018-09-30 11:25:00.005977
23797	{18,1,16,5}	{}	2018-09-30 11:40:00.006055
23798	{13,8,1,9}	{}	2018-09-30 11:55:00.006045
23799	{10,4,8,15}	{}	2018-09-30 12:10:00.00601
23800	{13,5,18,20}	{}	2018-09-30 12:25:00.005993
23801	{3,13,10,12}	{}	2018-09-30 12:40:00.005995
23802	{19,7,15,21}	{}	2018-09-30 12:55:00.005996
23803	{7,16,1,5}	{}	2018-09-30 13:10:00.006019
23804	{19,13,9,4}	{}	2018-09-30 13:25:00.005873
23805	{13,16,12,3}	{}	2018-09-30 13:40:00.005997
23806	{16,4,13,8}	{}	2018-09-30 13:55:00.006028
23807	{2,4,5,7}	{}	2018-09-30 14:10:00.00608
23808	{21,19,16,6}	{}	2018-09-30 14:25:00.005981
23809	{2,17,3,5}	{}	2018-09-30 14:40:00.006096
23810	{20,10,3,1}	{}	2018-09-30 14:55:00.006098
23811	{9,16,18,7}	{}	2018-09-30 15:10:00.006009
23812	{17,19,21,6}	{}	2018-09-30 15:25:00.005995
23813	{12,7,8,18}	{}	2018-09-30 15:40:00.005898
23814	{12,10,19,14}	{}	2018-09-30 15:55:00.006024
23815	{9,4,20,1}	{}	2018-09-30 16:10:00.006049
23816	{6,12,21,1}	{}	2018-09-30 16:25:00.006043
23817	{11,19,13,4}	{}	2018-09-30 16:40:00.006414
23818	{7,13,2,16}	{}	2018-09-30 16:55:00.006206
23819	{2,19,15,4}	{}	2018-09-30 17:10:00.006043
23820	{1,11,3,6}	{}	2018-09-30 17:25:00.006005
23821	{5,16,2,21}	{}	2018-09-30 17:40:00.006006
23822	{5,14,13,8}	{}	2018-09-30 17:55:00.00607
23823	{20,11,12,1}	{}	2018-09-30 18:10:00.006102
23824	{14,1,2,13}	{}	2018-09-30 18:25:00.005932
23825	{1,10,15,19}	{}	2018-09-30 18:40:00.005967
23826	{4,18,8,14}	{}	2018-09-30 18:55:00.006056
23827	{11,16,1,21}	{}	2018-09-30 19:10:00.005939
23828	{18,7,2,11}	{}	2018-09-30 19:25:00.005984
23829	{5,2,19,10}	{}	2018-09-30 19:40:00.005857
23830	{14,2,16,15}	{}	2018-09-30 19:55:00.005987
23831	{19,2,8,20}	{}	2018-09-30 20:10:00.005989
23832	{17,18,2,7}	{}	2018-09-30 20:25:00.006035
23833	{2,9,3,21}	{}	2018-09-30 20:40:00.006056
23834	{5,17,8,11}	{}	2018-09-30 20:55:00.006021
23835	{21,5,11,15}	{}	2018-09-30 21:10:00.005906
23836	{12,20,7,16}	{}	2018-09-30 21:25:00.00603
23837	{8,18,16,2}	{}	2018-09-30 21:40:00.006028
23838	{15,11,12,17}	{}	2018-09-30 21:55:00.005933
23839	{1,5,14,2}	{}	2018-09-30 22:10:00.005958
23840	{12,21,11,5}	{}	2018-09-30 22:25:00.006094
23841	{7,5,6,1}	{}	2018-09-30 22:40:00.006004
23842	{8,17,9,5}	{}	2018-09-30 22:55:00.006114
23843	{18,9,15,17}	{}	2018-09-30 23:10:00.006169
23867	{16,7,17,8}	{}	2018-10-01 05:10:00.006094
23868	{21,6,3,5}	{}	2018-10-01 05:25:00.006088
23869	{15,7,8,21}	{}	2018-10-01 05:40:00.005981
23870	{3,2,13,19}	{}	2018-10-01 05:55:00.006009
23871	{2,15,13,3}	{}	2018-10-01 06:10:00.006021
23872	{7,5,3,16}	{}	2018-10-01 06:25:00.005976
23873	{4,17,19,20}	{}	2018-10-01 06:40:00.006062
23874	{19,20,8,14}	{}	2018-10-01 06:55:00.005975
23899	{21,12,18,14}	{}	2018-10-01 13:10:00.006049
23900	{14,20,6,2}	{}	2018-10-01 13:25:00.005977
23901	{17,6,10,3}	{}	2018-10-01 13:40:00.006036
23902	{13,11,14,16}	{}	2018-10-01 13:55:00.005962
23903	{1,4,3,20}	{}	2018-10-01 14:10:00.006027
23904	{15,3,21,13}	{}	2018-10-01 14:25:00.00606
23905	{18,12,3,14}	{}	2018-10-01 14:40:00.005981
23906	{2,16,11,14}	{}	2018-10-01 14:55:00.006008
23907	{9,3,19,14}	{}	2018-10-01 15:10:00.00599
23908	{7,12,10,2}	{}	2018-10-01 15:25:00.006064
23909	{7,11,4,20}	{}	2018-10-01 15:40:00.005991
23910	{1,15,21,19}	{}	2018-10-01 15:55:00.005985
23911	{12,8,5,17}	{}	2018-10-01 16:10:00.005954
23912	{5,6,18,8}	{}	2018-10-01 16:25:00.005982
23913	{20,16,1,14}	{}	2018-10-01 16:40:00.0058
23914	{9,18,2,19}	{}	2018-10-01 16:55:00.006145
23947	{16,15,21,12}	{}	2018-10-02 01:10:00.006112
23948	{11,6,3,17}	{}	2018-10-02 01:25:00.00604
23949	{7,13,4,21}	{}	2018-10-02 01:40:00.006045
23950	{21,10,11,15}	{}	2018-10-02 01:55:00.005959
23951	{16,12,6,15}	{}	2018-10-02 02:10:00.005936
23952	{9,12,18,13}	{}	2018-10-02 02:25:00.006009
23953	{9,7,20,21}	{}	2018-10-02 02:40:00.006039
23954	{19,11,8,17}	{}	2018-10-02 02:55:00.006029
23955	{5,12,8,17}	{}	2018-10-02 03:10:00.00602
23956	{4,5,20,19}	{}	2018-10-02 03:25:00.006008
23957	{17,15,18,2}	{}	2018-10-02 03:40:00.006095
23958	{12,17,8,18}	{}	2018-10-02 03:55:00.006108
23959	{5,19,6,1}	{}	2018-10-02 04:10:00.006057
23960	{18,6,19,11}	{}	2018-10-02 04:25:00.006039
23961	{4,20,7,10}	{}	2018-10-02 04:40:00.006062
23962	{20,7,9,13}	{}	2018-10-02 04:55:00.005989
23844	{6,19,21,10}	{}	2018-09-30 23:25:00.006204
23845	{19,16,12,20}	{}	2018-09-30 23:40:00.006171
23846	{2,11,14,16}	{}	2018-09-30 23:55:00.006192
23895	{13,14,3,9}	{}	2018-10-01 12:10:00.005986
23896	{2,9,8,10}	{}	2018-10-01 12:25:00.006075
23897	{9,10,17,4}	{}	2018-10-01 12:40:00.005904
23898	{2,5,4,8}	{}	2018-10-01 12:55:00.006014
23923	{12,19,17,4}	{}	2018-10-01 19:10:00.00607
23924	{15,18,9,10}	{}	2018-10-01 19:25:00.006104
23925	{1,16,6,19}	{}	2018-10-01 19:40:00.006027
23926	{5,14,11,17}	{}	2018-10-01 19:55:00.005256
23927	{17,1,15,20}	{}	2018-10-01 20:10:00.006195
23928	{11,2,19,17}	{}	2018-10-01 20:25:00.006073
23929	{1,4,17,11}	{}	2018-10-01 20:40:00.005995
23930	{19,20,15,2}	{}	2018-10-01 20:55:00.00604
23931	{11,20,10,14}	{}	2018-10-01 21:10:00.006058
23932	{14,6,12,8}	{}	2018-10-01 21:25:00.006038
23933	{5,18,12,7}	{}	2018-10-01 21:40:00.006049
23934	{12,5,14,9}	{}	2018-10-01 21:55:00.005942
23935	{3,6,8,13}	{}	2018-10-01 22:10:00.006034
23936	{17,11,10,3}	{}	2018-10-01 22:25:00.006168
23937	{10,1,16,2}	{}	2018-10-01 22:40:00.005938
23938	{12,7,11,4}	{}	2018-10-01 22:55:00.006045
23847	{1,10,2,12}	{}	2018-10-01 00:10:00.006066
23848	{9,4,17,20}	{}	2018-10-01 00:25:00.006012
23849	{3,11,13,15}	{}	2018-10-01 00:40:00.005992
23850	{16,10,2,5}	{}	2018-10-01 00:55:00.005875
23875	{19,4,5,6}	{}	2018-10-01 07:10:00.006111
23876	{13,10,7,12}	{}	2018-10-01 07:25:00.005997
23877	{19,18,16,1}	{}	2018-10-01 07:40:00.005951
23878	{11,10,14,3}	{}	2018-10-01 07:55:00.006071
23891	{5,10,15,12}	{}	2018-10-01 11:10:00.0061
23892	{17,7,20,21}	{}	2018-10-01 11:25:00.006053
23893	{4,12,13,18}	{}	2018-10-01 11:40:00.006054
23894	{5,3,17,8}	{}	2018-10-01 11:55:00.005886
23851	{1,5,19,16}	{}	2018-10-01 01:10:00.005991
23852	{14,1,20,4}	{}	2018-10-01 01:25:00.00602
23853	{12,11,3,9}	{}	2018-10-01 01:40:00.006112
23854	{16,18,20,1}	{}	2018-10-01 01:55:00.006637
23855	{13,4,1,9}	{}	2018-10-01 02:10:00.006016
23856	{19,17,5,10}	{}	2018-10-01 02:25:00.005907
23857	{12,20,5,16}	{}	2018-10-01 02:40:00.005941
23858	{20,15,3,1}	{}	2018-10-01 02:55:00.006007
23859	{18,10,6,17}	{}	2018-10-01 03:10:00.006058
23860	{20,18,14,8}	{}	2018-10-01 03:25:00.005993
23861	{2,9,21,5}	{}	2018-10-01 03:40:00.006012
23862	{8,11,14,21}	{}	2018-10-01 03:55:00.006122
23863	{16,15,12,18}	{}	2018-10-01 04:10:00.006078
23864	{15,13,3,16}	{}	2018-10-01 04:25:00.006106
23865	{11,16,7,15}	{}	2018-10-01 04:40:00.005936
23866	{7,13,14,9}	{}	2018-10-01 04:55:00.006159
23879	{6,9,19,3}	{}	2018-10-01 08:10:00.006173
23880	{1,20,10,7}	{}	2018-10-01 08:25:00.00613
23881	{11,4,15,7}	{}	2018-10-01 08:40:00.00608
23882	{3,2,9,16}	{}	2018-10-01 08:55:00.005897
23883	{6,10,13,5}	{}	2018-10-01 09:10:00.006021
23884	{3,20,13,16}	{}	2018-10-01 09:25:00.005991
23885	{10,13,2,21}	{}	2018-10-01 09:40:00.005982
23886	{14,11,8,3}	{}	2018-10-01 09:55:00.006026
23887	{12,16,14,4}	{}	2018-10-01 10:10:00.005982
23888	{15,14,3,12}	{}	2018-10-01 10:25:00.005959
23889	{14,10,16,12}	{}	2018-10-01 10:40:00.005991
23890	{17,18,1,15}	{}	2018-10-01 10:55:00.006107
23915	{2,16,3,6}	{}	2018-10-01 17:10:00.00597
23916	{16,17,5,12}	{}	2018-10-01 17:25:00.006029
23917	{20,2,10,18}	{}	2018-10-01 17:40:00.005974
23918	{13,21,20,4}	{}	2018-10-01 17:55:00.005989
23919	{3,5,1,7}	{}	2018-10-01 18:10:00.006014
23920	{16,13,10,3}	{}	2018-10-01 18:25:00.006054
23921	{7,15,3,6}	{}	2018-10-01 18:40:00.005984
23922	{5,21,19,13}	{}	2018-10-01 18:55:00.005946
23939	{7,14,1,13}	{}	2018-10-01 23:10:00.006407
23940	{12,2,4,9}	{}	2018-10-01 23:25:00.006453
23941	{5,20,16,2}	{}	2018-10-01 23:40:00.006152
23942	{7,10,18,12}	{}	2018-10-01 23:55:00.006154
23943	{17,15,6,14}	{}	2018-10-02 00:10:00.00606
23944	{4,14,1,6}	{}	2018-10-02 00:25:00.006075
23945	{5,12,1,7}	{}	2018-10-02 00:40:00.006038
23946	{10,1,19,16}	{}	2018-10-02 00:55:00.005933
23963	{10,8,19,4}	{}	2018-10-02 05:10:00.005952
23964	{12,1,13,10}	{}	2018-10-02 05:25:00.006055
23965	{7,18,2,8}	{}	2018-10-02 05:40:00.00586
23966	{10,3,17,6}	{}	2018-10-02 05:55:00.006002
23967	{15,1,10,5}	{}	2018-10-02 06:10:00.006079
23968	{9,20,21,8}	{}	2018-10-02 06:25:00.005014
23969	{6,20,13,12}	{}	2018-10-02 06:40:00.006
23970	{18,2,19,16}	{}	2018-10-02 06:55:00.006043
23971	{11,6,10,15}	{}	2018-10-02 07:10:00.005994
23972	{13,3,9,19}	{}	2018-10-02 07:25:00.006051
23973	{21,8,10,18}	{}	2018-10-02 07:40:00.006009
23974	{16,18,14,20}	{}	2018-10-02 07:55:00.006062
23975	{14,5,11,12}	{}	2018-10-02 08:10:00.006036
23976	{13,4,1,18}	{}	2018-10-02 08:25:00.00604
23977	{6,9,11,12}	{}	2018-10-02 08:40:00.005982
23978	{9,3,19,18}	{}	2018-10-02 08:55:00.006013
23979	{11,14,18,7}	{}	2018-10-02 09:10:00.005992
23980	{12,18,13,19}	{}	2018-10-02 09:25:00.006075
23981	{18,2,8,1}	{}	2018-10-02 09:40:00.005985
23982	{1,10,2,16}	{}	2018-10-02 09:55:00.006064
23983	{14,7,11,15}	{}	2018-10-02 10:10:00.006017
23984	{9,21,15,6}	{}	2018-10-02 10:25:00.00602
23985	{7,1,17,18}	{}	2018-10-02 10:40:00.006145
23986	{3,5,6,13}	{}	2018-10-02 10:55:00.005956
23987	{16,12,14,20}	{}	2018-10-02 11:10:00.00594
23988	{16,19,1,3}	{}	2018-10-02 11:25:00.006058
23989	{12,6,15,11}	{}	2018-10-02 11:40:00.005942
23990	{20,11,17,9}	{}	2018-10-02 11:55:00.005976
23991	{8,11,5,12}	{}	2018-10-02 12:10:00.006061
23992	{7,21,18,8}	{}	2018-10-02 12:25:00.006083
23993	{15,3,7,19}	{}	2018-10-02 12:40:00.005984
23994	{5,10,6,12}	{}	2018-10-02 12:55:00.00595
23995	{6,7,5,10}	{}	2018-10-02 13:10:00.006051
23996	{8,9,1,7}	{}	2018-10-02 13:25:00.005974
23997	{21,20,11,14}	{}	2018-10-02 13:40:00.005999
23998	{4,3,6,15}	{}	2018-10-02 13:55:00.00588
23999	{19,13,7,2}	{}	2018-10-02 14:10:00.00606
24000	{9,16,15,14}	{}	2018-10-02 14:25:00.005957
24001	{13,6,12,18}	{}	2018-10-02 14:40:00.005975
24002	{11,7,20,14}	{}	2018-10-02 14:55:00.006015
24003	{8,18,4,12}	{}	2018-10-02 15:10:00.006111
24004	{9,14,20,1}	{}	2018-10-02 15:25:00.005992
24005	{8,1,12,11}	{}	2018-10-02 15:40:00.006005
24006	{5,19,4,18}	{}	2018-10-02 15:55:00.005981
24007	{12,11,4,1}	{}	2018-10-02 16:10:00.005794
24008	{3,17,12,15}	{}	2018-10-02 16:25:00.00608
24009	{2,20,14,13}	{}	2018-10-02 16:40:00.006132
24010	{20,1,6,8}	{}	2018-10-02 16:55:00.006056
24023	{12,10,2,19}	{}	2018-10-02 20:10:00.005992
24024	{2,8,4,13}	{}	2018-10-02 20:25:00.005921
24025	{9,1,12,6}	{}	2018-10-02 20:40:00.006093
24026	{18,15,6,8}	{}	2018-10-02 20:55:00.005987
24027	{16,20,15,7}	{}	2018-10-02 21:10:00.006004
24028	{6,4,13,19}	{}	2018-10-02 21:25:00.006031
24029	{13,18,16,3}	{}	2018-10-02 21:40:00.006092
24030	{11,17,7,21}	{}	2018-10-02 21:55:00.005988
24031	{14,8,21,1}	{}	2018-10-02 22:10:00.005233
24032	{21,14,5,3}	{}	2018-10-02 22:25:00.006026
24033	{1,20,5,10}	{}	2018-10-02 22:40:00.006169
24034	{16,18,14,15}	{}	2018-10-02 22:55:00.006109
24043	{12,8,2,17}	{}	2018-10-03 01:10:00.005695
24044	{5,7,3,15}	{}	2018-10-03 01:25:00.005988
24045	{6,21,7,4}	{}	2018-10-03 01:40:00.005969
24046	{9,2,6,4}	{}	2018-10-03 01:55:00.005954
24047	{7,5,1,15}	{}	2018-10-03 02:10:00.005994
24048	{18,10,1,12}	{}	2018-10-03 02:25:00.00606
24049	{17,16,8,4}	{}	2018-10-03 02:40:00.005999
24050	{16,15,10,12}	{}	2018-10-03 02:55:00.005968
24051	{1,21,16,17}	{}	2018-10-03 03:10:00.006017
24052	{21,19,16,4}	{}	2018-10-03 03:25:00.00551
24053	{16,6,3,7}	{}	2018-10-03 03:40:00.006007
24054	{10,8,6,5}	{}	2018-10-03 03:55:00.006033
24055	{11,15,7,10}	{}	2018-10-03 04:10:00.006068
24056	{14,3,7,9}	{}	2018-10-03 04:25:00.006088
24057	{2,7,15,18}	{}	2018-10-03 04:40:00.006189
24058	{21,17,8,20}	{}	2018-10-03 04:55:00.005994
24071	{12,1,7,21}	{}	2018-10-03 08:10:00.005897
24072	{19,3,17,12}	{}	2018-10-03 08:25:00.006076
24073	{4,8,13,10}	{}	2018-10-03 08:40:00.005888
24074	{19,11,20,8}	{}	2018-10-03 08:55:00.005977
24075	{19,10,3,12}	{}	2018-10-03 09:10:00.006007
24076	{12,1,6,19}	{}	2018-10-03 09:25:00.005891
24077	{1,14,12,7}	{}	2018-10-03 09:40:00.006036
24078	{17,19,15,5}	{}	2018-10-03 09:55:00.006053
24079	{4,15,12,11}	{}	2018-10-03 10:10:00.006013
24080	{4,1,5,8}	{}	2018-10-03 10:25:00.006085
24081	{4,15,10,14}	{}	2018-10-03 10:40:00.006164
24082	{12,15,14,18}	{}	2018-10-03 10:55:00.006046
24091	{20,17,5,16}	{}	2018-10-03 13:10:00.005971
24092	{4,13,10,7}	{}	2018-10-03 13:25:00.006002
24093	{16,12,2,5}	{}	2018-10-03 13:40:00.006017
24094	{2,7,19,17}	{}	2018-10-03 13:55:00.005945
24095	{16,17,8,2}	{}	2018-10-03 14:10:00.005998
24096	{18,9,20,4}	{}	2018-10-03 14:25:00.006034
24097	{5,20,6,4}	{}	2018-10-03 14:40:00.00604
24098	{7,9,16,15}	{}	2018-10-03 14:55:00.006006
24099	{5,9,20,19}	{}	2018-10-03 15:10:00.006133
24100	{14,9,18,16}	{}	2018-10-03 15:25:00.006063
24101	{20,1,6,15}	{}	2018-10-03 15:40:00.005999
24102	{13,16,10,19}	{}	2018-10-03 15:55:00.005904
24103	{2,12,10,11}	{}	2018-10-03 16:10:00.005994
24104	{4,10,16,14}	{}	2018-10-03 16:25:00.006059
24105	{16,20,6,14}	{}	2018-10-03 16:40:00.0062
24106	{20,16,12,14}	{}	2018-10-03 16:55:00.005988
24119	{16,4,9,18}	{}	2018-10-03 20:10:00.005946
24120	{16,13,15,9}	{}	2018-10-03 20:25:00.006134
24121	{13,4,9,15}	{}	2018-10-03 20:40:00.006048
24122	{4,10,6,9}	{}	2018-10-03 20:55:00.006006
24123	{5,10,21,4}	{}	2018-10-03 21:10:00.005998
24124	{4,12,11,7}	{}	2018-10-03 21:25:00.006009
24011	{13,4,17,15}	{}	2018-10-02 17:10:00.006098
24012	{14,3,7,16}	{}	2018-10-02 17:25:00.006074
24013	{21,3,11,12}	{}	2018-10-02 17:40:00.00597
24014	{20,13,16,12}	{}	2018-10-02 17:55:00.005415
24015	{19,2,7,14}	{}	2018-10-02 18:10:00.005975
24016	{12,19,17,7}	{}	2018-10-02 18:25:00.006013
24017	{18,9,21,5}	{}	2018-10-02 18:40:00.00599
24018	{16,4,13,19}	{}	2018-10-02 18:55:00.006049
24035	{10,9,7,18}	{}	2018-10-02 23:10:00.006059
24036	{7,21,6,16}	{}	2018-10-02 23:25:00.006176
24037	{16,21,10,12}	{}	2018-10-02 23:40:00.006221
24038	{2,13,12,17}	{}	2018-10-02 23:55:00.006172
24059	{12,10,5,18}	{}	2018-10-03 05:10:00.006061
24060	{9,20,14,1}	{}	2018-10-03 05:25:00.005978
24061	{10,6,3,21}	{}	2018-10-03 05:40:00.005993
24062	{1,21,15,9}	{}	2018-10-03 05:55:00.006059
24063	{12,11,8,14}	{}	2018-10-03 06:10:00.005923
24064	{16,13,4,19}	{}	2018-10-03 06:25:00.005999
24065	{9,10,16,21}	{}	2018-10-03 06:40:00.006057
24066	{7,10,21,5}	{}	2018-10-03 06:55:00.006044
24083	{6,8,20,5}	{}	2018-10-03 11:10:00.006108
24084	{18,11,10,12}	{}	2018-10-03 11:25:00.006003
24085	{10,13,6,11}	{}	2018-10-03 11:40:00.006052
24086	{5,8,14,2}	{}	2018-10-03 11:55:00.005917
24107	{6,18,21,9}	{}	2018-10-03 17:10:00.006162
24108	{20,21,9,7}	{}	2018-10-03 17:25:00.006111
24109	{14,11,17,2}	{}	2018-10-03 17:40:00.006072
24110	{2,14,8,1}	{}	2018-10-03 17:55:00.006039
24111	{9,4,20,13}	{}	2018-10-03 18:10:00.005989
24112	{5,3,4,10}	{}	2018-10-03 18:25:00.006113
24113	{8,3,15,14}	{}	2018-10-03 18:40:00.006057
24114	{14,19,17,21}	{}	2018-10-03 18:55:00.005991
24131	{2,15,13,11}	{}	2018-10-03 23:10:00.006222
24132	{5,15,14,3}	{}	2018-10-03 23:25:00.006026
24133	{11,9,6,12}	{}	2018-10-03 23:40:00.006156
24134	{2,15,10,1}	{}	2018-10-03 23:55:00.006164
24155	{13,17,1,3}	{}	2018-10-04 05:10:00.005999
24156	{11,10,6,18}	{}	2018-10-04 05:25:00.005064
24157	{4,11,8,15}	{}	2018-10-04 05:40:00.006126
24158	{8,4,1,7}	{}	2018-10-04 05:55:00.006044
24159	{2,14,4,18}	{}	2018-10-04 06:10:00.006017
24160	{7,13,14,16}	{}	2018-10-04 06:25:00.005967
24161	{21,16,1,7}	{}	2018-10-04 06:40:00.006041
24162	{15,5,4,11}	{}	2018-10-04 06:55:00.006057
24179	{11,5,17,18}	{}	2018-10-04 11:10:00.006125
24180	{4,5,10,1}	{}	2018-10-04 11:25:00.006068
24181	{19,3,21,14}	{}	2018-10-04 11:40:00.005785
24182	{13,17,12,2}	{}	2018-10-04 11:55:00.006017
24019	{13,3,4,20}	{}	2018-10-02 19:10:00.006026
24020	{13,5,21,6}	{}	2018-10-02 19:25:00.006047
24021	{6,17,13,7}	{}	2018-10-02 19:40:00.005977
24022	{7,1,14,8}	{}	2018-10-02 19:55:00.005949
24039	{6,18,4,21}	{}	2018-10-03 00:10:00.00609
24040	{11,15,2,18}	{}	2018-10-03 00:25:00.006085
24041	{7,6,16,20}	{}	2018-10-03 00:40:00.006053
24042	{5,11,7,2}	{}	2018-10-03 00:55:00.005863
24067	{21,18,16,9}	{}	2018-10-03 07:10:00.006065
24068	{12,3,10,21}	{}	2018-10-03 07:25:00.005987
24069	{10,3,2,15}	{}	2018-10-03 07:40:00.00601
24070	{13,14,16,9}	{}	2018-10-03 07:55:00.00601
24087	{7,5,2,14}	{}	2018-10-03 12:10:00.00609
24088	{15,3,11,16}	{}	2018-10-03 12:25:00.006047
24089	{15,7,21,5}	{}	2018-10-03 12:40:00.00602
24090	{21,1,17,10}	{}	2018-10-03 12:55:00.00602
24115	{18,15,10,19}	{}	2018-10-03 19:10:00.005986
24116	{16,11,21,12}	{}	2018-10-03 19:25:00.005998
24117	{14,2,10,12}	{}	2018-10-03 19:40:00.005976
24118	{8,5,6,15}	{}	2018-10-03 19:55:00.006027
24135	{3,12,16,7}	{}	2018-10-04 00:10:00.005931
24136	{12,16,8,9}	{}	2018-10-04 00:25:00.005891
24137	{8,16,2,13}	{}	2018-10-04 00:40:00.006052
24138	{5,11,18,1}	{}	2018-10-04 00:55:00.006012
24163	{7,19,18,8}	{}	2018-10-04 07:10:00.006079
24164	{14,12,19,10}	{}	2018-10-04 07:25:00.006006
24165	{21,16,20,2}	{}	2018-10-04 07:40:00.006052
24166	{2,18,7,9}	{}	2018-10-04 07:55:00.005997
24183	{21,18,14,10}	{}	2018-10-04 12:10:00.005926
24184	{4,21,19,10}	{}	2018-10-04 12:25:00.006072
24125	{14,16,10,20}	{}	2018-10-03 21:40:00.00602
24126	{9,3,16,19}	{}	2018-10-03 21:55:00.006075
24127	{19,7,9,13}	{}	2018-10-03 22:10:00.00593
24128	{1,15,4,8}	{}	2018-10-03 22:25:00.005971
24129	{4,2,17,9}	{}	2018-10-03 22:40:00.006169
24130	{20,13,3,21}	{}	2018-10-03 22:55:00.005943
24139	{14,18,4,8}	{}	2018-10-04 01:10:00.006026
24140	{5,12,9,15}	{}	2018-10-04 01:25:00.005936
24141	{11,5,4,18}	{}	2018-10-04 01:40:00.005989
24142	{4,1,7,15}	{}	2018-10-04 01:55:00.005995
24143	{1,11,19,18}	{}	2018-10-04 02:10:00.005962
24144	{19,9,15,11}	{}	2018-10-04 02:25:00.005971
24145	{7,4,3,1}	{}	2018-10-04 02:40:00.005952
24146	{1,10,2,5}	{}	2018-10-04 02:55:00.00601
24147	{21,13,8,18}	{}	2018-10-04 03:10:00.005955
24148	{6,15,18,16}	{}	2018-10-04 03:25:00.006024
24149	{3,1,5,21}	{}	2018-10-04 03:40:00.006018
24150	{20,18,19,11}	{}	2018-10-04 03:55:00.005985
24151	{4,7,19,10}	{}	2018-10-04 04:10:00.005999
24152	{20,19,9,10}	{}	2018-10-04 04:25:00.005964
24153	{16,6,5,9}	{}	2018-10-04 04:40:00.006164
24154	{6,3,19,17}	{}	2018-10-04 04:55:00.005968
24167	{21,18,3,17}	{}	2018-10-04 08:10:00.006021
24168	{6,20,7,19}	{}	2018-10-04 08:25:00.006051
24169	{5,6,7,10}	{}	2018-10-04 08:40:00.005884
24170	{4,15,20,12}	{}	2018-10-04 08:55:00.006059
24171	{4,13,20,1}	{}	2018-10-04 09:10:00.006058
24172	{16,13,14,4}	{}	2018-10-04 09:25:00.005993
24173	{20,13,9,5}	{}	2018-10-04 09:40:00.006007
24174	{12,21,20,8}	{}	2018-10-04 09:55:00.006041
24175	{9,3,21,8}	{}	2018-10-04 10:10:00.006098
24176	{21,18,19,10}	{}	2018-10-04 10:25:00.006012
24177	{5,15,13,12}	{}	2018-10-04 10:40:00.006047
24178	{7,20,2,4}	{}	2018-10-04 10:55:00.006007
24185	{13,11,18,17}	{}	2018-10-04 12:40:00.005956
24186	{6,7,21,15}	{}	2018-10-04 12:55:00.006009
24187	{7,9,1,14}	{}	2018-10-04 13:10:00.00605
24188	{12,17,10,16}	{}	2018-10-04 13:25:00.006003
24189	{11,14,9,17}	{}	2018-10-04 13:40:00.005945
24190	{12,18,21,13}	{}	2018-10-04 13:55:00.005943
24191	{6,4,17,16}	{}	2018-10-04 14:10:00.005928
24192	{18,21,2,19}	{}	2018-10-04 14:25:00.006057
24193	{15,10,14,7}	{}	2018-10-04 14:40:00.005924
24194	{12,20,4,1}	{}	2018-10-04 14:55:00.006079
\.


--
-- Name: prize_jackpot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prize_jackpot_id_seq', 24194, true);


--
-- Data for Name: raffles_jackpot_4_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.raffles_jackpot_4_21 (id, ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) FROM stdin;
1	57	226	{11,15,17,7}	{16,9,12,1}	2018-08-24 05:00:00.054539	1	f
2	56	226	{14,7,3,11}	{16,9,12,1}	2018-08-24 05:00:00.067811	1	f
3	57	227	{11,15,17,7}	{10,17,3,20}	2018-08-24 08:00:00.027205	1	f
4	56	227	{14,7,3,11}	{10,17,3,20}	2018-08-24 08:00:00.041904	1	f
5	56	228	{14,7,3,11}	{10,1,20,16}	2018-08-24 11:00:00.028183	1	f
6	58	231	{11,17,7,13}	{9,6,15,2}	2018-08-24 23:00:00.025869	1	f
7	59	231	{13,6,17,20}	{9,6,15,2}	2018-08-24 23:00:00.040217	1	f
8	60	231	{14,12,10,2}	{9,6,15,2}	2018-08-24 23:00:00.056938	1	f
9	61	247	{10,18,19,13}	{8,11,14,10}	2018-08-27 17:00:00.014523	5	f
10	62	262	{20,19,1,18}	{12,8,20,13}	2018-08-30 05:00:00.025769	19	f
11	65	275	{12,10,7,21}	{6,13,11,4}	2018-09-01 05:00:00.046879	37	f
12	66	275	{14,1,6,16}	{6,13,11,4}	2018-09-01 05:00:00.051645	37	f
13	65	276	{12,10,7,21}	{10,15,5,2}	2018-09-01 08:00:00.038228	37	f
14	67	295	{10,11,12,21}	{14,18,13,9}	2018-09-04 11:00:00.036216	5	f
15	68	418	{6,14,15,13}	{12,4,11,15}	2018-09-24 23:00:00.044987	20	f
16	69	460	{1,17,12,19}	{5,14,4,20}	2018-10-01 23:00:00.044171	20	f
17	70	460	{1,17,12,19}	{5,14,4,20}	2018-10-01 23:00:00.050067	20	f
18	71	460	{20,2,19,12}	{5,14,4,20}	2018-10-01 23:00:00.058413	20	f
19	71	461	{20,2,19,12}	{16,12,5,19}	2018-10-02 05:00:00.032226	20	t
20	71	462	{20,2,19,12}	{12,9,15,5}	2018-10-02 08:00:00.031023	20	f
21	71	463	{20,2,19,12}	{21,3,10,13}	2018-10-02 11:00:00.03788	20	f
\.


--
-- Name: raffles_jackpot_4_21_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.raffles_jackpot_4_21_id_seq', 21, true);


--
-- Data for Name: raffles_jackpot_5_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.raffles_jackpot_5_36 (id, ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) FROM stdin;
1	14	219	{26,20,18,12,23}	{14,21,6,3}	2018-08-24 07:00:00.024481	1	f
2	15	222	{34,16,25,4,2}	{12,10,19,16}	2018-08-25 01:00:00.025581	1	f
3	17	222	{3,9,20,2,17}	{12,10,19,16}	2018-08-25 01:00:00.040066	1	f
4	16	222	{1,2,3,4,5}	{12,10,19,16}	2018-08-25 01:00:00.056705	1	f
5	18	249	{1,33,13,34,5}	{4,16,14,12}	2018-09-01 01:00:00.049292	1	f
6	19	249	{15,23,22,11,33}	{4,16,14,12}	2018-09-01 01:00:00.062885	1	f
7	18	250	{1,33,13,34,5}	{19,5,18,10}	2018-09-01 07:00:00.043625	1	f
8	20	263	{25,31,36,16,22}	{3,4,19,15}	2018-09-04 13:00:00.035492	5	f
9	21	263	{28,19,8,30,18}	{3,4,19,15}	2018-09-04 13:00:00.050438	5	f
10	20	264	{25,31,36,16,22}	{7,6,11,13}	2018-09-04 19:00:00.036108	5	f
11	20	265	{25,31,36,16,22}	{14,12,5,4}	2018-09-05 01:00:00.036268	5	f
\.


--
-- Name: raffles_jackpot_5_36_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.raffles_jackpot_5_36_id_seq', 11, true);


--
-- Data for Name: raffles_jackpot_6_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.raffles_jackpot_6_45 (id, ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) FROM stdin;
1	12	213	{37,20,13,36,33,27}	{10,14,19,18}	2018-08-24 12:00:00.039525	1	f
2	13	214	{20,6,32,2,11,28}	{9,10,7,19}	2018-08-25 00:00:00.028576	1	f
3	14	214	{45,42,23,8,15,12}	{9,10,7,19}	2018-08-25 00:00:00.043212	1	f
4	15	214	{26,24,37,4,30,42}	{9,10,7,19}	2018-08-25 00:00:00.059922	1	f
5	16	214	{9,19,41,37,28,38}	{9,10,7,19}	2018-08-25 00:00:00.076469	1	f
6	17	236	{30,34,22,13,9,5}	{11,15,19,20}	2018-09-04 12:00:00.032031	5	f
7	18	236	{14,32,27,17,25,20}	{11,15,19,20}	2018-09-04 12:00:00.046409	5	f
8	17	237	{30,34,22,13,9,5}	{2,16,14,6}	2018-09-05 00:00:00.040182	5	f
\.


--
-- Name: raffles_jackpot_6_45_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.raffles_jackpot_6_45_id_seq', 8, true);


--
-- Data for Name: raffles_prize_jackpot; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.raffles_prize_jackpot (id, ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) FROM stdin;
1	4674466	20194	{1,14,18,22,20,6,10,3,21,4,23,5}	{21,11,17,14}	2018-08-24 01:25:00.050146	1	f
2	4674467	20195	{10,5,3,12,14,4,18,6,15,1,21,8}	{6,20,14,7}	2018-08-24 01:40:00.035353	1	f
3	4674467	20196	{10,5,3,12,14,4,18,6,15,1,21,8}	{3,21,19,12}	2018-08-24 01:55:00.028577	1	f
4	4674467	20197	{10,5,3,12,14,4,18,6,15,1,21,8}	{1,6,21,15}	2018-08-24 02:10:00.031336	1	f
5	4674468	21297	{17,12,6,3,9,15,21,22,13,7,1,14}	{13,2,5,17}	2018-09-04 10:40:00.024288	5	f
\.


--
-- Name: raffles_prize_jackpot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.raffles_prize_jackpot_id_seq', 5, true);


--
-- Data for Name: raffles_rapidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.raffles_rapidos (id, ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) FROM stdin;
1	51	19301	{17,19,10,9,15,18,13,16}	{2,16,6,15}	2018-08-24 01:45:00.027074	1	f
2	52	19378	{5,15,12,1,18,20,11,10}	{12,6,2,18}	2018-08-24 21:00:00.022185	1	f
3	53	19378	{9,15,2,14,12,4,13,18}	{12,6,2,18}	2018-08-24 21:00:00.028558	1	f
\.


--
-- Name: raffles_rapidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.raffles_rapidos_id_seq', 3, true);


--
-- Data for Name: raffles_two_numbers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.raffles_two_numbers (id, ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) FROM stdin;
1	55	20275	{10,11}	{12,16,6,19}	2018-08-24 01:20:00.049229	1	f
2	56	20352	{54,22}	{7,17,20,12}	2018-08-24 20:35:00.026384	1	f
3	57	24006	{45,57}	{20,18,21,14}	2018-10-01 20:05:00.028145	20	f
\.


--
-- Name: raffles_two_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.raffles_two_numbers_id_seq', 3, true);


--
-- Data for Name: rapidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rapidos (id, combination, win_tickets, date) FROM stdin;
19301	{2,16,6,15}	{}	2018-08-24 01:45:00.007055
19302	{3,10,17,19}	{}	2018-08-24 02:00:00.006021
19303	{16,14,18,2}	{}	2018-08-24 02:15:00.00613
19304	{11,15,8,16}	{}	2018-08-24 02:30:00.004655
19305	{17,7,14,13}	{}	2018-08-24 02:45:00.004667
19306	{11,19,6,7}	{}	2018-08-24 03:00:00.004418
19307	{13,20,5,4}	{}	2018-08-24 03:15:00.004715
19308	{2,5,14,13}	{}	2018-08-24 03:30:00.004545
19309	{18,7,10,9}	{}	2018-08-24 03:45:00.004683
19310	{10,18,15,4}	{}	2018-08-24 04:00:00.004485
19311	{21,20,4,7}	{}	2018-08-24 04:15:00.004668
19312	{4,1,20,11}	{}	2018-08-24 04:30:00.00511
19313	{10,2,15,14}	{}	2018-08-24 04:45:00.004658
19314	{16,8,10,2}	{}	2018-08-24 05:00:00.006575
19315	{17,14,11,9}	{}	2018-08-24 05:15:00.004858
19316	{18,15,20,21}	{}	2018-08-24 05:30:00.004671
19317	{17,12,6,15}	{}	2018-08-24 05:45:00.004623
19318	{11,4,15,10}	{}	2018-08-24 06:00:00.004513
19319	{19,9,13,1}	{}	2018-08-24 06:15:00.004541
19320	{4,10,2,9}	{}	2018-08-24 06:30:00.004676
19321	{11,20,17,10}	{}	2018-08-24 06:45:00.004659
19322	{20,21,19,12}	{}	2018-08-24 07:00:00.006643
19323	{6,4,9,14}	{}	2018-08-24 07:15:00.004577
19324	{20,8,16,19}	{}	2018-08-24 07:30:00.004652
19325	{7,11,1,10}	{}	2018-08-24 07:45:00.004688
19326	{5,7,20,4}	{}	2018-08-24 08:00:00.006091
19327	{18,16,1,10}	{}	2018-08-24 08:15:00.004715
19328	{19,16,10,4}	{}	2018-08-24 08:30:00.004648
19329	{13,20,10,16}	{}	2018-08-24 08:45:00.004599
19330	{4,15,11,20}	{}	2018-08-24 09:00:00.004533
19331	{3,20,4,21}	{}	2018-08-24 09:15:00.004653
19332	{14,8,18,1}	{}	2018-08-24 09:30:00.004671
19333	{16,10,8,9}	{}	2018-08-24 09:45:00.004649
19334	{8,5,16,11}	{}	2018-08-24 10:00:00.004471
19335	{9,4,10,6}	{}	2018-08-24 10:15:00.004654
19336	{12,2,8,1}	{}	2018-08-24 10:30:00.004602
19337	{3,21,6,9}	{}	2018-08-24 10:45:00.00467
19338	{3,19,4,14}	{}	2018-08-24 11:00:00.006168
19339	{20,1,18,4}	{}	2018-08-24 11:15:00.004635
19340	{14,2,1,18}	{}	2018-08-24 11:30:00.004614
19341	{20,1,9,12}	{}	2018-08-24 11:45:00.004695
19342	{15,12,3,7}	{}	2018-08-24 12:00:00.00656
19343	{3,12,7,16}	{}	2018-08-24 12:15:00.004666
19344	{16,2,5,13}	{}	2018-08-24 12:30:00.004681
19345	{18,8,10,9}	{}	2018-08-24 12:45:00.00494
19346	{21,15,6,4}	{}	2018-08-24 13:00:00.006441
19347	{8,11,21,15}	{}	2018-08-24 13:15:00.004551
19348	{18,13,16,9}	{}	2018-08-24 13:30:00.004878
19349	{3,11,20,8}	{}	2018-08-24 13:45:00.004573
19350	{21,12,15,5}	{}	2018-08-24 14:00:00.00445
19351	{4,5,20,19}	{}	2018-08-24 14:15:00.00464
19352	{4,16,10,18}	{}	2018-08-24 14:30:00.004684
19353	{12,7,15,13}	{}	2018-08-24 14:45:00.004579
19354	{2,14,12,13}	{}	2018-08-24 15:00:00.004441
19355	{19,8,2,4}	{}	2018-08-24 15:15:00.00468
19356	{11,16,9,12}	{}	2018-08-24 15:30:00.00462
19357	{19,5,13,15}	{}	2018-08-24 15:45:00.004663
19358	{19,17,2,6}	{}	2018-08-24 16:00:00.00445
19359	{16,14,6,8}	{}	2018-08-24 16:15:00.004483
19360	{1,9,14,2}	{}	2018-08-24 16:30:00.004695
19361	{7,19,1,14}	{}	2018-08-24 16:45:00.00472
19362	{6,5,3,12}	{}	2018-08-24 17:00:00.00631
19363	{10,17,6,3}	{}	2018-08-24 17:15:00.004748
19364	{11,21,10,6}	{}	2018-08-24 17:30:00.004714
19365	{14,19,18,7}	{}	2018-08-24 17:45:00.004731
19366	{16,6,15,14}	{}	2018-08-24 18:00:00.004547
19367	{7,21,1,14}	{}	2018-08-24 18:15:00.00471
19368	{10,17,14,6}	{}	2018-08-24 18:30:00.004658
19369	{1,21,17,6}	{}	2018-08-24 18:45:00.004671
19370	{9,11,15,14}	{}	2018-08-24 19:00:00.00637
19371	{10,5,8,4}	{}	2018-08-24 19:15:00.004716
19372	{9,8,13,16}	{}	2018-08-24 19:30:00.004812
19373	{4,13,3,5}	{}	2018-08-24 19:45:00.004718
19374	{1,21,8,12}	{}	2018-08-24 20:00:00.00641
19375	{10,4,11,19}	{}	2018-08-24 20:15:00.004704
19376	{11,7,10,15}	{}	2018-08-24 20:30:00.004715
19377	{11,19,2,7}	{}	2018-08-24 20:45:00.004626
19378	{12,6,2,18}	{}	2018-08-24 21:00:00.004643
21572	{3,6,20,2}	{}	2018-09-16 14:45:00.004745
21575	{13,2,1,15}	{}	2018-09-16 15:30:00.004775
21576	{21,16,10,20}	{}	2018-09-16 15:45:00.004664
21579	{8,1,14,11}	{}	2018-09-16 16:30:00.004735
21581	{10,12,20,5}	{}	2018-09-16 17:00:00.006291
21592	{15,9,3,20}	{}	2018-09-16 19:45:00.004779
21595	{8,7,17,6}	{}	2018-09-16 20:30:00.004719
21599	{20,12,14,11}	{}	2018-09-16 21:30:00.00469
21603	{14,16,20,2}	{}	2018-09-16 22:30:00.004783
21605	{12,17,14,16}	{}	2018-09-16 23:00:00.006269
21612	{13,17,12,10}	{}	2018-09-17 00:45:00.004636
21615	{16,2,7,15}	{}	2018-09-17 01:30:00.004682
21619	{6,20,14,5}	{}	2018-09-17 02:30:00.004667
21623	{11,9,3,18}	{}	2018-09-17 03:30:00.004733
21627	{2,15,14,21}	{}	2018-09-17 04:30:00.004619
21629	{17,6,12,18}	{}	2018-09-17 05:00:00.006208
21640	{12,2,11,3}	{}	2018-09-17 07:45:00.004722
21643	{5,11,14,8}	{}	2018-09-17 08:30:00.004661
21647	{9,10,4,3}	{}	2018-09-17 09:30:00.004723
21651	{7,9,12,21}	{}	2018-09-17 10:30:00.004523
21653	{19,21,14,16}	{}	2018-09-17 11:00:00.006189
21660	{6,21,10,17}	{}	2018-09-17 12:45:00.004608
21663	{14,10,17,20}	{}	2018-09-17 13:30:00.004711
21667	{4,12,8,16}	{}	2018-09-17 14:30:00.0047
21671	{4,14,13,17}	{}	2018-09-17 15:30:00.004696
21675	{4,9,19,16}	{}	2018-09-17 16:30:00.004742
21677	{1,7,4,21}	{}	2018-09-17 17:00:00.006252
22264	{3,9,10,15}	{}	2018-09-23 19:45:00.004653
22267	{18,21,5,16}	{}	2018-09-23 20:30:00.004636
22270	{15,18,17,11}	{}	2018-09-23 21:15:00.004651
22273	{1,6,13,8}	{}	2018-09-23 22:00:00.004479
22276	{10,15,17,11}	{}	2018-09-23 22:45:00.004719
22277	{13,10,9,5}	{}	2018-09-23 23:00:00.006223
22283	{20,10,1,19}	{}	2018-09-24 00:30:00.004682
22286	{12,2,1,16}	{}	2018-09-24 01:15:00.004769
22289	{20,11,7,4}	{}	2018-09-24 02:00:00.00449
22292	{16,4,21,7}	{}	2018-09-24 02:45:00.004106
22295	{13,14,15,3}	{}	2018-09-24 03:30:00.004715
22298	{1,21,18,19}	{}	2018-09-24 04:15:00.004686
22304	{17,3,12,4}	{}	2018-09-24 05:45:00.004643
22307	{7,1,13,16}	{}	2018-09-24 06:30:00.004695
22310	{2,8,4,19}	{}	2018-09-24 07:15:00.004711
22316	{8,15,9,17}	{}	2018-09-24 08:45:00.004745
22319	{8,3,14,1}	{}	2018-09-24 09:30:00.004649
22322	{7,12,10,14}	{}	2018-09-24 10:15:00.004768
22328	{4,2,12,16}	{}	2018-09-24 11:45:00.004716
22329	{4,18,5,2}	{}	2018-09-24 12:00:00.006246
19379	{20,17,1,11}	{}	2018-08-24 21:15:00.0047
21573	{7,9,16,1}	{}	2018-09-16 15:00:00.004523
21574	{5,4,13,17}	{}	2018-09-16 15:15:00.004761
21577	{11,18,3,15}	{}	2018-09-16 16:00:00.004534
21582	{7,5,16,21}	{}	2018-09-16 17:15:00.004735
21586	{18,8,1,9}	{}	2018-09-16 18:15:00.004779
21594	{14,6,3,21}	{}	2018-09-16 20:15:00.004695
21598	{3,10,17,21}	{}	2018-09-16 21:15:00.004739
21602	{8,12,7,3}	{}	2018-09-16 22:15:00.004699
21610	{15,2,14,10}	{}	2018-09-17 00:15:00.004709
21617	{3,12,1,10}	{}	2018-09-17 02:00:00.004476
21621	{11,8,18,1}	{}	2018-09-17 03:00:00.004569
21625	{9,4,16,11}	{}	2018-09-17 04:00:00.00451
21630	{20,1,15,4}	{}	2018-09-17 05:15:00.004691
21634	{18,1,20,6}	{}	2018-09-17 06:15:00.004641
21642	{14,4,3,12}	{}	2018-09-17 08:15:00.004784
21646	{10,9,5,16}	{}	2018-09-17 09:15:00.004723
21650	{17,21,1,14}	{}	2018-09-17 10:15:00.004758
21658	{16,8,17,4}	{}	2018-09-17 12:15:00.004733
21665	{5,8,19,13}	{}	2018-09-17 14:00:00.004538
21669	{15,4,7,11}	{}	2018-09-17 15:00:00.004499
21673	{7,13,3,10}	{}	2018-09-17 16:00:00.004485
21678	{12,20,21,17}	{}	2018-09-17 17:15:00.004698
22265	{8,5,19,13}	{}	2018-09-23 20:00:00.006255
22266	{3,1,18,15}	{}	2018-09-23 20:15:00.00468
22268	{1,10,3,11}	{}	2018-09-23 20:45:00.004636
22279	{3,4,14,2}	{}	2018-09-23 23:30:00.004841
22282	{18,20,13,7}	{}	2018-09-24 00:15:00.004645
22288	{10,21,15,1}	{}	2018-09-24 01:45:00.004737
22291	{8,3,21,14}	{}	2018-09-24 02:30:00.004665
22294	{12,20,1,19}	{}	2018-09-24 03:15:00.004738
22297	{17,18,20,15}	{}	2018-09-24 04:00:00.004624
22300	{8,14,12,15}	{}	2018-09-24 04:45:00.004762
22301	{15,9,7,11}	{}	2018-09-24 05:00:00.006832
22311	{2,10,13,5}	{}	2018-09-24 07:30:00.004733
22314	{4,10,17,2}	{}	2018-09-24 08:15:00.004713
22317	{5,7,15,9}	{}	2018-09-24 09:00:00.004559
22320	{10,16,3,17}	{}	2018-09-24 09:45:00.004727
22323	{19,10,3,18}	{}	2018-09-24 10:30:00.004851
22326	{3,12,1,16}	{}	2018-09-24 11:15:00.004681
19380	{17,12,9,7}	{}	2018-08-24 21:30:00.00469
19381	{9,15,11,17}	{}	2018-08-24 21:45:00.004666
19382	{6,13,17,10}	{}	2018-08-24 22:00:00.00449
19383	{18,13,7,5}	{}	2018-08-24 22:15:00.004589
19384	{10,17,21,12}	{}	2018-08-24 22:30:00.004501
19385	{18,17,6,21}	{}	2018-08-24 22:45:00.004865
19386	{6,20,21,8}	{}	2018-08-24 23:00:00.006561
19387	{16,5,12,7}	{}	2018-08-24 23:15:00.005054
19388	{10,5,4,11}	{}	2018-08-24 23:30:00.004903
19389	{20,16,8,14}	{}	2018-08-24 23:45:00.004864
19390	{16,18,14,10}	{}	2018-08-25 00:00:00.00616
19391	{6,10,12,11}	{}	2018-08-25 00:15:00.00453
19392	{14,11,15,3}	{}	2018-08-25 00:30:00.003959
19393	{21,9,14,3}	{}	2018-08-25 00:45:00.004679
19394	{1,15,4,8}	{}	2018-08-25 01:00:00.006051
19395	{14,5,20,17}	{}	2018-08-25 01:15:00.004683
19396	{14,19,16,11}	{}	2018-08-25 01:30:00.004393
19397	{18,6,3,12}	{}	2018-08-25 01:45:00.004735
19398	{10,17,19,15}	{}	2018-08-25 02:00:00.004484
19399	{8,14,15,16}	{}	2018-08-25 02:15:00.004646
19400	{5,8,6,2}	{}	2018-08-25 02:30:00.004641
19401	{16,18,7,4}	{}	2018-08-25 02:45:00.004861
19402	{14,19,21,5}	{}	2018-08-25 03:00:00.004661
19403	{5,4,3,13}	{}	2018-08-25 03:15:00.004702
19404	{12,8,7,6}	{}	2018-08-25 03:30:00.004631
19405	{20,4,14,1}	{}	2018-08-25 03:45:00.00457
19406	{19,14,9,6}	{}	2018-08-25 04:00:00.004611
19407	{18,20,17,13}	{}	2018-08-25 04:15:00.004708
19408	{12,4,18,11}	{}	2018-08-25 04:30:00.004701
19409	{14,21,10,16}	{}	2018-08-25 04:45:00.004429
19410	{3,8,9,7}	{}	2018-08-25 05:00:00.006354
19411	{14,3,4,16}	{}	2018-08-25 05:15:00.004699
19412	{11,19,20,18}	{}	2018-08-25 05:30:00.004697
19413	{5,12,21,17}	{}	2018-08-25 05:45:00.004591
19414	{20,15,11,19}	{}	2018-08-25 06:00:00.004477
19415	{12,4,16,6}	{}	2018-08-25 06:15:00.004742
19416	{15,3,14,19}	{}	2018-08-25 06:30:00.004675
19417	{3,21,16,18}	{}	2018-08-25 06:45:00.004712
19418	{20,21,9,10}	{}	2018-08-25 07:00:00.006553
19419	{14,18,21,6}	{}	2018-08-25 07:15:00.004778
19420	{13,7,1,19}	{}	2018-08-25 07:30:00.004676
19421	{1,6,14,15}	{}	2018-08-25 07:45:00.004653
19422	{9,15,10,6}	{}	2018-08-25 08:00:00.0064
19423	{2,20,6,17}	{}	2018-08-25 08:15:00.004642
19424	{2,18,4,3}	{}	2018-08-25 08:30:00.004643
19425	{9,8,6,3}	{}	2018-08-25 08:45:00.004631
19426	{15,8,1,2}	{}	2018-08-25 09:00:00.004463
19427	{16,10,6,15}	{}	2018-08-25 09:15:00.004665
19428	{6,10,9,18}	{}	2018-08-25 09:30:00.004617
19429	{1,2,10,18}	{}	2018-08-25 09:45:00.004715
19430	{1,9,15,21}	{}	2018-08-25 10:00:00.004528
19431	{9,20,18,16}	{}	2018-08-25 10:15:00.004683
19432	{7,13,14,2}	{}	2018-08-25 10:30:00.004664
19433	{15,19,11,6}	{}	2018-08-25 10:45:00.004714
19434	{13,11,5,19}	{}	2018-08-25 11:00:00.006378
19435	{20,13,16,15}	{}	2018-08-25 11:15:00.004924
19436	{18,9,13,21}	{}	2018-08-25 11:30:00.004861
19437	{12,2,1,21}	{}	2018-08-25 11:45:00.004668
19438	{2,17,20,14}	{}	2018-08-25 12:00:00.006232
19439	{1,19,13,2}	{}	2018-08-25 12:15:00.004671
19440	{16,5,21,2}	{}	2018-08-25 12:30:00.004658
19441	{3,11,2,18}	{}	2018-08-25 12:45:00.00469
19442	{21,20,13,2}	{}	2018-08-25 13:00:00.006811
19443	{11,4,9,20}	{}	2018-08-25 13:15:00.004664
19444	{16,15,19,5}	{}	2018-08-25 13:30:00.004679
19445	{8,16,14,21}	{}	2018-08-25 13:45:00.00468
19446	{4,5,20,14}	{}	2018-08-25 14:00:00.004487
19447	{18,21,11,4}	{}	2018-08-25 14:15:00.004706
19448	{11,6,20,10}	{}	2018-08-25 14:30:00.004719
19449	{15,14,7,12}	{}	2018-08-25 14:45:00.004753
19450	{1,21,15,16}	{}	2018-08-25 15:00:00.004498
19451	{1,14,8,21}	{}	2018-08-25 15:15:00.004614
19452	{8,12,9,10}	{}	2018-08-25 15:30:00.004793
19453	{13,6,15,8}	{}	2018-08-25 15:45:00.004876
19454	{12,3,5,8}	{}	2018-08-25 16:00:00.004501
19455	{7,21,19,17}	{}	2018-08-25 16:15:00.004682
19456	{20,2,15,17}	{}	2018-08-25 16:30:00.004676
19457	{1,8,14,7}	{}	2018-08-25 16:45:00.00456
19458	{20,12,1,8}	{}	2018-08-25 17:00:00.006432
19459	{19,20,18,3}	{}	2018-08-25 17:15:00.004704
19460	{7,16,19,13}	{}	2018-08-25 17:30:00.004712
19461	{3,1,2,8}	{}	2018-08-25 17:45:00.005345
19462	{14,18,16,21}	{}	2018-08-25 18:00:00.00452
19463	{1,9,16,21}	{}	2018-08-25 18:15:00.004644
19464	{2,9,19,17}	{}	2018-08-25 18:30:00.004731
19465	{21,12,14,19}	{}	2018-08-25 18:45:00.004661
19466	{5,19,13,14}	{}	2018-08-25 19:00:00.006464
19467	{1,9,8,7}	{}	2018-08-25 19:15:00.004727
19468	{17,3,21,10}	{}	2018-08-25 19:30:00.004705
19469	{7,11,1,3}	{}	2018-08-25 19:45:00.004782
19470	{10,21,8,17}	{}	2018-08-25 20:00:00.006316
19471	{3,4,13,12}	{}	2018-08-25 20:15:00.004616
19472	{11,19,8,14}	{}	2018-08-25 20:30:00.004687
19473	{20,18,3,17}	{}	2018-08-25 20:45:00.004685
19474	{13,2,7,12}	{}	2018-08-25 21:00:00.004528
19475	{10,1,9,3}	{}	2018-08-25 21:15:00.004663
19476	{2,20,18,13}	{}	2018-08-25 21:30:00.004709
19477	{10,7,18,5}	{}	2018-08-25 21:45:00.004646
19478	{9,20,6,1}	{}	2018-08-25 22:00:00.00451
19479	{7,12,6,19}	{}	2018-08-25 22:15:00.004505
19480	{17,16,9,4}	{}	2018-08-25 22:30:00.004668
19481	{2,4,9,13}	{}	2018-08-25 22:45:00.004662
19482	{13,3,12,6}	{}	2018-08-25 23:00:00.006403
19483	{11,21,16,19}	{}	2018-08-25 23:15:00.00472
19484	{1,20,18,19}	{}	2018-08-25 23:30:00.004806
19485	{19,7,18,12}	{}	2018-08-25 23:45:00.004815
19486	{5,15,11,19}	{}	2018-08-26 00:00:00.006347
19487	{11,1,4,19}	{}	2018-08-26 00:15:00.004743
19488	{7,21,2,6}	{}	2018-08-26 00:30:00.004667
19489	{3,19,8,7}	{}	2018-08-26 00:45:00.004723
19490	{11,19,4,6}	{}	2018-08-26 01:00:00.006429
19491	{10,4,3,6}	{}	2018-08-26 01:15:00.004747
19492	{5,9,15,21}	{}	2018-08-26 01:30:00.004726
19493	{11,5,16,14}	{}	2018-08-26 01:45:00.0047
19494	{11,19,17,2}	{}	2018-08-26 02:00:00.004465
19495	{1,2,17,15}	{}	2018-08-26 02:15:00.004642
19496	{11,10,21,15}	{}	2018-08-26 02:30:00.00465
19497	{20,17,7,3}	{}	2018-08-26 02:45:00.004717
19498	{9,8,17,2}	{}	2018-08-26 03:00:00.004506
19499	{8,13,16,9}	{}	2018-08-26 03:15:00.004654
19500	{1,10,9,14}	{}	2018-08-26 03:30:00.004699
19501	{5,4,16,19}	{}	2018-08-26 03:45:00.004666
19502	{7,12,18,15}	{}	2018-08-26 04:00:00.00449
19503	{16,3,2,13}	{}	2018-08-26 04:15:00.004869
19504	{9,20,10,3}	{}	2018-08-26 04:30:00.004882
19505	{10,3,4,21}	{}	2018-08-26 04:45:00.00469
19506	{10,6,11,7}	{}	2018-08-26 05:00:00.006404
19507	{11,10,20,14}	{}	2018-08-26 05:15:00.004661
19508	{13,8,11,6}	{}	2018-08-26 05:30:00.004734
19509	{6,5,14,8}	{}	2018-08-26 05:45:00.004686
19510	{2,10,19,18}	{}	2018-08-26 06:00:00.004423
19511	{19,7,4,5}	{}	2018-08-26 06:15:00.004588
19512	{16,12,4,8}	{}	2018-08-26 06:30:00.004706
19513	{15,18,9,17}	{}	2018-08-26 06:45:00.004702
19514	{10,15,1,16}	{}	2018-08-26 07:00:00.006998
19515	{8,12,14,13}	{}	2018-08-26 07:15:00.004625
19516	{9,10,4,12}	{}	2018-08-26 07:30:00.004374
19517	{16,7,17,4}	{}	2018-08-26 07:45:00.00467
19518	{9,14,2,5}	{}	2018-08-26 08:00:00.006182
19519	{6,21,20,12}	{}	2018-08-26 08:15:00.004691
19520	{4,10,7,19}	{}	2018-08-26 08:30:00.004778
19521	{21,13,17,11}	{}	2018-08-26 08:45:00.004751
19522	{7,1,9,14}	{}	2018-08-26 09:00:00.004499
19523	{19,15,16,8}	{}	2018-08-26 09:15:00.004668
19524	{11,5,19,8}	{}	2018-08-26 09:30:00.004704
19525	{12,20,7,6}	{}	2018-08-26 09:45:00.004638
19526	{15,9,5,18}	{}	2018-08-26 10:00:00.004502
19527	{2,20,1,15}	{}	2018-08-26 10:15:00.004715
19528	{19,5,10,15}	{}	2018-08-26 10:30:00.004682
19529	{5,2,12,13}	{}	2018-08-26 10:45:00.004694
19530	{9,6,4,1}	{}	2018-08-26 11:00:00.0064
19531	{7,13,19,5}	{}	2018-08-26 11:15:00.004645
19532	{16,17,14,10}	{}	2018-08-26 11:30:00.004725
19533	{11,21,8,7}	{}	2018-08-26 11:45:00.004699
19534	{20,15,6,16}	{}	2018-08-26 12:00:00.006378
19535	{18,19,10,5}	{}	2018-08-26 12:15:00.004647
19536	{15,17,10,9}	{}	2018-08-26 12:30:00.00463
19537	{6,14,2,5}	{}	2018-08-26 12:45:00.004936
21578	{16,11,6,7}	{}	2018-09-16 16:15:00.004777
21585	{1,4,17,9}	{}	2018-09-16 18:00:00.004597
21590	{21,6,19,3}	{}	2018-09-16 19:15:00.004734
21597	{8,15,2,14}	{}	2018-09-16 21:00:00.004553
21601	{11,7,1,20}	{}	2018-09-16 22:00:00.004522
21606	{12,7,18,8}	{}	2018-09-16 23:15:00.004813
21614	{19,12,8,5}	{}	2018-09-17 01:15:00.004563
21618	{6,8,18,21}	{}	2018-09-17 02:15:00.004737
21622	{10,14,5,17}	{}	2018-09-17 03:15:00.004712
21626	{12,2,20,6}	{}	2018-09-17 04:15:00.003898
21633	{2,1,7,18}	{}	2018-09-17 06:00:00.004509
21638	{6,11,15,1}	{}	2018-09-17 07:15:00.004694
21645	{18,15,6,1}	{}	2018-09-17 09:00:00.004489
21649	{13,19,3,16}	{}	2018-09-17 10:00:00.004545
21654	{19,13,21,8}	{}	2018-09-17 11:15:00.004681
21662	{14,15,7,10}	{}	2018-09-17 13:15:00.004688
21666	{16,10,5,20}	{}	2018-09-17 14:15:00.004693
21670	{4,8,3,18}	{}	2018-09-17 15:15:00.004689
21674	{21,4,9,15}	{}	2018-09-17 16:15:00.004699
22269	{2,7,3,16}	{}	2018-09-23 21:00:00.004542
22272	{1,4,10,7}	{}	2018-09-23 21:45:00.004702
22275	{16,4,9,10}	{}	2018-09-23 22:30:00.004149
22278	{13,15,5,6}	{}	2018-09-23 23:15:00.004814
22284	{19,9,2,16}	{}	2018-09-24 00:45:00.004734
22285	{6,12,17,14}	{}	2018-09-24 01:00:00.006848
22303	{3,11,21,12}	{}	2018-09-24 05:30:00.00469
22306	{3,7,21,6}	{}	2018-09-24 06:15:00.00469
22312	{4,7,16,18}	{}	2018-09-24 07:45:00.004632
22313	{1,18,7,13}	{}	2018-09-24 08:00:00.006257
22327	{1,20,4,10}	{}	2018-09-24 11:30:00.004789
22330	{19,2,7,14}	{}	2018-09-24 12:15:00.004705
19538	{10,7,21,8}	{}	2018-08-26 13:00:00.00639
19539	{14,1,20,16}	{}	2018-08-26 13:15:00.004634
19540	{16,18,17,2}	{}	2018-08-26 13:30:00.004668
19541	{6,9,19,1}	{}	2018-08-26 13:45:00.004592
19542	{11,21,9,17}	{}	2018-08-26 14:00:00.004521
19543	{13,3,10,8}	{}	2018-08-26 14:15:00.004658
19544	{14,2,8,6}	{}	2018-08-26 14:30:00.004736
19545	{20,21,13,16}	{}	2018-08-26 14:45:00.004752
19546	{5,6,19,10}	{}	2018-08-26 15:00:00.004522
19547	{15,2,14,9}	{}	2018-08-26 15:15:00.004601
19548	{8,18,10,13}	{}	2018-08-26 15:30:00.004708
19549	{18,6,4,13}	{}	2018-08-26 15:45:00.004695
19550	{9,19,8,2}	{}	2018-08-26 16:00:00.004408
19551	{13,7,16,4}	{}	2018-08-26 16:15:00.00469
19552	{1,3,14,10}	{}	2018-08-26 16:30:00.005378
19553	{20,16,19,1}	{}	2018-08-26 16:45:00.004674
21580	{8,19,14,20}	{}	2018-09-16 16:45:00.004701
21583	{15,5,16,8}	{}	2018-09-16 17:30:00.004734
21584	{4,14,6,16}	{}	2018-09-16 17:45:00.004703
21587	{13,2,14,19}	{}	2018-09-16 18:30:00.004693
21589	{13,9,11,4}	{}	2018-09-16 19:00:00.005124
21596	{7,6,11,17}	{}	2018-09-16 20:45:00.004691
21600	{4,21,16,8}	{}	2018-09-16 21:45:00.004709
21604	{9,10,8,12}	{}	2018-09-16 22:45:00.004685
21607	{12,19,16,9}	{}	2018-09-16 23:30:00.004788
21609	{9,15,19,2}	{}	2018-09-17 00:00:00.006085
21616	{8,7,12,4}	{}	2018-09-17 01:45:00.004659
21620	{17,6,4,7}	{}	2018-09-17 02:45:00.004738
21624	{17,15,3,7}	{}	2018-09-17 03:45:00.004614
21628	{15,13,9,19}	{}	2018-09-17 04:45:00.004636
21631	{8,3,7,13}	{}	2018-09-17 05:30:00.004578
21635	{15,4,7,11}	{}	2018-09-17 06:30:00.004675
21637	{11,18,10,19}	{}	2018-09-17 07:00:00.006283
21644	{19,8,21,18}	{}	2018-09-17 08:45:00.004679
21648	{20,12,15,16}	{}	2018-09-17 09:45:00.004697
21652	{1,21,20,19}	{}	2018-09-17 10:45:00.00469
21655	{15,19,16,5}	{}	2018-09-17 11:30:00.004723
21657	{3,18,4,16}	{}	2018-09-17 12:00:00.006142
21664	{14,20,10,5}	{}	2018-09-17 13:45:00.004776
21668	{8,16,3,20}	{}	2018-09-17 14:45:00.004699
21672	{2,15,11,20}	{}	2018-09-17 15:45:00.004733
21676	{7,13,16,19}	{}	2018-09-17 16:45:00.004662
22271	{16,10,2,21}	{}	2018-09-23 21:30:00.004706
22274	{15,10,13,19}	{}	2018-09-23 22:15:00.00471
22280	{1,15,7,6}	{}	2018-09-23 23:45:00.004819
22281	{10,17,19,3}	{}	2018-09-24 00:00:00.006168
22287	{7,21,8,19}	{}	2018-09-24 01:30:00.004781
22290	{20,1,9,8}	{}	2018-09-24 02:15:00.004784
22293	{4,20,10,12}	{}	2018-09-24 03:00:00.004535
22296	{3,4,18,7}	{}	2018-09-24 03:45:00.004711
22299	{15,9,19,2}	{}	2018-09-24 04:30:00.004697
22302	{4,17,14,19}	{}	2018-09-24 05:15:00.004751
22305	{5,16,8,4}	{}	2018-09-24 06:00:00.004391
22308	{6,12,7,3}	{}	2018-09-24 06:45:00.004767
22309	{3,5,11,12}	{}	2018-09-24 07:00:00.006889
22315	{16,14,8,4}	{}	2018-09-24 08:30:00.004712
22318	{20,18,13,21}	{}	2018-09-24 09:15:00.004757
22321	{15,5,10,13}	{}	2018-09-24 10:00:00.003886
22324	{21,19,20,18}	{}	2018-09-24 10:45:00.004714
22325	{14,21,4,17}	{}	2018-09-24 11:00:00.006266
19554	{12,14,15,1}	{}	2018-08-26 17:00:00.00652
19555	{10,16,3,7}	{}	2018-08-26 17:15:00.004739
19556	{12,6,8,17}	{}	2018-08-26 17:30:00.004622
19557	{7,10,19,11}	{}	2018-08-26 17:45:00.004691
19558	{12,7,16,13}	{}	2018-08-26 18:00:00.004512
19559	{3,13,20,8}	{}	2018-08-26 18:15:00.004585
19560	{4,13,9,5}	{}	2018-08-26 18:30:00.004674
19561	{20,4,10,16}	{}	2018-08-26 18:45:00.004744
19562	{14,2,15,13}	{}	2018-08-26 19:00:00.006464
19563	{7,18,17,14}	{}	2018-08-26 19:15:00.004703
19564	{10,3,1,2}	{}	2018-08-26 19:30:00.004671
19565	{1,7,2,3}	{}	2018-08-26 19:45:00.004649
19566	{13,2,9,14}	{}	2018-08-26 20:00:00.006464
19567	{13,21,16,19}	{}	2018-08-26 20:15:00.004734
19568	{9,4,13,18}	{}	2018-08-26 20:30:00.004779
19569	{20,15,4,17}	{}	2018-08-26 20:45:00.004656
19570	{15,21,6,17}	{}	2018-08-26 21:00:00.004476
19571	{20,6,11,7}	{}	2018-08-26 21:15:00.004905
19572	{20,15,8,17}	{}	2018-08-26 21:30:00.0048
19573	{8,18,1,14}	{}	2018-08-26 21:45:00.004631
19574	{6,10,3,5}	{}	2018-08-26 22:00:00.004523
19575	{21,6,20,12}	{}	2018-08-26 22:15:00.004691
19576	{16,5,12,7}	{}	2018-08-26 22:30:00.004761
19577	{18,4,2,1}	{}	2018-08-26 22:45:00.00459
19578	{13,9,5,19}	{}	2018-08-26 23:00:00.006051
19579	{18,11,4,17}	{}	2018-08-26 23:15:00.004885
19580	{13,18,10,21}	{}	2018-08-26 23:30:00.004827
19581	{11,8,13,21}	{}	2018-08-26 23:45:00.004895
19582	{3,1,8,19}	{}	2018-08-27 00:00:00.006292
19583	{7,11,17,4}	{}	2018-08-27 00:15:00.004739
19584	{10,19,12,7}	{}	2018-08-27 00:30:00.004729
19585	{18,2,6,12}	{}	2018-08-27 00:45:00.004685
19586	{5,3,14,2}	{}	2018-08-27 01:00:00.00639
19587	{7,1,16,18}	{}	2018-08-27 01:15:00.004686
19588	{13,8,16,9}	{}	2018-08-27 01:30:00.004833
19589	{10,7,16,8}	{}	2018-08-27 01:45:00.004818
19590	{11,14,6,2}	{}	2018-08-27 02:00:00.004477
19591	{10,5,15,9}	{}	2018-08-27 02:15:00.004667
19592	{15,10,3,19}	{}	2018-08-27 02:30:00.004641
19593	{13,9,10,5}	{}	2018-08-27 02:45:00.004679
19594	{5,11,18,3}	{}	2018-08-27 03:00:00.004518
19595	{17,2,11,10}	{}	2018-08-27 03:15:00.004668
19596	{12,15,19,14}	{}	2018-08-27 03:30:00.0047
19597	{2,21,18,5}	{}	2018-08-27 03:45:00.004694
19598	{14,13,11,2}	{}	2018-08-27 04:00:00.004541
19599	{17,3,16,14}	{}	2018-08-27 04:15:00.004687
19600	{6,3,10,19}	{}	2018-08-27 04:30:00.004619
19601	{20,1,21,11}	{}	2018-08-27 04:45:00.004472
19602	{8,3,17,19}	{}	2018-08-27 05:00:00.006336
19603	{15,5,17,6}	{}	2018-08-27 05:15:00.004745
19604	{20,6,3,18}	{}	2018-08-27 05:30:00.004684
19605	{20,6,16,7}	{}	2018-08-27 05:45:00.004921
19606	{2,12,5,3}	{}	2018-08-27 06:00:00.004577
19607	{9,1,2,6}	{}	2018-08-27 06:15:00.004664
19608	{9,2,3,13}	{}	2018-08-27 06:30:00.004727
19609	{13,18,9,15}	{}	2018-08-27 06:45:00.004621
19610	{1,4,3,19}	{}	2018-08-27 07:00:00.006531
19611	{10,5,16,13}	{}	2018-08-27 07:15:00.004705
19612	{10,15,21,12}	{}	2018-08-27 07:30:00.004717
19613	{21,13,15,1}	{}	2018-08-27 07:45:00.004642
19614	{14,16,1,12}	{}	2018-08-27 08:00:00.006285
19615	{16,4,10,1}	{}	2018-08-27 08:15:00.004639
19616	{14,4,19,11}	{}	2018-08-27 08:30:00.004671
19617	{14,12,13,15}	{}	2018-08-27 08:45:00.004706
19618	{12,13,16,2}	{}	2018-08-27 09:00:00.004477
19619	{14,8,7,2}	{}	2018-08-27 09:15:00.004472
19620	{5,20,6,19}	{}	2018-08-27 09:30:00.004717
19621	{7,18,11,16}	{}	2018-08-27 09:45:00.00463
19622	{1,19,20,13}	{}	2018-08-27 10:00:00.004659
19623	{19,10,11,20}	{}	2018-08-27 10:15:00.004325
19624	{16,7,18,20}	{}	2018-08-27 10:30:00.004638
19625	{16,13,14,21}	{}	2018-08-27 10:45:00.004664
19626	{19,16,5,17}	{}	2018-08-27 11:00:00.006369
19627	{21,7,6,2}	{}	2018-08-27 11:15:00.004758
19628	{6,14,8,16}	{}	2018-08-27 11:30:00.004621
19629	{11,3,4,9}	{}	2018-08-27 11:45:00.004677
19630	{1,4,6,12}	{}	2018-08-27 12:00:00.006296
19631	{17,19,9,3}	{}	2018-08-27 12:15:00.004684
19632	{20,12,9,11}	{}	2018-08-27 12:30:00.004717
19633	{12,6,11,7}	{}	2018-08-27 12:45:00.004756
21588	{20,11,3,4}	{}	2018-09-16 18:45:00.004695
21591	{19,3,4,17}	{}	2018-09-16 19:30:00.004706
21593	{13,15,21,14}	{}	2018-09-16 20:00:00.006204
21608	{19,8,21,11}	{}	2018-09-16 23:45:00.004824
21611	{2,12,16,19}	{}	2018-09-17 00:30:00.004765
21613	{20,14,1,7}	{}	2018-09-17 01:00:00.006287
21632	{11,4,16,20}	{}	2018-09-17 05:45:00.004695
21636	{3,8,9,1}	{}	2018-09-17 06:45:00.004752
21639	{13,1,14,15}	{}	2018-09-17 07:30:00.004744
21641	{20,15,6,18}	{}	2018-09-17 08:00:00.006285
21656	{14,3,15,4}	{}	2018-09-17 11:45:00.004717
21659	{1,12,5,3}	{}	2018-09-17 12:30:00.004147
21661	{3,18,6,16}	{}	2018-09-17 13:00:00.006228
22331	{19,3,11,9}	{}	2018-09-24 12:30:00.004759
22332	{8,4,1,16}	{}	2018-09-24 12:45:00.004628
22335	{16,11,5,14}	{}	2018-09-24 13:30:00.004742
22338	{4,7,3,19}	{}	2018-09-24 14:15:00.004717
22341	{9,12,4,13}	{}	2018-09-24 15:00:00.004507
22344	{2,4,3,21}	{}	2018-09-24 15:45:00.004689
22347	{8,10,3,11}	{}	2018-09-24 16:30:00.004725
22350	{2,12,19,13}	{}	2018-09-24 17:15:00.0047
22353	{14,3,9,18}	{}	2018-09-24 18:00:00.004527
22356	{1,18,20,14}	{}	2018-09-24 18:45:00.004676
22357	{20,21,12,1}	{}	2018-09-24 19:00:00.006312
22363	{1,3,14,16}	{}	2018-09-24 20:30:00.00468
22366	{6,18,8,5}	{}	2018-09-24 21:15:00.004738
22369	{21,16,18,7}	{}	2018-09-24 22:00:00.004523
22372	{9,2,7,13}	{}	2018-09-24 22:45:00.004694
22373	{14,8,18,5}	{}	2018-09-24 23:00:00.006306
22375	{13,17,15,11}	{}	2018-09-24 23:30:00.004846
22377	{9,11,19,15}	{}	2018-09-25 00:00:00.006124
22384	{10,1,14,2}	{}	2018-09-25 01:45:00.004742
22388	{3,10,14,17}	{}	2018-09-25 02:45:00.004661
22392	{7,3,18,12}	{}	2018-09-25 03:45:00.004738
22396	{17,13,12,8}	{}	2018-09-25 04:45:00.004504
22399	{6,1,7,14}	{}	2018-09-25 05:30:00.004683
22403	{16,7,4,12}	{}	2018-09-25 06:30:00.004739
22405	{8,19,2,13}	{}	2018-09-25 07:00:00.006116
22412	{19,17,21,2}	{}	2018-09-25 08:45:00.004754
22416	{7,16,14,1}	{}	2018-09-25 09:45:00.004695
22420	{20,5,2,16}	{}	2018-09-25 10:45:00.004747
22423	{5,16,4,6}	{}	2018-09-25 11:30:00.004702
22425	{15,7,2,9}	{}	2018-09-25 12:00:00.006256
22432	{2,21,6,14}	{}	2018-09-25 13:45:00.004679
22436	{12,10,20,19}	{}	2018-09-25 14:45:00.004656
22440	{21,11,6,8}	{}	2018-09-25 15:45:00.004708
22444	{6,9,12,1}	{}	2018-09-25 16:45:00.00468
22447	{18,19,1,12}	{}	2018-09-25 17:30:00.004592
22451	{19,11,2,17}	{}	2018-09-25 18:30:00.004718
22453	{13,3,8,9}	{}	2018-09-25 19:00:00.006135
22460	{7,18,16,20}	{}	2018-09-25 20:45:00.004789
22464	{18,2,20,1}	{}	2018-09-25 21:45:00.004786
22468	{8,21,16,14}	{}	2018-09-25 22:45:00.004672
22471	{10,15,16,20}	{}	2018-09-25 23:30:00.004866
22473	{2,4,14,11}	{}	2018-09-26 00:00:00.006761
22480	{5,12,3,6}	{}	2018-09-26 01:45:00.004729
22484	{17,2,20,9}	{}	2018-09-26 02:45:00.004707
22488	{9,11,2,10}	{}	2018-09-26 03:45:00.004737
22492	{20,3,21,19}	{}	2018-09-26 04:45:00.004682
22495	{14,18,3,9}	{}	2018-09-26 05:30:00.004771
22499	{8,11,18,4}	{}	2018-09-26 06:30:00.004799
22501	{20,7,21,19}	{}	2018-09-26 07:00:00.006255
19634	{15,3,8,4}	{}	2018-08-27 13:00:00.00635
19635	{20,15,18,11}	{}	2018-08-27 13:15:00.004614
19636	{8,11,17,13}	{}	2018-08-27 13:30:00.004698
19637	{18,19,2,4}	{}	2018-08-27 13:45:00.004674
19638	{11,17,13,15}	{}	2018-08-27 14:00:00.004502
19639	{14,1,2,15}	{}	2018-08-27 14:15:00.004924
19640	{7,8,3,5}	{}	2018-08-27 14:30:00.004706
19641	{21,14,19,7}	{}	2018-08-27 14:45:00.004675
19642	{9,14,20,19}	{}	2018-08-27 15:00:00.004522
19643	{3,1,2,11}	{}	2018-08-27 15:15:00.004713
19644	{16,3,4,1}	{}	2018-08-27 15:30:00.004703
19645	{18,13,5,11}	{}	2018-08-27 15:45:00.004673
19646	{4,21,17,11}	{}	2018-08-27 16:00:00.004542
19647	{10,12,20,19}	{}	2018-08-27 16:15:00.004707
19648	{7,19,2,5}	{}	2018-08-27 16:30:00.004727
19649	{20,7,4,18}	{}	2018-08-27 16:45:00.00468
19650	{15,6,20,13}	{}	2018-08-27 17:00:00.006505
19651	{8,20,7,11}	{}	2018-08-27 17:15:00.004693
19652	{10,19,13,1}	{}	2018-08-27 17:30:00.004705
19653	{16,20,13,7}	{}	2018-08-27 17:45:00.004718
19654	{9,4,10,18}	{}	2018-08-27 18:00:00.004481
19655	{14,4,17,15}	{}	2018-08-27 18:15:00.004793
19656	{2,15,4,17}	{}	2018-08-27 18:30:00.004891
19657	{1,4,21,8}	{}	2018-08-27 18:45:00.004855
19658	{17,9,8,18}	{}	2018-08-27 19:00:00.006396
19659	{21,20,13,17}	{}	2018-08-27 19:15:00.004681
19660	{15,13,21,4}	{}	2018-08-27 19:30:00.0046
19661	{10,21,16,18}	{}	2018-08-27 19:45:00.004708
19662	{6,4,18,9}	{}	2018-08-27 20:00:00.006097
19663	{20,17,2,11}	{}	2018-08-27 20:15:00.00471
19664	{19,1,7,15}	{}	2018-08-27 20:30:00.004621
19665	{18,6,3,13}	{}	2018-08-27 20:45:00.004592
19666	{12,11,7,16}	{}	2018-08-27 21:00:00.004487
19667	{8,6,3,13}	{}	2018-08-27 21:15:00.0047
19668	{3,7,19,14}	{}	2018-08-27 21:30:00.00476
19669	{17,19,1,15}	{}	2018-08-27 21:45:00.004577
19670	{8,6,21,7}	{}	2018-08-27 22:00:00.004436
19671	{12,20,7,15}	{}	2018-08-27 22:15:00.00464
19672	{17,12,2,16}	{}	2018-08-27 22:30:00.004619
19673	{7,17,13,15}	{}	2018-08-27 22:45:00.004858
19674	{14,19,7,1}	{}	2018-08-27 23:00:00.006374
19675	{12,4,2,10}	{}	2018-08-27 23:15:00.004808
19676	{5,2,11,19}	{}	2018-08-27 23:30:00.004792
19677	{11,6,7,1}	{}	2018-08-27 23:45:00.004734
19678	{17,5,6,15}	{}	2018-08-28 00:00:00.006303
19679	{8,16,13,15}	{}	2018-08-28 00:15:00.004727
19680	{10,21,17,19}	{}	2018-08-28 00:30:00.00467
19681	{6,2,21,3}	{}	2018-08-28 00:45:00.004641
19682	{10,6,20,16}	{}	2018-08-28 01:00:00.006415
19683	{20,1,18,19}	{}	2018-08-28 01:15:00.004689
19684	{4,8,21,20}	{}	2018-08-28 01:30:00.004717
19685	{1,5,11,7}	{}	2018-08-28 01:45:00.004647
19686	{18,7,2,13}	{}	2018-08-28 02:00:00.004482
19687	{14,9,7,1}	{}	2018-08-28 02:15:00.004685
19688	{18,13,10,19}	{}	2018-08-28 02:30:00.004707
19689	{3,9,7,17}	{}	2018-08-28 02:45:00.004698
19690	{15,19,8,14}	{}	2018-08-28 03:00:00.004786
19691	{5,17,4,20}	{}	2018-08-28 03:15:00.004849
19692	{21,7,12,1}	{}	2018-08-28 03:30:00.004596
19693	{13,18,17,1}	{}	2018-08-28 03:45:00.004681
19694	{17,9,13,21}	{}	2018-08-28 04:00:00.004565
19695	{2,3,6,13}	{}	2018-08-28 04:15:00.004648
19696	{7,13,19,3}	{}	2018-08-28 04:30:00.004707
19697	{11,17,9,14}	{}	2018-08-28 04:45:00.004688
19698	{11,9,13,19}	{}	2018-08-28 05:00:00.006361
19699	{7,13,15,19}	{}	2018-08-28 05:15:00.004653
19700	{3,11,8,2}	{}	2018-08-28 05:30:00.004716
19701	{20,17,18,21}	{}	2018-08-28 05:45:00.004729
19702	{5,19,4,3}	{}	2018-08-28 06:00:00.004488
19703	{14,3,21,4}	{}	2018-08-28 06:15:00.004665
19704	{14,15,11,19}	{}	2018-08-28 06:30:00.004764
19705	{5,9,7,3}	{}	2018-08-28 06:45:00.004676
19706	{3,10,17,8}	{}	2018-08-28 07:00:00.006435
19707	{4,13,5,1}	{}	2018-08-28 07:15:00.004875
19708	{11,3,18,15}	{}	2018-08-28 07:30:00.004732
19709	{19,7,12,15}	{}	2018-08-28 07:45:00.004684
19710	{2,15,13,8}	{}	2018-08-28 08:00:00.006932
19711	{17,20,18,8}	{}	2018-08-28 08:15:00.004711
19712	{21,10,16,1}	{}	2018-08-28 08:30:00.004645
19713	{21,1,3,15}	{}	2018-08-28 08:45:00.00467
19714	{11,15,5,21}	{}	2018-08-28 09:00:00.004324
19715	{9,10,7,5}	{}	2018-08-28 09:15:00.004612
19716	{18,17,5,21}	{}	2018-08-28 09:30:00.004696
19717	{7,12,1,17}	{}	2018-08-28 09:45:00.004662
19718	{21,5,3,9}	{}	2018-08-28 10:00:00.004492
19719	{12,17,11,5}	{}	2018-08-28 10:15:00.004682
19720	{2,11,18,17}	{}	2018-08-28 10:30:00.004664
19721	{14,16,9,12}	{}	2018-08-28 10:45:00.004612
21679	{13,15,8,7}	{}	2018-09-17 17:30:00.004708
21682	{1,6,9,11}	{}	2018-09-17 18:15:00.004706
21690	{6,15,1,4}	{}	2018-09-17 20:15:00.004625
21694	{21,19,3,17}	{}	2018-09-17 21:15:00.004682
21698	{3,5,8,21}	{}	2018-09-17 22:15:00.004714
21706	{13,20,12,10}	{}	2018-09-18 00:15:00.004663
21713	{13,12,2,14}	{}	2018-09-18 02:00:00.004526
21717	{6,12,13,1}	{}	2018-09-18 03:00:00.004553
21721	{18,5,2,6}	{}	2018-09-18 04:00:00.004504
21726	{16,20,4,7}	{}	2018-09-18 05:15:00.00471
21730	{6,14,11,8}	{}	2018-09-18 06:15:00.004748
21738	{13,15,11,19}	{}	2018-09-18 08:15:00.004694
21742	{8,21,16,11}	{}	2018-09-18 09:15:00.004722
21746	{3,18,19,2}	{}	2018-09-18 10:15:00.004716
21754	{13,17,18,1}	{}	2018-09-18 12:15:00.004761
21761	{12,15,16,7}	{}	2018-09-18 14:00:00.004535
21765	{8,13,7,10}	{}	2018-09-18 15:00:00.004463
21769	{9,7,11,1}	{}	2018-09-18 16:00:00.004516
21774	{7,20,10,6}	{}	2018-09-18 17:15:00.004752
21778	{21,13,17,10}	{}	2018-09-18 18:15:00.00473
21786	{19,11,9,4}	{}	2018-09-18 20:15:00.004649
21790	{1,14,6,19}	{}	2018-09-18 21:15:00.004746
21794	{3,2,4,16}	{}	2018-09-18 22:15:00.004802
21802	{5,16,3,9}	{}	2018-09-19 00:15:00.004757
21809	{19,17,20,8}	{}	2018-09-19 02:00:00.004488
21813	{13,12,20,15}	{}	2018-09-19 03:00:00.004562
21817	{19,18,15,16}	{}	2018-09-19 04:00:00.00454
21822	{8,2,5,1}	{}	2018-09-19 05:15:00.00468
22333	{8,7,10,13}	{}	2018-09-24 13:00:00.006271
22336	{14,6,13,10}	{}	2018-09-24 13:45:00.004683
22351	{16,4,15,8}	{}	2018-09-24 17:30:00.004692
22354	{14,8,3,2}	{}	2018-09-24 18:15:00.004756
22360	{1,3,18,19}	{}	2018-09-24 19:45:00.00469
22361	{14,4,8,15}	{}	2018-09-24 20:00:00.006202
22378	{6,8,5,3}	{}	2018-09-25 00:15:00.004655
22385	{13,19,14,10}	{}	2018-09-25 02:00:00.004554
22389	{11,20,7,21}	{}	2018-09-25 03:00:00.00452
22393	{10,1,17,12}	{}	2018-09-25 04:00:00.00457
22398	{5,2,7,1}	{}	2018-09-25 05:15:00.004741
22402	{19,7,20,15}	{}	2018-09-25 06:15:00.004769
22410	{15,7,17,9}	{}	2018-09-25 08:15:00.004739
22414	{15,19,16,2}	{}	2018-09-25 09:15:00.004753
22418	{20,12,3,13}	{}	2018-09-25 10:15:00.004734
22426	{21,2,12,7}	{}	2018-09-25 12:15:00.004745
22433	{7,19,18,14}	{}	2018-09-25 14:00:00.004532
22437	{4,5,6,21}	{}	2018-09-25 15:00:00.004499
22441	{1,18,12,14}	{}	2018-09-25 16:00:00.004478
22446	{2,21,11,3}	{}	2018-09-25 17:15:00.004432
22450	{8,20,10,17}	{}	2018-09-25 18:15:00.004692
22458	{5,9,15,13}	{}	2018-09-25 20:15:00.004739
22462	{8,16,1,18}	{}	2018-09-25 21:15:00.004742
22466	{17,20,19,11}	{}	2018-09-25 22:15:00.004733
22474	{13,9,15,5}	{}	2018-09-26 00:15:00.004712
22481	{11,8,9,10}	{}	2018-09-26 02:00:00.004567
22485	{17,4,21,9}	{}	2018-09-26 03:00:00.004547
22489	{12,8,6,15}	{}	2018-09-26 04:00:00.004565
22494	{12,1,6,16}	{}	2018-09-26 05:15:00.004795
22498	{15,10,18,11}	{}	2018-09-26 06:15:00.004756
22506	{21,10,6,16}	{}	2018-09-26 08:15:00.004732
22507	{8,3,15,16}	{}	2018-09-26 08:30:00.004631
19722	{11,13,19,5}	{}	2018-08-28 11:00:00.006304
19723	{17,7,6,11}	{}	2018-08-28 11:15:00.004683
19724	{11,12,4,6}	{}	2018-08-28 11:30:00.004868
19725	{18,4,2,1}	{}	2018-08-28 11:45:00.004824
21680	{3,7,21,8}	{}	2018-09-17 17:45:00.004733
21681	{10,4,17,13}	{}	2018-09-17 18:00:00.004414
21684	{15,11,13,5}	{}	2018-09-17 18:45:00.004721
21687	{6,7,21,4}	{}	2018-09-17 19:30:00.004761
21688	{4,2,5,11}	{}	2018-09-17 19:45:00.004783
21689	{1,12,5,6}	{}	2018-09-17 20:00:00.006206
21704	{5,10,1,18}	{}	2018-09-17 23:45:00.004873
21707	{2,10,6,14}	{}	2018-09-18 00:30:00.00472
21709	{16,9,15,12}	{}	2018-09-18 01:00:00.006267
21728	{3,16,8,9}	{}	2018-09-18 05:45:00.004704
21732	{14,5,4,2}	{}	2018-09-18 06:45:00.004692
21735	{2,20,4,11}	{}	2018-09-18 07:30:00.004718
21737	{12,7,21,6}	{}	2018-09-18 08:00:00.006255
21752	{10,5,12,11}	{}	2018-09-18 11:45:00.004696
21755	{16,20,4,19}	{}	2018-09-18 12:30:00.004699
21757	{19,20,9,1}	{}	2018-09-18 13:00:00.006293
21776	{4,8,11,2}	{}	2018-09-18 17:45:00.004496
21780	{6,9,15,21}	{}	2018-09-18 18:45:00.004729
21783	{15,10,6,11}	{}	2018-09-18 19:30:00.004512
21785	{9,5,1,7}	{}	2018-09-18 20:00:00.006185
21800	{8,1,16,18}	{}	2018-09-18 23:45:00.004812
21803	{9,1,8,6}	{}	2018-09-19 00:30:00.004721
21805	{3,8,11,5}	{}	2018-09-19 01:00:00.006258
22334	{9,8,1,7}	{}	2018-09-24 13:15:00.004702
22337	{20,21,4,13}	{}	2018-09-24 14:00:00.0045
22340	{12,10,18,9}	{}	2018-09-24 14:45:00.004684
22343	{10,13,16,11}	{}	2018-09-24 15:30:00.004669
22346	{3,8,21,10}	{}	2018-09-24 16:15:00.004751
22352	{11,17,8,5}	{}	2018-09-24 17:45:00.004614
22355	{18,15,5,20}	{}	2018-09-24 18:30:00.004673
22358	{20,21,4,16}	{}	2018-09-24 19:15:00.004693
22364	{17,8,20,12}	{}	2018-09-24 20:45:00.004789
22367	{16,2,15,11}	{}	2018-09-24 21:30:00.004599
22370	{9,4,6,16}	{}	2018-09-24 22:15:00.004699
22376	{12,8,13,20}	{}	2018-09-24 23:45:00.00483
22379	{21,1,4,3}	{}	2018-09-25 00:30:00.004045
22381	{5,14,19,16}	{}	2018-09-25 01:00:00.006262
22400	{8,18,1,4}	{}	2018-09-25 05:45:00.004735
22404	{7,4,11,19}	{}	2018-09-25 06:45:00.004775
22407	{5,3,17,19}	{}	2018-09-25 07:30:00.004757
22409	{9,6,2,4}	{}	2018-09-25 08:00:00.006234
22424	{13,5,16,3}	{}	2018-09-25 11:45:00.004704
22427	{9,10,5,14}	{}	2018-09-25 12:30:00.004737
22429	{19,20,4,18}	{}	2018-09-25 13:00:00.006235
22448	{12,17,19,5}	{}	2018-09-25 17:45:00.004699
22452	{21,17,1,7}	{}	2018-09-25 18:45:00.004706
22455	{10,4,14,9}	{}	2018-09-25 19:30:00.004698
22457	{2,15,10,5}	{}	2018-09-25 20:00:00.006165
22472	{8,16,10,1}	{}	2018-09-25 23:45:00.004755
22475	{9,10,21,6}	{}	2018-09-26 00:30:00.004755
22477	{4,5,14,10}	{}	2018-09-26 01:00:00.006232
22496	{6,11,20,10}	{}	2018-09-26 05:45:00.004739
22500	{7,9,10,14}	{}	2018-09-26 06:45:00.004721
22503	{5,8,11,14}	{}	2018-09-26 07:30:00.004694
22505	{20,6,15,21}	{}	2018-09-26 08:00:00.00626
19726	{2,18,12,15}	{}	2018-08-28 12:00:00.006417
19727	{3,9,18,2}	{}	2018-08-28 12:15:00.004756
19728	{16,1,21,9}	{}	2018-08-28 12:30:00.004704
19729	{12,2,8,16}	{}	2018-08-28 12:45:00.004704
19730	{5,21,2,17}	{}	2018-08-28 13:00:00.006365
19731	{4,16,3,21}	{}	2018-08-28 13:15:00.004715
19732	{19,2,16,17}	{}	2018-08-28 13:30:00.004699
19733	{14,15,21,13}	{}	2018-08-28 13:45:00.004672
19734	{9,4,10,13}	{}	2018-08-28 14:00:00.004523
19735	{19,1,14,20}	{}	2018-08-28 14:15:00.004609
19736	{21,5,1,2}	{}	2018-08-28 14:30:00.004626
19737	{2,12,13,10}	{}	2018-08-28 14:45:00.004661
19738	{13,5,15,4}	{}	2018-08-28 15:00:00.004506
19739	{12,8,14,15}	{}	2018-08-28 15:15:00.004664
19740	{13,6,18,9}	{}	2018-08-28 15:30:00.004658
19741	{17,16,2,11}	{}	2018-08-28 15:45:00.004873
19742	{11,15,20,19}	{}	2018-08-28 16:00:00.004648
19743	{20,3,17,14}	{}	2018-08-28 16:15:00.004739
19744	{7,10,8,2}	{}	2018-08-28 16:30:00.00472
19745	{15,12,17,19}	{}	2018-08-28 16:45:00.004686
19746	{3,19,11,14}	{}	2018-08-28 17:00:00.00626
19747	{6,9,12,1}	{}	2018-08-28 17:15:00.004712
19748	{20,3,13,15}	{}	2018-08-28 17:30:00.004656
19749	{14,9,13,7}	{}	2018-08-28 17:45:00.004644
19750	{13,6,16,17}	{}	2018-08-28 18:00:00.004498
19751	{6,17,20,3}	{}	2018-08-28 18:15:00.004696
19752	{13,17,21,9}	{}	2018-08-28 18:30:00.004692
19753	{4,20,18,6}	{}	2018-08-28 18:45:00.004665
19754	{5,9,13,14}	{}	2018-08-28 19:00:00.006374
19755	{6,13,8,21}	{}	2018-08-28 19:15:00.004689
19756	{17,16,4,9}	{}	2018-08-28 19:30:00.004674
19757	{20,12,13,9}	{}	2018-08-28 19:45:00.004655
19758	{1,9,2,11}	{}	2018-08-28 20:00:00.006361
19759	{17,19,4,11}	{}	2018-08-28 20:15:00.004728
19760	{20,17,16,9}	{}	2018-08-28 20:30:00.004707
19761	{11,5,16,15}	{}	2018-08-28 20:45:00.004519
19762	{13,12,21,2}	{}	2018-08-28 21:00:00.004427
19763	{19,21,6,18}	{}	2018-08-28 21:15:00.004702
19764	{15,17,21,6}	{}	2018-08-28 21:30:00.004561
19765	{6,20,2,18}	{}	2018-08-28 21:45:00.004682
19766	{10,4,18,21}	{}	2018-08-28 22:00:00.004548
19767	{15,16,6,9}	{}	2018-08-28 22:15:00.004687
19768	{4,15,20,8}	{}	2018-08-28 22:30:00.00452
19769	{1,20,5,2}	{}	2018-08-28 22:45:00.004689
19770	{13,7,2,6}	{}	2018-08-28 23:00:00.006316
19771	{3,13,19,20}	{}	2018-08-28 23:15:00.004795
19772	{3,20,14,10}	{}	2018-08-28 23:30:00.004825
19773	{10,3,9,2}	{}	2018-08-28 23:45:00.004715
19774	{18,10,11,16}	{}	2018-08-29 00:00:00.006188
19775	{19,16,1,7}	{}	2018-08-29 00:15:00.004915
19776	{8,12,21,5}	{}	2018-08-29 00:30:00.004884
19777	{12,9,13,17}	{}	2018-08-29 00:45:00.004714
19778	{3,15,20,17}	{}	2018-08-29 01:00:00.006397
19779	{16,20,15,7}	{}	2018-08-29 01:15:00.004704
19780	{20,7,16,18}	{}	2018-08-29 01:30:00.003917
19781	{5,17,14,4}	{}	2018-08-29 01:45:00.004715
19782	{15,7,1,9}	{}	2018-08-29 02:00:00.004522
19783	{6,5,1,15}	{}	2018-08-29 02:15:00.004648
19784	{16,3,8,2}	{}	2018-08-29 02:30:00.004742
19785	{14,19,10,20}	{}	2018-08-29 02:45:00.004674
19786	{4,21,3,8}	{}	2018-08-29 03:00:00.004494
19787	{3,20,15,1}	{}	2018-08-29 03:15:00.004666
19788	{15,16,4,10}	{}	2018-08-29 03:30:00.003987
19789	{12,3,2,19}	{}	2018-08-29 03:45:00.004642
19790	{12,10,9,17}	{}	2018-08-29 04:00:00.004526
19791	{8,18,11,1}	{}	2018-08-29 04:15:00.004685
19792	{8,5,2,3}	{}	2018-08-29 04:30:00.004856
19793	{7,4,8,16}	{}	2018-08-29 04:45:00.004887
19794	{1,2,20,10}	{}	2018-08-29 05:00:00.006608
19795	{18,8,3,21}	{}	2018-08-29 05:15:00.004686
19796	{12,5,19,17}	{}	2018-08-29 05:30:00.004623
19797	{7,13,20,21}	{}	2018-08-29 05:45:00.004687
19798	{1,4,2,19}	{}	2018-08-29 06:00:00.004377
19799	{18,2,16,11}	{}	2018-08-29 06:15:00.004679
19800	{11,17,16,15}	{}	2018-08-29 06:30:00.004701
19801	{2,12,16,7}	{}	2018-08-29 06:45:00.004651
19802	{15,10,5,14}	{}	2018-08-29 07:00:00.007006
19803	{8,6,16,21}	{}	2018-08-29 07:15:00.004713
19804	{17,7,6,21}	{}	2018-08-29 07:30:00.004704
19805	{19,1,15,4}	{}	2018-08-29 07:45:00.0046
21683	{2,4,7,1}	{}	2018-09-17 18:30:00.004729
21685	{21,16,2,12}	{}	2018-09-17 19:00:00.006214
21692	{21,9,18,2}	{}	2018-09-17 20:45:00.004702
21696	{7,6,14,19}	{}	2018-09-17 21:45:00.004728
21700	{4,20,13,19}	{}	2018-09-17 22:45:00.004655
21703	{11,12,7,2}	{}	2018-09-17 23:30:00.004823
21705	{21,17,18,19}	{}	2018-09-18 00:00:00.005907
21712	{2,6,12,19}	{}	2018-09-18 01:45:00.00477
21716	{2,15,19,10}	{}	2018-09-18 02:45:00.004678
21720	{14,1,5,12}	{}	2018-09-18 03:45:00.004617
21724	{4,1,16,15}	{}	2018-09-18 04:45:00.004704
21727	{5,4,1,14}	{}	2018-09-18 05:30:00.00472
21731	{17,16,6,2}	{}	2018-09-18 06:30:00.00471
21733	{4,3,9,19}	{}	2018-09-18 07:00:00.00616
21740	{1,13,4,14}	{}	2018-09-18 08:45:00.004669
21744	{8,9,19,18}	{}	2018-09-18 09:45:00.004822
21748	{2,9,18,10}	{}	2018-09-18 10:45:00.00459
21751	{19,3,18,1}	{}	2018-09-18 11:30:00.004096
21753	{2,13,12,5}	{}	2018-09-18 12:00:00.006282
21760	{5,1,3,19}	{}	2018-09-18 13:45:00.004494
21764	{20,13,5,7}	{}	2018-09-18 14:45:00.004671
21768	{7,4,2,6}	{}	2018-09-18 15:45:00.00462
21772	{1,11,20,4}	{}	2018-09-18 16:45:00.004646
21775	{15,5,12,18}	{}	2018-09-18 17:30:00.0047
21779	{3,18,13,14}	{}	2018-09-18 18:30:00.004751
21781	{13,9,12,11}	{}	2018-09-18 19:00:00.006993
21788	{12,8,2,19}	{}	2018-09-18 20:45:00.004706
21792	{17,13,4,18}	{}	2018-09-18 21:45:00.004725
21796	{13,1,9,11}	{}	2018-09-18 22:45:00.004702
21799	{1,15,6,11}	{}	2018-09-18 23:30:00.004837
21801	{5,7,19,12}	{}	2018-09-19 00:00:00.00619
21808	{6,16,20,3}	{}	2018-09-19 01:45:00.004715
21812	{20,2,11,18}	{}	2018-09-19 02:45:00.004704
21816	{11,20,3,9}	{}	2018-09-19 03:45:00.004697
21820	{20,10,2,15}	{}	2018-09-19 04:45:00.004705
22339	{14,17,20,1}	{}	2018-09-24 14:30:00.00464
22342	{21,1,11,14}	{}	2018-09-24 15:15:00.004029
22345	{21,15,20,4}	{}	2018-09-24 16:00:00.00448
22348	{14,15,5,9}	{}	2018-09-24 16:45:00.004719
22349	{6,2,13,18}	{}	2018-09-24 17:00:00.006284
22359	{9,16,6,12}	{}	2018-09-24 19:30:00.004704
22362	{20,10,15,16}	{}	2018-09-24 20:15:00.004683
22365	{19,20,8,21}	{}	2018-09-24 21:00:00.004509
22368	{3,12,7,1}	{}	2018-09-24 21:45:00.004621
22371	{9,1,3,21}	{}	2018-09-24 22:30:00.004736
22380	{7,15,18,4}	{}	2018-09-25 00:45:00.004704
22383	{21,19,2,12}	{}	2018-09-25 01:30:00.004495
22387	{2,9,8,7}	{}	2018-09-25 02:30:00.00474
22391	{20,16,5,15}	{}	2018-09-25 03:30:00.004728
22395	{5,18,7,14}	{}	2018-09-25 04:30:00.004762
22397	{16,3,8,5}	{}	2018-09-25 05:00:00.006149
22408	{7,13,18,2}	{}	2018-09-25 07:45:00.00469
22411	{19,10,3,12}	{}	2018-09-25 08:30:00.004715
22415	{15,14,8,18}	{}	2018-09-25 09:30:00.004736
22419	{17,21,4,15}	{}	2018-09-25 10:30:00.004679
22421	{3,6,16,2}	{}	2018-09-25 11:00:00.006115
22428	{10,20,4,19}	{}	2018-09-25 12:45:00.004692
22431	{14,7,4,19}	{}	2018-09-25 13:30:00.004662
22435	{19,9,16,21}	{}	2018-09-25 14:30:00.00472
22439	{10,21,15,2}	{}	2018-09-25 15:30:00.004711
22443	{11,15,1,10}	{}	2018-09-25 16:30:00.004687
22445	{9,8,5,11}	{}	2018-09-25 17:00:00.006223
22456	{18,10,17,2}	{}	2018-09-25 19:45:00.00477
22459	{21,13,3,20}	{}	2018-09-25 20:30:00.004684
22463	{19,5,8,3}	{}	2018-09-25 21:30:00.004756
22467	{6,2,5,21}	{}	2018-09-25 22:30:00.004705
22469	{7,4,9,12}	{}	2018-09-25 23:00:00.00628
22476	{9,5,1,14}	{}	2018-09-26 00:45:00.004654
22479	{14,16,13,19}	{}	2018-09-26 01:30:00.004617
22483	{5,4,3,21}	{}	2018-09-26 02:30:00.004698
22487	{20,21,7,17}	{}	2018-09-26 03:30:00.004725
22491	{15,12,13,16}	{}	2018-09-26 04:30:00.004633
22493	{20,17,8,14}	{}	2018-09-26 05:00:00.006253
22504	{21,16,2,1}	{}	2018-09-26 07:45:00.004744
19806	{21,7,14,12}	{}	2018-08-29 08:00:00.006321
19807	{15,8,12,19}	{}	2018-08-29 08:15:00.004679
19808	{9,12,4,5}	{}	2018-08-29 08:30:00.004741
19809	{2,19,12,9}	{}	2018-08-29 08:45:00.00483
19810	{1,12,10,17}	{}	2018-08-29 09:00:00.004678
19811	{20,7,16,15}	{}	2018-08-29 09:15:00.004689
19812	{19,6,9,14}	{}	2018-08-29 09:30:00.004683
19813	{17,3,2,1}	{}	2018-08-29 09:45:00.004735
19814	{13,7,20,3}	{}	2018-08-29 10:00:00.004474
19815	{20,21,2,7}	{}	2018-08-29 10:15:00.004569
19816	{10,2,15,7}	{}	2018-08-29 10:30:00.004706
19817	{7,19,2,11}	{}	2018-08-29 10:45:00.004549
21686	{1,14,13,16}	{}	2018-09-17 19:15:00.004678
21693	{10,13,17,19}	{}	2018-09-17 21:00:00.004542
21697	{3,17,16,15}	{}	2018-09-17 22:00:00.004532
21702	{2,1,14,6}	{}	2018-09-17 23:15:00.004815
21710	{5,17,12,4}	{}	2018-09-18 01:15:00.00466
21714	{20,15,14,7}	{}	2018-09-18 02:15:00.004738
21718	{11,20,18,17}	{}	2018-09-18 03:15:00.004723
21722	{17,9,14,10}	{}	2018-09-18 04:15:00.004759
21729	{10,16,18,14}	{}	2018-09-18 06:00:00.004563
21734	{8,17,3,6}	{}	2018-09-18 07:15:00.004711
21741	{9,17,3,16}	{}	2018-09-18 09:00:00.004539
21745	{13,4,7,12}	{}	2018-09-18 10:00:00.004514
21750	{13,18,12,20}	{}	2018-09-18 11:15:00.004667
21758	{11,21,8,2}	{}	2018-09-18 13:15:00.004698
21762	{4,18,2,15}	{}	2018-09-18 14:15:00.004597
21766	{5,10,15,21}	{}	2018-09-18 15:15:00.004691
21770	{3,15,21,12}	{}	2018-09-18 16:15:00.004675
21777	{20,12,6,14}	{}	2018-09-18 18:00:00.004404
21782	{13,20,14,4}	{}	2018-09-18 19:15:00.004663
21789	{6,8,7,9}	{}	2018-09-18 21:00:00.004367
21793	{3,18,7,13}	{}	2018-09-18 22:00:00.004503
21798	{5,17,20,9}	{}	2018-09-18 23:15:00.004795
21806	{6,1,2,11}	{}	2018-09-19 01:15:00.004646
21810	{4,10,3,6}	{}	2018-09-19 02:15:00.004657
21814	{7,15,4,16}	{}	2018-09-19 03:15:00.004234
21818	{17,14,12,1}	{}	2018-09-19 04:15:00.004634
22374	{18,1,14,4}	{}	2018-09-24 23:15:00.004847
22382	{3,1,6,9}	{}	2018-09-25 01:15:00.004672
22386	{19,6,13,9}	{}	2018-09-25 02:15:00.004696
22390	{21,1,15,2}	{}	2018-09-25 03:15:00.004735
22394	{4,15,10,1}	{}	2018-09-25 04:15:00.004697
22401	{21,14,18,10}	{}	2018-09-25 06:00:00.004512
22406	{19,20,6,7}	{}	2018-09-25 07:15:00.004714
22413	{3,9,8,18}	{}	2018-09-25 09:00:00.004532
22417	{9,3,8,14}	{}	2018-09-25 10:00:00.004553
22422	{1,19,4,11}	{}	2018-09-25 11:15:00.004733
22430	{4,8,5,9}	{}	2018-09-25 13:15:00.004647
22434	{9,21,12,19}	{}	2018-09-25 14:15:00.004717
22438	{5,12,15,8}	{}	2018-09-25 15:15:00.004682
22442	{13,21,12,4}	{}	2018-09-25 16:15:00.004659
22449	{13,17,16,6}	{}	2018-09-25 18:00:00.004566
22454	{18,3,10,21}	{}	2018-09-25 19:15:00.003984
22461	{12,17,5,4}	{}	2018-09-25 21:00:00.004542
22465	{14,11,20,16}	{}	2018-09-25 22:00:00.004588
22470	{20,12,18,16}	{}	2018-09-25 23:15:00.004798
22478	{19,16,7,3}	{}	2018-09-26 01:15:00.004711
22482	{2,12,17,8}	{}	2018-09-26 02:15:00.004671
22486	{14,3,1,2}	{}	2018-09-26 03:15:00.004707
22490	{4,1,6,7}	{}	2018-09-26 04:15:00.004715
22497	{17,6,4,13}	{}	2018-09-26 06:00:00.004578
22502	{13,1,2,3}	{}	2018-09-26 07:15:00.004707
19818	{14,18,12,17}	{}	2018-08-29 11:00:00.006365
19819	{16,19,13,11}	{}	2018-08-29 11:15:00.004694
19820	{17,3,7,5}	{}	2018-08-29 11:30:00.004712
19821	{2,6,7,4}	{}	2018-08-29 11:45:00.004718
19822	{14,1,15,12}	{}	2018-08-29 12:00:00.006318
19823	{17,3,6,5}	{}	2018-08-29 12:15:00.004707
19824	{17,6,12,16}	{}	2018-08-29 12:30:00.004648
19825	{17,6,19,11}	{}	2018-08-29 12:45:00.004671
19826	{3,14,1,18}	{}	2018-08-29 13:00:00.006445
19827	{20,12,7,21}	{}	2018-08-29 13:15:00.004858
19828	{8,10,16,18}	{}	2018-08-29 13:30:00.004725
19829	{9,20,8,14}	{}	2018-08-29 13:45:00.004641
19830	{16,8,12,9}	{}	2018-08-29 14:00:00.004526
19831	{14,7,4,15}	{}	2018-08-29 14:15:00.004657
19832	{17,3,14,10}	{}	2018-08-29 14:30:00.004696
19833	{3,7,21,6}	{}	2018-08-29 14:45:00.004672
19834	{3,6,18,14}	{}	2018-08-29 15:00:00.004532
19835	{2,20,17,7}	{}	2018-08-29 15:15:00.00469
19836	{17,6,21,2}	{}	2018-08-29 15:30:00.004609
19837	{20,21,7,5}	{}	2018-08-29 15:45:00.004777
19838	{11,6,7,8}	{}	2018-08-29 16:00:00.004483
19839	{14,1,4,6}	{}	2018-08-29 16:15:00.004699
19840	{5,15,3,19}	{}	2018-08-29 16:30:00.00468
19841	{21,6,11,20}	{}	2018-08-29 16:45:00.004409
19842	{2,9,20,17}	{}	2018-08-29 17:00:00.006421
19843	{13,10,11,12}	{}	2018-08-29 17:15:00.004808
19844	{3,5,10,14}	{}	2018-08-29 17:30:00.004824
19845	{20,3,7,6}	{}	2018-08-29 17:45:00.004728
19846	{4,5,2,7}	{}	2018-08-29 18:00:00.004512
19847	{9,20,7,15}	{}	2018-08-29 18:15:00.004675
19848	{17,15,3,5}	{}	2018-08-29 18:30:00.004729
19849	{15,21,14,12}	{}	2018-08-29 18:45:00.004652
19850	{4,1,11,12}	{}	2018-08-29 19:00:00.006367
19851	{5,8,12,18}	{}	2018-08-29 19:15:00.004694
19852	{15,8,10,12}	{}	2018-08-29 19:30:00.004672
19853	{18,20,5,16}	{}	2018-08-29 19:45:00.0047
19854	{8,6,17,4}	{}	2018-08-29 20:00:00.0064
19855	{10,13,9,12}	{}	2018-08-29 20:15:00.004699
19856	{10,15,3,11}	{}	2018-08-29 20:30:00.004687
19857	{15,5,17,18}	{}	2018-08-29 20:45:00.004709
19858	{4,19,2,6}	{}	2018-08-29 21:00:00.004474
19859	{21,15,12,5}	{}	2018-08-29 21:15:00.004728
19860	{15,3,18,6}	{}	2018-08-29 21:30:00.004821
19861	{9,3,19,16}	{}	2018-08-29 21:45:00.004876
19862	{2,6,19,21}	{}	2018-08-29 22:00:00.004505
19863	{14,19,12,11}	{}	2018-08-29 22:15:00.004532
19864	{5,17,7,1}	{}	2018-08-29 22:30:00.004673
19865	{1,5,11,4}	{}	2018-08-29 22:45:00.00466
19866	{15,17,2,8}	{}	2018-08-29 23:00:00.0064
19867	{8,18,14,5}	{}	2018-08-29 23:15:00.004885
19868	{19,13,14,17}	\N	2018-08-29 23:30:00.004815
19869	{1,18,17,9}	{}	2018-08-29 23:30:00.011704
19870	{9,5,8,13}	\N	2018-08-29 23:45:00.004842
19871	{17,8,1,12}	{}	2018-08-29 23:45:00.006326
19872	{6,10,17,13}	\N	2018-08-30 00:00:00.006065
19876	{14,7,2,18}	{}	2018-08-30 00:45:00.004657
19873	{20,15,16,13}	{}	2018-08-30 00:00:00.009587
19874	{2,11,18,12}	{}	2018-08-30 00:15:00.004643
19875	{16,15,20,17}	{}	2018-08-30 00:30:00.004679
19877	{14,20,15,9}	{}	2018-08-30 01:00:00.006379
19878	{6,20,2,1}	{}	2018-08-30 01:15:00.004782
19879	{5,4,18,2}	{}	2018-08-30 01:30:00.004682
19880	{7,10,5,4}	{}	2018-08-30 01:45:00.004661
19881	{18,8,17,19}	{}	2018-08-30 02:00:00.004465
19882	{18,8,5,19}	{}	2018-08-30 02:15:00.004647
19883	{1,4,14,2}	{}	2018-08-30 02:30:00.004726
19884	{8,9,11,15}	{}	2018-08-30 02:45:00.004642
19885	{17,15,7,1}	{}	2018-08-30 03:00:00.004518
19886	{8,5,9,3}	{}	2018-08-30 03:15:00.004665
19887	{3,19,8,1}	{}	2018-08-30 03:30:00.00467
19888	{21,19,3,4}	{}	2018-08-30 03:45:00.004586
19889	{19,14,8,7}	{}	2018-08-30 04:00:00.004481
19890	{11,5,20,14}	{}	2018-08-30 04:15:00.004652
19891	{14,12,4,20}	{}	2018-08-30 04:30:00.004666
19892	{2,4,8,10}	{}	2018-08-30 04:45:00.004702
19893	{12,1,9,14}	{}	2018-08-30 05:00:00.006323
19894	{1,21,9,14}	{}	2018-08-30 05:15:00.004818
19895	{14,7,20,6}	{}	2018-08-30 05:30:00.004797
19896	{9,7,14,21}	{}	2018-08-30 05:45:00.00462
19897	{15,9,4,2}	{}	2018-08-30 06:00:00.004513
19898	{5,15,20,21}	{}	2018-08-30 06:15:00.004677
19899	{12,11,8,1}	{}	2018-08-30 06:30:00.004679
19900	{8,16,13,17}	{}	2018-08-30 06:45:00.004725
19917	{20,14,16,4}	{}	2018-08-30 11:00:00.006383
19918	{21,16,8,12}	{}	2018-08-30 11:15:00.004378
19919	{13,19,15,10}	{}	2018-08-30 11:30:00.004665
19920	{1,6,3,17}	{}	2018-08-30 11:45:00.004769
21691	{18,6,17,16}	{}	2018-09-17 20:30:00.004709
21695	{8,12,4,11}	{}	2018-09-17 21:30:00.004756
21699	{3,9,14,15}	{}	2018-09-17 22:30:00.004786
21701	{4,8,1,9}	{}	2018-09-17 23:00:00.006117
21708	{21,11,3,17}	{}	2018-09-18 00:45:00.004686
21711	{9,18,1,7}	{}	2018-09-18 01:30:00.004623
21715	{19,2,8,14}	{}	2018-09-18 02:30:00.004651
21719	{7,8,16,5}	{}	2018-09-18 03:30:00.004711
21723	{5,17,14,10}	{}	2018-09-18 04:30:00.004677
21725	{10,18,9,15}	{}	2018-09-18 05:00:00.006202
21736	{8,21,20,14}	{}	2018-09-18 07:45:00.00472
21739	{11,2,12,10}	{}	2018-09-18 08:30:00.004692
21743	{5,19,4,2}	{}	2018-09-18 09:30:00.004557
21747	{7,14,6,5}	{}	2018-09-18 10:30:00.004535
21749	{21,14,19,1}	{}	2018-09-18 11:00:00.006104
21756	{19,21,5,1}	{}	2018-09-18 12:45:00.004719
21759	{7,11,19,13}	{}	2018-09-18 13:30:00.004719
21763	{6,3,15,7}	{}	2018-09-18 14:30:00.00466
21767	{11,16,13,21}	{}	2018-09-18 15:30:00.004643
21771	{20,17,15,14}	{}	2018-09-18 16:30:00.004641
21773	{21,3,5,12}	{}	2018-09-18 17:00:00.00613
21784	{1,9,5,6}	{}	2018-09-18 19:45:00.004712
21787	{18,16,1,19}	{}	2018-09-18 20:30:00.00469
21791	{3,6,2,13}	{}	2018-09-18 21:30:00.00471
21795	{1,5,4,16}	{}	2018-09-18 22:30:00.004685
21797	{5,7,15,2}	{}	2018-09-18 23:00:00.005211
21804	{4,16,21,6}	{}	2018-09-19 00:45:00.004722
21807	{21,7,9,2}	{}	2018-09-19 01:30:00.004473
21811	{21,2,14,4}	{}	2018-09-19 02:30:00.00468
21815	{10,3,20,6}	{}	2018-09-19 03:30:00.004695
21819	{17,20,13,14}	{}	2018-09-19 04:30:00.004742
21821	{16,19,10,11}	{}	2018-09-19 05:00:00.006282
22508	{14,20,3,2}	{}	2018-09-26 08:45:00.004753
22512	{3,20,5,21}	{}	2018-09-26 09:45:00.004744
22516	{3,14,11,9}	{}	2018-09-26 10:45:00.004489
22519	{6,18,5,14}	{}	2018-09-26 11:30:00.004638
22521	{7,17,19,12}	{}	2018-09-26 12:00:00.006187
22528	{7,11,2,19}	{}	2018-09-26 13:45:00.004744
22532	{6,5,14,18}	{}	2018-09-26 14:45:00.004754
22536	{4,15,2,10}	{}	2018-09-26 15:45:00.004743
22540	{18,4,5,6}	{}	2018-09-26 16:45:00.004772
22543	{15,21,1,10}	{}	2018-09-26 17:30:00.004611
22547	{17,20,14,19}	{}	2018-09-26 18:30:00.004751
22549	{2,7,16,19}	{}	2018-09-26 19:00:00.006934
22556	{4,17,9,21}	{}	2018-09-26 20:45:00.004806
22560	{20,4,1,6}	{}	2018-09-26 21:45:00.00475
22564	{5,9,6,13}	{}	2018-09-26 22:45:00.004808
22567	{4,12,19,14}	{}	2018-09-26 23:30:00.004868
22569	{10,12,8,14}	{}	2018-09-27 00:00:00.006196
22576	{14,15,3,19}	{}	2018-09-27 01:45:00.00447
22580	{9,10,13,16}	{}	2018-09-27 02:45:00.004689
22584	{10,7,13,3}	{}	2018-09-27 03:45:00.004738
22588	{6,11,8,16}	{}	2018-09-27 04:45:00.00471
22591	{6,20,1,16}	{}	2018-09-27 05:30:00.004755
22595	{8,19,13,11}	{}	2018-09-27 06:30:00.004729
22597	{13,15,14,18}	{}	2018-09-27 07:00:00.006316
22604	{3,7,5,14}	{}	2018-09-27 08:45:00.004715
22608	{4,12,18,3}	{}	2018-09-27 09:45:00.004737
22612	{19,18,2,13}	{}	2018-09-27 10:45:00.00464
22615	{1,9,2,13}	{}	2018-09-27 11:30:00.004772
22617	{2,12,16,6}	{}	2018-09-27 12:00:00.006367
22624	{10,19,5,13}	{}	2018-09-27 13:45:00.004606
22628	{20,21,9,19}	{}	2018-09-27 14:45:00.004737
22632	{11,3,16,21}	{}	2018-09-27 15:45:00.004705
22636	{6,20,16,12}	{}	2018-09-27 16:45:00.004722
22639	{18,2,3,13}	{}	2018-09-27 17:30:00.004749
22643	{3,6,1,13}	{}	2018-09-27 18:30:00.004744
22645	{10,18,11,5}	{}	2018-09-27 19:00:00.006185
19901	{15,21,7,12}	{}	2018-08-30 07:00:00.006393
19902	{16,8,3,2}	{}	2018-08-30 07:15:00.004614
19903	{20,12,3,10}	{}	2018-08-30 07:30:00.004755
19904	{9,11,10,14}	{}	2018-08-30 07:45:00.004697
19921	{17,5,20,9}	{}	2018-08-30 12:00:00.006198
19922	{20,2,17,3}	{}	2018-08-30 12:15:00.004309
19923	{6,13,17,8}	{}	2018-08-30 12:30:00.004712
19924	{10,13,15,16}	{}	2018-08-30 12:45:00.004642
21823	{19,16,20,5}	{}	2018-09-19 05:30:00.004685
21824	{18,13,16,20}	{}	2018-09-19 05:45:00.00463
21827	{9,20,15,2}	{}	2018-09-19 06:30:00.004707
21829	{15,4,11,5}	{}	2018-09-19 07:00:00.006208
21836	{11,8,15,10}	{}	2018-09-19 08:45:00.004625
21840	{3,8,10,15}	{}	2018-09-19 09:45:00.00468
21844	{3,17,11,5}	{}	2018-09-19 10:45:00.004676
21847	{8,20,14,13}	{}	2018-09-19 11:30:00.004713
21849	{12,10,5,15}	{}	2018-09-19 12:00:00.006273
21856	{19,12,7,6}	{}	2018-09-19 13:45:00.00469
21860	{9,14,12,4}	{}	2018-09-19 14:45:00.004727
21864	{21,17,8,9}	{}	2018-09-19 15:45:00.004664
21868	{10,9,13,4}	{}	2018-09-19 16:45:00.004733
21871	{7,18,9,4}	{}	2018-09-19 17:30:00.004629
21875	{8,4,17,7}	{}	2018-09-19 18:30:00.004713
21877	{13,4,12,1}	{}	2018-09-19 19:00:00.006243
21884	{5,9,10,20}	{}	2018-09-19 20:45:00.004713
21888	{5,4,18,3}	{}	2018-09-19 21:45:00.004668
21892	{17,1,8,12}	{}	2018-09-19 22:45:00.004705
21895	{20,6,19,21}	{}	2018-09-19 23:30:00.004862
21897	{8,18,3,5}	{}	2018-09-20 00:00:00.005948
21904	{5,6,4,11}	{}	2018-09-20 01:45:00.004732
21908	{2,4,1,6}	{}	2018-09-20 02:45:00.004781
21912	{12,15,6,5}	{}	2018-09-20 03:45:00.004678
21916	{12,1,16,20}	{}	2018-09-20 04:45:00.004699
21919	{20,3,18,13}	{}	2018-09-20 05:30:00.004692
21923	{12,2,3,6}	{}	2018-09-20 06:30:00.004694
21925	{1,20,9,18}	{}	2018-09-20 07:00:00.006147
21932	{21,13,2,7}	{}	2018-09-20 08:45:00.004697
21936	{3,12,2,7}	{}	2018-09-20 09:45:00.004705
21940	{16,4,12,20}	{}	2018-09-20 10:45:00.004696
21943	{11,9,1,13}	{}	2018-09-20 11:30:00.004715
21945	{5,9,17,2}	{}	2018-09-20 12:00:00.006217
21952	{19,11,12,18}	{}	2018-09-20 13:45:00.004645
21956	{16,15,8,9}	{}	2018-09-20 14:45:00.004685
22509	{1,12,8,15}	{}	2018-09-26 09:00:00.004556
22510	{20,3,17,13}	{}	2018-09-26 09:15:00.004751
22513	{21,1,5,13}	{}	2018-09-26 10:00:00.004534
22518	{8,9,6,18}	{}	2018-09-26 11:15:00.004703
22526	{2,4,18,10}	{}	2018-09-26 13:15:00.004714
22530	{4,7,1,16}	{}	2018-09-26 14:15:00.004764
22534	{18,9,10,14}	{}	2018-09-26 15:15:00.004639
22538	{9,7,14,19}	{}	2018-09-26 16:15:00.004602
22545	{21,18,11,16}	{}	2018-09-26 18:00:00.004561
22550	{17,7,8,20}	{}	2018-09-26 19:15:00.004694
22557	{2,12,19,7}	{}	2018-09-26 21:00:00.004582
22561	{21,13,16,15}	{}	2018-09-26 22:00:00.004531
22566	{5,7,2,15}	{}	2018-09-26 23:15:00.00485
22574	{15,12,21,6}	{}	2018-09-27 01:15:00.004779
22578	{3,8,18,10}	{}	2018-09-27 02:15:00.004745
22582	{9,14,6,12}	{}	2018-09-27 03:15:00.004755
22586	{16,11,15,7}	{}	2018-09-27 04:15:00.004695
22593	{14,13,15,6}	{}	2018-09-27 06:00:00.004431
22598	{12,17,2,15}	{}	2018-09-27 07:15:00.004591
22605	{20,15,21,18}	{}	2018-09-27 09:00:00.004569
22609	{18,17,20,8}	{}	2018-09-27 10:00:00.004556
22614	{3,14,1,15}	{}	2018-09-27 11:15:00.004706
22622	{10,21,4,5}	{}	2018-09-27 13:15:00.004676
22626	{14,18,3,16}	{}	2018-09-27 14:15:00.004803
22630	{1,12,20,10}	{}	2018-09-27 15:15:00.004675
22634	{14,6,10,15}	{}	2018-09-27 16:15:00.004761
22641	{18,7,12,14}	{}	2018-09-27 18:00:00.004505
22646	{11,7,9,19}	{}	2018-09-27 19:15:00.004763
22653	{12,21,18,13}	{}	2018-09-27 21:00:00.004563
22657	{17,13,5,20}	{}	2018-09-27 22:00:00.00451
22662	{7,16,12,15}	{}	2018-09-27 23:15:00.004887
22670	{7,20,21,19}	{}	2018-09-28 01:15:00.004711
22674	{14,19,6,1}	{}	2018-09-28 02:15:00.004744
22678	{1,20,18,12}	{}	2018-09-28 03:15:00.004745
19905	{1,7,9,18}	{}	2018-08-30 08:00:00.00641
19906	{13,7,2,12}	{}	2018-08-30 08:15:00.004616
19907	{6,10,21,11}	{}	2018-08-30 08:30:00.004702
19908	{14,6,4,5}	{}	2018-08-30 08:45:00.004617
19909	{10,18,2,7}	{}	2018-08-30 09:00:00.004498
19910	{5,12,7,18}	{}	2018-08-30 09:15:00.004473
19911	{15,21,18,16}	{}	2018-08-30 09:30:00.004887
19912	{15,17,13,1}	{}	2018-08-30 09:45:00.004767
19913	{10,12,15,5}	{}	2018-08-30 10:00:00.004459
19914	{17,14,11,4}	{}	2018-08-30 10:15:00.004702
19915	{7,13,5,8}	{}	2018-08-30 10:30:00.004689
19916	{10,21,12,9}	{}	2018-08-30 10:45:00.004737
19925	{13,20,9,7}	{}	2018-08-30 13:00:00.006303
19926	{3,14,7,15}	{}	2018-08-30 13:15:00.004698
19927	{4,1,5,10}	{}	2018-08-30 13:30:00.00463
19928	{12,14,8,2}	{}	2018-08-30 13:45:00.004876
19929	{13,12,18,4}	{}	2018-08-30 14:00:00.00459
19930	{16,13,19,10}	{}	2018-08-30 14:15:00.004721
19931	{20,6,1,8}	{}	2018-08-30 14:30:00.00469
19932	{11,20,2,15}	{}	2018-08-30 14:45:00.004673
19933	{21,12,4,20}	{}	2018-08-30 15:00:00.004604
19934	{9,8,6,3}	{}	2018-08-30 15:15:00.004698
19935	{3,15,8,11}	{}	2018-08-30 15:30:00.004746
19936	{15,5,21,8}	{}	2018-08-30 15:45:00.004682
19937	{19,18,11,14}	{}	2018-08-30 16:00:00.004535
19938	{9,7,11,15}	{}	2018-08-30 16:15:00.004663
19939	{7,20,15,13}	{}	2018-08-30 16:30:00.004707
19940	{6,16,10,17}	{}	2018-08-30 16:45:00.004695
19941	{7,20,3,6}	{}	2018-08-30 17:00:00.006571
19942	{20,1,17,13}	{}	2018-08-30 17:15:00.004671
19943	{9,8,15,14}	{}	2018-08-30 17:30:00.004654
19944	{19,2,3,11}	{}	2018-08-30 17:45:00.004643
19945	{11,17,13,7}	{}	2018-08-30 18:00:00.004635
19946	{12,2,21,10}	{}	2018-08-30 18:15:00.004802
19947	{18,16,7,11}	{}	2018-08-30 18:30:00.004499
19948	{8,5,18,19}	{}	2018-08-30 18:45:00.00468
19949	{5,12,18,2}	{}	2018-08-30 19:00:00.006424
19950	{16,15,2,18}	{}	2018-08-30 19:15:00.004703
19951	{17,12,21,14}	{}	2018-08-30 19:30:00.004732
19952	{7,19,15,21}	{}	2018-08-30 19:45:00.004673
19953	{11,10,17,7}	{}	2018-08-30 20:00:00.006372
19954	{17,4,6,7}	{}	2018-08-30 20:15:00.004676
19955	{14,8,7,18}	{}	2018-08-30 20:30:00.004675
19956	{13,9,20,10}	{}	2018-08-30 20:45:00.004692
19957	{14,4,17,2}	{}	2018-08-30 21:00:00.004464
19958	{19,20,16,11}	{}	2018-08-30 21:15:00.004695
19959	{12,1,11,9}	{}	2018-08-30 21:30:00.004697
19960	{19,6,10,17}	{}	2018-08-30 21:45:00.004661
19961	{3,17,6,20}	{}	2018-08-30 22:00:00.00451
19962	{20,3,15,13}	{}	2018-08-30 22:15:00.004789
19963	{5,4,16,14}	{}	2018-08-30 22:30:00.004145
19964	{19,6,13,11}	{}	2018-08-30 22:45:00.004577
19965	{13,7,11,21}	{}	2018-08-30 23:00:00.00641
19966	{12,18,3,16}	{}	2018-08-30 23:15:00.004692
19967	{2,8,14,19}	{}	2018-08-30 23:30:00.004772
19968	{13,21,4,18}	\N	2018-08-30 23:45:00.003376
19969	{17,1,13,4}	{}	2018-08-30 23:45:00.005831
19970	{1,20,9,19}	{}	2018-08-31 00:00:00.006138
19971	{21,19,10,18}	{}	2018-08-31 00:15:00.004637
19972	{17,19,12,16}	{}	2018-08-31 00:30:00.004727
19973	{5,20,16,21}	{}	2018-08-31 00:45:00.004674
19974	{3,14,11,15}	{}	2018-08-31 01:00:00.00635
19975	{16,17,7,15}	{}	2018-08-31 01:15:00.004663
19976	{4,12,20,8}	{}	2018-08-31 01:30:00.004725
19977	{14,17,9,1}	{}	2018-08-31 01:45:00.004712
19978	{19,8,20,9}	{}	2018-08-31 02:00:00.004511
19979	{4,5,7,12}	{}	2018-08-31 02:15:00.004828
19980	{19,5,21,10}	{}	2018-08-31 02:30:00.004861
19981	{12,7,10,16}	{}	2018-08-31 02:45:00.004793
19982	{15,6,7,21}	{}	2018-08-31 03:00:00.004519
19983	{7,13,6,10}	{}	2018-08-31 03:15:00.00471
19984	{19,11,13,9}	{}	2018-08-31 03:30:00.004692
19985	{4,17,1,18}	{}	2018-08-31 03:45:00.00419
19986	{7,21,3,17}	{}	2018-08-31 04:00:00.004507
19987	{4,6,10,20}	{}	2018-08-31 04:15:00.004712
19988	{9,3,8,7}	{}	2018-08-31 04:30:00.004728
19989	{12,3,5,15}	{}	2018-08-31 04:45:00.004697
20002	{15,16,11,10}	\N	2018-08-31 08:00:00.00605
19990	{14,17,10,5}	{}	2018-08-31 05:00:00.006046
19991	{21,17,14,13}	{}	2018-08-31 05:15:00.00459
19992	{8,18,11,9}	{}	2018-08-31 05:30:00.004632
19993	{18,4,19,9}	{}	2018-08-31 05:45:00.004525
19994	{17,13,20,6}	{}	2018-08-31 06:00:00.004492
19995	{12,6,19,21}	{}	2018-08-31 06:15:00.0046
19996	{9,20,19,5}	{}	2018-08-31 06:30:00.004866
19997	{14,8,11,20}	{}	2018-08-31 06:45:00.004803
19998	{16,1,20,12}	{}	2018-08-31 07:00:00.006424
19999	{4,19,11,14}	{}	2018-08-31 07:15:00.004656
20000	{15,9,12,17}	{}	2018-08-31 07:30:00.004664
20001	{2,1,12,11}	{}	2018-08-31 07:45:00.004689
20035	{18,1,19,20}	{}	2018-08-31 13:30:00.004723
20003	{8,3,18,1}	{}	2018-08-31 08:00:00.007817
20004	{13,16,4,14}	\N	2018-08-31 08:15:00.004581
20005	{14,21,9,16}	{}	2018-08-31 08:15:00.006219
20006	{12,3,8,7}	\N	2018-08-31 08:30:00.004663
20007	{9,19,4,20}	{}	2018-08-31 08:30:00.006078
20008	{10,12,20,7}	\N	2018-08-31 08:45:00.004644
20009	{11,2,12,5}	{}	2018-08-31 08:45:00.004663
20010	{15,3,2,17}	\N	2018-08-31 09:00:00.004435
20011	{12,4,13,3}	{}	2018-08-31 09:00:00.004438
20012	{16,18,8,13}	\N	2018-08-31 09:15:00.004648
20013	{6,7,9,19}	{}	2018-08-31 09:15:00.004647
20014	{3,16,15,8}	\N	2018-08-31 09:30:00.004726
20015	{8,18,3,13}	{}	2018-08-31 09:30:00.006361
20016	{13,21,12,8}	\N	2018-08-31 09:45:00.004702
20017	{20,13,1,8}	{}	2018-08-31 09:45:00.004703
20018	{13,3,17,18}	\N	2018-08-31 10:00:00.004446
20019	{7,16,5,21}	{}	2018-08-31 10:00:00.004446
20020	{17,5,9,11}	\N	2018-08-31 10:15:00.004727
20036	{10,7,11,4}	{}	2018-08-31 13:45:00.004648
20021	{15,17,13,14}	{}	2018-08-31 10:15:00.004728
20022	{7,5,21,20}	\N	2018-08-31 10:30:00.004444
20023	{18,3,14,5}	{}	2018-08-31 10:30:00.004464
20024	{21,11,16,6}	{}	2018-08-31 10:45:00.004698
20025	{2,11,6,13}	{}	2018-08-31 11:00:00.005229
20026	{13,15,18,5}	{}	2018-08-31 11:15:00.004708
20027	{13,20,16,8}	{}	2018-08-31 11:30:00.004675
20028	{20,14,19,12}	{}	2018-08-31 11:45:00.004651
20029	{12,16,5,13}	{}	2018-08-31 12:00:00.007024
20030	{4,10,11,17}	{}	2018-08-31 12:15:00.004691
20031	{18,15,7,4}	{}	2018-08-31 12:30:00.004826
20032	{2,12,17,19}	{}	2018-08-31 12:45:00.004664
20033	{2,17,4,13}	{}	2018-08-31 13:00:00.006399
20034	{13,6,4,2}	{}	2018-08-31 13:15:00.004625
20037	{8,3,5,14}	{}	2018-08-31 14:00:00.004559
20038	{19,21,18,13}	{}	2018-08-31 14:15:00.004698
20039	{11,20,15,16}	{}	2018-08-31 14:30:00.00479
20040	{1,9,16,13}	{}	2018-08-31 14:45:00.004709
20041	{21,3,13,12}	{}	2018-08-31 15:00:00.004497
20042	{6,19,9,13}	{}	2018-08-31 15:15:00.004721
20043	{17,19,1,16}	{}	2018-08-31 15:30:00.004641
20044	{19,6,18,11}	{}	2018-08-31 15:45:00.004698
20045	{20,17,3,18}	{}	2018-08-31 16:00:00.010188
20046	{16,21,9,12}	{}	2018-08-31 16:15:00.006191
20047	{17,7,10,14}	{}	2018-08-31 16:30:00.006403
20048	{3,8,7,10}	{}	2018-08-31 16:45:00.006874
20049	{16,15,11,6}	{}	2018-08-31 17:00:00.009683
20050	{19,4,1,20}	{}	2018-08-31 17:15:00.00706
20051	{9,3,4,1}	{}	2018-08-31 17:30:00.006681
20052	{15,11,5,8}	{}	2018-08-31 17:45:00.006751
20053	{19,4,13,17}	{}	2018-08-31 18:00:00.005989
20054	{7,4,3,21}	{}	2018-08-31 19:15:00.01032
20055	{18,9,4,11}	{}	2018-08-31 19:30:00.006053
20056	{16,1,13,4}	{}	2018-08-31 19:45:00.006308
20057	{2,18,20,15}	{}	2018-08-31 20:00:00.00867
20058	{5,16,19,17}	{}	2018-08-31 20:15:00.004727
20059	{21,20,9,7}	{}	2018-08-31 20:30:00.004636
20060	{4,15,12,6}	{}	2018-08-31 20:45:00.004619
20061	{9,6,13,20}	{}	2018-08-31 21:00:00.004421
20062	{14,21,7,16}	{}	2018-08-31 21:15:00.004539
20063	{19,14,2,13}	{}	2018-08-31 21:30:00.004672
20064	{1,13,8,21}	{}	2018-08-31 21:45:00.00465
20065	{7,5,4,3}	{}	2018-08-31 22:00:00.004632
20066	{3,15,2,4}	{}	2018-08-31 22:15:00.004618
20067	{18,6,15,16}	{}	2018-08-31 22:30:00.00466
20068	{14,4,15,13}	{}	2018-08-31 22:45:00.004673
20069	{9,11,17,6}	{}	2018-08-31 23:00:00.006132
20070	{1,11,18,15}	{}	2018-08-31 23:15:00.006168
20071	{19,15,18,10}	{}	2018-08-31 23:30:00.006269
20072	{1,20,7,13}	{}	2018-08-31 23:45:00.007056
20073	{14,21,8,6}	{}	2018-09-01 00:00:00.008718
20074	{3,21,11,10}	{}	2018-09-01 00:15:00.006446
20075	{8,20,14,2}	{}	2018-09-01 00:30:00.006147
20076	{2,21,14,13}	{}	2018-09-01 00:45:00.010296
20077	{16,6,18,12}	{}	2018-09-01 01:00:00.010605
20078	{15,17,9,12}	{}	2018-09-01 01:15:00.006118
20079	{19,15,14,17}	{}	2018-09-01 01:30:00.006023
20080	{15,2,21,18}	{}	2018-09-01 01:45:00.010372
20081	{5,17,1,18}	{}	2018-09-01 02:00:00.005897
20082	{6,13,5,15}	{}	2018-09-01 02:15:00.006779
20083	{3,9,5,13}	{}	2018-09-01 02:30:00.006823
20084	{5,11,9,2}	{}	2018-09-01 02:45:00.005419
20085	{13,21,6,17}	{}	2018-09-01 03:00:00.005182
20086	{11,9,18,16}	{}	2018-09-01 03:15:00.0054
20087	{3,17,12,18}	{}	2018-09-01 03:30:00.004632
20088	{21,4,17,10}	{}	2018-09-01 03:45:00.00468
20089	{2,19,4,14}	{}	2018-09-01 04:00:00.004471
20090	{4,9,21,11}	{}	2018-09-01 04:15:00.004658
20091	{3,15,16,6}	{}	2018-09-01 04:30:00.004671
20092	{3,8,11,16}	{}	2018-09-01 04:45:00.004719
20093	{13,12,4,18}	{}	2018-09-01 05:00:00.006305
20094	{2,20,1,16}	{}	2018-09-01 05:15:00.004659
20095	{14,11,21,16}	{}	2018-09-01 05:30:00.004628
20096	{3,1,9,10}	{}	2018-09-01 05:45:00.0047
20097	{19,6,16,4}	{}	2018-09-01 06:00:00.004537
20098	{2,4,16,6}	{}	2018-09-01 06:15:00.00463
20099	{8,4,17,6}	{}	2018-09-01 06:30:00.004453
20100	{11,20,7,1}	{}	2018-09-01 06:45:00.004629
20101	{18,17,8,15}	{}	2018-09-01 07:00:00.006319
20102	{18,9,17,2}	{}	2018-09-01 07:15:00.004555
20103	{9,4,20,11}	{}	2018-09-01 07:30:00.004648
20104	{1,16,3,2}	{}	2018-09-01 07:45:00.004655
20105	{10,2,5,17}	{}	2018-09-01 08:00:00.006165
20106	{5,14,16,4}	{}	2018-09-01 08:15:00.00463
20107	{19,17,20,7}	{}	2018-09-01 08:30:00.004622
20108	{6,19,18,2}	{}	2018-09-01 08:45:00.004624
20109	{17,11,7,8}	{}	2018-09-01 09:00:00.004534
20110	{14,13,16,20}	{}	2018-09-01 09:15:00.004652
20111	{7,4,5,15}	{}	2018-09-01 09:30:00.004409
20112	{5,6,9,14}	{}	2018-09-01 09:45:00.004718
20113	{7,21,2,12}	{}	2018-09-01 10:00:00.004482
20114	{5,21,1,2}	{}	2018-09-01 10:15:00.004695
20115	{1,10,21,7}	{}	2018-09-01 10:30:00.004587
20116	{13,11,12,3}	{}	2018-09-01 10:45:00.004599
20117	{1,13,12,11}	{}	2018-09-01 11:00:00.006247
20118	{8,15,12,20}	{}	2018-09-01 11:15:00.004517
20119	{13,10,21,7}	{}	2018-09-01 11:30:00.004561
20120	{7,21,14,1}	{}	2018-09-01 11:45:00.004572
20121	{15,17,6,1}	{}	2018-09-01 12:00:00.006286
20122	{6,9,4,12}	{}	2018-09-01 12:15:00.004642
20123	{4,18,9,20}	{}	2018-09-01 12:30:00.004664
20124	{5,10,15,7}	{}	2018-09-01 12:45:00.004698
20125	{3,11,19,15}	{}	2018-09-01 13:00:00.006091
20126	{12,3,11,13}	{}	2018-09-01 13:15:00.004666
20127	{9,15,20,19}	{}	2018-09-01 13:30:00.004735
20128	{21,4,1,8}	{}	2018-09-01 13:45:00.004702
20129	{20,18,5,14}	{}	2018-09-01 14:00:00.004517
20130	{2,21,20,10}	{}	2018-09-01 14:15:00.004653
20131	{4,6,20,9}	{}	2018-09-01 14:30:00.004648
20132	{5,15,7,11}	{}	2018-09-01 14:45:00.004751
20133	{5,20,12,18}	{}	2018-09-01 15:00:00.004546
20134	{7,10,6,14}	{}	2018-09-01 15:15:00.004705
20135	{1,12,21,10}	{}	2018-09-01 15:30:00.00472
20136	{4,19,6,1}	{}	2018-09-01 15:45:00.004728
20137	{12,18,9,20}	{}	2018-09-01 16:00:00.004549
20138	{6,3,17,7}	{}	2018-09-01 16:15:00.004741
20139	{11,15,5,18}	{}	2018-09-01 16:30:00.004666
20140	{21,1,6,18}	{}	2018-09-01 16:45:00.004692
20141	{1,4,9,21}	{}	2018-09-01 17:00:00.00616
20142	{21,15,7,9}	{}	2018-09-01 17:15:00.00468
20143	{14,15,5,2}	{}	2018-09-01 17:30:00.004663
20144	{14,20,7,9}	{}	2018-09-01 17:45:00.0047
20145	{12,21,3,10}	{}	2018-09-01 18:00:00.004262
20146	{2,14,15,6}	{}	2018-09-01 18:15:00.004681
20147	{18,12,2,14}	{}	2018-09-01 18:30:00.004647
20154	{12,4,13,5}	{}	2018-09-01 20:15:00.004668
20158	{5,1,13,19}	{}	2018-09-01 21:15:00.004641
20162	{21,17,18,4}	{}	2018-09-01 22:15:00.004654
20170	{20,2,7,21}	{}	2018-09-02 00:15:00.004633
20177	{8,10,21,5}	{}	2018-09-02 02:00:00.004537
21825	{11,8,14,3}	{}	2018-09-19 06:00:00.004445
21828	{5,9,13,11}	{}	2018-09-19 06:45:00.004784
21831	{1,21,5,16}	{}	2018-09-19 07:30:00.004477
21833	{3,16,13,14}	{}	2018-09-19 08:00:00.006279
21848	{1,20,10,9}	{}	2018-09-19 11:45:00.00463
21851	{15,2,1,20}	{}	2018-09-19 12:30:00.004749
21853	{19,17,14,3}	{}	2018-09-19 13:00:00.006216
21872	{4,10,8,18}	{}	2018-09-19 17:45:00.004703
21876	{17,13,11,1}	{}	2018-09-19 18:45:00.004751
21879	{1,19,14,12}	{}	2018-09-19 19:30:00.004697
21881	{2,3,6,16}	{}	2018-09-19 20:00:00.00626
21896	{6,17,12,9}	{}	2018-09-19 23:45:00.004806
21899	{8,13,20,11}	{}	2018-09-20 00:30:00.004717
21901	{15,8,9,18}	{}	2018-09-20 01:00:00.006237
21920	{21,6,19,8}	{}	2018-09-20 05:45:00.004663
21924	{10,8,13,15}	{}	2018-09-20 06:45:00.004745
21927	{4,17,11,15}	{}	2018-09-20 07:30:00.004766
21929	{11,17,2,7}	{}	2018-09-20 08:00:00.006263
21944	{15,7,21,11}	{}	2018-09-20 11:45:00.004729
21947	{1,20,11,13}	{}	2018-09-20 12:30:00.004697
21949	{13,6,4,12}	{}	2018-09-20 13:00:00.006266
22511	{21,14,5,16}	{}	2018-09-26 09:30:00.004671
22514	{13,15,10,6}	{}	2018-09-26 10:15:00.004733
22522	{6,4,5,20}	{}	2018-09-26 12:15:00.004629
22529	{12,19,10,1}	{}	2018-09-26 14:00:00.004543
22533	{12,5,15,6}	{}	2018-09-26 15:00:00.004532
22537	{15,13,20,21}	{}	2018-09-26 16:00:00.003924
22542	{15,5,16,7}	{}	2018-09-26 17:15:00.004718
22546	{2,12,17,1}	{}	2018-09-26 18:15:00.004753
22554	{12,17,14,6}	{}	2018-09-26 20:15:00.004715
22558	{14,7,21,1}	{}	2018-09-26 21:15:00.004667
22562	{8,6,5,21}	{}	2018-09-26 22:15:00.004472
22570	{19,5,10,12}	{}	2018-09-27 00:15:00.004718
22577	{20,8,5,18}	{}	2018-09-27 02:00:00.004549
22581	{2,18,1,19}	{}	2018-09-27 03:00:00.004528
22585	{11,5,7,18}	{}	2018-09-27 04:00:00.004502
22590	{4,17,10,20}	{}	2018-09-27 05:15:00.004719
22594	{9,19,5,13}	{}	2018-09-27 06:15:00.004781
22602	{11,2,7,15}	{}	2018-09-27 08:15:00.004733
22606	{18,7,15,2}	{}	2018-09-27 09:15:00.004754
22610	{11,12,2,3}	{}	2018-09-27 10:15:00.00473
22618	{3,2,1,11}	{}	2018-09-27 12:15:00.004762
22625	{8,21,6,2}	{}	2018-09-27 14:00:00.004564
22629	{17,14,9,7}	{}	2018-09-27 15:00:00.004547
22633	{14,2,11,6}	{}	2018-09-27 16:00:00.004548
22638	{3,6,17,2}	{}	2018-09-27 17:15:00.00474
22642	{8,21,11,20}	{}	2018-09-27 18:15:00.004771
22650	{18,7,17,9}	{}	2018-09-27 20:15:00.00473
22654	{15,17,9,16}	{}	2018-09-27 21:15:00.004775
22658	{3,8,18,5}	{}	2018-09-27 22:15:00.004744
22666	{5,4,18,16}	{}	2018-09-28 00:15:00.004767
22673	{17,14,6,3}	{}	2018-09-28 02:00:00.004551
22677	{13,7,4,10}	{}	2018-09-28 03:00:00.004589
22681	{11,8,21,15}	{}	2018-09-28 04:00:00.004584
22682	{6,8,20,2}	{}	2018-09-28 04:15:00.004762
22686	{10,19,16,8}	{}	2018-09-28 05:15:00.004813
22690	{8,12,17,19}	{}	2018-09-28 06:15:00.004744
20148	{2,16,20,7}	{}	2018-09-01 18:45:00.004714
20151	{16,2,6,17}	{}	2018-09-01 19:30:00.004665
20153	{10,6,18,3}	{}	2018-09-01 20:00:00.006225
20168	{15,21,17,18}	{}	2018-09-01 23:45:00.004807
20171	{11,8,17,10}	{}	2018-09-02 00:30:00.004711
20173	{6,19,20,13}	{}	2018-09-02 01:00:00.006188
21826	{2,17,15,6}	{}	2018-09-19 06:15:00.00471
21834	{21,18,4,14}	{}	2018-09-19 08:15:00.004693
21838	{16,2,21,3}	{}	2018-09-19 09:15:00.004683
21842	{18,14,4,7}	{}	2018-09-19 10:15:00.004814
21850	{11,14,15,21}	{}	2018-09-19 12:15:00.004704
21857	{19,2,3,10}	{}	2018-09-19 14:00:00.004563
21861	{20,2,17,7}	{}	2018-09-19 15:00:00.004522
21865	{11,21,12,7}	{}	2018-09-19 16:00:00.004522
21870	{19,14,21,20}	{}	2018-09-19 17:15:00.004608
21874	{2,15,7,21}	{}	2018-09-19 18:15:00.004647
21882	{13,9,20,18}	{}	2018-09-19 20:15:00.004684
21886	{17,14,10,4}	{}	2018-09-19 21:15:00.004736
21890	{8,1,11,17}	{}	2018-09-19 22:15:00.00473
21898	{18,14,20,15}	{}	2018-09-20 00:15:00.004804
21905	{5,20,21,2}	{}	2018-09-20 02:00:00.004581
21909	{2,1,20,5}	{}	2018-09-20 03:00:00.004464
21913	{1,14,3,18}	{}	2018-09-20 04:00:00.004562
21918	{20,19,12,8}	{}	2018-09-20 05:15:00.004691
21922	{2,4,12,11}	{}	2018-09-20 06:15:00.004708
21930	{7,19,8,18}	{}	2018-09-20 08:15:00.004668
21934	{9,18,10,13}	{}	2018-09-20 09:15:00.004604
21938	{16,17,8,21}	{}	2018-09-20 10:15:00.004678
21946	{1,10,7,16}	{}	2018-09-20 12:15:00.00473
21953	{20,8,19,2}	{}	2018-09-20 14:00:00.004526
21957	{19,2,6,3}	{}	2018-09-20 15:00:00.004543
22515	{13,14,1,16}	{}	2018-09-26 10:30:00.0047
22517	{7,14,16,4}	{}	2018-09-26 11:00:00.006125
22524	{14,13,2,12}	{}	2018-09-26 12:45:00.004651
22527	{21,1,18,12}	{}	2018-09-26 13:30:00.004701
22531	{8,13,18,21}	{}	2018-09-26 14:30:00.00471
22535	{9,8,20,5}	{}	2018-09-26 15:30:00.004704
22539	{8,16,7,20}	{}	2018-09-26 16:30:00.004691
22541	{20,18,2,12}	{}	2018-09-26 17:00:00.006202
22552	{13,16,20,11}	{}	2018-09-26 19:45:00.004717
22555	{4,12,17,2}	{}	2018-09-26 20:30:00.004716
22559	{16,1,17,14}	{}	2018-09-26 21:30:00.004718
22563	{9,20,15,6}	{}	2018-09-26 22:30:00.004782
22565	{18,20,6,15}	{}	2018-09-26 23:00:00.006201
22572	{9,18,14,19}	{}	2018-09-27 00:45:00.004723
22575	{19,8,20,14}	{}	2018-09-27 01:30:00.004685
22579	{19,7,9,21}	{}	2018-09-27 02:30:00.004716
22583	{3,12,5,17}	{}	2018-09-27 03:30:00.004717
22587	{3,16,7,11}	{}	2018-09-27 04:30:00.004718
22589	{19,10,16,18}	{}	2018-09-27 05:00:00.006242
22600	{9,18,7,10}	{}	2018-09-27 07:45:00.004725
22603	{13,8,14,17}	{}	2018-09-27 08:30:00.004725
22607	{3,4,9,5}	{}	2018-09-27 09:30:00.004827
22611	{5,21,14,11}	{}	2018-09-27 10:30:00.004743
22613	{15,2,20,8}	{}	2018-09-27 11:00:00.006202
22620	{17,11,6,8}	{}	2018-09-27 12:45:00.004804
22623	{19,15,10,8}	{}	2018-09-27 13:30:00.004789
22627	{2,10,21,16}	{}	2018-09-27 14:30:00.004714
22631	{5,6,1,9}	{}	2018-09-27 15:30:00.004756
22635	{6,4,2,16}	{}	2018-09-27 16:30:00.004695
22637	{17,13,14,20}	{}	2018-09-27 17:00:00.006301
22648	{9,2,7,8}	{}	2018-09-27 19:45:00.004746
22651	{17,5,16,19}	{}	2018-09-27 20:30:00.004789
22655	{7,3,10,20}	{}	2018-09-27 21:30:00.004783
22659	{3,8,6,5}	{}	2018-09-27 22:30:00.004742
22661	{11,15,18,5}	{}	2018-09-27 23:00:00.006281
22668	{16,6,7,14}	{}	2018-09-28 00:45:00.004763
22671	{19,5,7,3}	{}	2018-09-28 01:30:00.004781
22675	{2,11,16,19}	{}	2018-09-28 02:30:00.004742
22679	{7,4,5,3}	{}	2018-09-28 03:30:00.004749
22683	{9,20,21,1}	{}	2018-09-28 04:30:00.004769
22685	{16,18,6,19}	{}	2018-09-28 05:00:00.006271
20149	{12,7,14,9}	{}	2018-09-01 19:00:00.006154
20156	{6,19,12,8}	{}	2018-09-01 20:45:00.004734
20160	{10,3,7,15}	{}	2018-09-01 21:45:00.004725
20164	{18,14,11,1}	{}	2018-09-01 22:45:00.004718
20167	{11,3,17,21}	{}	2018-09-01 23:30:00.004778
20169	{8,15,3,11}	{}	2018-09-02 00:00:00.00606
20176	{9,12,20,1}	{}	2018-09-02 01:45:00.004641
21830	{12,4,11,7}	{}	2018-09-19 07:15:00.004664
21837	{19,6,17,21}	{}	2018-09-19 09:00:00.00449
21841	{19,17,12,11}	{}	2018-09-19 10:00:00.004536
21846	{8,21,4,19}	{}	2018-09-19 11:15:00.004679
21854	{11,15,13,3}	{}	2018-09-19 13:15:00.004695
21858	{15,14,19,17}	{}	2018-09-19 14:15:00.004684
21862	{14,16,5,18}	{}	2018-09-19 15:15:00.004718
21866	{13,12,17,18}	{}	2018-09-19 16:15:00.004687
21873	{19,12,4,11}	{}	2018-09-19 18:00:00.004564
21878	{15,3,5,14}	{}	2018-09-19 19:15:00.004668
21885	{7,16,6,15}	{}	2018-09-19 21:00:00.004563
21889	{4,15,10,16}	{}	2018-09-19 22:00:00.004467
21894	{6,5,9,3}	{}	2018-09-19 23:15:00.004915
21902	{12,6,15,4}	{}	2018-09-20 01:15:00.004762
21906	{4,16,18,3}	{}	2018-09-20 02:15:00.004658
21910	{19,15,16,9}	{}	2018-09-20 03:15:00.004323
21914	{10,14,20,15}	{}	2018-09-20 04:15:00.004421
21921	{21,16,12,6}	{}	2018-09-20 06:00:00.004546
21926	{10,1,13,18}	{}	2018-09-20 07:15:00.004709
21933	{8,14,17,7}	{}	2018-09-20 09:00:00.004566
21937	{17,5,8,10}	{}	2018-09-20 10:00:00.004537
21942	{6,13,14,20}	{}	2018-09-20 11:15:00.004766
21950	{17,6,2,7}	{}	2018-09-20 13:15:00.004718
21954	{7,9,1,20}	{}	2018-09-20 14:15:00.004609
22520	{19,3,10,15}	{}	2018-09-26 11:45:00.004766
22523	{3,10,6,11}	{}	2018-09-26 12:30:00.004722
22525	{21,4,8,3}	{}	2018-09-26 13:00:00.006332
22544	{13,18,12,15}	{}	2018-09-26 17:45:00.004671
22548	{10,19,8,18}	{}	2018-09-26 18:45:00.00484
22551	{18,21,15,17}	{}	2018-09-26 19:30:00.004779
22553	{10,17,1,2}	{}	2018-09-26 20:00:00.006254
22568	{6,21,8,20}	{}	2018-09-26 23:45:00.004857
22571	{20,8,3,14}	{}	2018-09-27 00:30:00.004695
22573	{4,20,17,7}	{}	2018-09-27 01:00:00.006258
22592	{20,7,13,5}	{}	2018-09-27 05:45:00.004778
22596	{10,16,3,17}	{}	2018-09-27 06:45:00.004693
22599	{2,14,21,20}	{}	2018-09-27 07:30:00.004757
22601	{16,14,8,11}	{}	2018-09-27 08:00:00.006263
22616	{10,21,13,9}	{}	2018-09-27 11:45:00.004734
22619	{8,16,19,10}	{}	2018-09-27 12:30:00.004751
22621	{2,6,11,13}	{}	2018-09-27 13:00:00.006269
22640	{5,9,10,3}	{}	2018-09-27 17:45:00.004802
22644	{15,18,17,16}	{}	2018-09-27 18:45:00.004703
22647	{3,15,20,6}	{}	2018-09-27 19:30:00.004767
22649	{20,2,5,1}	{}	2018-09-27 20:00:00.006792
22664	{9,18,2,21}	{}	2018-09-27 23:45:00.004864
22667	{12,13,11,14}	{}	2018-09-28 00:30:00.004741
22669	{19,6,2,17}	{}	2018-09-28 01:00:00.006244
22688	{8,11,14,3}	{}	2018-09-28 05:45:00.004735
22689	{5,8,6,1}	{}	2018-09-28 06:00:00.00455
22692	{16,5,14,3}	{}	2018-09-28 06:45:00.004686
20150	{12,3,7,14}	{}	2018-09-01 19:15:00.00469
20157	{8,16,5,13}	{}	2018-09-01 21:00:00.004516
20161	{19,18,5,10}	{}	2018-09-01 22:00:00.004488
20166	{3,6,10,5}	{}	2018-09-01 23:15:00.004793
20174	{17,14,13,9}	{}	2018-09-02 01:15:00.004663
20178	{20,18,17,10}	{}	2018-09-02 02:15:00.004702
21832	{15,11,14,21}	{}	2018-09-19 07:45:00.004649
21835	{10,20,2,16}	{}	2018-09-19 08:30:00.004582
21839	{15,12,17,14}	{}	2018-09-19 09:30:00.004317
21843	{3,4,1,11}	{}	2018-09-19 10:30:00.004648
21845	{19,15,4,18}	{}	2018-09-19 11:00:00.006165
21852	{5,21,9,1}	{}	2018-09-19 12:45:00.00466
21855	{11,4,3,2}	{}	2018-09-19 13:30:00.004636
21859	{12,3,9,18}	{}	2018-09-19 14:30:00.00471
21863	{14,1,7,9}	{}	2018-09-19 15:30:00.004672
21867	{12,7,6,3}	{}	2018-09-19 16:30:00.004742
21869	{3,13,10,11}	{}	2018-09-19 17:00:00.00625
21880	{1,16,6,21}	{}	2018-09-19 19:45:00.004625
21883	{4,3,10,17}	{}	2018-09-19 20:30:00.004698
21887	{15,20,11,17}	{}	2018-09-19 21:30:00.004716
21891	{9,7,14,10}	{}	2018-09-19 22:30:00.0047
21893	{3,19,11,21}	{}	2018-09-19 23:00:00.006246
21900	{12,9,2,20}	{}	2018-09-20 00:45:00.004779
21903	{2,13,20,11}	{}	2018-09-20 01:30:00.004703
21907	{7,15,4,20}	{}	2018-09-20 02:30:00.00468
21911	{6,4,14,19}	{}	2018-09-20 03:30:00.004724
21915	{6,12,18,10}	{}	2018-09-20 04:30:00.004663
21917	{12,18,19,3}	{}	2018-09-20 05:00:00.006228
21928	{5,9,14,3}	{}	2018-09-20 07:45:00.004708
21931	{8,7,13,3}	{}	2018-09-20 08:30:00.004732
21935	{10,14,4,13}	{}	2018-09-20 09:30:00.004721
21939	{18,17,8,15}	{}	2018-09-20 10:30:00.004533
21941	{12,1,4,2}	{}	2018-09-20 11:00:00.006222
21948	{15,14,2,18}	{}	2018-09-20 12:45:00.004727
21951	{15,14,4,8}	{}	2018-09-20 13:30:00.004732
21955	{20,7,8,16}	{}	2018-09-20 14:30:00.004791
22652	{10,5,11,16}	{}	2018-09-27 20:45:00.004691
22656	{19,14,1,9}	{}	2018-09-27 21:45:00.004696
22660	{15,17,10,20}	{}	2018-09-27 22:45:00.004714
22663	{6,8,5,14}	{}	2018-09-27 23:30:00.004864
22665	{5,16,10,18}	{}	2018-09-28 00:00:00.006148
22672	{17,1,14,2}	{}	2018-09-28 01:45:00.004719
22676	{10,18,21,3}	{}	2018-09-28 02:45:00.004777
22680	{15,20,10,1}	{}	2018-09-28 03:45:00.004728
22684	{9,1,7,18}	{}	2018-09-28 04:45:00.004718
22687	{15,11,7,12}	{}	2018-09-28 05:30:00.004746
22691	{20,14,18,11}	{}	2018-09-28 06:30:00.004386
22693	{12,21,3,15}	{}	2018-09-28 07:00:00.006324
20152	{4,2,3,8}	{}	2018-09-01 19:45:00.004481
20155	{9,14,16,2}	{}	2018-09-01 20:30:00.004765
20159	{8,3,6,14}	{}	2018-09-01 21:30:00.00466
20163	{3,7,19,13}	{}	2018-09-01 22:30:00.004617
20165	{16,18,14,4}	{}	2018-09-01 23:00:00.006155
20172	{10,11,17,7}	{}	2018-09-02 00:45:00.004719
20175	{18,6,3,5}	{}	2018-09-02 01:30:00.004667
20179	{14,17,6,9}	{}	2018-09-02 02:30:00.004721
20180	{17,20,1,8}	{}	2018-09-02 02:45:00.004681
20181	{7,12,4,3}	{}	2018-09-02 03:00:00.004547
20182	{8,15,18,2}	{}	2018-09-02 03:15:00.004564
20183	{5,1,11,14}	{}	2018-09-02 03:30:00.004627
20184	{9,8,15,14}	{}	2018-09-02 03:45:00.004691
20185	{4,7,3,1}	{}	2018-09-02 04:00:00.004531
20186	{13,6,18,8}	{}	2018-09-02 04:15:00.004723
20187	{11,10,9,4}	{}	2018-09-02 04:30:00.004691
20188	{1,13,10,20}	{}	2018-09-02 04:45:00.0047
20189	{6,10,18,12}	{}	2018-09-02 05:00:00.005969
20190	{15,18,7,13}	{}	2018-09-02 05:15:00.004726
20191	{20,10,17,13}	{}	2018-09-02 05:30:00.004733
20192	{7,8,5,3}	{}	2018-09-02 05:45:00.004677
20193	{8,21,17,19}	{}	2018-09-02 06:00:00.004536
20194	{5,3,21,11}	{}	2018-09-02 06:15:00.004725
20195	{3,2,1,10}	{}	2018-09-02 06:30:00.004713
20196	{2,19,15,14}	{}	2018-09-02 06:45:00.004674
20197	{12,5,13,10}	{}	2018-09-02 07:00:00.006089
20198	{6,10,12,21}	{}	2018-09-02 07:15:00.004486
20199	{14,6,19,9}	{}	2018-09-02 07:30:00.004659
20200	{13,20,8,9}	{}	2018-09-02 07:45:00.004745
20201	{2,12,9,3}	{}	2018-09-02 08:00:00.00673
20202	{6,20,19,17}	{}	2018-09-02 08:15:00.004547
20203	{11,7,14,15}	{}	2018-09-02 08:30:00.004636
20204	{8,16,6,15}	{}	2018-09-02 08:45:00.004681
20205	{7,13,4,11}	{}	2018-09-02 09:00:00.004485
20206	{2,7,12,16}	{}	2018-09-02 09:15:00.004671
20207	{5,1,8,2}	{}	2018-09-02 09:30:00.004473
20208	{17,20,1,4}	{}	2018-09-02 09:45:00.004731
20209	{4,2,14,20}	{}	2018-09-02 10:00:00.00456
20210	{6,12,19,2}	{}	2018-09-02 10:15:00.004695
20211	{16,20,19,9}	{}	2018-09-02 10:30:00.004662
20212	{8,7,20,19}	{}	2018-09-02 10:45:00.004718
20213	{15,17,5,11}	{}	2018-09-02 11:00:00.006258
20214	{4,1,16,12}	{}	2018-09-02 11:15:00.004684
20215	{7,16,3,21}	{}	2018-09-02 11:30:00.004669
20216	{16,3,9,7}	{}	2018-09-02 11:45:00.004743
20217	{20,19,5,10}	{}	2018-09-02 12:00:00.006247
20218	{16,2,1,5}	{}	2018-09-02 12:15:00.004674
20219	{3,20,8,4}	{}	2018-09-02 12:30:00.004685
20220	{6,3,12,8}	{}	2018-09-02 12:45:00.004676
20221	{6,11,8,15}	{}	2018-09-02 13:00:00.005997
20222	{17,20,3,11}	{}	2018-09-02 13:15:00.004666
20223	{19,16,20,9}	{}	2018-09-02 13:30:00.004648
20224	{19,13,6,5}	{}	2018-09-02 13:45:00.00464
20225	{1,8,9,15}	{}	2018-09-02 14:00:00.004554
20226	{3,1,21,15}	{}	2018-09-02 14:15:00.004755
20227	{6,10,5,2}	{}	2018-09-02 14:30:00.004538
20228	{8,9,18,16}	{}	2018-09-02 14:45:00.004673
20229	{1,17,11,19}	{}	2018-09-02 15:00:00.004502
20230	{2,15,19,16}	{}	2018-09-02 15:15:00.004751
20231	{3,15,16,8}	{}	2018-09-02 15:30:00.004618
20232	{18,1,8,4}	{}	2018-09-02 15:45:00.004717
20233	{2,8,19,6}	{}	2018-09-02 16:00:00.004512
20234	{3,2,8,6}	{}	2018-09-02 16:15:00.004669
20235	{8,18,15,6}	{}	2018-09-02 16:30:00.004595
20236	{5,18,10,21}	{}	2018-09-02 16:45:00.004682
20237	{10,17,20,11}	{}	2018-09-02 17:00:00.006181
20238	{13,21,3,14}	{}	2018-09-02 17:15:00.00467
20239	{15,20,7,19}	{}	2018-09-02 17:30:00.004653
20240	{21,3,1,13}	{}	2018-09-02 17:45:00.004739
20241	{21,2,7,19}	{}	2018-09-02 18:00:00.00453
20242	{3,16,1,14}	{}	2018-09-02 18:15:00.004738
20243	{6,9,16,10}	{}	2018-09-02 18:30:00.004482
20244	{12,16,18,13}	{}	2018-09-02 18:45:00.004647
20245	{3,5,1,9}	{}	2018-09-02 19:00:00.006247
20246	{3,10,16,17}	{}	2018-09-02 19:15:00.004744
20247	{21,5,9,18}	{}	2018-09-02 19:30:00.004647
20248	{14,15,6,11}	{}	2018-09-02 19:45:00.004657
20249	{9,19,2,14}	{}	2018-09-02 20:00:00.006196
20250	{6,13,9,10}	{}	2018-09-02 20:15:00.004669
20254	{17,15,13,2}	{}	2018-09-02 21:15:00.004732
20258	{7,6,11,21}	{}	2018-09-02 22:15:00.004669
20264	{19,12,16,7}	{}	2018-09-02 23:45:00.004826
20266	{12,9,4,7}	{}	2018-09-03 00:15:00.004742
20267	{2,21,18,6}	{}	2018-09-03 00:30:00.004698
20269	{16,1,13,18}	{}	2018-09-03 01:00:00.006268
20273	{3,4,6,7}	{}	2018-09-03 02:00:00.00454
20277	{1,3,4,11}	{}	2018-09-03 03:00:00.004511
20281	{18,12,10,19}	{}	2018-09-03 04:00:00.004452
20286	{5,10,9,7}	{}	2018-09-03 05:15:00.004643
20288	{3,11,12,1}	{}	2018-09-03 05:45:00.004696
20290	{15,10,11,6}	{}	2018-09-03 06:15:00.004509
20292	{7,19,9,10}	{}	2018-09-03 06:45:00.004683
20295	{3,1,9,11}	{}	2018-09-03 07:30:00.00461
20297	{5,15,17,13}	{}	2018-09-03 08:00:00.006295
20298	{7,4,17,6}	{}	2018-09-03 08:15:00.004657
20302	{3,1,17,13}	{}	2018-09-03 09:15:00.004807
20306	{1,14,8,2}	{}	2018-09-03 10:15:00.004686
20312	{2,16,4,17}	{}	2018-09-03 11:45:00.004716
20314	{16,20,1,2}	{}	2018-09-03 12:15:00.004735
20315	{6,18,7,20}	{}	2018-09-03 12:30:00.004696
20317	{3,6,2,16}	{}	2018-09-03 13:00:00.00625
21958	{8,18,20,15}	{}	2018-09-20 15:15:00.006062
21959	{20,18,15,2}	{}	2018-09-20 15:30:00.005397
21960	{15,6,3,12}	{}	2018-09-20 15:45:00.005377
21961	{6,13,16,17}	{}	2018-09-20 16:00:00.005392
21962	{6,5,11,20}	{}	2018-09-20 16:15:00.00471
21963	{19,4,17,8}	{}	2018-09-20 16:30:00.004626
21964	{8,9,2,13}	{}	2018-09-20 16:45:00.003904
21965	{21,14,12,3}	{}	2018-09-20 17:00:00.006315
21968	{11,14,16,21}	{}	2018-09-20 17:45:00.00466
21971	{17,12,15,20}	{}	2018-09-20 18:30:00.004602
21974	{17,15,6,8}	{}	2018-09-20 19:15:00.004765
22694	{10,13,3,5}	{}	2018-09-28 07:15:00.004765
22698	{5,16,6,9}	{}	2018-09-28 08:15:00.004667
22702	{10,14,8,7}	{}	2018-09-28 09:15:00.004768
22706	{20,12,18,9}	{}	2018-09-28 10:15:00.004637
22714	{13,21,11,18}	{}	2018-09-28 12:15:00.00474
22721	{21,15,12,16}	{}	2018-09-28 14:00:00.004485
22725	{4,18,6,16}	{}	2018-09-28 15:00:00.004547
22729	{2,1,4,7}	{}	2018-09-28 16:00:00.00453
22734	{16,17,2,12}	{}	2018-09-28 17:15:00.004677
20251	{12,16,21,17}	{}	2018-09-02 20:30:00.004665
20252	{16,9,7,2}	{}	2018-09-02 20:45:00.004686
20253	{1,2,14,6}	{}	2018-09-02 21:00:00.004531
20255	{3,5,17,19}	{}	2018-09-02 21:30:00.0047
20256	{12,5,8,2}	{}	2018-09-02 21:45:00.004553
20257	{21,3,12,15}	{}	2018-09-02 22:00:00.0045
20259	{7,21,4,5}	{}	2018-09-02 22:30:00.004645
20260	{10,8,3,2}	{}	2018-09-02 22:45:00.004732
20261	{3,20,14,10}	{}	2018-09-02 23:00:00.005947
20262	{1,19,9,10}	{}	2018-09-02 23:15:00.004834
20263	{15,5,11,2}	{}	2018-09-02 23:30:00.004839
20265	{8,9,20,17}	{}	2018-09-03 00:00:00.006126
20268	{17,2,5,21}	{}	2018-09-03 00:45:00.004725
20270	{5,15,2,16}	{}	2018-09-03 01:15:00.004687
20271	{3,10,12,16}	{}	2018-09-03 01:30:00.004682
20272	{19,4,7,11}	{}	2018-09-03 01:45:00.004621
20274	{12,9,8,4}	{}	2018-09-03 02:15:00.004654
20275	{9,15,17,7}	{}	2018-09-03 02:30:00.0046
20276	{3,1,10,19}	{}	2018-09-03 02:45:00.004715
20278	{14,10,15,3}	{}	2018-09-03 03:15:00.004661
20279	{13,21,3,15}	{}	2018-09-03 03:30:00.00476
20280	{3,2,7,1}	{}	2018-09-03 03:45:00.004563
20282	{11,21,8,17}	{}	2018-09-03 04:15:00.004681
20283	{1,3,8,12}	{}	2018-09-03 04:30:00.004668
20284	{12,10,11,1}	{}	2018-09-03 04:45:00.004763
20285	{20,8,3,17}	{}	2018-09-03 05:00:00.006872
20287	{1,20,7,21}	{}	2018-09-03 05:30:00.004652
20289	{8,1,21,19}	{}	2018-09-03 06:00:00.004505
20291	{12,9,16,1}	{}	2018-09-03 06:30:00.004697
20293	{14,3,7,15}	{}	2018-09-03 07:00:00.006845
20294	{17,16,14,7}	{}	2018-09-03 07:15:00.00477
20296	{15,2,6,8}	{}	2018-09-03 07:45:00.004655
20299	{1,7,21,9}	{}	2018-09-03 08:30:00.004666
20300	{21,9,11,10}	{}	2018-09-03 08:45:00.00474
20301	{19,18,6,3}	{}	2018-09-03 09:00:00.004466
20303	{20,18,1,13}	{}	2018-09-03 09:30:00.004729
20304	{1,13,4,2}	{}	2018-09-03 09:45:00.004667
20305	{8,20,15,19}	{}	2018-09-03 10:00:00.004579
20307	{21,11,13,14}	{}	2018-09-03 10:30:00.004764
20308	{4,10,1,7}	{}	2018-09-03 10:45:00.004675
20309	{3,11,13,1}	{}	2018-09-03 11:00:00.006201
20310	{6,13,15,7}	{}	2018-09-03 11:15:00.004675
20311	{15,8,9,6}	{}	2018-09-03 11:30:00.004623
20313	{13,5,9,3}	{}	2018-09-03 12:00:00.006263
20316	{18,8,13,7}	{}	2018-09-03 12:45:00.00466
20318	{19,10,15,5}	{}	2018-09-03 13:15:00.004699
20319	{2,21,18,11}	{}	2018-09-03 13:30:00.004662
20320	{4,11,14,21}	{}	2018-09-03 13:45:00.004709
20321	{4,21,6,9}	{}	2018-09-03 14:00:00.004498
20322	{17,13,11,20}	{}	2018-09-03 14:15:00.004539
20323	{1,20,13,6}	{}	2018-09-03 14:30:00.004643
20324	{14,13,1,6}	{}	2018-09-03 14:45:00.004652
20325	{18,14,20,1}	{}	2018-09-03 15:00:00.004569
20326	{5,13,10,19}	{}	2018-09-03 15:15:00.004667
20327	{11,17,16,1}	{}	2018-09-03 15:30:00.004589
20328	{5,13,20,14}	{}	2018-09-03 15:45:00.004664
20329	{1,10,18,16}	{}	2018-09-03 16:00:00.004524
20330	{13,5,12,18}	{}	2018-09-03 16:15:00.003914
20331	{19,9,21,15}	{}	2018-09-03 16:30:00.004663
20332	{3,17,21,9}	{}	2018-09-03 16:45:00.00473
20333	{12,17,16,11}	{}	2018-09-03 17:00:00.006249
20334	{5,8,12,3}	{}	2018-09-03 17:15:00.004728
20335	{21,19,5,16}	{}	2018-09-03 17:30:00.004688
20336	{16,20,17,18}	{}	2018-09-03 17:45:00.004635
20337	{20,4,19,3}	{}	2018-09-03 18:00:00.004484
20338	{17,2,20,3}	{}	2018-09-03 18:15:00.004731
20339	{14,4,15,10}	{}	2018-09-03 18:30:00.004802
20340	{20,5,9,11}	{}	2018-09-03 18:45:00.004792
20341	{11,3,17,1}	{}	2018-09-03 19:00:00.006201
20342	{2,6,12,1}	{}	2018-09-03 19:15:00.004702
20343	{3,16,4,14}	{}	2018-09-03 19:30:00.004719
20344	{13,2,8,17}	{}	2018-09-03 19:45:00.004713
20345	{20,4,15,7}	{}	2018-09-03 20:00:00.00617
20346	{13,16,7,8}	{}	2018-09-03 20:15:00.004756
20347	{1,7,20,8}	{}	2018-09-03 20:30:00.004704
20348	{9,20,1,18}	{}	2018-09-03 20:45:00.004659
20349	{21,9,3,16}	{}	2018-09-03 21:00:00.004553
20350	{20,6,19,3}	{}	2018-09-03 21:15:00.00475
20354	{8,4,20,16}	{}	2018-09-03 22:15:00.004711
20362	{13,3,21,8}	{}	2018-09-04 00:15:00.004613
20369	{19,14,5,8}	{}	2018-09-04 02:00:00.004394
20373	{3,5,15,19}	{}	2018-09-04 03:00:00.004559
20377	{14,21,13,9}	{}	2018-09-04 04:00:00.00446
20382	{20,7,11,5}	{}	2018-09-04 05:15:00.004687
20386	{1,19,6,2}	{}	2018-09-04 06:15:00.004659
20394	{13,20,18,7}	{}	2018-09-04 08:15:00.00463
21966	{10,5,14,4}	{}	2018-09-20 17:15:00.004459
22695	{7,21,8,10}	{}	2018-09-28 07:30:00.004781
22701	{7,6,8,9}	{}	2018-09-28 09:00:00.004557
22705	{16,15,13,10}	{}	2018-09-28 10:00:00.004552
22710	{13,21,6,12}	{}	2018-09-28 11:15:00.004527
22718	{18,1,20,2}	{}	2018-09-28 13:15:00.004744
22722	{2,1,16,19}	{}	2018-09-28 14:15:00.00474
22726	{3,10,20,12}	{}	2018-09-28 15:15:00.004733
22730	{17,7,8,16}	{}	2018-09-28 16:15:00.004761
20351	{15,8,1,16}	{}	2018-09-03 21:30:00.004788
20355	{12,7,16,6}	{}	2018-09-03 22:30:00.004729
20357	{10,14,4,1}	{}	2018-09-03 23:00:00.006084
20364	{12,2,8,5}	{}	2018-09-04 00:45:00.004672
20367	{8,15,4,9}	{}	2018-09-04 01:30:00.00475
20371	{8,3,19,9}	{}	2018-09-04 02:30:00.004676
20375	{8,21,5,20}	{}	2018-09-04 03:30:00.004722
20379	{8,4,14,11}	{}	2018-09-04 04:30:00.004718
20381	{21,10,15,5}	{}	2018-09-04 05:00:00.006252
20392	{17,13,3,11}	{}	2018-09-04 07:45:00.004699
20395	{12,21,14,7}	{}	2018-09-04 08:30:00.004642
21967	{3,2,21,10}	{}	2018-09-20 17:30:00.004669
21970	{6,2,10,18}	{}	2018-09-20 18:15:00.004692
22696	{3,5,15,14}	{}	2018-09-28 07:45:00.004745
22699	{14,2,17,3}	{}	2018-09-28 08:30:00.004705
22703	{13,10,2,19}	{}	2018-09-28 09:30:00.004783
22707	{7,16,10,20}	{}	2018-09-28 10:30:00.00476
22709	{6,5,2,17}	{}	2018-09-28 11:00:00.006297
22716	{20,6,8,3}	{}	2018-09-28 12:45:00.004745
22719	{21,5,16,14}	{}	2018-09-28 13:30:00.00477
22723	{12,15,16,7}	{}	2018-09-28 14:30:00.004702
22727	{3,21,1,19}	{}	2018-09-28 15:30:00.004689
22731	{3,13,5,15}	{}	2018-09-28 16:30:00.004743
22733	{6,15,21,18}	{}	2018-09-28 17:00:00.00625
20352	{16,19,8,12}	{}	2018-09-03 21:45:00.004681
20356	{19,9,5,13}	{}	2018-09-03 22:45:00.004725
20359	{10,21,4,19}	{}	2018-09-03 23:30:00.004813
20360	{8,9,21,5}	{}	2018-09-03 23:45:00.004766
20361	{19,8,7,14}	{}	2018-09-04 00:00:00.006035
20368	{14,8,12,16}	{}	2018-09-04 01:45:00.004725
20372	{6,7,2,12}	{}	2018-09-04 02:45:00.004747
20376	{9,17,12,2}	{}	2018-09-04 03:45:00.00394
20380	{7,16,2,9}	{}	2018-09-04 04:45:00.004618
20383	{14,4,11,18}	{}	2018-09-04 05:30:00.00469
20387	{10,14,9,21}	{}	2018-09-04 06:30:00.004655
20389	{3,4,10,9}	{}	2018-09-04 07:00:00.006201
20396	{15,1,10,20}	{}	2018-09-04 08:45:00.004686
21969	{16,10,6,9}	{}	2018-09-20 18:00:00.004483
21972	{1,5,4,21}	{}	2018-09-20 18:45:00.004648
21973	{9,20,14,13}	{}	2018-09-20 19:00:00.006248
22697	{16,11,14,18}	{}	2018-09-28 08:00:00.006262
22712	{18,11,5,13}	{}	2018-09-28 11:45:00.004746
22715	{20,7,14,15}	{}	2018-09-28 12:30:00.00479
22717	{14,12,16,15}	{}	2018-09-28 13:00:00.006263
20353	{2,17,10,21}	{}	2018-09-03 22:00:00.00455
20358	{1,14,10,21}	{}	2018-09-03 23:15:00.004875
20366	{20,10,18,6}	{}	2018-09-04 01:15:00.00473
20370	{13,5,15,17}	{}	2018-09-04 02:15:00.004736
20374	{11,9,13,20}	{}	2018-09-04 03:15:00.004709
20378	{17,7,12,10}	{}	2018-09-04 04:15:00.004645
20385	{10,15,12,8}	{}	2018-09-04 06:00:00.004549
20390	{4,10,19,20}	{}	2018-09-04 07:15:00.004672
20397	{14,20,12,17}	{}	2018-09-04 09:00:00.004559
21975	{4,3,18,2}	{}	2018-09-20 19:30:00.004765
21978	{12,19,16,13}	{}	2018-09-20 20:15:00.004749
21981	{10,18,21,20}	{}	2018-09-20 21:00:00.004464
21984	{18,9,17,14}	{}	2018-09-20 21:45:00.004683
21987	{16,15,7,10}	{}	2018-09-20 22:30:00.004689
21990	{15,9,12,1}	{}	2018-09-20 23:15:00.004827
21996	{1,20,5,11}	{}	2018-09-21 00:45:00.00476
21997	{4,9,14,11}	{}	2018-09-21 01:00:00.006247
22015	{19,2,1,4}	{}	2018-09-21 05:30:00.004695
22018	{21,20,18,14}	{}	2018-09-21 06:15:00.004774
22024	{8,6,12,19}	{}	2018-09-21 07:45:00.004738
22025	{12,11,13,1}	{}	2018-09-21 08:00:00.00615
22039	{5,8,14,2}	{}	2018-09-21 11:30:00.004753
22042	{1,14,21,15}	{}	2018-09-21 12:15:00.004704
22048	{8,13,9,14}	{}	2018-09-21 13:45:00.004662
22051	{8,7,19,6}	{}	2018-09-21 14:30:00.004708
22054	{18,11,15,9}	{}	2018-09-21 15:15:00.004681
22057	{16,19,21,4}	{}	2018-09-21 16:00:00.004561
22060	{9,14,12,13}	{}	2018-09-21 16:45:00.004368
22061	{11,3,15,6}	{}	2018-09-21 17:00:00.006174
22071	{8,21,2,11}	{}	2018-09-21 19:30:00.004689
22074	{1,7,18,2}	{}	2018-09-21 20:15:00.004737
22077	{6,18,13,9}	{}	2018-09-21 21:00:00.004505
22080	{9,10,7,17}	{}	2018-09-21 21:45:00.004693
22083	{4,6,2,11}	{}	2018-09-21 22:30:00.004723
22086	{6,12,1,18}	{}	2018-09-21 23:15:00.004887
22092	{18,3,11,15}	{}	2018-09-22 00:45:00.004661
22093	{21,13,6,11}	{}	2018-09-22 01:00:00.006199
22111	{21,20,8,4}	{}	2018-09-22 05:30:00.004702
22114	{10,2,6,13}	{}	2018-09-22 06:15:00.004686
22120	{8,11,3,18}	{}	2018-09-22 07:45:00.004585
22121	{17,13,16,4}	{}	2018-09-22 08:00:00.006272
22700	{6,1,20,11}	{}	2018-09-28 08:45:00.004804
22704	{10,9,7,15}	{}	2018-09-28 09:45:00.004763
22708	{15,3,4,10}	{}	2018-09-28 10:45:00.004663
22711	{18,1,19,8}	{}	2018-09-28 11:30:00.004699
22713	{18,19,2,1}	{}	2018-09-28 12:00:00.00623
22720	{4,12,9,19}	{}	2018-09-28 13:45:00.004241
22724	{12,16,15,1}	{}	2018-09-28 14:45:00.004745
22728	{11,20,2,21}	{}	2018-09-28 15:45:00.004707
22732	{19,12,21,13}	{}	2018-09-28 16:45:00.004744
22735	{19,20,15,10}	{}	2018-09-28 17:30:00.004727
20363	{3,18,6,21}	{}	2018-09-04 00:30:00.004607
20365	{13,20,6,5}	{}	2018-09-04 01:00:00.006121
20384	{11,15,17,8}	{}	2018-09-04 05:45:00.004718
20388	{9,5,8,17}	{}	2018-09-04 06:45:00.004668
20391	{2,5,4,7}	{}	2018-09-04 07:30:00.004702
20393	{2,8,13,18}	{}	2018-09-04 08:00:00.006255
20398	{13,15,6,21}	{}	2018-09-04 09:15:00.004684
20399	{9,4,6,16}	{}	2018-09-04 09:30:00.004698
20400	{3,19,18,16}	{}	2018-09-04 09:45:00.004687
20401	{14,1,13,6}	{}	2018-09-04 10:00:00.004376
20402	{18,9,1,15}	{}	2018-09-04 10:15:00.004742
20403	{9,16,1,17}	{}	2018-09-04 10:30:00.004769
20404	{13,20,1,4}	{}	2018-09-04 10:45:00.004793
20405	{11,16,18,10}	{}	2018-09-04 11:00:00.00622
20406	{6,7,16,5}	{}	2018-09-04 11:15:00.004616
20407	{1,16,21,11}	{}	2018-09-04 11:30:00.004743
20408	{8,16,10,18}	{}	2018-09-04 11:45:00.004772
20409	{18,6,4,9}	{}	2018-09-04 12:00:00.006017
20410	{6,17,19,14}	{}	2018-09-04 12:15:00.004616
20411	{9,4,17,3}	{}	2018-09-04 12:30:00.004696
20412	{20,1,17,3}	{}	2018-09-04 12:45:00.004745
20413	{14,20,7,6}	{}	2018-09-04 13:00:00.005299
20414	{15,16,4,2}	{}	2018-09-04 13:15:00.004622
20415	{13,12,1,7}	{}	2018-09-04 13:30:00.004585
20416	{14,20,5,1}	{}	2018-09-04 13:45:00.004645
20417	{6,10,20,8}	{}	2018-09-04 14:00:00.004547
20418	{11,20,12,19}	{}	2018-09-04 14:15:00.004713
20419	{21,11,20,14}	{}	2018-09-04 14:30:00.00476
20420	{20,13,9,4}	{}	2018-09-04 14:45:00.004637
20421	{16,8,9,18}	{}	2018-09-04 15:00:00.004516
20422	{18,2,15,10}	{}	2018-09-04 15:15:00.004655
20423	{14,9,11,6}	{}	2018-09-04 15:30:00.00478
20424	{21,19,13,3}	{}	2018-09-04 15:45:00.004656
20425	{1,15,10,6}	{}	2018-09-04 16:00:00.004506
20426	{6,2,16,14}	{}	2018-09-04 16:15:00.004667
20427	{13,5,15,12}	{}	2018-09-04 16:30:00.004659
20428	{1,20,4,6}	{}	2018-09-04 16:45:00.004758
20429	{5,2,13,14}	{}	2018-09-04 17:00:00.006192
20430	{11,19,20,13}	{}	2018-09-04 17:15:00.004641
20431	{7,9,8,11}	{}	2018-09-04 17:30:00.004666
20432	{14,18,1,19}	{}	2018-09-04 17:45:00.004672
20433	{3,9,19,5}	{}	2018-09-04 18:00:00.004522
20434	{2,7,19,5}	{}	2018-09-04 18:15:00.004181
20435	{15,3,17,5}	{}	2018-09-04 18:30:00.004675
20436	{11,21,9,19}	{}	2018-09-04 18:45:00.004628
20437	{12,1,4,15}	{}	2018-09-04 19:00:00.006188
20438	{7,11,12,21}	{}	2018-09-04 19:15:00.004717
20439	{21,17,15,3}	{}	2018-09-04 19:30:00.004629
20440	{20,6,5,8}	{}	2018-09-04 19:45:00.004682
20441	{8,13,4,9}	{}	2018-09-04 20:00:00.006231
20442	{7,19,11,5}	{}	2018-09-04 20:15:00.004651
20443	{7,14,21,15}	{}	2018-09-04 20:30:00.004763
20444	{7,19,8,12}	{}	2018-09-04 20:45:00.00456
20445	{18,17,6,19}	{}	2018-09-04 21:00:00.004484
20446	{7,8,15,9}	{}	2018-09-04 21:15:00.004657
20447	{21,6,16,8}	{}	2018-09-04 21:30:00.004695
20448	{10,3,9,20}	{}	2018-09-04 21:45:00.004693
20449	{2,21,9,11}	{}	2018-09-04 22:00:00.004419
20450	{9,8,16,18}	{}	2018-09-04 22:15:00.004677
20451	{14,18,9,12}	{}	2018-09-04 22:30:00.004687
20452	{7,15,5,13}	{}	2018-09-04 22:45:00.004667
20453	{19,13,12,11}	{}	2018-09-04 23:00:00.006151
20454	{5,12,2,10}	{}	2018-09-04 23:15:00.004828
20455	{14,15,1,6}	{}	2018-09-04 23:30:00.004775
20456	{1,14,3,20}	{}	2018-09-04 23:45:00.004799
20457	{7,21,19,4}	{}	2018-09-05 00:00:00.006048
20458	{8,4,7,20}	{}	2018-09-05 00:15:00.004725
20459	{6,15,2,17}	{}	2018-09-05 00:30:00.004646
20460	{15,1,13,7}	{}	2018-09-05 00:45:00.004728
20461	{10,19,21,6}	{}	2018-09-05 01:00:00.006105
20462	{11,9,20,16}	{}	2018-09-05 01:15:00.004733
20463	{9,11,15,2}	{}	2018-09-05 01:30:00.004684
20464	{17,18,16,12}	{}	2018-09-05 01:45:00.004687
20465	{14,19,16,18}	{}	2018-09-05 02:00:00.004528
20466	{13,9,15,1}	{}	2018-09-05 02:15:00.004727
20467	{1,5,9,12}	{}	2018-09-05 02:30:00.004631
20468	{19,17,13,10}	{}	2018-09-05 02:45:00.004667
20469	{20,2,5,1}	{}	2018-09-05 03:00:00.004534
20473	{17,5,8,6}	{}	2018-09-05 04:00:00.004482
21976	{5,1,8,2}	{}	2018-09-20 19:45:00.004651
21979	{17,20,15,16}	{}	2018-09-20 20:30:00.004725
21982	{12,19,5,9}	{}	2018-09-20 21:15:00.004686
21985	{8,11,12,6}	{}	2018-09-20 22:00:00.004479
21988	{20,4,12,11}	{}	2018-09-20 22:45:00.004708
21989	{14,17,11,19}	{}	2018-09-20 23:00:00.005262
21995	{3,2,17,15}	{}	2018-09-21 00:30:00.004728
21998	{5,1,6,12}	{}	2018-09-21 01:15:00.004638
22001	{19,1,5,10}	{}	2018-09-21 02:00:00.004566
22004	{16,11,20,3}	{}	2018-09-21 02:45:00.004692
22007	{9,4,10,14}	{}	2018-09-21 03:30:00.004727
22010	{17,1,5,2}	{}	2018-09-21 04:15:00.004772
22016	{2,8,9,4}	{}	2018-09-21 05:45:00.004697
22019	{3,19,14,1}	{}	2018-09-21 06:30:00.004644
22022	{10,21,16,15}	{}	2018-09-21 07:15:00.004404
22028	{2,6,1,14}	{}	2018-09-21 08:45:00.004754
22031	{1,16,9,11}	{}	2018-09-21 09:30:00.004588
22034	{12,6,8,15}	{}	2018-09-21 10:15:00.004732
22040	{2,6,3,11}	{}	2018-09-21 11:45:00.004719
22041	{3,13,21,14}	{}	2018-09-21 12:00:00.006273
22047	{1,6,15,21}	{}	2018-09-21 13:30:00.004628
22050	{20,11,16,5}	{}	2018-09-21 14:15:00.00468
22053	{15,14,10,13}	{}	2018-09-21 15:00:00.004494
22056	{17,20,9,3}	{}	2018-09-21 15:45:00.004612
22059	{5,11,4,15}	{}	2018-09-21 16:30:00.004754
22062	{2,9,14,21}	{}	2018-09-21 17:15:00.004747
22065	{17,18,4,10}	{}	2018-09-21 18:00:00.004501
22068	{13,18,12,6}	{}	2018-09-21 18:45:00.004753
22069	{3,8,7,11}	{}	2018-09-21 19:00:00.006013
22075	{19,8,7,16}	{}	2018-09-21 20:30:00.004735
22078	{11,17,12,15}	{}	2018-09-21 21:15:00.004817
22081	{20,19,14,6}	{}	2018-09-21 22:00:00.00451
22084	{13,9,18,11}	{}	2018-09-21 22:45:00.004741
22085	{16,19,6,12}	{}	2018-09-21 23:00:00.005265
22091	{7,13,19,16}	{}	2018-09-22 00:30:00.004699
22094	{7,5,6,2}	{}	2018-09-22 01:15:00.004629
22097	{10,14,15,11}	{}	2018-09-22 02:00:00.004508
22100	{17,18,13,20}	{}	2018-09-22 02:45:00.004725
22103	{4,11,20,5}	{}	2018-09-22 03:30:00.004768
22106	{5,6,10,18}	{}	2018-09-22 04:15:00.0047
22112	{21,5,10,15}	{}	2018-09-22 05:45:00.004762
22115	{14,1,7,9}	{}	2018-09-22 06:30:00.004723
22118	{10,9,6,12}	{}	2018-09-22 07:15:00.003977
22124	{4,14,19,11}	{}	2018-09-22 08:45:00.004666
22127	{19,5,20,11}	{}	2018-09-22 09:30:00.004654
22130	{18,11,6,17}	{}	2018-09-22 10:15:00.004727
22736	{18,7,6,9}	{}	2018-09-28 17:45:00.006183
22737	{16,9,6,21}	{}	2018-09-28 18:00:00.005263
22738	{19,3,17,6}	{}	2018-09-28 18:15:00.005413
22739	{7,19,21,8}	{}	2018-09-28 18:30:00.00555
22740	{12,8,4,7}	{}	2018-09-28 18:45:00.004637
22741	{19,5,2,9}	{}	2018-09-28 19:00:00.006254
22744	{2,1,6,20}	{}	2018-09-28 19:45:00.004645
22747	{10,15,12,1}	{}	2018-09-28 20:30:00.004606
22750	{4,11,12,19}	{}	2018-09-28 21:15:00.004574
22753	{5,6,12,16}	{}	2018-09-28 22:00:00.004492
22756	{16,11,12,17}	{}	2018-09-28 22:45:00.004563
22757	{11,3,19,13}	{}	2018-09-28 23:00:00.00622
22763	{20,4,10,9}	{}	2018-09-29 00:30:00.004644
22766	{15,4,5,8}	{}	2018-09-29 01:15:00.004635
22769	{11,8,19,5}	{}	2018-09-29 02:00:00.004484
22772	{7,9,8,10}	{}	2018-09-29 02:45:00.004645
22775	{3,17,16,20}	{}	2018-09-29 03:30:00.004705
22778	{18,3,4,15}	{}	2018-09-29 04:15:00.004636
22784	{15,14,13,6}	{}	2018-09-29 05:45:00.004637
22787	{16,6,4,15}	{}	2018-09-29 06:30:00.004652
22790	{2,17,9,1}	{}	2018-09-29 07:15:00.004556
22796	{10,21,18,1}	{}	2018-09-29 08:45:00.004617
22799	{2,19,4,6}	{}	2018-09-29 09:30:00.004656
22802	{19,15,9,13}	{}	2018-09-29 10:15:00.004645
22808	{4,21,8,14}	{}	2018-09-29 11:45:00.004419
22809	{5,12,1,4}	{}	2018-09-29 12:00:00.006149
22815	{11,8,5,17}	{}	2018-09-29 13:30:00.004556
22818	{5,7,18,19}	{}	2018-09-29 14:15:00.004623
22821	{14,18,13,10}	{}	2018-09-29 15:00:00.004488
20470	{4,6,19,16}	{}	2018-09-05 03:15:00.00472
20474	{4,12,16,6}	{}	2018-09-05 04:15:00.004665
21977	{3,5,17,6}	{}	2018-09-20 20:00:00.006068
21991	{7,14,9,18}	{}	2018-09-20 23:30:00.004854
21994	{2,10,18,6}	{}	2018-09-21 00:15:00.004727
22000	{1,12,11,8}	{}	2018-09-21 01:45:00.004699
22003	{16,7,8,18}	{}	2018-09-21 02:30:00.004721
22006	{6,19,4,12}	{}	2018-09-21 03:15:00.004622
22009	{14,12,13,5}	{}	2018-09-21 04:00:00.004607
22012	{4,9,2,14}	{}	2018-09-21 04:45:00.004623
22013	{21,3,2,12}	{}	2018-09-21 05:00:00.006101
22023	{3,10,1,4}	{}	2018-09-21 07:30:00.004724
22026	{20,7,18,5}	{}	2018-09-21 08:15:00.004634
22029	{2,16,8,6}	{}	2018-09-21 09:00:00.004505
22032	{11,8,1,2}	{}	2018-09-21 09:45:00.004677
22035	{13,7,6,19}	{}	2018-09-21 10:30:00.00469
22038	{16,17,13,1}	{}	2018-09-21 11:15:00.004726
22044	{4,6,19,18}	{}	2018-09-21 12:45:00.00484
22045	{3,9,4,13}	{}	2018-09-21 13:00:00.006154
22063	{4,15,2,16}	{}	2018-09-21 17:30:00.004737
22066	{9,15,4,10}	{}	2018-09-21 18:15:00.004688
22072	{7,6,5,12}	{}	2018-09-21 19:45:00.004687
22073	{1,20,18,19}	{}	2018-09-21 20:00:00.006239
22087	{18,21,5,20}	{}	2018-09-21 23:30:00.004833
22090	{19,21,4,1}	{}	2018-09-22 00:15:00.004661
22096	{9,8,3,12}	{}	2018-09-22 01:45:00.004703
22099	{12,6,21,18}	{}	2018-09-22 02:30:00.004776
22102	{20,2,21,10}	{}	2018-09-22 03:15:00.00469
22105	{19,12,8,2}	{}	2018-09-22 04:00:00.00451
22108	{16,12,20,1}	{}	2018-09-22 04:45:00.004802
22109	{14,10,1,18}	{}	2018-09-22 05:00:00.006269
22119	{2,1,5,17}	{}	2018-09-22 07:30:00.004612
22122	{16,17,13,1}	{}	2018-09-22 08:15:00.004698
22125	{13,11,14,7}	{}	2018-09-22 09:00:00.004563
22128	{20,7,2,12}	{}	2018-09-22 09:45:00.004666
22131	{17,13,19,8}	{}	2018-09-22 10:30:00.004743
22742	{5,4,11,1}	{}	2018-09-28 19:15:00.004621
22748	{6,15,1,18}	{}	2018-09-28 20:45:00.004617
22751	{15,3,9,14}	{}	2018-09-28 21:30:00.004586
22754	{13,19,4,16}	{}	2018-09-28 22:15:00.004655
22760	{13,21,16,3}	{}	2018-09-28 23:45:00.004814
22761	{2,17,20,9}	{}	2018-09-29 00:00:00.006194
22767	{3,5,7,10}	{}	2018-09-29 01:30:00.00468
22770	{9,10,1,2}	{}	2018-09-29 02:15:00.004726
22773	{12,13,4,14}	{}	2018-09-29 03:00:00.004514
22776	{2,4,3,9}	{}	2018-09-29 03:45:00.004646
22779	{1,10,20,6}	{}	2018-09-29 04:30:00.004685
22782	{21,11,17,12}	{}	2018-09-29 05:15:00.00461
22785	{11,9,15,12}	{}	2018-09-29 06:00:00.004471
22788	{8,10,18,12}	{}	2018-09-29 06:45:00.00462
22789	{11,18,7,13}	{}	2018-09-29 07:00:00.006094
22795	{2,5,13,11}	{}	2018-09-29 08:30:00.004564
22798	{17,8,16,1}	{}	2018-09-29 09:15:00.004656
22801	{1,3,20,11}	{}	2018-09-29 10:00:00.004426
22804	{4,11,20,2}	{}	2018-09-29 10:45:00.00455
22805	{20,9,18,21}	{}	2018-09-29 11:00:00.006155
22811	{13,16,10,3}	{}	2018-09-29 12:30:00.004634
22814	{8,5,21,13}	{}	2018-09-29 13:15:00.004644
22817	{8,5,15,4}	{}	2018-09-29 14:00:00.004481
22820	{3,1,15,5}	{}	2018-09-29 14:45:00.004679
22823	{13,17,9,7}	{}	2018-09-29 15:30:00.004663
22826	{2,8,3,11}	{}	2018-09-29 16:15:00.004675
22832	{2,4,5,6}	{}	2018-09-29 17:45:00.00463
22835	{11,17,9,15}	{}	2018-09-29 18:30:00.004621
22838	{6,13,14,1}	{}	2018-09-29 19:15:00.004631
22844	{13,14,20,7}	{}	2018-09-29 20:45:00.004258
22847	{15,3,4,14}	{}	2018-09-29 21:30:00.004654
22850	{18,7,1,2}	{}	2018-09-29 22:15:00.004633
22856	{15,6,2,11}	{}	2018-09-29 23:45:00.004748
22857	{9,4,14,18}	{}	2018-09-30 00:00:00.006124
22860	{21,16,8,5}	{}	2018-09-30 00:45:00.0047
22863	{6,21,18,19}	{}	2018-09-30 01:30:00.004672
22866	{12,10,19,1}	{}	2018-09-30 02:15:00.00468
22869	{5,12,4,16}	{}	2018-09-30 03:00:00.004516
22872	{20,1,10,13}	{}	2018-09-30 03:45:00.004629
22875	{7,18,17,20}	{}	2018-09-30 04:30:00.00467
22878	{9,1,5,7}	{}	2018-09-30 05:15:00.004169
20471	{10,18,12,7}	{}	2018-09-05 03:30:00.00464
20475	{2,8,17,12}	{}	2018-09-05 04:30:00.004668
20477	{17,16,5,3}	{}	2018-09-05 05:00:00.007164
21980	{1,12,17,21}	{}	2018-09-20 20:45:00.004572
21983	{8,21,12,5}	{}	2018-09-20 21:30:00.004683
21986	{18,2,10,3}	{}	2018-09-20 22:15:00.004719
21992	{1,20,4,15}	{}	2018-09-20 23:45:00.004833
21993	{13,21,10,17}	{}	2018-09-21 00:00:00.006209
21999	{21,16,8,10}	{}	2018-09-21 01:30:00.004749
22002	{9,7,4,13}	{}	2018-09-21 02:15:00.004705
22005	{18,7,17,1}	{}	2018-09-21 03:00:00.004578
22008	{3,20,16,19}	{}	2018-09-21 03:45:00.004719
22011	{16,9,1,7}	{}	2018-09-21 04:30:00.004764
22014	{2,1,21,17}	{}	2018-09-21 05:15:00.004739
22017	{17,5,6,13}	{}	2018-09-21 06:00:00.004559
22020	{6,15,21,17}	{}	2018-09-21 06:45:00.004783
22021	{17,15,16,10}	{}	2018-09-21 07:00:00.006183
22027	{14,8,19,3}	{}	2018-09-21 08:30:00.004742
22030	{20,18,1,6}	{}	2018-09-21 09:15:00.004712
22033	{18,6,19,2}	{}	2018-09-21 10:00:00.004567
22036	{10,1,17,18}	{}	2018-09-21 10:45:00.00464
22037	{14,21,9,12}	{}	2018-09-21 11:00:00.006255
22043	{1,16,17,9}	{}	2018-09-21 12:30:00.004782
22046	{5,15,17,10}	{}	2018-09-21 13:15:00.004731
22049	{3,20,18,2}	{}	2018-09-21 14:00:00.004499
22052	{9,12,16,10}	{}	2018-09-21 14:45:00.004697
22055	{9,20,1,16}	{}	2018-09-21 15:30:00.00466
22058	{8,2,20,13}	{}	2018-09-21 16:15:00.004767
22064	{2,5,1,18}	{}	2018-09-21 17:45:00.004748
22067	{19,14,13,1}	{}	2018-09-21 18:30:00.004768
22070	{13,11,8,17}	{}	2018-09-21 19:15:00.004679
22076	{19,18,4,8}	{}	2018-09-21 20:45:00.004705
22079	{8,20,5,21}	{}	2018-09-21 21:30:00.004562
22082	{19,6,1,14}	{}	2018-09-21 22:15:00.004662
22088	{20,17,18,3}	{}	2018-09-21 23:45:00.004849
22089	{20,12,10,8}	{}	2018-09-22 00:00:00.006061
22095	{16,12,17,13}	{}	2018-09-22 01:30:00.004738
22098	{8,1,13,21}	{}	2018-09-22 02:15:00.004714
22101	{9,20,5,15}	{}	2018-09-22 03:00:00.00452
22104	{15,7,1,6}	{}	2018-09-22 03:45:00.004728
22107	{12,4,16,18}	{}	2018-09-22 04:30:00.004755
22110	{3,5,7,11}	{}	2018-09-22 05:15:00.004546
22113	{4,5,15,7}	{}	2018-09-22 06:00:00.004559
22116	{19,9,21,17}	{}	2018-09-22 06:45:00.004725
22117	{21,4,8,5}	{}	2018-09-22 07:00:00.006243
22123	{15,16,4,13}	{}	2018-09-22 08:30:00.004735
22126	{1,2,6,11}	{}	2018-09-22 09:15:00.004657
22129	{4,10,14,16}	{}	2018-09-22 10:00:00.004586
22132	{7,2,8,4}	{}	2018-09-22 10:45:00.004711
22133	{4,8,13,3}	{}	2018-09-22 11:00:00.006273
22743	{13,1,5,21}	{}	2018-09-28 19:30:00.00467
22746	{7,17,14,12}	{}	2018-09-28 20:15:00.004588
22749	{4,6,10,5}	{}	2018-09-28 21:00:00.004497
22752	{21,6,13,8}	{}	2018-09-28 21:45:00.004608
22755	{14,5,12,11}	{}	2018-09-28 22:30:00.004532
22758	{2,18,21,7}	{}	2018-09-28 23:15:00.004711
22764	{7,1,15,20}	{}	2018-09-29 00:45:00.004684
22765	{11,8,16,2}	{}	2018-09-29 01:00:00.00605
22783	{20,12,15,7}	{}	2018-09-29 05:30:00.004655
22786	{18,6,5,15}	{}	2018-09-29 06:15:00.004704
22792	{3,14,21,13}	{}	2018-09-29 07:45:00.004744
22793	{5,15,18,7}	{}	2018-09-29 08:00:00.007374
22807	{13,15,6,20}	{}	2018-09-29 11:30:00.004619
22810	{20,21,16,14}	{}	2018-09-29 12:15:00.004665
22816	{3,17,12,9}	{}	2018-09-29 13:45:00.00465
22819	{20,12,4,5}	{}	2018-09-29 14:30:00.004547
22822	{3,18,21,13}	{}	2018-09-29 15:15:00.004596
22825	{3,7,21,10}	{}	2018-09-29 16:00:00.004438
22828	{5,17,20,3}	{}	2018-09-29 16:45:00.004653
22829	{8,2,7,17}	{}	2018-09-29 17:00:00.006139
22830	{20,16,17,7}	{}	2018-09-29 17:15:00.004527
22839	{2,18,11,21}	{}	2018-09-29 19:30:00.00463
22842	{8,12,4,2}	{}	2018-09-29 20:15:00.00461
22845	{18,13,20,3}	{}	2018-09-29 21:00:00.004243
22848	{15,6,9,11}	{}	2018-09-29 21:45:00.004585
22851	{18,16,5,4}	{}	2018-09-29 22:30:00.004579
22854	{5,11,20,19}	{}	2018-09-29 23:15:00.004795
20472	{5,20,12,3}	{}	2018-09-05 03:45:00.00469
20476	{12,1,2,6}	{}	2018-09-05 04:45:00.004659
20478	{7,16,12,15}	{}	2018-09-05 05:15:00.004589
20479	{10,21,9,16}	{}	2018-09-05 05:30:00.004656
20480	{10,4,19,14}	{}	2018-09-05 05:45:00.004664
20481	{5,11,15,6}	{}	2018-09-05 06:00:00.004474
20482	{1,11,20,12}	{}	2018-09-05 06:15:00.004696
20483	{16,21,5,20}	{}	2018-09-05 06:30:00.004769
20484	{10,17,5,6}	{}	2018-09-05 06:45:00.004727
20485	{21,2,4,5}	{}	2018-09-05 07:00:00.006825
20486	{6,10,17,1}	{}	2018-09-05 07:15:00.00467
20487	{11,17,19,8}	{}	2018-09-05 07:30:00.004752
20488	{5,10,9,3}	{}	2018-09-05 07:45:00.004744
20489	{19,10,14,16}	{}	2018-09-05 08:00:00.006191
20490	{15,5,8,18}	{}	2018-09-05 08:15:00.004553
20491	{2,1,9,17}	{}	2018-09-05 08:30:00.004743
20492	{9,3,1,14}	{}	2018-09-05 08:45:00.004676
20493	{17,13,1,8}	{}	2018-09-05 09:00:00.004542
20494	{21,6,4,15}	{}	2018-09-05 09:15:00.004742
20495	{1,3,6,14}	{}	2018-09-05 09:30:00.004531
20496	{13,2,9,7}	{}	2018-09-05 09:45:00.004682
20497	{20,19,17,6}	{}	2018-09-05 10:00:00.004472
20498	{7,14,8,3}	{}	2018-09-05 10:15:00.004704
20499	{8,9,3,6}	{}	2018-09-05 10:30:00.004694
20500	{12,19,15,8}	{}	2018-09-05 10:45:00.004658
20501	{3,4,2,18}	{}	2018-09-05 11:00:00.006239
20502	{5,3,16,1}	{}	2018-09-05 11:15:00.004733
20503	{19,17,2,8}	{}	2018-09-05 11:30:00.004736
20504	{18,3,15,17}	{}	2018-09-05 11:45:00.004697
20505	{15,1,11,13}	{}	2018-09-05 12:00:00.006107
20506	{15,20,6,21}	{}	2018-09-05 12:15:00.004681
20507	{3,21,11,15}	{}	2018-09-05 12:30:00.004663
20508	{13,20,2,21}	{}	2018-09-05 12:45:00.004674
20509	{1,13,18,16}	{}	2018-09-05 13:00:00.006202
20510	{20,1,18,16}	{}	2018-09-05 13:15:00.004724
20511	{14,17,20,10}	{}	2018-09-05 13:30:00.004667
20512	{5,18,14,20}	{}	2018-09-05 13:45:00.004577
20513	{14,11,6,9}	{}	2018-09-05 14:00:00.004548
20514	{20,17,3,6}	{}	2018-09-05 14:15:00.004689
20515	{20,9,2,1}	{}	2018-09-05 14:30:00.004666
20516	{18,21,19,14}	{}	2018-09-05 14:45:00.004714
20517	{4,21,10,12}	{}	2018-09-05 15:00:00.004455
20518	{4,16,9,20}	{}	2018-09-05 15:15:00.00466
20519	{1,21,7,5}	{}	2018-09-05 15:30:00.004702
20520	{18,19,3,20}	{}	2018-09-05 15:45:00.004675
20521	{18,14,9,15}	{}	2018-09-05 16:00:00.004502
20522	{6,13,14,15}	{}	2018-09-05 16:15:00.00466
20523	{11,13,16,1}	{}	2018-09-05 16:30:00.004688
20524	{10,14,5,12}	{}	2018-09-05 16:45:00.004655
20525	{7,20,1,9}	{}	2018-09-05 17:00:00.006181
20526	{2,16,7,5}	{}	2018-09-05 17:15:00.004523
20527	{12,16,9,2}	{}	2018-09-05 17:30:00.004704
20528	{1,3,18,20}	{}	2018-09-05 17:45:00.004658
20529	{1,11,21,13}	{}	2018-09-05 18:00:00.004514
20530	{13,21,15,14}	{}	2018-09-05 18:15:00.004637
20531	{12,15,1,10}	{}	2018-09-05 18:30:00.004698
20532	{21,7,11,9}	{}	2018-09-05 18:45:00.004645
20533	{1,7,11,17}	{}	2018-09-05 19:00:00.006116
20534	{21,13,12,8}	{}	2018-09-05 19:15:00.004733
20535	{19,20,12,8}	{}	2018-09-05 19:30:00.004738
20536	{2,3,14,1}	{}	2018-09-05 19:45:00.004768
20537	{12,16,14,10}	{}	2018-09-05 20:00:00.006178
20538	{4,20,7,17}	{}	2018-09-05 20:15:00.004696
20539	{3,20,16,7}	{}	2018-09-05 20:30:00.004714
20540	{2,14,21,1}	{}	2018-09-05 20:45:00.00469
20541	{18,2,15,10}	{}	2018-09-05 21:00:00.004573
20542	{20,8,17,21}	{}	2018-09-05 21:15:00.004617
20543	{2,9,13,19}	{}	2018-09-05 21:30:00.004712
20544	{3,18,11,10}	{}	2018-09-05 21:45:00.004685
20545	{9,12,18,21}	{}	2018-09-05 22:00:00.004516
20546	{17,6,21,3}	{}	2018-09-05 22:15:00.004731
20547	{2,8,3,17}	{}	2018-09-05 22:30:00.004762
20548	{7,2,14,4}	{}	2018-09-05 22:45:00.004609
20549	{14,17,10,18}	{}	2018-09-05 23:00:00.006237
20550	{16,21,20,17}	{}	2018-09-05 23:15:00.004826
20551	{9,16,20,7}	{}	2018-09-05 23:30:00.004888
20552	{9,8,13,18}	{}	2018-09-05 23:45:00.00485
20553	{18,14,20,13}	{}	2018-09-06 00:00:00.006066
20560	{10,4,18,16}	{}	2018-09-06 01:45:00.004691
22134	{10,21,9,6}	{}	2018-09-22 11:15:00.004591
22139	{3,11,13,16}	{}	2018-09-22 12:30:00.004782
22142	{15,21,18,19}	{}	2018-09-22 13:15:00.004706
22145	{12,11,21,3}	{}	2018-09-22 14:00:00.004497
22148	{20,2,13,11}	{}	2018-09-22 14:45:00.004744
22151	{4,20,14,15}	{}	2018-09-22 15:30:00.004042
22154	{13,4,21,11}	{}	2018-09-22 16:15:00.004735
22160	{12,4,16,15}	{}	2018-09-22 17:45:00.004699
22163	{9,2,11,7}	{}	2018-09-22 18:30:00.004761
22166	{6,14,11,18}	{}	2018-09-22 19:15:00.004739
22172	{3,18,5,1}	{}	2018-09-22 20:45:00.004741
22175	{6,4,2,12}	{}	2018-09-22 21:30:00.0047
22178	{15,18,3,19}	{}	2018-09-22 22:15:00.004714
22184	{1,13,12,14}	{}	2018-09-22 23:45:00.004857
22185	{21,3,17,19}	{}	2018-09-23 00:00:00.006137
22191	{19,3,8,13}	{}	2018-09-23 01:30:00.004693
22194	{8,3,16,10}	{}	2018-09-23 02:15:00.004743
22197	{13,17,2,10}	{}	2018-09-23 03:00:00.004478
22200	{19,8,11,20}	{}	2018-09-23 03:45:00.004696
22203	{16,13,12,11}	{}	2018-09-23 04:30:00.004603
22206	{6,20,9,14}	{}	2018-09-23 05:15:00.004676
22209	{4,16,11,20}	{}	2018-09-23 06:00:00.004476
22212	{8,21,14,1}	{}	2018-09-23 06:45:00.004752
22213	{17,1,8,14}	{}	2018-09-23 07:00:00.006093
22219	{6,16,12,19}	{}	2018-09-23 08:30:00.004756
22222	{8,10,7,18}	{}	2018-09-23 09:15:00.004689
22225	{3,1,10,16}	{}	2018-09-23 10:00:00.004524
22228	{19,14,2,20}	{}	2018-09-23 10:45:00.004777
22229	{5,11,14,17}	{}	2018-09-23 11:00:00.006299
22235	{6,17,1,11}	{}	2018-09-23 12:30:00.004726
22238	{18,4,13,21}	{}	2018-09-23 13:15:00.003972
22241	{20,3,11,5}	{}	2018-09-23 14:00:00.004556
22244	{15,8,9,17}	{}	2018-09-23 14:45:00.004666
22247	{9,7,1,10}	{}	2018-09-23 15:30:00.004701
22250	{18,10,6,17}	{}	2018-09-23 16:15:00.004713
22256	{11,5,12,8}	{}	2018-09-23 17:45:00.004717
22259	{16,6,17,3}	{}	2018-09-23 18:30:00.004681
22262	{15,13,17,11}	{}	2018-09-23 19:15:00.004697
22745	{12,15,5,3}	{}	2018-09-28 20:00:00.006328
22759	{20,14,17,11}	{}	2018-09-28 23:30:00.004753
22762	{12,18,3,2}	{}	2018-09-29 00:15:00.004542
22768	{5,11,14,15}	{}	2018-09-29 01:45:00.004657
22771	{5,3,21,19}	{}	2018-09-29 02:30:00.004618
22774	{11,2,19,7}	{}	2018-09-29 03:15:00.004667
22777	{20,12,17,1}	{}	2018-09-29 04:00:00.004345
22780	{17,8,18,19}	{}	2018-09-29 04:45:00.004634
22781	{11,9,16,10}	{}	2018-09-29 05:00:00.006212
22791	{20,10,12,13}	{}	2018-09-29 07:30:00.004649
22794	{10,14,5,9}	{}	2018-09-29 08:15:00.004653
22797	{21,5,11,19}	{}	2018-09-29 09:00:00.004449
22800	{5,1,10,17}	{}	2018-09-29 09:45:00.004586
22803	{16,20,10,3}	{}	2018-09-29 10:30:00.004356
22806	{4,9,12,16}	{}	2018-09-29 11:15:00.00462
22812	{15,6,14,9}	{}	2018-09-29 12:45:00.00464
22813	{18,8,9,13}	{}	2018-09-29 13:00:00.006106
22824	{1,16,9,13}	{}	2018-09-29 15:45:00.004691
22827	{13,20,16,12}	{}	2018-09-29 16:30:00.004624
22831	{18,7,4,16}	{}	2018-09-29 17:30:00.004657
22834	{3,14,1,8}	{}	2018-09-29 18:15:00.004672
22840	{17,21,5,1}	{}	2018-09-29 19:45:00.00471
22841	{11,17,12,18}	{}	2018-09-29 20:00:00.006104
22855	{11,9,2,8}	{}	2018-09-29 23:30:00.004766
22858	{15,14,1,2}	{}	2018-09-30 00:15:00.004721
22864	{1,6,3,12}	{}	2018-09-30 01:45:00.004663
22867	{12,10,2,15}	{}	2018-09-30 02:30:00.004647
22870	{1,12,10,19}	{}	2018-09-30 03:15:00.004698
22873	{20,21,10,2}	{}	2018-09-30 04:00:00.004467
22876	{19,6,11,20}	{}	2018-09-30 04:45:00.004606
22877	{18,4,19,7}	{}	2018-09-30 05:00:00.006251
22881	{16,1,19,18}	{}	2018-09-30 06:00:00.004499
22887	{15,11,4,18}	{}	2018-09-30 07:30:00.004762
20554	{16,1,5,7}	{}	2018-09-06 00:15:00.004738
20561	{11,1,12,14}	{}	2018-09-06 02:00:00.003969
22135	{10,7,15,8}	{}	2018-09-22 11:30:00.00471
22138	{9,4,20,13}	{}	2018-09-22 12:15:00.004694
22144	{1,6,3,13}	{}	2018-09-22 13:45:00.004763
22147	{12,21,7,4}	{}	2018-09-22 14:30:00.00465
22150	{6,12,18,21}	{}	2018-09-22 15:15:00.004711
22153	{5,3,18,11}	{}	2018-09-22 16:00:00.004535
22156	{15,7,19,3}	{}	2018-09-22 16:45:00.004757
22157	{6,5,10,19}	{}	2018-09-22 17:00:00.006204
22167	{4,17,14,19}	{}	2018-09-22 19:30:00.004741
22170	{9,4,14,17}	{}	2018-09-22 20:15:00.004675
22173	{15,14,8,2}	{}	2018-09-22 21:00:00.004559
22176	{6,11,18,17}	{}	2018-09-22 21:45:00.004725
22179	{8,13,14,18}	{}	2018-09-22 22:30:00.004766
22182	{14,12,13,11}	{}	2018-09-22 23:15:00.004811
22188	{10,2,17,6}	{}	2018-09-23 00:45:00.004725
22189	{9,5,3,10}	{}	2018-09-23 01:00:00.006216
22207	{20,12,19,10}	{}	2018-09-23 05:30:00.004695
22210	{9,15,12,7}	{}	2018-09-23 06:15:00.004688
22216	{14,12,17,10}	{}	2018-09-23 07:45:00.004754
22217	{18,1,2,21}	{}	2018-09-23 08:00:00.00863
22231	{14,15,9,2}	{}	2018-09-23 11:30:00.004734
22234	{16,17,20,13}	{}	2018-09-23 12:15:00.00481
22240	{21,18,16,15}	{}	2018-09-23 13:45:00.004717
22243	{4,20,1,14}	{}	2018-09-23 14:30:00.004706
22246	{19,15,2,17}	{}	2018-09-23 15:15:00.00396
22249	{18,5,11,7}	{}	2018-09-23 16:00:00.004644
22252	{20,3,19,4}	{}	2018-09-23 16:45:00.004725
22253	{4,12,14,20}	{}	2018-09-23 17:00:00.006255
22263	{1,9,3,4}	{}	2018-09-23 19:30:00.0047
22833	{13,9,21,17}	{}	2018-09-29 18:00:00.004487
22836	{7,14,2,10}	{}	2018-09-29 18:45:00.004615
22837	{12,5,21,6}	{}	2018-09-29 19:00:00.006086
22843	{16,11,13,8}	{}	2018-09-29 20:30:00.004615
22846	{11,5,19,18}	{}	2018-09-29 21:15:00.004623
22849	{4,19,9,11}	{}	2018-09-29 22:00:00.004482
22852	{2,6,7,14}	{}	2018-09-29 22:45:00.004548
22853	{8,16,21,15}	{}	2018-09-29 23:00:00.006023
22859	{19,11,1,5}	{}	2018-09-30 00:30:00.004654
22862	{17,14,13,21}	{}	2018-09-30 01:15:00.004696
22865	{16,21,7,11}	{}	2018-09-30 02:00:00.004437
22868	{9,16,4,11}	{}	2018-09-30 02:45:00.00453
22871	{13,19,20,9}	{}	2018-09-30 03:30:00.004731
22874	{2,12,16,14}	{}	2018-09-30 04:15:00.004691
22880	{20,18,8,2}	{}	2018-09-30 05:45:00.004688
22883	{10,11,9,16}	{}	2018-09-30 06:30:00.004643
20555	{12,9,17,19}	{}	2018-09-06 00:30:00.004735
20557	{5,10,7,6}	{}	2018-09-06 01:00:00.006234
22136	{8,4,2,10}	{}	2018-09-22 11:45:00.004712
22137	{13,19,1,16}	{}	2018-09-22 12:00:00.006246
22143	{1,6,3,11}	{}	2018-09-22 13:30:00.00471
22146	{3,13,11,21}	{}	2018-09-22 14:15:00.004629
22149	{12,1,7,3}	{}	2018-09-22 15:00:00.004495
22152	{21,5,17,4}	{}	2018-09-22 15:45:00.004685
22155	{9,5,20,13}	{}	2018-09-22 16:30:00.004661
22158	{1,6,11,3}	{}	2018-09-22 17:15:00.004731
22161	{11,10,1,4}	{}	2018-09-22 18:00:00.004594
22164	{21,15,18,7}	{}	2018-09-22 18:45:00.004709
22165	{20,7,2,12}	{}	2018-09-22 19:00:00.006267
22171	{20,6,19,4}	{}	2018-09-22 20:30:00.004759
22174	{10,13,16,8}	{}	2018-09-22 21:15:00.004745
22177	{4,2,5,3}	{}	2018-09-22 22:00:00.004541
22180	{16,15,20,21}	{}	2018-09-22 22:45:00.004687
22181	{6,17,8,21}	{}	2018-09-22 23:00:00.006224
22187	{20,2,19,7}	{}	2018-09-23 00:30:00.004729
22190	{19,7,10,4}	{}	2018-09-23 01:15:00.00466
22193	{8,18,11,10}	{}	2018-09-23 02:00:00.004536
22196	{10,19,20,8}	{}	2018-09-23 02:45:00.004719
22199	{9,15,5,13}	{}	2018-09-23 03:30:00.004722
22202	{20,18,5,4}	{}	2018-09-23 04:15:00.004735
22208	{18,11,19,4}	{}	2018-09-23 05:45:00.004701
22211	{6,1,8,20}	{}	2018-09-23 06:30:00.004751
22214	{11,1,18,16}	{}	2018-09-23 07:15:00.004737
22220	{14,8,5,7}	{}	2018-09-23 08:45:00.004733
22223	{21,9,17,3}	{}	2018-09-23 09:30:00.00469
22226	{11,18,3,9}	{}	2018-09-23 10:15:00.004496
22232	{7,16,12,17}	{}	2018-09-23 11:45:00.004735
22233	{21,8,13,1}	{}	2018-09-23 12:00:00.006251
22239	{15,19,3,11}	{}	2018-09-23 13:30:00.004813
22242	{9,4,10,18}	{}	2018-09-23 14:15:00.004767
22245	{13,12,4,19}	{}	2018-09-23 15:00:00.004567
22248	{4,17,16,5}	{}	2018-09-23 15:45:00.004764
22251	{8,1,19,5}	{}	2018-09-23 16:30:00.004666
22254	{13,15,2,20}	{}	2018-09-23 17:15:00.00469
22257	{6,9,11,20}	{}	2018-09-23 18:00:00.00455
22260	{9,1,11,19}	{}	2018-09-23 18:45:00.004707
22261	{15,21,10,16}	{}	2018-09-23 19:00:00.006215
22861	{3,10,18,5}	{}	2018-09-30 01:00:00.006265
22879	{17,19,13,4}	{}	2018-09-30 05:30:00.004653
22882	{16,20,7,8}	{}	2018-09-30 06:15:00.004699
22888	{3,11,5,12}	{}	2018-09-30 07:45:00.004551
20556	{8,18,16,3}	{}	2018-09-06 00:45:00.004697
20559	{16,18,13,17}	{}	2018-09-06 01:30:00.00466
22140	{6,21,19,16}	{}	2018-09-22 12:45:00.004725
22141	{11,19,10,4}	{}	2018-09-22 13:00:00.006317
22159	{12,13,20,16}	{}	2018-09-22 17:30:00.004743
22162	{6,15,18,13}	{}	2018-09-22 18:15:00.00478
22168	{11,17,15,14}	{}	2018-09-22 19:45:00.004786
22169	{5,11,7,1}	{}	2018-09-22 20:00:00.006207
22183	{5,10,20,21}	{}	2018-09-22 23:30:00.004864
22186	{4,18,1,17}	{}	2018-09-23 00:15:00.004784
22192	{9,17,12,6}	{}	2018-09-23 01:45:00.004569
22195	{9,20,8,3}	{}	2018-09-23 02:30:00.004746
22198	{2,18,1,20}	{}	2018-09-23 03:15:00.004742
22201	{7,3,2,20}	{}	2018-09-23 04:00:00.004442
22204	{14,4,6,15}	{}	2018-09-23 04:45:00.004686
22205	{19,3,7,4}	{}	2018-09-23 05:00:00.00629
22215	{14,2,17,6}	{}	2018-09-23 07:30:00.004757
22218	{17,2,10,12}	{}	2018-09-23 08:15:00.004627
22221	{18,16,7,11}	{}	2018-09-23 09:00:00.004535
22224	{12,1,15,14}	{}	2018-09-23 09:45:00.004663
22227	{12,19,14,10}	{}	2018-09-23 10:30:00.004752
22230	{4,21,18,3}	{}	2018-09-23 11:15:00.004698
22236	{9,16,1,5}	{}	2018-09-23 12:45:00.00472
22237	{8,12,1,18}	{}	2018-09-23 13:00:00.006282
22255	{5,18,2,1}	{}	2018-09-23 17:30:00.004767
22258	{18,21,1,2}	{}	2018-09-23 18:15:00.004714
22884	{12,2,4,9}	{}	2018-09-30 06:45:00.004683
22885	{4,7,1,10}	{}	2018-09-30 07:00:00.006246
22886	{17,3,11,5}	{}	2018-09-30 07:15:00.004608
20558	{9,14,10,3}	{}	2018-09-06 01:15:00.004624
20562	{8,15,10,21}	{}	2018-09-06 02:15:00.004677
20563	{15,3,2,21}	{}	2018-09-06 02:30:00.004645
20564	{13,14,9,8}	{}	2018-09-06 02:45:00.00474
20565	{1,20,3,16}	{}	2018-09-06 03:00:00.00453
20566	{6,18,21,17}	{}	2018-09-06 03:15:00.00458
20567	{14,8,4,12}	{}	2018-09-06 03:30:00.004657
20568	{20,21,2,14}	{}	2018-09-06 03:45:00.004694
20569	{4,20,18,16}	{}	2018-09-06 04:00:00.004471
20570	{18,10,9,1}	{}	2018-09-06 04:15:00.004682
20571	{16,11,17,9}	{}	2018-09-06 04:30:00.004715
20572	{19,18,2,5}	{}	2018-09-06 04:45:00.004779
20573	{12,17,8,13}	{}	2018-09-06 05:00:00.006173
20574	{17,3,2,12}	{}	2018-09-06 05:15:00.004695
20575	{7,1,14,16}	{}	2018-09-06 05:30:00.00474
20576	{16,3,6,14}	{}	2018-09-06 05:45:00.004607
20577	{7,11,14,2}	{}	2018-09-06 06:00:00.004398
20578	{7,3,13,4}	{}	2018-09-06 06:15:00.004687
20579	{7,5,18,16}	{}	2018-09-06 06:30:00.004664
20580	{9,12,8,21}	{}	2018-09-06 06:45:00.004713
20581	{20,8,2,10}	{}	2018-09-06 07:00:00.006184
20582	{2,20,11,21}	{}	2018-09-06 07:15:00.004462
20583	{5,1,15,17}	{}	2018-09-06 07:30:00.004664
20584	{18,4,5,21}	{}	2018-09-06 07:45:00.004693
20585	{21,1,16,5}	{}	2018-09-06 08:00:00.006802
20586	{11,19,4,1}	{}	2018-09-06 08:15:00.004619
20587	{14,17,19,18}	{}	2018-09-06 08:30:00.004624
20588	{16,5,12,21}	{}	2018-09-06 08:45:00.004766
20589	{6,1,3,2}	{}	2018-09-06 09:00:00.004509
20590	{5,8,21,11}	{}	2018-09-06 09:15:00.00467
20591	{5,18,13,8}	{}	2018-09-06 09:30:00.004699
20592	{21,10,18,13}	{}	2018-09-06 09:45:00.004638
20593	{4,5,16,19}	{}	2018-09-06 10:00:00.004494
20594	{15,1,14,8}	{}	2018-09-06 10:15:00.004705
20595	{17,7,16,13}	{}	2018-09-06 10:30:00.00471
20596	{4,5,9,7}	{}	2018-09-06 10:45:00.004673
20597	{4,19,7,15}	{}	2018-09-06 11:00:00.006315
20598	{5,7,11,14}	{}	2018-09-06 11:15:00.004368
20599	{18,6,10,21}	{}	2018-09-06 11:30:00.004683
20600	{16,12,19,5}	{}	2018-09-06 11:45:00.004749
20601	{1,6,2,10}	{}	2018-09-06 12:00:00.006262
20602	{10,13,18,5}	{}	2018-09-06 12:15:00.004714
20603	{4,20,1,14}	{}	2018-09-06 12:30:00.004625
20604	{9,16,13,14}	{}	2018-09-06 12:45:00.004652
20605	{2,18,9,3}	{}	2018-09-06 13:00:00.006191
20606	{4,13,12,21}	{}	2018-09-06 13:15:00.004631
20607	{19,6,17,5}	{}	2018-09-06 13:30:00.004666
20608	{1,12,8,15}	{}	2018-09-06 13:45:00.004683
20609	{18,16,4,9}	{}	2018-09-06 14:00:00.004505
20610	{21,11,8,5}	{}	2018-09-06 14:15:00.004695
20611	{8,17,12,10}	{}	2018-09-06 14:30:00.00463
20612	{7,17,16,21}	{}	2018-09-06 14:45:00.004644
20613	{3,17,7,1}	{}	2018-09-06 15:00:00.004499
20614	{13,16,12,9}	{}	2018-09-06 15:15:00.004762
20615	{18,12,17,3}	{}	2018-09-06 15:30:00.004581
20616	{12,18,21,19}	{}	2018-09-06 15:45:00.004565
20617	{18,20,14,19}	{}	2018-09-06 16:00:00.00444
20618	{19,12,9,3}	{}	2018-09-06 16:15:00.004624
20619	{2,1,10,18}	{}	2018-09-06 16:30:00.004736
20620	{1,19,15,8}	{}	2018-09-06 16:45:00.004713
20621	{20,9,2,7}	{}	2018-09-06 17:00:00.006231
20622	{8,11,16,18}	{}	2018-09-06 17:15:00.004691
20623	{13,6,9,20}	{}	2018-09-06 17:30:00.004579
20624	{12,10,8,9}	{}	2018-09-06 17:45:00.00467
20625	{19,17,21,15}	{}	2018-09-06 18:00:00.004546
20626	{3,1,17,4}	{}	2018-09-06 18:15:00.004715
20627	{7,11,4,9}	{}	2018-09-06 18:30:00.004696
20628	{17,9,2,1}	{}	2018-09-06 18:45:00.004786
20629	{15,9,17,19}	{}	2018-09-06 19:00:00.006213
20630	{19,14,8,9}	{}	2018-09-06 19:15:00.004662
20631	{14,7,16,10}	{}	2018-09-06 19:30:00.004621
20632	{11,6,10,20}	{}	2018-09-06 19:45:00.0047
20633	{4,15,7,9}	{}	2018-09-06 20:00:00.006171
20634	{21,5,4,14}	{}	2018-09-06 20:15:00.004727
20635	{9,6,5,10}	{}	2018-09-06 20:30:00.004647
20636	{11,18,14,21}	{}	2018-09-06 20:45:00.004699
20637	{17,20,8,5}	{}	2018-09-06 21:00:00.004497
20638	{17,18,7,12}	{}	2018-09-06 21:15:00.004703
20642	{20,13,11,1}	{}	2018-09-06 22:15:00.004722
20650	{11,20,12,6}	{}	2018-09-07 00:15:00.004726
22889	{4,19,1,15}	{}	2018-09-30 08:00:00.006243
22892	{11,16,8,6}	{}	2018-09-30 08:45:00.004682
22903	{2,20,8,6}	{}	2018-09-30 11:30:00.004551
22906	{2,18,11,14}	{}	2018-09-30 12:15:00.004597
22912	{1,6,3,19}	{}	2018-09-30 13:45:00.004702
22915	{12,17,21,3}	{}	2018-09-30 14:30:00.004702
22918	{4,2,8,16}	{}	2018-09-30 15:15:00.004674
22921	{10,1,21,16}	{}	2018-09-30 16:00:00.004466
22924	{11,7,20,8}	{}	2018-09-30 16:45:00.004657
22925	{5,14,18,12}	{}	2018-09-30 17:00:00.006127
22935	{6,9,21,7}	{}	2018-09-30 19:30:00.004644
22938	{8,19,16,14}	{}	2018-09-30 20:15:00.004532
22941	{17,6,21,9}	{}	2018-09-30 21:00:00.00451
22944	{5,17,11,15}	{}	2018-09-30 21:45:00.004701
22947	{18,9,11,4}	{}	2018-09-30 22:30:00.004556
22950	{21,2,5,14}	{}	2018-09-30 23:15:00.004808
22956	{5,10,7,4}	{}	2018-10-01 00:45:00.004714
22957	{20,4,2,16}	{}	2018-10-01 01:00:00.006176
22975	{18,4,15,3}	{}	2018-10-01 05:30:00.004654
22978	{21,20,5,6}	{}	2018-10-01 06:15:00.004646
22984	{19,21,2,9}	{}	2018-10-01 07:45:00.004709
22985	{14,9,18,15}	{}	2018-10-01 08:00:00.00614
22999	{19,14,11,5}	{}	2018-10-01 11:30:00.004691
23002	{16,18,17,11}	{}	2018-10-01 12:15:00.004678
23008	{2,4,17,11}	{}	2018-10-01 13:45:00.004608
23011	{8,20,1,11}	{}	2018-10-01 14:30:00.004687
23014	{4,19,9,2}	{}	2018-10-01 15:15:00.004662
23017	{9,10,15,14}	{}	2018-10-01 16:00:00.004537
23020	{13,12,8,11}	{}	2018-10-01 16:45:00.004588
23021	{4,20,14,11}	{}	2018-10-01 17:00:00.006292
23031	{12,6,19,21}	{}	2018-10-01 19:30:00.004681
23034	{1,4,5,16}	{}	2018-10-01 20:15:00.004794
23037	{4,15,2,14}	{}	2018-10-01 21:00:00.004496
23040	{9,19,18,14}	{}	2018-10-01 21:45:00.004716
23043	{16,6,11,7}	{}	2018-10-01 22:30:00.004693
23052	{1,7,17,8}	{}	2018-10-02 00:45:00.004744
23055	{15,9,6,4}	{}	2018-10-02 01:30:00.004633
23059	{2,10,12,13}	{}	2018-10-02 02:30:00.00466
23063	{8,10,21,12}	{}	2018-10-02 03:30:00.004716
23067	{3,13,17,2}	{}	2018-10-02 04:30:00.004658
23069	{7,1,2,21}	{}	2018-10-02 05:00:00.006174
23080	{11,12,7,19}	{}	2018-10-02 07:45:00.004705
23082	{6,3,4,12}	{}	2018-10-02 08:15:00.004672
23086	{6,13,21,4}	{}	2018-10-02 09:15:00.004604
23090	{18,15,5,17}	{}	2018-10-02 10:15:00.004639
20639	{3,6,20,12}	{}	2018-09-06 21:30:00.004744
20643	{19,21,4,15}	{}	2018-09-06 22:30:00.004771
20645	{13,12,8,1}	{}	2018-09-06 23:00:00.006195
22890	{21,17,11,19}	{}	2018-09-30 08:15:00.004668
22893	{11,19,5,20}	{}	2018-09-30 09:00:00.004442
22896	{10,14,2,18}	{}	2018-09-30 09:45:00.004601
22899	{11,12,4,5}	{}	2018-09-30 10:30:00.004551
22902	{2,16,18,11}	{}	2018-09-30 11:15:00.004634
22908	{21,7,18,4}	{}	2018-09-30 12:45:00.004708
22909	{21,6,1,8}	{}	2018-09-30 13:00:00.006384
22927	{4,18,10,15}	{}	2018-09-30 17:30:00.004673
22930	{1,2,14,5}	{}	2018-09-30 18:15:00.004693
22936	{12,21,17,9}	{}	2018-09-30 19:45:00.004716
22937	{9,20,11,6}	{}	2018-09-30 20:00:00.006233
22951	{17,9,2,18}	{}	2018-09-30 23:30:00.004809
22954	{14,12,17,1}	{}	2018-10-01 00:15:00.004586
22960	{20,8,15,21}	{}	2018-10-01 01:45:00.004626
22963	{9,19,10,2}	{}	2018-10-01 02:30:00.004563
22966	{20,10,11,6}	{}	2018-10-01 03:15:00.004643
22969	{16,15,13,10}	{}	2018-10-01 04:00:00.004497
22972	{13,19,20,16}	{}	2018-10-01 04:45:00.00468
22973	{3,18,2,9}	{}	2018-10-01 05:00:00.006179
22983	{20,18,2,19}	{}	2018-10-01 07:30:00.004659
22986	{8,18,10,1}	{}	2018-10-01 08:15:00.004627
22989	{7,18,11,12}	{}	2018-10-01 09:00:00.004464
22992	{17,5,16,6}	{}	2018-10-01 09:45:00.004584
22995	{2,18,5,12}	{}	2018-10-01 10:30:00.004633
22998	{14,1,8,16}	{}	2018-10-01 11:15:00.004663
23004	{15,17,18,13}	{}	2018-10-01 12:45:00.004547
23005	{15,13,19,11}	{}	2018-10-01 13:00:00.006722
23023	{11,1,12,21}	{}	2018-10-01 17:30:00.004685
23026	{9,21,5,20}	{}	2018-10-01 18:15:00.004672
23032	{6,9,14,16}	{}	2018-10-01 19:45:00.004699
23033	{2,18,8,20}	{}	2018-10-01 20:00:00.006035
23035	{3,19,18,15}	{}	2018-10-01 20:30:00.004778
23038	{13,19,10,8}	{}	2018-10-01 21:15:00.004776
23041	{16,18,6,5}	{}	2018-10-01 22:00:00.00394
23044	{9,18,2,10}	{}	2018-10-01 22:45:00.004697
23045	{10,16,4,14}	{}	2018-10-01 23:00:00.006119
23048	{6,9,19,1}	{}	2018-10-01 23:45:00.004823
23051	{1,10,8,14}	{}	2018-10-02 00:30:00.004615
23053	{9,4,18,14}	{}	2018-10-02 01:00:00.006163
23071	{21,3,5,2}	{}	2018-10-02 05:30:00.00465
23075	{12,15,5,19}	{}	2018-10-02 06:30:00.004491
23077	{7,18,6,5}	{}	2018-10-02 07:00:00.006193
23083	{11,18,1,6}	{}	2018-10-02 08:30:00.00461
23087	{7,10,16,18}	{}	2018-10-02 09:30:00.004582
23091	{2,10,1,19}	{}	2018-10-02 10:30:00.004737
20640	{12,6,19,1}	{}	2018-09-06 21:45:00.004673
20644	{8,19,1,20}	{}	2018-09-06 22:45:00.004555
20647	{2,15,4,11}	{}	2018-09-06 23:30:00.004864
20648	{5,20,8,13}	{}	2018-09-06 23:45:00.004858
20649	{20,14,16,4}	{}	2018-09-07 00:00:00.006117
22891	{15,11,16,3}	{}	2018-09-30 08:30:00.004665
22894	{1,8,6,4}	{}	2018-09-30 09:15:00.004618
22897	{1,7,16,14}	{}	2018-09-30 10:00:00.004464
22900	{17,20,18,19}	{}	2018-09-30 10:45:00.004621
22901	{17,15,20,18}	{}	2018-09-30 11:00:00.00617
22907	{12,7,3,8}	{}	2018-09-30 12:30:00.004048
22910	{18,5,6,14}	{}	2018-09-30 13:15:00.004658
22913	{18,1,10,7}	{}	2018-09-30 14:00:00.004465
22916	{12,7,8,3}	{}	2018-09-30 14:45:00.004632
22919	{16,19,5,21}	{}	2018-09-30 15:30:00.00467
22922	{7,12,2,14}	{}	2018-09-30 16:15:00.004646
22928	{14,21,15,4}	{}	2018-09-30 17:45:00.003973
22931	{1,10,11,14}	{}	2018-09-30 18:30:00.004635
22934	{1,12,9,5}	{}	2018-09-30 19:15:00.00463
22940	{2,11,16,4}	{}	2018-09-30 20:45:00.004644
22943	{11,21,7,13}	{}	2018-09-30 21:30:00.004654
22946	{12,14,11,1}	{}	2018-09-30 22:15:00.004575
22952	{16,10,11,21}	{}	2018-09-30 23:45:00.004867
22953	{12,16,18,2}	{}	2018-10-01 00:00:00.006087
22959	{1,17,12,6}	{}	2018-10-01 01:30:00.004684
22962	{2,14,16,9}	{}	2018-10-01 02:15:00.004591
22965	{11,14,2,13}	{}	2018-10-01 03:00:00.004479
22968	{1,5,19,8}	{}	2018-10-01 03:45:00.004691
22971	{13,1,9,20}	{}	2018-10-01 04:30:00.004718
22974	{18,13,7,9}	{}	2018-10-01 05:15:00.004254
22977	{15,11,18,21}	{}	2018-10-01 06:00:00.004508
22980	{16,2,10,9}	{}	2018-10-01 06:45:00.004658
22981	{2,16,11,5}	{}	2018-10-01 07:00:00.006201
22987	{7,18,13,2}	{}	2018-10-01 08:30:00.004597
22990	{5,13,12,2}	{}	2018-10-01 09:15:00.004629
22993	{18,2,9,21}	{}	2018-10-01 10:00:00.004459
22996	{18,12,4,1}	{}	2018-10-01 10:45:00.004529
22997	{6,7,4,21}	{}	2018-10-01 11:00:00.006164
23003	{17,10,21,4}	{}	2018-10-01 12:30:00.004713
23006	{19,13,11,12}	{}	2018-10-01 13:15:00.004653
23009	{14,17,5,10}	{}	2018-10-01 14:00:00.004525
23012	{12,6,8,1}	{}	2018-10-01 14:45:00.004678
23015	{16,9,21,19}	{}	2018-10-01 15:30:00.004651
23018	{5,16,14,18}	{}	2018-10-01 16:15:00.004664
23024	{6,9,2,17}	{}	2018-10-01 17:45:00.004629
23027	{12,17,10,6}	{}	2018-10-01 18:30:00.004659
23030	{7,11,5,13}	{}	2018-10-01 19:15:00.004652
23036	{19,1,21,18}	{}	2018-10-01 20:45:00.004633
23039	{5,2,19,6}	{}	2018-10-01 21:30:00.004717
23042	{12,11,3,7}	{}	2018-10-01 22:15:00.004678
23046	{9,7,17,13}	{}	2018-10-01 23:15:00.00516
23054	{6,21,12,16}	{}	2018-10-02 01:15:00.004695
23058	{2,18,6,20}	{}	2018-10-02 02:15:00.004551
23062	{12,19,10,5}	{}	2018-10-02 03:15:00.004385
23066	{6,10,18,19}	{}	2018-10-02 04:15:00.004681
23072	{3,11,20,14}	{}	2018-10-02 05:45:00.004652
23076	{13,1,21,16}	{}	2018-10-02 06:45:00.004628
23079	{3,17,4,2}	{}	2018-10-02 07:30:00.004668
23081	{2,11,8,5}	{}	2018-10-02 08:00:00.006864
20641	{6,3,21,8}	{}	2018-09-06 22:00:00.004437
20646	{7,16,18,6}	{}	2018-09-06 23:15:00.004799
20651	{9,21,1,2}	{}	2018-09-07 00:30:00.004755
20652	{1,19,21,20}	{}	2018-09-07 00:45:00.004712
20653	{18,15,1,17}	{}	2018-09-07 01:00:00.006208
20654	{14,4,8,9}	{}	2018-09-07 01:15:00.00467
20655	{13,9,5,10}	{}	2018-09-07 01:30:00.004718
20656	{1,10,3,9}	{}	2018-09-07 01:45:00.004689
20657	{7,1,6,18}	{}	2018-09-07 02:00:00.004526
20658	{2,16,11,4}	{}	2018-09-07 02:15:00.004755
20659	{11,5,4,12}	{}	2018-09-07 02:30:00.004702
20660	{17,10,18,11}	{}	2018-09-07 02:45:00.004749
20661	{5,20,7,16}	{}	2018-09-07 03:00:00.00456
20662	{16,18,1,4}	{}	2018-09-07 03:15:00.004678
20663	{20,21,13,1}	{}	2018-09-07 03:30:00.004682
20664	{14,13,2,7}	{}	2018-09-07 03:45:00.004367
20665	{7,18,10,6}	{}	2018-09-07 04:00:00.004555
20666	{6,19,17,15}	{}	2018-09-07 04:15:00.004727
20667	{15,17,7,11}	{}	2018-09-07 04:30:00.004662
20668	{9,18,4,20}	{}	2018-09-07 04:45:00.004366
20669	{1,6,15,20}	{}	2018-09-07 05:00:00.006219
20670	{8,10,9,16}	{}	2018-09-07 05:15:00.004679
20671	{18,17,12,4}	{}	2018-09-07 05:30:00.004756
20672	{13,9,2,15}	{}	2018-09-07 05:45:00.004767
20673	{3,19,1,8}	{}	2018-09-07 06:00:00.004426
20674	{14,10,11,21}	{}	2018-09-07 06:15:00.004719
20675	{20,12,2,17}	{}	2018-09-07 06:30:00.004742
20676	{15,8,1,13}	{}	2018-09-07 06:45:00.004643
20677	{1,6,19,13}	{}	2018-09-07 07:00:00.00619
20678	{11,17,12,8}	{}	2018-09-07 07:15:00.004674
20679	{2,1,21,11}	{}	2018-09-07 07:30:00.004656
20680	{7,17,12,8}	{}	2018-09-07 07:45:00.004718
20681	{4,11,14,21}	{}	2018-09-07 08:00:00.006136
20682	{6,4,9,13}	{}	2018-09-07 08:15:00.004703
20683	{21,16,7,4}	{}	2018-09-07 08:30:00.004729
20684	{17,13,1,4}	{}	2018-09-07 08:45:00.004743
20685	{4,13,9,6}	{}	2018-09-07 09:00:00.004488
20686	{13,14,5,19}	{}	2018-09-07 09:15:00.004647
20687	{4,11,1,8}	{}	2018-09-07 09:30:00.004668
20688	{17,5,9,11}	{}	2018-09-07 09:45:00.004632
20689	{20,4,1,14}	{}	2018-09-07 10:00:00.004537
20690	{17,6,18,4}	{}	2018-09-07 10:15:00.004666
20691	{13,1,11,8}	{}	2018-09-07 10:30:00.004712
20692	{13,12,6,2}	{}	2018-09-07 10:45:00.004745
20693	{4,16,15,18}	{}	2018-09-07 11:00:00.00614
20694	{18,21,15,7}	{}	2018-09-07 11:15:00.004701
20695	{11,1,20,3}	{}	2018-09-07 11:30:00.004711
20696	{1,12,4,19}	{}	2018-09-07 11:45:00.004735
20697	{3,1,15,5}	{}	2018-09-07 12:00:00.006232
20698	{16,21,18,3}	{}	2018-09-07 12:15:00.004728
20699	{4,17,5,20}	{}	2018-09-07 12:30:00.004635
20700	{19,5,17,7}	{}	2018-09-07 12:45:00.004673
20701	{12,20,16,18}	{}	2018-09-07 13:00:00.006131
20702	{8,17,11,3}	{}	2018-09-07 13:15:00.004748
20703	{20,21,13,4}	{}	2018-09-07 13:30:00.004658
20704	{16,19,3,10}	{}	2018-09-07 13:45:00.004685
20705	{13,17,8,6}	{}	2018-09-07 14:00:00.004551
20706	{10,8,17,11}	{}	2018-09-07 14:15:00.004691
20707	{6,8,5,4}	{}	2018-09-07 14:30:00.004736
20708	{1,3,11,21}	{}	2018-09-07 14:45:00.004569
20709	{14,3,20,12}	{}	2018-09-07 15:00:00.004559
20710	{3,5,1,16}	{}	2018-09-07 15:15:00.004662
20711	{5,2,20,7}	{}	2018-09-07 15:30:00.004734
20712	{17,10,3,16}	{}	2018-09-07 15:45:00.004684
20713	{18,13,11,8}	{}	2018-09-07 16:00:00.003887
20714	{2,4,14,17}	{}	2018-09-07 16:15:00.004709
20715	{7,2,18,3}	{}	2018-09-07 16:30:00.004684
20716	{8,9,4,15}	{}	2018-09-07 16:45:00.004742
20717	{6,9,20,13}	{}	2018-09-07 17:00:00.006193
20718	{16,8,2,20}	{}	2018-09-07 17:15:00.00462
20719	{15,13,17,5}	{}	2018-09-07 17:30:00.004747
20720	{13,12,1,17}	{}	2018-09-07 17:45:00.004742
20721	{11,20,1,13}	{}	2018-09-07 18:00:00.004475
20722	{19,12,14,8}	{}	2018-09-07 18:15:00.004744
20723	{8,3,2,19}	{}	2018-09-07 18:30:00.004679
20724	{20,11,18,19}	{}	2018-09-07 18:45:00.004706
20725	{6,18,5,16}	{}	2018-09-07 19:00:00.006222
20726	{18,14,6,8}	{}	2018-09-07 19:15:00.004591
20733	{10,16,5,20}	{}	2018-09-07 21:00:00.004396
20737	{8,11,9,7}	{}	2018-09-07 22:00:00.004533
20742	{17,3,8,21}	{}	2018-09-07 23:15:00.004799
22895	{1,2,12,13}	{}	2018-09-30 09:30:00.004634
22898	{8,21,13,6}	{}	2018-09-30 10:15:00.004652
22904	{16,15,4,21}	{}	2018-09-30 11:45:00.004584
22905	{5,2,11,10}	{}	2018-09-30 12:00:00.006272
22911	{19,14,4,9}	{}	2018-09-30 13:30:00.004697
22914	{9,1,6,4}	{}	2018-09-30 14:15:00.004672
22917	{16,15,6,17}	{}	2018-09-30 15:00:00.00455
22920	{18,6,21,8}	{}	2018-09-30 15:45:00.004223
22923	{7,17,13,11}	{}	2018-09-30 16:30:00.004664
22926	{13,9,21,18}	{}	2018-09-30 17:15:00.004641
22929	{6,13,21,20}	{}	2018-09-30 18:00:00.00444
22932	{15,3,13,17}	{}	2018-09-30 18:45:00.004633
22933	{18,10,9,1}	{}	2018-09-30 19:00:00.006187
22939	{7,13,9,11}	{}	2018-09-30 20:30:00.004717
22942	{4,15,20,5}	{}	2018-09-30 21:15:00.004683
22945	{13,21,8,9}	{}	2018-09-30 22:00:00.004512
22948	{3,5,15,12}	{}	2018-09-30 22:45:00.004586
22949	{18,15,6,11}	{}	2018-09-30 23:00:00.006071
22955	{6,4,16,19}	{}	2018-10-01 00:30:00.004658
22958	{18,11,17,19}	{}	2018-10-01 01:15:00.004648
22961	{11,18,9,13}	{}	2018-10-01 02:00:00.004511
22964	{5,10,17,15}	{}	2018-10-01 02:45:00.004828
22967	{4,6,17,7}	{}	2018-10-01 03:30:00.004647
22970	{3,2,7,5}	{}	2018-10-01 04:15:00.004362
22976	{5,3,21,4}	{}	2018-10-01 05:45:00.004698
22979	{14,18,17,4}	{}	2018-10-01 06:30:00.004693
22982	{19,13,10,20}	{}	2018-10-01 07:15:00.004637
22988	{20,15,5,3}	{}	2018-10-01 08:45:00.004581
22991	{9,12,16,3}	{}	2018-10-01 09:30:00.004684
22994	{20,3,6,4}	{}	2018-10-01 10:15:00.004605
23000	{5,2,11,14}	{}	2018-10-01 11:45:00.00471
23001	{16,19,12,9}	{}	2018-10-01 12:00:00.006228
23007	{6,18,11,10}	{}	2018-10-01 13:30:00.004657
23010	{16,15,4,10}	{}	2018-10-01 14:15:00.004665
23013	{10,6,9,12}	{}	2018-10-01 15:00:00.00443
23016	{16,1,21,15}	{}	2018-10-01 15:45:00.004735
23019	{15,2,17,10}	{}	2018-10-01 16:30:00.004646
23022	{12,6,17,3}	{}	2018-10-01 17:15:00.004716
23025	{21,4,3,15}	{}	2018-10-01 18:00:00.004495
23028	{6,13,9,20}	{}	2018-10-01 18:45:00.004691
23029	{19,4,7,18}	{}	2018-10-01 19:00:00.006178
23050	{14,3,21,13}	{}	2018-10-02 00:15:00.004635
23057	{9,16,10,13}	{}	2018-10-02 02:00:00.004496
23061	{20,9,17,15}	{}	2018-10-02 03:00:00.004486
23065	{4,6,18,14}	{}	2018-10-02 04:00:00.004537
23073	{4,1,19,6}	{}	2018-10-02 06:00:00.004402
23078	{18,13,15,5}	{}	2018-10-02 07:15:00.004694
23084	{11,8,9,2}	{}	2018-10-02 08:45:00.004605
23088	{4,8,16,14}	{}	2018-10-02 09:45:00.004628
23092	{11,21,6,5}	{}	2018-10-02 10:45:00.004584
20727	{16,6,9,2}	{}	2018-09-07 19:30:00.00464
20729	{14,19,17,5}	{}	2018-09-07 20:00:00.006202
23047	{10,1,9,6}	{}	2018-10-01 23:30:00.004846
23049	{13,21,11,8}	{}	2018-10-02 00:00:00.006136
23056	{20,9,4,11}	{}	2018-10-02 01:45:00.004633
23060	{2,20,16,15}	{}	2018-10-02 02:45:00.004719
23064	{9,7,15,19}	{}	2018-10-02 03:45:00.004675
23068	{8,9,6,1}	{}	2018-10-02 04:45:00.004697
23070	{14,3,8,16}	{}	2018-10-02 05:15:00.004667
23074	{18,9,8,12}	{}	2018-10-02 06:15:00.004564
23085	{17,9,19,11}	{}	2018-10-02 09:00:00.004516
23089	{17,13,16,15}	{}	2018-10-02 10:00:00.00448
20728	{10,4,7,13}	{}	2018-09-07 19:45:00.004696
20731	{17,15,6,18}	{}	2018-09-07 20:30:00.004678
20735	{5,10,17,2}	{}	2018-09-07 21:30:00.004672
20739	{2,12,5,15}	{}	2018-09-07 22:30:00.004705
20741	{18,8,15,14}	{}	2018-09-07 23:00:00.006186
23093	{21,19,8,4}	{}	2018-10-02 11:00:00.00622
23100	{11,8,12,6}	{}	2018-10-02 12:45:00.004646
23103	{2,16,17,1}	{}	2018-10-02 13:30:00.004629
23107	{15,2,16,12}	{}	2018-10-02 14:30:00.004638
23111	{15,19,5,20}	{}	2018-10-02 15:30:00.004674
23115	{4,6,8,3}	{}	2018-10-02 16:30:00.004744
23117	{19,13,10,7}	{}	2018-10-02 17:00:00.006149
23128	{12,18,10,9}	{}	2018-10-02 19:45:00.004614
23131	{6,13,16,17}	{}	2018-10-02 20:30:00.004661
23135	{6,20,18,10}	{}	2018-10-02 21:30:00.00464
23139	{4,17,19,1}	{}	2018-10-02 22:30:00.004669
23141	{18,13,7,19}	{}	2018-10-02 23:00:00.006078
23148	{16,2,17,9}	{}	2018-10-03 00:45:00.004637
23151	{15,21,17,7}	{}	2018-10-03 01:30:00.004594
23155	{19,16,13,4}	{}	2018-10-03 02:30:00.00472
23159	{2,19,13,15}	{}	2018-10-03 03:30:00.004682
23163	{6,7,3,18}	{}	2018-10-03 04:30:00.004594
23165	{3,4,1,8}	{}	2018-10-03 05:00:00.006797
23176	{14,11,7,15}	{}	2018-10-03 07:45:00.004684
23179	{5,11,10,6}	{}	2018-10-03 08:30:00.00463
23183	{15,13,20,18}	{}	2018-10-03 09:30:00.004666
23187	{20,14,5,1}	{}	2018-10-03 10:30:00.004725
23189	{1,5,11,20}	{}	2018-10-03 11:00:00.006189
23196	{4,7,5,13}	{}	2018-10-03 12:45:00.004553
23199	{4,10,15,2}	{}	2018-10-03 13:30:00.004708
23203	{21,2,11,12}	{}	2018-10-03 14:30:00.004656
23207	{5,2,8,6}	{}	2018-10-03 15:30:00.004705
23211	{4,9,17,3}	{}	2018-10-03 16:30:00.004618
23213	{20,1,9,15}	{}	2018-10-03 17:00:00.006257
23224	{8,18,16,12}	{}	2018-10-03 19:45:00.004685
23227	{10,9,18,20}	{}	2018-10-03 20:30:00.004753
23231	{1,13,10,2}	{}	2018-10-03 21:30:00.004679
23235	{15,12,3,6}	{}	2018-10-03 22:30:00.004694
23237	{9,11,12,8}	{}	2018-10-03 23:00:00.006174
23244	{6,4,21,3}	{}	2018-10-04 00:45:00.004674
23247	{4,21,14,5}	{}	2018-10-04 01:30:00.004685
23251	{18,3,9,4}	{}	2018-10-04 02:30:00.004713
23255	{1,17,18,6}	{}	2018-10-04 03:30:00.004628
23259	{8,15,9,5}	{}	2018-10-04 04:30:00.004704
23261	{16,9,20,4}	{}	2018-10-04 05:00:00.006123
23272	{15,16,11,7}	{}	2018-10-04 07:45:00.00469
23275	{17,19,14,4}	{}	2018-10-04 08:30:00.004749
23279	{15,17,10,14}	{}	2018-10-04 09:30:00.004671
23283	{1,17,5,19}	{}	2018-10-04 10:30:00.00465
23285	{12,17,3,9}	{}	2018-10-04 11:00:00.006156
23292	{17,1,14,2}	{}	2018-10-04 12:45:00.004719
23295	{7,6,8,14}	{}	2018-10-04 13:30:00.004666
23299	{12,3,8,13}	{}	2018-10-04 14:30:00.004728
20730	{12,3,14,6}	{}	2018-09-07 20:15:00.004408
20734	{1,2,14,6}	{}	2018-09-07 21:15:00.004579
20738	{1,3,15,2}	{}	2018-09-07 22:15:00.004736
23094	{21,14,6,11}	{}	2018-10-02 11:15:00.004726
23095	{1,16,18,21}	{}	2018-10-02 11:30:00.004647
23102	{10,8,16,14}	{}	2018-10-02 13:15:00.004652
23106	{20,1,6,2}	{}	2018-10-02 14:15:00.004659
23110	{14,3,5,1}	{}	2018-10-02 15:15:00.004642
23114	{19,14,20,13}	{}	2018-10-02 16:15:00.004645
23121	{13,7,12,6}	{}	2018-10-02 18:00:00.004398
23126	{5,1,2,19}	{}	2018-10-02 19:15:00.004667
23133	{4,14,18,20}	{}	2018-10-02 21:00:00.004456
23137	{10,2,14,4}	{}	2018-10-02 22:00:00.004539
23142	{4,20,3,10}	{}	2018-10-02 23:15:00.004794
23150	{17,11,21,13}	{}	2018-10-03 01:15:00.004706
23154	{1,19,5,2}	{}	2018-10-03 02:15:00.004631
23158	{8,4,5,14}	{}	2018-10-03 03:15:00.004666
23162	{13,19,4,15}	{}	2018-10-03 04:15:00.004693
23169	{11,12,21,7}	{}	2018-10-03 06:00:00.004485
23174	{18,6,12,5}	{}	2018-10-03 07:15:00.004664
23181	{17,1,18,11}	{}	2018-10-03 09:00:00.004346
23185	{16,5,2,8}	{}	2018-10-03 10:00:00.004534
23190	{20,19,4,3}	{}	2018-10-03 11:15:00.004714
23198	{5,20,13,6}	{}	2018-10-03 13:15:00.004711
23202	{4,18,9,15}	{}	2018-10-03 14:15:00.004682
23206	{18,4,21,5}	{}	2018-10-03 15:15:00.004322
23210	{6,7,20,8}	{}	2018-10-03 16:15:00.004686
23217	{1,11,17,21}	{}	2018-10-03 18:00:00.004395
23222	{10,12,13,19}	{}	2018-10-03 19:15:00.004553
23229	{18,2,3,13}	{}	2018-10-03 21:00:00.004473
23233	{17,15,14,18}	{}	2018-10-03 22:00:00.004469
23238	{10,7,3,17}	{}	2018-10-03 23:15:00.004809
23246	{10,20,16,6}	{}	2018-10-04 01:15:00.004594
23250	{1,4,18,12}	{}	2018-10-04 02:15:00.004192
23254	{6,18,2,14}	{}	2018-10-04 03:15:00.004711
23258	{5,3,18,10}	{}	2018-10-04 04:15:00.004674
23265	{14,17,20,1}	{}	2018-10-04 06:00:00.004515
23270	{11,13,20,16}	{}	2018-10-04 07:15:00.004669
23277	{16,3,12,8}	{}	2018-10-04 09:00:00.004519
23281	{12,9,10,5}	{}	2018-10-04 10:00:00.004481
23286	{11,1,6,12}	{}	2018-10-04 11:15:00.004699
23294	{1,6,20,2}	{}	2018-10-04 13:15:00.004685
23298	{3,1,12,9}	{}	2018-10-04 14:15:00.004677
20732	{11,5,1,12}	{}	2018-09-07 20:45:00.004616
20736	{15,20,10,3}	{}	2018-09-07 21:45:00.004668
20740	{5,2,21,15}	{}	2018-09-07 22:45:00.004752
20743	{16,3,2,7}	{}	2018-09-07 23:30:00.004812
20744	{5,13,21,4}	{}	2018-09-07 23:45:00.004886
20745	{12,11,14,10}	{}	2018-09-08 00:00:00.006103
20746	{18,16,21,19}	{}	2018-09-08 00:15:00.004821
20747	{9,12,20,13}	{}	2018-09-08 00:30:00.004612
20748	{2,19,16,13}	{}	2018-09-08 00:45:00.004728
20749	{21,4,16,20}	{}	2018-09-08 01:00:00.006227
20750	{7,15,6,10}	{}	2018-09-08 01:15:00.004658
20751	{9,6,11,8}	{}	2018-09-08 01:30:00.004663
20752	{1,12,10,7}	{}	2018-09-08 01:45:00.004735
20753	{13,18,4,7}	{}	2018-09-08 02:00:00.004524
20754	{14,13,10,3}	{}	2018-09-08 02:15:00.004663
20755	{13,19,11,9}	{}	2018-09-08 02:30:00.004703
20756	{9,12,6,11}	{}	2018-09-08 02:45:00.004752
20757	{14,2,10,5}	{}	2018-09-08 03:00:00.00454
20758	{12,8,19,1}	{}	2018-09-08 03:15:00.004674
20759	{17,16,18,13}	{}	2018-09-08 03:30:00.004621
20760	{12,7,17,2}	{}	2018-09-08 03:45:00.004681
20761	{1,21,7,2}	{}	2018-09-08 04:00:00.004454
20762	{13,2,11,8}	{}	2018-09-08 04:15:00.004677
20763	{2,9,16,17}	{}	2018-09-08 04:30:00.004708
20764	{12,9,5,2}	{}	2018-09-08 04:45:00.004548
20765	{9,19,20,21}	{}	2018-09-08 05:00:00.006155
20766	{3,4,9,16}	{}	2018-09-08 05:15:00.004664
20767	{9,3,14,21}	{}	2018-09-08 05:30:00.004697
20768	{12,19,21,7}	{}	2018-09-08 05:45:00.004686
20769	{12,3,8,10}	{}	2018-09-08 06:00:00.004422
20770	{9,18,4,14}	{}	2018-09-08 06:15:00.004664
20771	{6,19,12,17}	{}	2018-09-08 06:30:00.004719
20772	{15,20,8,21}	{}	2018-09-08 06:45:00.00468
20773	{1,15,12,11}	{}	2018-09-08 07:00:00.006119
20774	{15,3,4,1}	{}	2018-09-08 07:15:00.004664
20775	{11,7,8,6}	{}	2018-09-08 07:30:00.004702
20776	{2,3,21,19}	{}	2018-09-08 07:45:00.00468
20777	{8,5,13,14}	{}	2018-09-08 08:00:00.006212
20778	{10,7,9,16}	{}	2018-09-08 08:15:00.00468
20779	{21,8,16,10}	{}	2018-09-08 08:30:00.004664
20780	{14,13,4,18}	{}	2018-09-08 08:45:00.004712
20781	{17,14,5,6}	{}	2018-09-08 09:00:00.004519
20782	{20,18,3,9}	{}	2018-09-08 09:15:00.004568
20783	{15,9,18,12}	{}	2018-09-08 09:30:00.004726
20784	{1,5,16,10}	{}	2018-09-08 09:45:00.004738
20785	{10,13,6,5}	{}	2018-09-08 10:00:00.004539
20786	{3,4,19,21}	{}	2018-09-08 10:15:00.004668
20787	{20,11,8,3}	{}	2018-09-08 10:30:00.004668
20788	{21,16,3,1}	{}	2018-09-08 10:45:00.004603
20789	{5,11,6,4}	{}	2018-09-08 11:00:00.006158
20790	{13,1,17,14}	{}	2018-09-08 11:15:00.004683
20791	{20,4,2,10}	{}	2018-09-08 11:30:00.004709
20792	{20,6,5,16}	{}	2018-09-08 11:45:00.00473
20793	{18,2,8,5}	{}	2018-09-08 12:00:00.006154
20794	{6,11,5,7}	{}	2018-09-08 12:15:00.004748
20795	{18,3,16,17}	{}	2018-09-08 12:30:00.004656
20796	{13,19,11,4}	{}	2018-09-08 12:45:00.004748
20797	{9,12,15,14}	{}	2018-09-08 13:00:00.006277
20798	{20,3,8,1}	{}	2018-09-08 13:15:00.004757
20799	{12,8,7,10}	{}	2018-09-08 13:30:00.004659
20800	{15,18,10,12}	{}	2018-09-08 13:45:00.004704
20801	{5,1,10,18}	{}	2018-09-08 14:00:00.004522
20802	{6,17,21,5}	{}	2018-09-08 14:15:00.004721
20803	{20,10,3,14}	{}	2018-09-08 14:30:00.004703
20804	{12,9,1,6}	{}	2018-09-08 14:45:00.004668
20805	{7,21,5,9}	{}	2018-09-08 15:00:00.00444
20806	{3,1,17,18}	{}	2018-09-08 15:15:00.004632
20807	{7,2,12,6}	{}	2018-09-08 15:30:00.004736
20808	{8,13,6,2}	{}	2018-09-08 15:45:00.004737
20809	{18,2,6,4}	{}	2018-09-08 16:00:00.004573
20810	{3,21,16,6}	{}	2018-09-08 16:15:00.004735
20811	{7,1,4,19}	{}	2018-09-08 16:30:00.00471
20812	{19,1,12,10}	{}	2018-09-08 16:45:00.00473
20813	{17,10,9,1}	{}	2018-09-08 17:00:00.006242
20814	{9,11,21,18}	{}	2018-09-08 17:15:00.004673
20815	{2,16,20,8}	{}	2018-09-08 17:30:00.004709
20816	{12,17,11,9}	{}	2018-09-08 17:45:00.004694
20817	{15,19,13,1}	{}	2018-09-08 18:00:00.004519
20822	{3,7,12,2}	{}	2018-09-08 19:15:00.004668
20829	{21,11,19,4}	{}	2018-09-08 21:00:00.004412
20833	{7,17,21,13}	{}	2018-09-08 22:00:00.004501
20838	{2,6,20,7}	{}	2018-09-08 23:15:00.004859
23096	{16,8,18,4}	{}	2018-10-02 11:45:00.004725
23099	{1,9,16,11}	{}	2018-10-02 12:30:00.004632
23101	{11,2,20,13}	{}	2018-10-02 13:00:00.006111
23120	{14,8,6,3}	{}	2018-10-02 17:45:00.004639
23124	{3,15,19,5}	{}	2018-10-02 18:45:00.004707
23127	{5,6,15,9}	{}	2018-10-02 19:30:00.004648
23129	{16,2,20,14}	{}	2018-10-02 20:00:00.006194
23144	{8,10,16,4}	{}	2018-10-02 23:45:00.004718
23147	{3,1,12,21}	{}	2018-10-03 00:30:00.004673
23149	{15,20,10,16}	{}	2018-10-03 01:00:00.006181
23168	{14,19,4,16}	{}	2018-10-03 05:45:00.004576
23172	{9,20,6,19}	{}	2018-10-03 06:45:00.004638
23175	{11,9,10,6}	{}	2018-10-03 07:30:00.004718
23177	{5,2,1,12}	{}	2018-10-03 08:00:00.006083
23192	{2,17,14,19}	{}	2018-10-03 11:45:00.004728
23195	{3,18,6,10}	{}	2018-10-03 12:30:00.004657
23197	{18,6,19,7}	{}	2018-10-03 13:00:00.006194
23216	{5,3,17,12}	{}	2018-10-03 17:45:00.004642
23220	{3,21,14,19}	{}	2018-10-03 18:45:00.004651
23223	{15,4,8,11}	{}	2018-10-03 19:30:00.00473
23225	{15,20,17,18}	{}	2018-10-03 20:00:00.005484
23240	{9,10,21,6}	{}	2018-10-03 23:45:00.004763
23243	{21,20,7,13}	{}	2018-10-04 00:30:00.004669
23245	{19,2,7,5}	{}	2018-10-04 01:00:00.006255
23264	{9,13,8,20}	{}	2018-10-04 05:45:00.004705
23268	{1,14,20,21}	{}	2018-10-04 06:45:00.004668
23271	{19,13,8,1}	{}	2018-10-04 07:30:00.004513
23273	{19,15,9,1}	{}	2018-10-04 08:00:00.0062
23288	{8,11,9,6}	{}	2018-10-04 11:45:00.004653
23291	{13,3,12,2}	{}	2018-10-04 12:30:00.004685
23293	{20,8,17,5}	{}	2018-10-04 13:00:00.006176
20818	{19,20,10,5}	{}	2018-09-08 18:15:00.004758
20826	{17,6,9,5}	{}	2018-09-08 20:15:00.004726
20830	{13,3,21,17}	{}	2018-09-08 21:15:00.004718
20834	{18,4,11,14}	{}	2018-09-08 22:15:00.004737
23097	{2,17,4,14}	{}	2018-10-02 12:00:00.006174
23104	{4,12,5,2}	{}	2018-10-02 13:45:00.004663
23108	{2,9,13,10}	{}	2018-10-02 14:45:00.004041
23112	{10,16,14,12}	{}	2018-10-02 15:45:00.00465
23116	{1,4,8,9}	{}	2018-10-02 16:45:00.004639
23119	{9,10,7,1}	{}	2018-10-02 17:30:00.004704
23123	{11,15,10,19}	{}	2018-10-02 18:30:00.004637
23125	{14,19,18,8}	{}	2018-10-02 19:00:00.006172
23132	{1,5,20,2}	{}	2018-10-02 20:45:00.004625
23136	{15,21,4,11}	{}	2018-10-02 21:45:00.00462
23140	{3,6,18,5}	{}	2018-10-02 22:45:00.004781
23143	{17,12,4,5}	{}	2018-10-02 23:30:00.00478
23145	{19,21,16,14}	{}	2018-10-03 00:00:00.006025
23152	{2,14,8,4}	{}	2018-10-03 01:45:00.004581
23156	{11,21,17,5}	{}	2018-10-03 02:45:00.004656
23160	{17,14,12,21}	{}	2018-10-03 03:45:00.004663
23164	{13,2,6,17}	{}	2018-10-03 04:45:00.004757
23167	{21,14,9,6}	{}	2018-10-03 05:30:00.004625
23171	{20,9,2,5}	{}	2018-10-03 06:30:00.004636
23173	{8,9,2,6}	{}	2018-10-03 07:00:00.006829
23180	{18,15,11,14}	{}	2018-10-03 08:45:00.004676
23184	{9,1,18,11}	{}	2018-10-03 09:45:00.004666
23188	{1,3,12,21}	{}	2018-10-03 10:45:00.004607
23191	{10,7,5,18}	{}	2018-10-03 11:30:00.004678
23193	{9,2,20,4}	{}	2018-10-03 12:00:00.005992
23200	{10,11,8,1}	{}	2018-10-03 13:45:00.00464
23204	{4,3,19,5}	{}	2018-10-03 14:45:00.004643
23208	{14,16,4,8}	{}	2018-10-03 15:45:00.004575
23212	{18,8,14,5}	{}	2018-10-03 16:45:00.004687
23215	{15,2,21,3}	{}	2018-10-03 17:30:00.004654
23219	{19,21,9,13}	{}	2018-10-03 18:30:00.004699
23221	{3,4,14,1}	{}	2018-10-03 19:00:00.006159
23228	{17,15,1,19}	{}	2018-10-03 20:45:00.004651
23232	{8,1,19,17}	{}	2018-10-03 21:45:00.00466
23236	{7,2,16,15}	{}	2018-10-03 22:45:00.004644
23239	{4,17,20,18}	{}	2018-10-03 23:30:00.004886
23241	{3,18,5,21}	{}	2018-10-04 00:00:00.00598
23248	{17,13,15,4}	{}	2018-10-04 01:45:00.00469
23252	{7,14,17,15}	{}	2018-10-04 02:45:00.004629
23256	{10,13,6,4}	{}	2018-10-04 03:45:00.004672
23260	{16,1,7,6}	{}	2018-10-04 04:45:00.004609
23263	{11,9,2,18}	{}	2018-10-04 05:30:00.004301
23267	{15,13,5,17}	{}	2018-10-04 06:30:00.004727
23269	{21,7,1,18}	{}	2018-10-04 07:00:00.006104
23276	{16,14,7,19}	{}	2018-10-04 08:45:00.00469
23280	{17,1,14,21}	{}	2018-10-04 09:45:00.004636
23284	{21,6,11,15}	{}	2018-10-04 10:45:00.004691
23287	{10,19,12,17}	{}	2018-10-04 11:30:00.004641
23289	{8,9,10,18}	{}	2018-10-04 12:00:00.006111
23296	{17,18,10,2}	{}	2018-10-04 13:45:00.00475
23300	{12,3,1,16}	{}	2018-10-04 14:45:00.004707
20819	{4,2,1,10}	{}	2018-09-08 18:30:00.004618
20821	{16,9,21,7}	{}	2018-09-08 19:00:00.006116
20828	{10,6,20,12}	{}	2018-09-08 20:45:00.004715
20832	{19,5,10,2}	{}	2018-09-08 21:45:00.00396
20836	{11,16,14,3}	{}	2018-09-08 22:45:00.004688
20839	{4,18,7,1}	{}	2018-09-08 23:30:00.004794
20841	{10,11,20,5}	{}	2018-09-09 00:00:00.006067
23098	{17,5,20,12}	{}	2018-10-02 12:15:00.004718
23105	{21,18,11,12}	{}	2018-10-02 14:00:00.004466
23109	{19,3,8,2}	{}	2018-10-02 15:00:00.004485
23113	{19,7,11,10}	{}	2018-10-02 16:00:00.004503
23118	{13,17,18,16}	{}	2018-10-02 17:15:00.00465
23122	{5,13,21,10}	{}	2018-10-02 18:15:00.004645
23130	{16,17,18,10}	{}	2018-10-02 20:15:00.004685
23134	{10,5,9,19}	{}	2018-10-02 21:15:00.004619
23138	{16,10,1,9}	{}	2018-10-02 22:15:00.004486
23146	{9,17,4,3}	{}	2018-10-03 00:15:00.004365
23153	{6,12,1,8}	{}	2018-10-03 02:00:00.004486
23157	{2,5,21,13}	{}	2018-10-03 03:00:00.004543
23161	{1,19,17,9}	{}	2018-10-03 04:00:00.004495
23166	{16,7,5,8}	{}	2018-10-03 05:15:00.004684
23170	{16,20,10,7}	{}	2018-10-03 06:15:00.00462
23178	{11,4,8,1}	{}	2018-10-03 08:15:00.004643
23182	{18,11,1,13}	{}	2018-10-03 09:15:00.004639
23186	{8,10,13,17}	{}	2018-10-03 10:15:00.004723
23194	{5,7,15,10}	{}	2018-10-03 12:15:00.004722
23201	{20,5,9,17}	{}	2018-10-03 14:00:00.00451
23205	{3,14,5,13}	{}	2018-10-03 15:00:00.004486
23209	{14,4,2,13}	{}	2018-10-03 16:00:00.004489
23214	{19,4,11,18}	{}	2018-10-03 17:15:00.004683
23218	{9,8,4,2}	{}	2018-10-03 18:15:00.004705
23226	{19,7,11,9}	{}	2018-10-03 20:15:00.004714
23230	{20,14,19,9}	{}	2018-10-03 21:15:00.004699
23234	{5,18,11,15}	{}	2018-10-03 22:15:00.004624
23242	{21,20,17,14}	{}	2018-10-04 00:15:00.004639
23249	{9,13,20,7}	{}	2018-10-04 02:00:00.00451
23253	{17,10,11,20}	{}	2018-10-04 03:00:00.004499
23257	{1,10,8,12}	{}	2018-10-04 04:00:00.004452
23262	{18,5,6,17}	{}	2018-10-04 05:15:00.00463
23266	{17,9,4,2}	{}	2018-10-04 06:15:00.004692
23274	{18,3,10,2}	{}	2018-10-04 08:15:00.004735
23278	{6,4,20,7}	{}	2018-10-04 09:15:00.004661
23282	{21,16,18,14}	{}	2018-10-04 10:15:00.00466
23290	{5,13,17,11}	{}	2018-10-04 12:15:00.00463
23297	{16,17,20,9}	{}	2018-10-04 14:00:00.004482
20820	{17,21,12,3}	{}	2018-09-08 18:45:00.004661
20823	{21,18,12,3}	{}	2018-09-08 19:30:00.004697
20825	{19,7,12,11}	{}	2018-09-08 20:00:00.006137
20840	{3,17,16,9}	{}	2018-09-08 23:45:00.004844
20824	{21,17,2,5}	{}	2018-09-08 19:45:00.004628
20827	{7,17,1,9}	{}	2018-09-08 20:30:00.004696
20831	{5,8,17,21}	{}	2018-09-08 21:30:00.004637
20835	{12,3,16,19}	{}	2018-09-08 22:30:00.004794
20837	{13,6,2,1}	{}	2018-09-08 23:00:00.006163
20842	{12,17,13,16}	{}	2018-09-09 00:15:00.004704
20843	{20,2,4,19}	{}	2018-09-09 00:30:00.004644
20844	{18,7,21,9}	{}	2018-09-09 00:45:00.004667
20845	{17,16,6,14}	{}	2018-09-09 01:00:00.006174
20846	{9,12,20,4}	{}	2018-09-09 01:15:00.004551
20847	{15,19,3,11}	{}	2018-09-09 01:30:00.004715
20848	{14,4,12,21}	{}	2018-09-09 01:45:00.004664
20849	{1,8,20,3}	{}	2018-09-09 02:00:00.004541
20850	{3,13,2,21}	{}	2018-09-09 02:15:00.004637
20851	{18,19,20,8}	{}	2018-09-09 02:30:00.004656
20852	{5,6,1,3}	{}	2018-09-09 02:45:00.004613
20853	{5,18,20,11}	{}	2018-09-09 03:00:00.004547
20854	{13,9,19,16}	{}	2018-09-09 03:15:00.004677
20855	{10,17,15,6}	{}	2018-09-09 03:30:00.004738
20856	{4,14,2,1}	{}	2018-09-09 03:45:00.004655
20857	{8,19,1,18}	{}	2018-09-09 04:00:00.004425
20858	{17,19,15,18}	{}	2018-09-09 04:15:00.004638
20859	{18,8,9,4}	{}	2018-09-09 04:30:00.004713
20860	{17,4,18,1}	{}	2018-09-09 04:45:00.004728
20861	{18,21,4,14}	{}	2018-09-09 05:00:00.006198
20862	{12,8,5,14}	{}	2018-09-09 05:15:00.004668
20863	{8,13,9,3}	{}	2018-09-09 05:30:00.004654
20864	{3,11,4,21}	{}	2018-09-09 05:45:00.004731
20865	{1,11,13,4}	{}	2018-09-09 06:00:00.003881
20866	{15,5,16,12}	{}	2018-09-09 06:15:00.004673
20867	{15,7,5,13}	{}	2018-09-09 06:30:00.004711
20868	{7,21,19,3}	{}	2018-09-09 06:45:00.004699
20869	{21,8,1,5}	{}	2018-09-09 07:00:00.006198
20870	{19,17,20,15}	{}	2018-09-09 07:15:00.004734
20871	{16,1,20,19}	{}	2018-09-09 07:30:00.004744
20872	{13,3,15,2}	{}	2018-09-09 07:45:00.004716
20873	{8,1,13,19}	{}	2018-09-09 08:00:00.006287
20874	{12,4,18,21}	{}	2018-09-09 08:15:00.00476
20875	{6,7,19,17}	{}	2018-09-09 08:30:00.004742
20876	{18,9,21,6}	{}	2018-09-09 08:45:00.00474
20877	{16,19,13,9}	{}	2018-09-09 09:00:00.004528
20878	{16,20,21,18}	{}	2018-09-09 09:15:00.004766
20879	{12,9,13,7}	{}	2018-09-09 09:30:00.004654
20880	{1,17,21,18}	{}	2018-09-09 09:45:00.004728
20881	{20,19,3,8}	{}	2018-09-09 10:00:00.004553
20882	{2,9,7,16}	{}	2018-09-09 10:15:00.004757
20883	{4,5,21,8}	{}	2018-09-09 10:30:00.004736
20884	{4,10,18,15}	{}	2018-09-09 10:45:00.004658
20885	{17,18,7,15}	{}	2018-09-09 11:00:00.006262
20886	{12,21,6,18}	{}	2018-09-09 11:15:00.004704
20887	{9,18,8,1}	{}	2018-09-09 11:30:00.004665
20888	{6,2,10,9}	{}	2018-09-09 11:45:00.004774
20889	{14,16,7,15}	{}	2018-09-09 12:00:00.006223
20890	{3,18,11,1}	{}	2018-09-09 12:15:00.004748
20891	{12,3,7,21}	{}	2018-09-09 12:30:00.0047
20892	{20,12,6,21}	{}	2018-09-09 12:45:00.004731
20893	{17,20,3,5}	{}	2018-09-09 13:00:00.006213
20894	{1,6,17,12}	{}	2018-09-09 13:15:00.004671
20895	{10,11,7,21}	{}	2018-09-09 13:30:00.004703
20896	{19,12,15,17}	{}	2018-09-09 13:45:00.004686
20897	{4,20,15,21}	{}	2018-09-09 14:00:00.004411
20898	{7,5,10,4}	{}	2018-09-09 14:15:00.004735
20899	{3,1,20,15}	{}	2018-09-09 14:30:00.004709
20900	{20,16,21,19}	{}	2018-09-09 14:45:00.004718
20901	{3,2,20,1}	{}	2018-09-09 15:00:00.004548
20902	{20,5,6,18}	{}	2018-09-09 15:15:00.004698
20903	{16,15,14,11}	{}	2018-09-09 15:30:00.004766
20904	{13,9,11,2}	{}	2018-09-09 15:45:00.004799
20905	{15,1,17,16}	{}	2018-09-09 16:00:00.004569
20906	{17,11,21,3}	{}	2018-09-09 16:15:00.004702
20907	{14,4,10,11}	{}	2018-09-09 16:30:00.004732
20908	{7,8,11,14}	{}	2018-09-09 16:45:00.004716
20909	{19,14,13,3}	{}	2018-09-09 17:00:00.006217
20910	{17,14,9,20}	{}	2018-09-09 17:15:00.004709
20911	{3,17,13,9}	{}	2018-09-09 17:30:00.004636
20912	{14,19,15,16}	{}	2018-09-09 17:45:00.004731
20913	{15,1,17,16}	{}	2018-09-09 18:00:00.004577
20914	{6,16,13,11}	{}	2018-09-09 18:15:00.004725
20922	{3,21,16,1}	{}	2018-09-09 20:15:00.004749
20926	{20,3,10,6}	{}	2018-09-09 21:15:00.004653
20930	{6,8,4,19}	{}	2018-09-09 22:15:00.004676
20938	{16,7,15,10}	{}	2018-09-10 00:15:00.004651
20915	{17,5,14,10}	{}	2018-09-09 18:30:00.004772
20917	{9,13,16,8}	{}	2018-09-09 19:00:00.006231
20924	{1,6,21,19}	{}	2018-09-09 20:45:00.00479
20928	{5,21,13,18}	{}	2018-09-09 21:45:00.004674
20932	{18,5,7,2}	{}	2018-09-09 22:45:00.004736
20935	{16,1,14,5}	{}	2018-09-09 23:30:00.004826
20937	{12,9,21,15}	{}	2018-09-10 00:00:00.00619
20916	{8,9,15,3}	{}	2018-09-09 18:45:00.004659
20919	{4,20,1,21}	{}	2018-09-09 19:30:00.004682
20921	{18,10,7,12}	{}	2018-09-09 20:00:00.006273
20936	{9,13,18,16}	{}	2018-09-09 23:45:00.004465
20939	{12,9,11,20}	{}	2018-09-10 00:30:00.004712
20941	{13,17,15,5}	{}	2018-09-10 01:00:00.006122
20918	{16,11,19,4}	{}	2018-09-09 19:15:00.00474
20925	{9,16,5,3}	{}	2018-09-09 21:00:00.004511
20929	{4,17,3,6}	{}	2018-09-09 22:00:00.004552
20934	{16,4,20,15}	{}	2018-09-09 23:15:00.004773
20942	{21,1,10,2}	{}	2018-09-10 01:15:00.004692
20920	{7,10,2,1}	{}	2018-09-09 19:45:00.004722
20923	{19,21,18,6}	{}	2018-09-09 20:30:00.004746
20927	{12,16,3,9}	{}	2018-09-09 21:30:00.004651
20931	{13,18,19,15}	{}	2018-09-09 22:30:00.004656
20933	{10,9,19,21}	{}	2018-09-09 23:00:00.006181
20940	{6,14,7,1}	{}	2018-09-10 00:45:00.004665
20943	{15,12,4,17}	{}	2018-09-10 01:30:00.004775
20944	{19,4,3,6}	{}	2018-09-10 01:45:00.004772
20945	{12,4,21,14}	{}	2018-09-10 02:00:00.004556
20946	{10,15,12,6}	{}	2018-09-10 02:15:00.004644
20947	{20,5,16,17}	{}	2018-09-10 02:30:00.004709
20948	{17,21,14,4}	{}	2018-09-10 02:45:00.004726
20949	{20,12,10,17}	{}	2018-09-10 03:00:00.004525
20950	{5,20,2,16}	{}	2018-09-10 03:15:00.004784
20951	{13,12,1,19}	{}	2018-09-10 03:30:00.004632
20952	{5,15,19,17}	{}	2018-09-10 03:45:00.004743
20953	{4,12,13,7}	{}	2018-09-10 04:00:00.004506
20954	{8,5,14,2}	{}	2018-09-10 04:15:00.004698
20955	{19,6,11,3}	{}	2018-09-10 04:30:00.004778
20956	{7,14,21,18}	{}	2018-09-10 04:45:00.004774
20957	{1,21,5,15}	{}	2018-09-10 05:00:00.00675
20958	{9,16,18,7}	{}	2018-09-10 05:15:00.004709
20959	{16,14,18,17}	{}	2018-09-10 05:30:00.004724
20960	{19,8,4,21}	{}	2018-09-10 05:45:00.004721
20961	{11,15,1,5}	{}	2018-09-10 06:00:00.004487
20962	{4,16,5,15}	{}	2018-09-10 06:15:00.004682
20963	{21,7,2,15}	{}	2018-09-10 06:30:00.004723
20964	{4,2,15,21}	{}	2018-09-10 06:45:00.004717
20965	{21,15,13,17}	{}	2018-09-10 07:00:00.006778
20966	{18,6,13,16}	{}	2018-09-10 07:15:00.004747
20967	{16,2,14,13}	{}	2018-09-10 07:30:00.004728
20968	{6,17,14,5}	{}	2018-09-10 07:45:00.0047
20969	{9,19,15,2}	{}	2018-09-10 08:00:00.006262
20970	{11,13,7,16}	{}	2018-09-10 08:15:00.004701
20971	{6,16,20,5}	{}	2018-09-10 08:30:00.004652
20972	{17,10,20,21}	{}	2018-09-10 08:45:00.004704
20973	{16,19,11,3}	{}	2018-09-10 09:00:00.004524
20974	{1,19,11,20}	{}	2018-09-10 09:15:00.004685
20975	{2,10,19,20}	{}	2018-09-10 09:30:00.004705
20976	{18,6,11,20}	{}	2018-09-10 09:45:00.004647
20977	{10,1,20,2}	{}	2018-09-10 10:00:00.004395
20978	{17,1,20,4}	{}	2018-09-10 10:15:00.004749
20979	{7,15,2,9}	{}	2018-09-10 10:30:00.004659
20980	{3,10,2,14}	{}	2018-09-10 10:45:00.004773
20981	{15,19,18,14}	{}	2018-09-10 11:00:00.006218
20982	{5,1,14,6}	{}	2018-09-10 11:15:00.004658
20983	{20,14,17,21}	{}	2018-09-10 11:30:00.004689
20984	{6,18,17,14}	{}	2018-09-10 11:45:00.004699
20985	{4,1,9,2}	{}	2018-09-10 12:00:00.005105
20986	{7,14,20,2}	{}	2018-09-10 12:15:00.004658
20987	{14,13,11,10}	{}	2018-09-10 12:30:00.004729
20988	{15,20,6,19}	{}	2018-09-10 12:45:00.004678
20989	{12,11,10,5}	{}	2018-09-10 13:00:00.006206
20990	{13,9,11,2}	{}	2018-09-10 13:15:00.004691
20991	{21,12,11,5}	{}	2018-09-10 13:30:00.004655
20992	{16,19,14,6}	{}	2018-09-10 13:45:00.004704
20993	{16,12,5,17}	{}	2018-09-10 14:00:00.004523
20994	{1,19,16,17}	{}	2018-09-10 14:15:00.004693
20995	{16,21,18,15}	{}	2018-09-10 14:30:00.004714
20996	{20,7,9,14}	{}	2018-09-10 14:45:00.00471
20997	{7,12,2,14}	{}	2018-09-10 15:00:00.004558
20998	{17,15,8,6}	{}	2018-09-10 15:15:00.00477
20999	{3,9,12,6}	{}	2018-09-10 15:30:00.004666
21000	{1,15,20,17}	{}	2018-09-10 15:45:00.004699
21001	{21,9,2,8}	{}	2018-09-10 16:00:00.004508
21002	{12,15,9,19}	{}	2018-09-10 16:15:00.004675
21003	{18,19,7,12}	{}	2018-09-10 16:30:00.004641
21004	{9,16,10,2}	{}	2018-09-10 16:45:00.00475
21005	{19,18,5,7}	{}	2018-09-10 17:00:00.006249
21006	{14,12,19,7}	{}	2018-09-10 17:15:00.004707
21007	{10,12,17,8}	{}	2018-09-10 17:30:00.004686
21008	{4,3,16,5}	{}	2018-09-10 17:45:00.004701
21009	{12,20,16,4}	{}	2018-09-10 18:00:00.004462
21010	{3,17,8,6}	{}	2018-09-10 18:15:00.004722
21011	{10,16,3,13}	{}	2018-09-10 18:30:00.004653
21012	{13,1,7,4}	{}	2018-09-10 18:45:00.004714
21013	{17,21,10,1}	{}	2018-09-10 19:00:00.00623
21014	{5,11,20,17}	{}	2018-09-10 19:15:00.004644
21021	{14,15,13,4}	{}	2018-09-10 21:00:00.004555
21025	{15,1,21,6}	{}	2018-09-10 22:00:00.004556
21030	{16,3,20,13}	{}	2018-09-10 23:15:00.004787
21038	{1,4,12,15}	{}	2018-09-11 01:15:00.004728
21042	{18,17,8,13}	{}	2018-09-11 02:15:00.004662
21046	{15,21,18,9}	{}	2018-09-11 03:15:00.004767
21050	{3,19,8,11}	{}	2018-09-11 04:15:00.004693
21015	{17,10,12,2}	{}	2018-09-10 19:30:00.004748
21017	{9,14,8,6}	{}	2018-09-10 20:00:00.006118
21032	{16,4,21,9}	{}	2018-09-10 23:45:00.004862
21035	{11,5,8,21}	{}	2018-09-11 00:30:00.004733
21037	{12,3,8,10}	{}	2018-09-11 01:00:00.006168
21016	{5,21,19,20}	{}	2018-09-10 19:45:00.004771
21019	{14,21,3,13}	{}	2018-09-10 20:30:00.004765
21023	{10,11,2,9}	{}	2018-09-10 21:30:00.004701
21027	{6,17,18,10}	{}	2018-09-10 22:30:00.004732
21029	{21,6,10,2}	{}	2018-09-10 23:00:00.006305
21036	{10,3,19,20}	{}	2018-09-11 00:45:00.004705
21039	{7,14,15,3}	{}	2018-09-11 01:30:00.004548
21043	{19,11,6,5}	{}	2018-09-11 02:30:00.004618
21047	{9,19,21,4}	{}	2018-09-11 03:30:00.004664
21051	{2,4,21,19}	{}	2018-09-11 04:30:00.004302
21018	{15,11,18,14}	{}	2018-09-10 20:15:00.004699
21022	{19,17,16,20}	{}	2018-09-10 21:15:00.004639
21026	{17,18,2,13}	{}	2018-09-10 22:15:00.004711
21034	{13,7,11,14}	{}	2018-09-11 00:15:00.004825
21041	{4,5,6,14}	{}	2018-09-11 02:00:00.004498
21045	{19,8,10,21}	{}	2018-09-11 03:00:00.004591
21049	{12,3,6,9}	{}	2018-09-11 04:00:00.004549
21020	{6,16,8,4}	{}	2018-09-10 20:45:00.004721
21024	{21,6,14,17}	{}	2018-09-10 21:45:00.004658
21028	{3,10,6,2}	{}	2018-09-10 22:45:00.004736
21031	{2,12,10,14}	{}	2018-09-10 23:30:00.004797
21033	{12,6,5,3}	{}	2018-09-11 00:00:00.006088
21040	{13,14,9,10}	{}	2018-09-11 01:45:00.004682
21044	{18,15,7,8}	{}	2018-09-11 02:45:00.004715
21048	{2,20,10,18}	{}	2018-09-11 03:45:00.004741
21052	{6,14,7,11}	{}	2018-09-11 04:45:00.004598
21053	{2,5,16,18}	{}	2018-09-11 05:00:00.00624
21054	{21,11,5,19}	{}	2018-09-11 05:15:00.004702
21055	{8,10,12,6}	{}	2018-09-11 05:30:00.004719
21056	{15,2,21,8}	{}	2018-09-11 05:45:00.004768
21057	{15,20,21,9}	{}	2018-09-11 06:00:00.004568
21058	{3,5,17,2}	{}	2018-09-11 06:15:00.004713
21059	{6,2,8,11}	{}	2018-09-11 06:30:00.004634
21060	{18,19,13,1}	{}	2018-09-11 06:45:00.004679
21061	{18,3,4,15}	{}	2018-09-11 07:00:00.006266
21062	{6,16,11,4}	{}	2018-09-11 07:15:00.004701
21063	{12,16,17,8}	{}	2018-09-11 07:30:00.004688
21064	{10,8,18,12}	{}	2018-09-11 07:45:00.00471
21065	{6,2,4,9}	{}	2018-09-11 08:00:00.006869
21066	{8,7,20,21}	{}	2018-09-11 08:15:00.004755
21067	{4,16,18,7}	{}	2018-09-11 08:30:00.004729
21068	{1,18,4,9}	{}	2018-09-11 08:45:00.004683
21069	{3,8,2,4}	{}	2018-09-11 09:00:00.004492
21070	{5,9,20,2}	{}	2018-09-11 09:15:00.004737
21071	{20,1,12,7}	{}	2018-09-11 09:30:00.004709
21072	{16,21,8,9}	{}	2018-09-11 09:45:00.004667
21073	{20,7,10,18}	{}	2018-09-11 10:00:00.004567
21074	{11,12,14,3}	{}	2018-09-11 10:15:00.004753
21075	{17,13,5,9}	{}	2018-09-11 10:30:00.004705
21076	{10,6,21,17}	{}	2018-09-11 10:45:00.0044
21077	{18,10,8,20}	{}	2018-09-11 11:00:00.006152
21078	{19,17,3,16}	{}	2018-09-11 11:15:00.004718
21079	{8,3,12,17}	{}	2018-09-11 11:30:00.004726
21080	{21,19,1,20}	{}	2018-09-11 11:45:00.00435
21081	{14,17,4,20}	{}	2018-09-11 12:00:00.006191
21082	{13,18,16,9}	{}	2018-09-11 12:15:00.004751
21083	{2,10,6,7}	{}	2018-09-11 12:30:00.004765
21084	{8,20,4,7}	{}	2018-09-11 12:45:00.004664
21085	{21,16,2,14}	{}	2018-09-11 13:00:00.006211
21086	{19,11,15,3}	{}	2018-09-11 13:15:00.004718
21087	{15,12,3,19}	{}	2018-09-11 13:30:00.004658
21088	{10,4,11,20}	{}	2018-09-11 13:45:00.004636
21089	{21,19,12,13}	{}	2018-09-11 14:00:00.004545
21090	{17,21,13,20}	{}	2018-09-11 14:15:00.004701
21091	{4,2,11,1}	{}	2018-09-11 14:30:00.004696
21092	{14,19,4,15}	{}	2018-09-11 14:45:00.004661
21093	{3,13,15,12}	{}	2018-09-11 15:00:00.004518
21094	{11,9,16,21}	{}	2018-09-11 15:15:00.004689
21095	{21,4,7,10}	{}	2018-09-11 15:30:00.004673
21096	{9,8,6,5}	{}	2018-09-11 15:45:00.004547
21097	{9,20,17,8}	{}	2018-09-11 16:00:00.004408
21098	{15,12,1,14}	{}	2018-09-11 16:15:00.004697
21099	{20,10,19,14}	{}	2018-09-11 16:30:00.004768
21100	{4,5,17,18}	{}	2018-09-11 16:45:00.004693
21101	{5,11,4,18}	{}	2018-09-11 17:00:00.006239
21102	{3,6,2,16}	{}	2018-09-11 17:15:00.004712
21103	{20,18,4,2}	{}	2018-09-11 17:30:00.004709
21104	{4,2,9,7}	{}	2018-09-11 17:45:00.004754
21105	{18,16,2,1}	{}	2018-09-11 18:00:00.004489
21106	{10,14,18,5}	{}	2018-09-11 18:15:00.004726
21107	{1,14,4,2}	{}	2018-09-11 18:30:00.004687
21108	{4,18,20,9}	{}	2018-09-11 18:45:00.00468
21109	{19,13,6,2}	{}	2018-09-11 19:00:00.006256
21110	{7,3,6,21}	{}	2018-09-11 19:15:00.004692
21111	{5,9,19,17}	{}	2018-09-11 19:30:00.004691
21112	{7,1,8,11}	{}	2018-09-11 19:45:00.004683
21113	{18,8,20,1}	{}	2018-09-11 20:00:00.00615
21114	{11,7,12,21}	{}	2018-09-11 20:15:00.004716
21115	{20,4,8,5}	{}	2018-09-11 20:30:00.004679
21116	{19,13,11,8}	{}	2018-09-11 20:45:00.004716
21117	{17,3,9,18}	{}	2018-09-11 21:00:00.004544
21118	{5,7,2,18}	{}	2018-09-11 21:15:00.004693
21119	{17,3,11,20}	{}	2018-09-11 21:30:00.004715
21120	{12,4,13,10}	{}	2018-09-11 21:45:00.004746
21121	{5,10,16,8}	{}	2018-09-11 22:00:00.004579
21126	{19,13,16,4}	{}	2018-09-11 23:15:00.00482
21134	{20,16,5,7}	{}	2018-09-12 01:15:00.00473
21138	{19,12,17,20}	{}	2018-09-12 02:15:00.004727
21142	{3,6,9,10}	{}	2018-09-12 03:15:00.004717
21146	{8,4,19,6}	{}	2018-09-12 04:15:00.004707
21153	{21,16,4,5}	{}	2018-09-12 06:00:00.004499
21158	{13,15,17,4}	{}	2018-09-12 07:15:00.004737
21122	{2,7,15,6}	{}	2018-09-11 22:15:00.004687
21130	{1,6,4,12}	{}	2018-09-12 00:15:00.004227
21137	{20,5,15,3}	{}	2018-09-12 02:00:00.004562
21141	{20,10,13,5}	{}	2018-09-12 03:00:00.004496
21145	{2,17,10,20}	{}	2018-09-12 04:00:00.004495
21150	{16,8,5,15}	{}	2018-09-12 05:15:00.004718
21154	{13,18,19,12}	{}	2018-09-12 06:15:00.004829
21162	{14,1,9,15}	{}	2018-09-12 08:15:00.004692
21123	{13,6,11,12}	{}	2018-09-11 22:30:00.004677
21125	{1,10,14,4}	{}	2018-09-11 23:00:00.006173
21132	{2,21,19,17}	{}	2018-09-12 00:45:00.004679
21135	{2,12,1,15}	{}	2018-09-12 01:30:00.004734
21139	{5,3,16,21}	{}	2018-09-12 02:30:00.004708
21143	{11,2,10,19}	{}	2018-09-12 03:30:00.004663
21147	{15,7,2,4}	{}	2018-09-12 04:30:00.004702
21149	{13,1,7,10}	{}	2018-09-12 05:00:00.006296
21160	{8,7,14,11}	{}	2018-09-12 07:45:00.004702
21163	{7,21,2,5}	{}	2018-09-12 08:30:00.004734
21124	{16,5,7,2}	{}	2018-09-11 22:45:00.004619
21127	{9,21,6,12}	{}	2018-09-11 23:30:00.004798
21128	{16,6,21,20}	{}	2018-09-11 23:45:00.004853
21129	{2,10,15,13}	{}	2018-09-12 00:00:00.006064
21136	{6,3,2,16}	{}	2018-09-12 01:45:00.004693
21140	{9,16,6,13}	{}	2018-09-12 02:45:00.004737
21144	{13,11,1,12}	{}	2018-09-12 03:45:00.004582
21148	{6,4,3,18}	{}	2018-09-12 04:45:00.004657
21151	{3,1,9,12}	{}	2018-09-12 05:30:00.004367
21155	{13,4,14,10}	{}	2018-09-12 06:30:00.004374
21157	{17,3,15,6}	{}	2018-09-12 07:00:00.00618
21164	{7,12,10,8}	{}	2018-09-12 08:45:00.004686
21131	{12,21,9,14}	{}	2018-09-12 00:30:00.004778
21133	{13,12,10,5}	{}	2018-09-12 01:00:00.006202
21152	{12,3,10,8}	{}	2018-09-12 05:45:00.004694
21156	{3,17,16,2}	{}	2018-09-12 06:45:00.004676
21159	{18,9,15,17}	{}	2018-09-12 07:30:00.004353
21161	{9,20,3,4}	{}	2018-09-12 08:00:00.006244
21165	{14,11,5,10}	{}	2018-09-12 09:00:00.004477
21166	{8,14,18,9}	{}	2018-09-12 09:15:00.004681
21167	{1,19,7,15}	{}	2018-09-12 09:30:00.004673
21168	{21,4,12,9}	{}	2018-09-12 09:45:00.004676
21169	{11,19,18,1}	{}	2018-09-12 10:00:00.004515
21170	{2,15,18,14}	{}	2018-09-12 10:15:00.004699
21171	{19,4,15,1}	{}	2018-09-12 10:30:00.004665
21172	{10,3,19,8}	{}	2018-09-12 10:45:00.004729
21173	{20,1,9,13}	{}	2018-09-12 11:00:00.006262
21174	{18,6,19,16}	{}	2018-09-12 11:15:00.004705
21175	{18,21,13,5}	{}	2018-09-12 11:30:00.004689
21176	{4,9,13,7}	{}	2018-09-12 11:45:00.004711
21177	{18,6,9,12}	{}	2018-09-12 12:00:00.006177
21178	{15,3,10,12}	{}	2018-09-12 12:15:00.004648
21179	{8,5,3,13}	{}	2018-09-12 12:30:00.004719
21180	{4,14,19,8}	{}	2018-09-12 12:45:00.004742
21181	{16,14,4,20}	{}	2018-09-12 13:00:00.006114
21182	{12,21,14,15}	{}	2018-09-12 13:15:00.004678
21183	{7,5,3,9}	{}	2018-09-12 13:30:00.004721
21184	{16,13,17,15}	{}	2018-09-12 13:45:00.004669
21185	{19,12,8,18}	{}	2018-09-12 14:00:00.004544
21186	{10,14,8,4}	{}	2018-09-12 14:15:00.004718
21187	{10,5,14,13}	{}	2018-09-12 14:30:00.004606
21188	{18,3,5,14}	{}	2018-09-12 14:45:00.003883
21189	{20,12,4,8}	{}	2018-09-12 15:00:00.004465
21190	{16,11,15,6}	{}	2018-09-12 15:15:00.004762
21191	{5,7,10,15}	{}	2018-09-12 15:30:00.0046
21192	{1,2,10,21}	{}	2018-09-12 15:45:00.004652
21193	{9,2,16,18}	{}	2018-09-12 16:00:00.004493
21194	{11,20,7,10}	{}	2018-09-12 16:15:00.004693
21195	{18,21,10,13}	{}	2018-09-12 16:30:00.004726
21196	{16,2,6,3}	{}	2018-09-12 16:45:00.004759
21197	{11,12,2,17}	{}	2018-09-12 17:00:00.006175
21198	{3,5,16,2}	{}	2018-09-12 17:15:00.004668
21199	{11,16,2,1}	{}	2018-09-12 17:30:00.004706
21200	{15,20,6,3}	{}	2018-09-12 17:45:00.004641
21201	{20,2,12,5}	{}	2018-09-12 18:00:00.004401
21202	{10,18,12,21}	{}	2018-09-12 18:15:00.004614
21203	{18,8,19,14}	{}	2018-09-12 18:30:00.00469
21204	{17,6,3,8}	{}	2018-09-12 18:45:00.004756
21205	{9,6,3,8}	{}	2018-09-12 19:00:00.006618
21206	{1,10,9,13}	{}	2018-09-12 19:15:00.004719
21207	{4,10,5,21}	{}	2018-09-12 19:30:00.004712
21208	{8,15,3,6}	{}	2018-09-12 19:45:00.004728
21209	{16,6,4,11}	{}	2018-09-12 20:00:00.006179
21210	{12,1,5,9}	{}	2018-09-12 20:15:00.004787
21211	{7,19,2,3}	{}	2018-09-12 20:30:00.004595
21212	{19,16,2,3}	{}	2018-09-12 20:45:00.00472
21213	{9,11,12,13}	{}	2018-09-12 21:00:00.004555
21214	{2,20,6,5}	{}	2018-09-12 21:15:00.004675
21215	{10,11,20,8}	{}	2018-09-12 21:30:00.004713
21216	{13,6,5,20}	{}	2018-09-12 21:45:00.00465
21217	{7,3,5,18}	{}	2018-09-12 22:00:00.004565
21218	{5,6,11,4}	{}	2018-09-12 22:15:00.004691
21219	{10,17,14,12}	{}	2018-09-12 22:30:00.004737
21220	{12,11,13,18}	{}	2018-09-12 22:45:00.004695
21221	{4,18,2,10}	{}	2018-09-12 23:00:00.006215
21222	{3,5,21,7}	{}	2018-09-12 23:15:00.004818
21223	{6,14,16,11}	{}	2018-09-12 23:30:00.004867
21224	{10,18,19,4}	{}	2018-09-12 23:45:00.004858
21225	{12,13,14,16}	{}	2018-09-13 00:00:00.006055
21226	{17,11,9,21}	{}	2018-09-13 00:15:00.004569
21227	{9,3,4,20}	{}	2018-09-13 00:30:00.004672
21228	{13,14,3,9}	{}	2018-09-13 00:45:00.004619
21229	{12,7,5,2}	{}	2018-09-13 01:00:00.00622
21230	{14,15,18,21}	{}	2018-09-13 01:15:00.004693
21231	{7,1,21,5}	{}	2018-09-13 01:30:00.00468
21232	{9,4,14,3}	{}	2018-09-13 01:45:00.004735
21233	{6,11,18,13}	{}	2018-09-13 02:00:00.004564
21234	{18,14,12,9}	{}	2018-09-13 02:15:00.004705
21235	{10,15,17,8}	{}	2018-09-13 02:30:00.004711
21236	{3,18,21,5}	{}	2018-09-13 02:45:00.004677
21240	{21,2,3,4}	{}	2018-09-13 03:45:00.004652
21244	{18,3,2,14}	{}	2018-09-13 04:45:00.004748
21247	{13,17,5,21}	{}	2018-09-13 05:30:00.004558
21251	{7,11,17,16}	{}	2018-09-13 06:30:00.004734
21253	{6,1,5,2}	{}	2018-09-13 07:00:00.00623
21260	{3,1,8,7}	{}	2018-09-13 08:45:00.004693
21264	{8,19,21,20}	{}	2018-09-13 09:45:00.00467
21268	{14,9,16,5}	{}	2018-09-13 10:45:00.004677
21271	{8,2,11,19}	{}	2018-09-13 11:30:00.004675
21273	{14,2,18,10}	{}	2018-09-13 12:00:00.006197
21280	{5,12,19,3}	{}	2018-09-13 13:45:00.004792
21237	{20,9,6,17}	{}	2018-09-13 03:00:00.004497
21241	{21,15,20,8}	{}	2018-09-13 04:00:00.004504
21246	{4,17,19,15}	{}	2018-09-13 05:15:00.00463
21250	{15,9,20,13}	{}	2018-09-13 06:15:00.004714
21258	{13,8,20,10}	{}	2018-09-13 08:15:00.004785
21262	{11,3,10,7}	{}	2018-09-13 09:15:00.004725
21266	{11,12,17,14}	{}	2018-09-13 10:15:00.004783
21274	{5,16,9,7}	{}	2018-09-13 12:15:00.004721
21281	{2,6,12,13}	{}	2018-09-13 14:00:00.004491
21238	{20,19,3,5}	{}	2018-09-13 03:15:00.004761
21242	{16,12,9,14}	{}	2018-09-13 04:15:00.004212
21249	{13,9,15,20}	{}	2018-09-13 06:00:00.004495
21254	{17,7,4,21}	{}	2018-09-13 07:15:00.004749
21261	{21,12,14,16}	{}	2018-09-13 09:00:00.004491
21265	{5,2,17,12}	{}	2018-09-13 10:00:00.004456
21270	{19,8,4,20}	{}	2018-09-13 11:15:00.00477
21278	{12,1,7,17}	{}	2018-09-13 13:15:00.004773
21282	{7,11,16,18}	{}	2018-09-13 14:15:00.004681
21239	{20,10,9,11}	{}	2018-09-13 03:30:00.004669
21243	{19,7,4,20}	{}	2018-09-13 04:30:00.004766
21245	{12,16,21,20}	{}	2018-09-13 05:00:00.006231
21256	{13,14,3,17}	{}	2018-09-13 07:45:00.004672
21259	{13,3,5,15}	{}	2018-09-13 08:30:00.004705
21263	{20,2,17,14}	{}	2018-09-13 09:30:00.004634
21267	{15,3,7,21}	{}	2018-09-13 10:30:00.004781
21269	{3,2,12,9}	{}	2018-09-13 11:00:00.006272
21276	{1,21,14,7}	{}	2018-09-13 12:45:00.004787
21279	{4,14,5,13}	{}	2018-09-13 13:30:00.004689
21283	{14,21,9,5}	{}	2018-09-13 14:30:00.004756
21248	{1,15,3,12}	{}	2018-09-13 05:45:00.004725
21252	{1,12,16,19}	{}	2018-09-13 06:45:00.004702
21255	{1,10,6,14}	{}	2018-09-13 07:30:00.004693
21257	{13,10,2,9}	{}	2018-09-13 08:00:00.006217
21272	{17,4,21,7}	{}	2018-09-13 11:45:00.004661
21275	{16,2,10,13}	{}	2018-09-13 12:30:00.004724
21277	{3,9,18,21}	{}	2018-09-13 13:00:00.006075
21284	{18,8,17,15}	{}	2018-09-13 14:45:00.00452
21285	{11,15,16,13}	{}	2018-09-13 15:00:00.004586
21286	{10,14,12,11}	{}	2018-09-13 15:15:00.004734
21287	{14,5,15,3}	{}	2018-09-13 15:30:00.004744
21288	{10,20,19,3}	{}	2018-09-13 15:45:00.004752
21289	{9,15,16,13}	{}	2018-09-13 16:00:00.004515
21290	{5,1,17,14}	{}	2018-09-13 16:15:00.004683
21291	{14,16,20,17}	{}	2018-09-13 16:30:00.004736
21292	{20,16,19,11}	{}	2018-09-13 16:45:00.004778
21293	{10,17,11,2}	{}	2018-09-13 17:00:00.006158
21294	{14,13,20,12}	{}	2018-09-13 17:15:00.004724
21295	{6,20,15,4}	{}	2018-09-13 17:30:00.00467
21296	{21,7,16,4}	{}	2018-09-13 17:45:00.00466
21297	{10,17,20,6}	{}	2018-09-13 18:00:00.004515
21298	{13,5,8,20}	{}	2018-09-13 18:15:00.004698
21299	{4,18,14,7}	{}	2018-09-13 18:30:00.004716
21300	{1,9,18,11}	{}	2018-09-13 18:45:00.004702
21301	{11,12,16,5}	{}	2018-09-13 19:00:00.006163
21302	{12,13,18,15}	{}	2018-09-13 19:15:00.004731
21303	{3,15,21,4}	{}	2018-09-13 19:30:00.004697
21304	{5,13,9,4}	{}	2018-09-13 19:45:00.004672
21305	{8,4,14,12}	{}	2018-09-13 20:00:00.006214
21306	{12,18,1,5}	{}	2018-09-13 20:15:00.004726
21307	{10,5,1,11}	{}	2018-09-13 20:30:00.004701
21308	{1,14,13,5}	{}	2018-09-13 20:45:00.004647
21309	{16,20,3,17}	{}	2018-09-13 21:00:00.004516
21310	{1,2,18,19}	{}	2018-09-13 21:15:00.00471
21311	{5,16,19,7}	{}	2018-09-13 21:30:00.004717
21312	{6,2,20,8}	{}	2018-09-13 21:45:00.004636
21313	{1,18,3,8}	{}	2018-09-13 22:00:00.004522
21314	{17,8,3,19}	{}	2018-09-13 22:15:00.004698
21315	{5,11,14,7}	{}	2018-09-13 22:30:00.004624
21316	{16,6,8,20}	{}	2018-09-13 22:45:00.00452
21317	{3,9,15,7}	{}	2018-09-13 23:00:00.006205
21318	{6,5,17,15}	{}	2018-09-13 23:15:00.004797
21319	{11,19,5,7}	{}	2018-09-13 23:30:00.004827
21320	{1,20,5,19}	{}	2018-09-13 23:45:00.004794
21321	{9,11,13,8}	{}	2018-09-14 00:00:00.006104
21322	{17,3,11,9}	{}	2018-09-14 00:15:00.004652
21323	{15,2,7,5}	{}	2018-09-14 00:30:00.004706
21324	{17,19,9,14}	{}	2018-09-14 00:45:00.004666
21325	{5,18,10,15}	{}	2018-09-14 01:00:00.00617
21326	{7,2,12,21}	{}	2018-09-14 01:15:00.004654
21327	{14,4,3,7}	{}	2018-09-14 01:30:00.004752
21328	{21,12,10,16}	{}	2018-09-14 01:45:00.00476
21329	{12,4,7,8}	{}	2018-09-14 02:00:00.00457
21330	{14,18,16,6}	{}	2018-09-14 02:15:00.004755
21331	{11,8,20,5}	{}	2018-09-14 02:30:00.004655
21332	{5,11,18,8}	{}	2018-09-14 02:45:00.00471
21333	{15,10,4,13}	{}	2018-09-14 03:00:00.004521
21334	{5,6,11,16}	{}	2018-09-14 03:15:00.00471
21335	{10,13,3,1}	{}	2018-09-14 03:30:00.004653
21336	{9,12,18,7}	{}	2018-09-14 03:45:00.004707
21337	{17,3,13,2}	{}	2018-09-14 04:00:00.004565
21338	{16,5,9,18}	{}	2018-09-14 04:15:00.004728
21339	{5,14,17,12}	{}	2018-09-14 04:30:00.004737
21340	{9,20,4,12}	{}	2018-09-14 04:45:00.004761
21341	{20,15,17,2}	{}	2018-09-14 05:00:00.006194
21342	{7,14,4,19}	{}	2018-09-14 05:15:00.004701
21343	{15,12,19,21}	{}	2018-09-14 05:30:00.004656
21344	{6,9,20,3}	{}	2018-09-14 05:45:00.004681
21345	{3,4,15,18}	{}	2018-09-14 06:00:00.004442
21346	{19,20,1,21}	{}	2018-09-14 06:15:00.004755
21347	{18,5,9,11}	{}	2018-09-14 06:30:00.004626
21348	{19,16,21,6}	{}	2018-09-14 06:45:00.004652
21349	{5,8,19,17}	{}	2018-09-14 07:00:00.006244
21350	{2,6,1,9}	{}	2018-09-14 07:15:00.004625
21351	{4,5,10,19}	{}	2018-09-14 07:30:00.004805
21352	{13,3,7,9}	{}	2018-09-14 07:45:00.004746
21353	{3,2,10,14}	{}	2018-09-14 08:00:00.006214
21354	{14,18,6,10}	{}	2018-09-14 08:15:00.004752
21358	{10,4,8,1}	{}	2018-09-14 09:15:00.004717
21362	{9,11,21,12}	{}	2018-09-14 10:15:00.004739
21370	{18,2,1,7}	{}	2018-09-14 12:15:00.004583
21377	{6,21,11,15}	{}	2018-09-14 14:00:00.004527
21381	{15,6,14,19}	{}	2018-09-14 15:00:00.004531
21385	{15,10,14,1}	{}	2018-09-14 16:00:00.004463
21390	{8,2,13,3}	{}	2018-09-14 17:15:00.004642
21394	{1,2,17,19}	{}	2018-09-14 18:15:00.004637
21402	{13,9,10,21}	{}	2018-09-14 20:15:00.004304
21406	{20,13,5,14}	{}	2018-09-14 21:15:00.004671
21355	{18,10,16,15}	{}	2018-09-14 08:30:00.004732
21359	{18,4,2,6}	{}	2018-09-14 09:30:00.004766
21363	{6,9,4,17}	{}	2018-09-14 10:30:00.00466
21365	{11,14,16,20}	{}	2018-09-14 11:00:00.006244
21372	{2,6,11,1}	{}	2018-09-14 12:45:00.004751
21375	{5,20,17,4}	{}	2018-09-14 13:30:00.004687
21379	{10,2,8,16}	{}	2018-09-14 14:30:00.004649
21383	{6,13,4,10}	{}	2018-09-14 15:30:00.004665
21387	{8,15,7,21}	{}	2018-09-14 16:30:00.004724
21389	{7,16,19,21}	{}	2018-09-14 17:00:00.006205
21400	{17,21,4,18}	{}	2018-09-14 19:45:00.004656
21403	{13,8,11,7}	{}	2018-09-14 20:30:00.0047
21407	{14,16,11,20}	{}	2018-09-14 21:30:00.004774
21356	{12,16,1,9}	{}	2018-09-14 08:45:00.004659
21360	{13,14,19,17}	{}	2018-09-14 09:45:00.004677
21364	{6,16,8,9}	{}	2018-09-14 10:45:00.0047
21367	{3,7,4,11}	{}	2018-09-14 11:30:00.004625
21369	{12,19,13,11}	{}	2018-09-14 12:00:00.006215
21376	{11,16,9,2}	{}	2018-09-14 13:45:00.004762
21380	{15,3,4,19}	{}	2018-09-14 14:45:00.004673
21384	{4,11,7,3}	{}	2018-09-14 15:45:00.004699
21388	{13,1,3,19}	{}	2018-09-14 16:45:00.004667
21391	{2,20,4,5}	{}	2018-09-14 17:30:00.00464
21395	{10,4,12,3}	{}	2018-09-14 18:30:00.004647
21397	{7,8,18,20}	{}	2018-09-14 19:00:00.00624
21404	{18,13,7,5}	{}	2018-09-14 20:45:00.004636
21408	{14,15,12,1}	{}	2018-09-14 21:45:00.004613
21357	{4,14,12,18}	{}	2018-09-14 09:00:00.004501
21361	{6,15,10,18}	{}	2018-09-14 10:00:00.004521
21366	{8,18,4,3}	{}	2018-09-14 11:15:00.004729
21374	{2,16,20,3}	{}	2018-09-14 13:15:00.004665
21378	{1,3,13,4}	{}	2018-09-14 14:15:00.004521
21382	{16,20,6,1}	{}	2018-09-14 15:15:00.004619
21386	{13,3,4,5}	{}	2018-09-14 16:15:00.004687
21393	{19,3,5,1}	{}	2018-09-14 18:00:00.004399
21398	{11,12,5,20}	{}	2018-09-14 19:15:00.004538
21405	{14,10,9,1}	{}	2018-09-14 21:00:00.004551
21368	{16,7,10,4}	{}	2018-09-14 11:45:00.004738
21371	{13,14,1,18}	{}	2018-09-14 12:30:00.004649
21373	{2,13,18,5}	{}	2018-09-14 13:00:00.006129
21392	{5,16,3,4}	{}	2018-09-14 17:45:00.004704
21396	{8,6,11,16}	{}	2018-09-14 18:45:00.004735
21399	{7,19,21,17}	{}	2018-09-14 19:30:00.004692
21401	{16,18,6,9}	{}	2018-09-14 20:00:00.006241
21409	{4,5,7,13}	{}	2018-09-14 22:00:00.004475
21410	{4,11,21,15}	{}	2018-09-14 22:15:00.004728
21411	{18,2,4,1}	{}	2018-09-14 22:30:00.004721
21412	{19,18,9,1}	{}	2018-09-14 22:45:00.0047
21413	{19,21,12,8}	{}	2018-09-14 23:00:00.006101
21414	{1,7,21,11}	{}	2018-09-14 23:15:00.004604
21415	{18,10,21,17}	{}	2018-09-14 23:30:00.004849
21416	{12,18,3,19}	{}	2018-09-14 23:45:00.004815
21417	{3,16,10,4}	{}	2018-09-15 00:00:00.006074
21418	{16,10,17,21}	{}	2018-09-15 00:15:00.004729
21419	{13,17,4,12}	{}	2018-09-15 00:30:00.004706
21420	{11,10,12,4}	{}	2018-09-15 00:45:00.004731
21421	{17,16,1,3}	{}	2018-09-15 01:00:00.006146
21422	{16,14,3,11}	{}	2018-09-15 01:15:00.00475
21423	{7,21,12,19}	{}	2018-09-15 01:30:00.004645
21424	{20,14,6,12}	{}	2018-09-15 01:45:00.004723
21425	{17,5,15,1}	{}	2018-09-15 02:00:00.00453
21426	{6,15,2,16}	{}	2018-09-15 02:15:00.004669
21427	{18,13,19,11}	{}	2018-09-15 02:30:00.004772
21428	{14,19,2,17}	{}	2018-09-15 02:45:00.004699
21429	{1,8,19,7}	{}	2018-09-15 03:00:00.004532
21430	{19,12,6,10}	{}	2018-09-15 03:15:00.004745
21431	{12,2,18,8}	{}	2018-09-15 03:30:00.004353
21432	{21,19,9,6}	{}	2018-09-15 03:45:00.004701
21433	{13,19,2,9}	{}	2018-09-15 04:00:00.004434
21434	{13,3,6,21}	{}	2018-09-15 04:15:00.004749
21435	{8,6,9,15}	{}	2018-09-15 04:30:00.004665
21436	{21,2,13,19}	{}	2018-09-15 04:45:00.004696
21437	{17,13,21,15}	{}	2018-09-15 05:00:00.006204
21438	{18,20,12,8}	{}	2018-09-15 05:15:00.004706
21439	{5,15,2,21}	{}	2018-09-15 05:30:00.00471
21440	{8,18,14,7}	{}	2018-09-15 05:45:00.004724
21441	{18,11,13,6}	{}	2018-09-15 06:00:00.004537
21442	{11,6,4,5}	{}	2018-09-15 06:15:00.004741
21443	{11,19,12,13}	{}	2018-09-15 06:30:00.004722
21444	{10,9,15,17}	{}	2018-09-15 06:45:00.004766
21445	{17,15,16,20}	{}	2018-09-15 07:00:00.006195
21446	{1,4,7,12}	{}	2018-09-15 07:15:00.004703
21447	{10,21,6,20}	{}	2018-09-15 07:30:00.004666
21448	{8,4,21,16}	{}	2018-09-15 07:45:00.004651
21449	{21,6,5,12}	{}	2018-09-15 08:00:00.006245
21450	{4,11,3,12}	{}	2018-09-15 08:15:00.004732
21451	{8,11,18,14}	{}	2018-09-15 08:30:00.004793
21452	{4,16,19,20}	{}	2018-09-15 08:45:00.004673
21453	{19,5,18,1}	{}	2018-09-15 09:00:00.004545
21454	{3,14,12,8}	{}	2018-09-15 09:15:00.004662
21455	{5,16,9,14}	{}	2018-09-15 09:30:00.004808
21456	{14,10,12,16}	{}	2018-09-15 09:45:00.004684
21457	{7,11,2,20}	{}	2018-09-15 10:00:00.004564
21458	{6,11,1,14}	{}	2018-09-15 10:15:00.004697
21459	{7,14,2,10}	{}	2018-09-15 10:30:00.004696
21460	{11,9,1,8}	{}	2018-09-15 10:45:00.004701
21461	{4,16,17,19}	{}	2018-09-15 11:00:00.006257
21462	{1,10,21,6}	{}	2018-09-15 11:15:00.004699
21463	{16,17,20,10}	{}	2018-09-15 11:30:00.004754
21464	{10,4,1,5}	{}	2018-09-15 11:45:00.004688
21465	{2,4,16,5}	{}	2018-09-15 12:00:00.006174
21466	{5,13,7,12}	{}	2018-09-15 12:15:00.004724
21467	{4,12,15,20}	{}	2018-09-15 12:30:00.004701
21468	{2,18,8,4}	{}	2018-09-15 12:45:00.004723
21469	{5,1,20,12}	{}	2018-09-15 13:00:00.006272
21470	{12,6,11,3}	{}	2018-09-15 13:15:00.004738
21471	{2,9,8,10}	{}	2018-09-15 13:30:00.004709
21472	{1,21,6,10}	{}	2018-09-15 13:45:00.004762
21473	{8,10,3,11}	{}	2018-09-15 14:00:00.004546
21474	{17,12,1,20}	{}	2018-09-15 14:15:00.00468
21475	{13,16,14,19}	{}	2018-09-15 14:30:00.004725
21476	{15,8,5,1}	{}	2018-09-15 14:45:00.004642
21477	{13,20,18,7}	{}	2018-09-15 15:00:00.004497
21478	{7,9,17,14}	{}	2018-09-15 15:15:00.00466
21479	{21,8,3,15}	{}	2018-09-15 15:30:00.004702
21483	{21,17,4,12}	{}	2018-09-15 16:30:00.004666
21485	{1,6,19,21}	{}	2018-09-15 17:00:00.006214
21496	{16,1,18,8}	{}	2018-09-15 19:45:00.004798
21499	{15,17,13,18}	{}	2018-09-15 20:30:00.004656
21503	{8,3,16,4}	{}	2018-09-15 21:30:00.004682
21507	{15,17,18,2}	{}	2018-09-15 22:30:00.004677
21509	{7,4,19,9}	{}	2018-09-15 23:00:00.006266
21516	{4,19,12,10}	{}	2018-09-16 00:45:00.004588
21519	{15,17,13,12}	{}	2018-09-16 01:30:00.004665
21523	{16,5,10,2}	{}	2018-09-16 02:30:00.004627
21527	{15,17,11,14}	{}	2018-09-16 03:30:00.004678
21531	{21,15,16,20}	{}	2018-09-16 04:30:00.004691
21533	{15,5,20,17}	{}	2018-09-16 05:00:00.006212
21480	{6,16,3,1}	{}	2018-09-15 15:45:00.004681
21484	{1,4,17,11}	{}	2018-09-15 16:45:00.004691
21487	{11,12,14,13}	{}	2018-09-15 17:30:00.004743
21491	{19,18,8,5}	{}	2018-09-15 18:30:00.004565
21493	{3,4,5,9}	{}	2018-09-15 19:00:00.006852
21500	{18,8,5,17}	{}	2018-09-15 20:45:00.004745
21504	{16,4,3,9}	{}	2018-09-15 21:45:00.004673
21508	{10,3,14,8}	{}	2018-09-15 22:45:00.004706
21511	{15,8,9,19}	{}	2018-09-15 23:30:00.004821
21513	{11,1,5,4}	{}	2018-09-16 00:00:00.006061
21520	{1,21,16,7}	{}	2018-09-16 01:45:00.004581
21524	{5,21,13,17}	{}	2018-09-16 02:45:00.004703
21528	{20,16,1,19}	{}	2018-09-16 03:45:00.00484
21532	{14,1,11,10}	{}	2018-09-16 04:45:00.004663
21535	{17,10,19,2}	{}	2018-09-16 05:30:00.00389
21539	{3,14,13,11}	{}	2018-09-16 06:30:00.004692
21481	{19,13,15,1}	{}	2018-09-15 16:00:00.004533
21486	{1,19,21,4}	{}	2018-09-15 17:15:00.004712
21490	{4,12,19,9}	{}	2018-09-15 18:15:00.004694
21498	{13,9,16,5}	{}	2018-09-15 20:15:00.004721
21502	{17,14,20,7}	{}	2018-09-15 21:15:00.00473
21506	{17,7,15,6}	{}	2018-09-15 22:15:00.004734
21514	{17,2,21,6}	{}	2018-09-16 00:15:00.004733
21521	{15,20,7,14}	{}	2018-09-16 02:00:00.004519
21525	{12,10,1,16}	{}	2018-09-16 03:00:00.004543
21529	{11,16,9,8}	{}	2018-09-16 04:00:00.004537
21534	{18,5,1,17}	{}	2018-09-16 05:15:00.004673
21538	{14,7,3,2}	{}	2018-09-16 06:15:00.004731
21482	{8,21,13,16}	{}	2018-09-15 16:15:00.004718
21489	{10,8,18,2}	{}	2018-09-15 18:00:00.003738
21494	{20,11,4,21}	{}	2018-09-15 19:15:00.004716
21501	{9,4,21,12}	{}	2018-09-15 21:00:00.004481
21505	{18,9,20,21}	{}	2018-09-15 22:00:00.004528
21510	{1,7,11,14}	{}	2018-09-15 23:15:00.004881
21518	{17,7,19,12}	{}	2018-09-16 01:15:00.004684
21522	{4,3,18,8}	{}	2018-09-16 02:15:00.004694
21526	{19,3,11,6}	{}	2018-09-16 03:15:00.004675
21530	{3,2,18,7}	{}	2018-09-16 04:15:00.004718
21537	{10,20,18,7}	{}	2018-09-16 06:00:00.004518
21488	{4,19,9,18}	{}	2018-09-15 17:45:00.004719
21492	{15,10,14,16}	{}	2018-09-15 18:45:00.004728
21495	{7,21,1,5}	{}	2018-09-15 19:30:00.004643
21497	{10,2,21,11}	{}	2018-09-15 20:00:00.006021
21512	{10,11,4,15}	{}	2018-09-15 23:45:00.004803
21515	{14,8,7,3}	{}	2018-09-16 00:30:00.004703
21517	{7,19,3,6}	{}	2018-09-16 01:00:00.006224
21536	{12,14,10,18}	{}	2018-09-16 05:45:00.004727
21540	{16,8,14,12}	{}	2018-09-16 06:45:00.004725
21541	{6,2,18,3}	{}	2018-09-16 07:00:00.006257
21542	{3,21,9,18}	{}	2018-09-16 07:15:00.004663
21543	{2,19,13,20}	{}	2018-09-16 07:30:00.004685
21544	{9,6,7,8}	{}	2018-09-16 07:45:00.004666
21545	{21,18,15,14}	{}	2018-09-16 08:00:00.006019
21546	{10,2,11,7}	{}	2018-09-16 08:15:00.004751
21547	{4,12,11,15}	{}	2018-09-16 08:30:00.004773
21548	{17,16,3,14}	{}	2018-09-16 08:45:00.00469
21549	{1,8,20,12}	{}	2018-09-16 09:00:00.004504
21550	{1,11,15,13}	{}	2018-09-16 09:15:00.004731
21551	{9,2,17,21}	{}	2018-09-16 09:30:00.004734
21552	{16,15,14,11}	{}	2018-09-16 09:45:00.004734
21553	{10,2,5,21}	{}	2018-09-16 10:00:00.004549
21554	{4,21,9,20}	{}	2018-09-16 10:15:00.004736
21555	{19,1,11,21}	{}	2018-09-16 10:30:00.004772
21556	{12,4,17,14}	{}	2018-09-16 10:45:00.004558
21557	{7,5,11,6}	{}	2018-09-16 11:00:00.006248
21558	{18,1,20,3}	{}	2018-09-16 11:15:00.004712
21559	{8,18,20,11}	{}	2018-09-16 11:30:00.004655
21560	{1,9,10,13}	{}	2018-09-16 11:45:00.004688
21561	{10,7,15,16}	{}	2018-09-16 12:00:00.006245
21562	{11,20,2,13}	{}	2018-09-16 12:15:00.00469
21563	{8,12,14,13}	{}	2018-09-16 12:30:00.004664
21564	{21,12,19,20}	{}	2018-09-16 12:45:00.004728
21565	{8,19,16,18}	{}	2018-09-16 13:00:00.006242
21566	{18,4,2,16}	{}	2018-09-16 13:15:00.004743
21567	{15,1,11,2}	{}	2018-09-16 13:30:00.004721
21568	{9,1,11,18}	{}	2018-09-16 13:45:00.004207
21569	{14,13,7,20}	{}	2018-09-16 14:00:00.004219
21570	{5,13,3,12}	{}	2018-09-16 14:15:00.00473
21571	{17,20,7,4}	{}	2018-09-16 14:30:00.004631
\.


--
-- Name: rapidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rapidos_id_seq', 23300, true);


--
-- Name: supers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.supers_id_seq', 16060, true);


--
-- Name: top3_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.top3_id_seq', 18184, true);


--
-- Data for Name: two_numbers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.two_numbers (id, combination, win_tickets, date) FROM stdin;
20275	{12,16,6,19}	{}	2018-08-24 01:20:00.0069
20276	{8,11,6,14}	{}	2018-08-24 01:35:00.006846
20277	{11,15,16,6}	{}	2018-08-24 01:50:00.006126
20278	{18,17,4,8}	{}	2018-08-24 02:05:00.006115
20279	{6,11,18,14}	{}	2018-08-24 02:20:00.006119
20280	{16,7,2,12}	{}	2018-08-24 02:35:00.00473
20281	{14,7,16,8}	{}	2018-08-24 02:50:00.004692
20282	{5,9,7,17}	{}	2018-08-24 03:05:00.004477
20283	{16,2,9,20}	{}	2018-08-24 03:20:00.004662
20284	{21,1,3,7}	{}	2018-08-24 03:35:00.004633
20285	{21,18,13,3}	{}	2018-08-24 03:50:00.004674
20286	{21,18,16,3}	{}	2018-08-24 04:05:00.004499
20287	{10,2,17,16}	{}	2018-08-24 04:20:00.004719
20288	{9,3,6,2}	{}	2018-08-24 04:35:00.004671
20289	{20,5,13,10}	{}	2018-08-24 04:50:00.004726
20290	{21,8,20,7}	{}	2018-08-24 05:05:00.00529
20291	{20,11,9,12}	{}	2018-08-24 05:20:00.004487
20292	{5,17,19,3}	{}	2018-08-24 05:35:00.0047
20293	{21,1,5,13}	{}	2018-08-24 05:50:00.004596
20294	{8,9,14,19}	{}	2018-08-24 06:05:00.004523
20295	{11,6,15,17}	{}	2018-08-24 06:20:00.004625
20296	{4,8,7,17}	{}	2018-08-24 06:35:00.00458
20297	{12,18,15,10}	{}	2018-08-24 06:50:00.004169
20298	{19,1,13,3}	{}	2018-08-24 07:05:00.005343
20299	{15,11,16,5}	{}	2018-08-24 07:20:00.004637
20300	{18,21,15,17}	{}	2018-08-24 07:35:00.004712
20301	{12,16,6,9}	{}	2018-08-24 07:50:00.004669
20302	{17,18,3,14}	{}	2018-08-24 08:05:00.005287
20303	{20,1,13,5}	{}	2018-08-24 08:20:00.004605
20304	{12,2,13,10}	{}	2018-08-24 08:35:00.004655
20305	{6,13,9,16}	{}	2018-08-24 08:50:00.004661
20306	{15,11,10,16}	{}	2018-08-24 09:05:00.004517
20307	{3,1,13,11}	{}	2018-08-24 09:20:00.004669
20308	{6,15,10,4}	{}	2018-08-24 09:35:00.004612
20309	{6,16,18,12}	{}	2018-08-24 09:50:00.004657
20310	{8,20,10,6}	{}	2018-08-24 10:05:00.004462
20311	{4,18,13,3}	{}	2018-08-24 10:20:00.004657
20312	{5,11,1,19}	{}	2018-08-24 10:35:00.004529
20313	{7,12,16,14}	{}	2018-08-24 10:50:00.004627
20314	{3,19,21,14}	{}	2018-08-24 11:05:00.00528
20315	{10,2,16,13}	{}	2018-08-24 11:20:00.004528
20316	{1,11,9,21}	{}	2018-08-24 11:35:00.00475
20317	{18,20,21,15}	{}	2018-08-24 11:50:00.004677
20318	{12,9,7,19}	{}	2018-08-24 12:05:00.005208
20319	{20,3,2,18}	{}	2018-08-24 12:20:00.004643
20320	{2,6,13,8}	{}	2018-08-24 12:35:00.004667
20321	{15,8,17,14}	{}	2018-08-24 12:50:00.004741
20322	{7,4,18,21}	{}	2018-08-24 13:05:00.005342
20323	{16,8,5,17}	{}	2018-08-24 13:20:00.00467
20324	{10,14,19,1}	{}	2018-08-24 13:35:00.004684
20325	{9,7,18,11}	{}	2018-08-24 13:50:00.004845
20326	{7,1,8,21}	{}	2018-08-24 14:05:00.004657
20327	{10,21,5,20}	{}	2018-08-24 14:20:00.004685
20328	{16,11,10,6}	{}	2018-08-24 14:35:00.004693
20329	{5,11,8,2}	{}	2018-08-24 14:50:00.004717
20330	{19,13,4,12}	{}	2018-08-24 15:05:00.004464
20331	{6,2,18,14}	{}	2018-08-24 15:20:00.004618
20332	{18,16,4,10}	{}	2018-08-24 15:35:00.004641
20333	{1,11,12,19}	{}	2018-08-24 15:50:00.004549
20334	{9,6,14,15}	{}	2018-08-24 16:05:00.004517
20335	{10,18,3,16}	{}	2018-08-24 16:20:00.004555
20336	{10,6,18,8}	{}	2018-08-24 16:35:00.004681
20337	{4,17,8,18}	{}	2018-08-24 16:50:00.004793
20338	{12,10,15,19}	{}	2018-08-24 17:05:00.005605
20339	{18,7,3,10}	{}	2018-08-24 17:20:00.004777
20340	{18,3,15,1}	{}	2018-08-24 17:35:00.00467
20341	{18,7,14,5}	{}	2018-08-24 17:50:00.004724
20342	{14,12,10,1}	{}	2018-08-24 18:05:00.004529
20343	{14,3,16,12}	{}	2018-08-24 18:20:00.004695
20344	{5,12,19,16}	{}	2018-08-24 18:35:00.004663
20345	{12,8,2,9}	{}	2018-08-24 18:50:00.004651
20346	{8,6,9,16}	{}	2018-08-24 19:05:00.005324
20347	{14,2,1,12}	{}	2018-08-24 19:20:00.004647
20348	{3,6,20,7}	{}	2018-08-24 19:35:00.004778
20349	{1,18,4,11}	{}	2018-08-24 19:50:00.00466
20350	{8,20,11,17}	{}	2018-08-24 20:05:00.00541
20351	{15,20,13,9}	{}	2018-08-24 20:20:00.004695
20352	{7,17,20,12}	{}	2018-08-24 20:35:00.004833
20353	{18,16,2,15}	{}	2018-08-24 20:50:00.004776
20354	{3,6,4,5}	{}	2018-08-24 21:05:00.004488
20355	{6,4,3,7}	{}	2018-08-24 21:20:00.004645
20356	{16,5,17,3}	{}	2018-08-24 21:35:00.004713
20357	{18,9,21,15}	{}	2018-08-24 21:50:00.004572
20358	{3,12,17,15}	{}	2018-08-24 22:05:00.00449
20359	{18,4,19,21}	{}	2018-08-24 22:20:00.004627
20360	{4,16,14,19}	{}	2018-08-24 22:35:00.004547
20361	{7,6,20,18}	{}	2018-08-24 22:50:00.004756
20362	{15,10,1,4}	{}	2018-08-24 23:05:00.005464
20363	{1,9,13,10}	{}	2018-08-24 23:20:00.004897
20364	{6,11,7,1}	{}	2018-08-24 23:35:00.005015
20365	{5,1,4,13}	{}	2018-08-24 23:50:00.004937
20366	{1,7,8,6}	{}	2018-08-25 00:05:00.005462
20367	{10,13,21,7}	{}	2018-08-25 00:20:00.004744
20368	{21,13,16,12}	{}	2018-08-25 00:35:00.004542
20369	{20,14,13,3}	{}	2018-08-25 00:50:00.004752
20370	{1,8,13,14}	{}	2018-08-25 01:05:00.005346
20371	{2,20,18,21}	{}	2018-08-25 01:20:00.004644
20372	{7,12,8,17}	{}	2018-08-25 01:35:00.004716
20373	{21,16,18,5}	{}	2018-08-25 01:50:00.004716
20374	{4,21,7,1}	{}	2018-08-25 02:05:00.004482
20375	{1,21,10,17}	{}	2018-08-25 02:20:00.004703
20376	{15,7,17,18}	{}	2018-08-25 02:35:00.004157
20377	{14,13,15,19}	{}	2018-08-25 02:50:00.004601
20378	{5,14,17,20}	{}	2018-08-25 03:05:00.004472
20379	{14,20,3,9}	{}	2018-08-25 03:20:00.00473
20380	{8,11,6,5}	{}	2018-08-25 03:35:00.004701
20381	{16,20,17,6}	{}	2018-08-25 03:50:00.004694
20382	{13,7,18,21}	{}	2018-08-25 04:05:00.004483
20383	{13,3,20,11}	{}	2018-08-25 04:20:00.004627
20384	{14,10,20,4}	{}	2018-08-25 04:35:00.004693
20385	{17,12,14,1}	{}	2018-08-25 04:50:00.004567
20386	{15,6,8,3}	{}	2018-08-25 05:05:00.005245
20387	{21,17,14,18}	{}	2018-08-25 05:20:00.004688
20388	{3,16,14,6}	{}	2018-08-25 05:35:00.004727
20389	{2,13,7,8}	{}	2018-08-25 05:50:00.004636
20390	{7,11,20,13}	{}	2018-08-25 06:05:00.004687
20391	{17,11,14,2}	{}	2018-08-25 06:20:00.004893
20392	{13,19,12,14}	{}	2018-08-25 06:35:00.004635
20393	{1,9,17,4}	{}	2018-08-25 06:50:00.004719
20394	{8,3,6,13}	{}	2018-08-25 07:05:00.005468
20395	{3,2,13,1}	{}	2018-08-25 07:20:00.004564
20396	{11,13,8,7}	{}	2018-08-25 07:35:00.004715
20397	{7,1,9,15}	{}	2018-08-25 07:50:00.004656
20398	{14,15,4,1}	{}	2018-08-25 08:05:00.005325
20399	{7,18,11,21}	{}	2018-08-25 08:20:00.004673
20400	{15,2,19,7}	{}	2018-08-25 08:35:00.004681
20401	{3,13,6,17}	{}	2018-08-25 08:50:00.004684
20402	{13,12,16,15}	{}	2018-08-25 09:05:00.004479
20403	{14,21,8,10}	{}	2018-08-25 09:20:00.004653
20404	{4,12,7,20}	{}	2018-08-25 09:35:00.004583
20405	{20,17,6,14}	{}	2018-08-25 09:50:00.004644
20406	{16,7,5,21}	{}	2018-08-25 10:05:00.004482
20407	{17,16,4,19}	{}	2018-08-25 10:20:00.004667
20408	{20,5,16,15}	{}	2018-08-25 10:35:00.0047
20409	{3,4,5,1}	{}	2018-08-25 10:50:00.00467
20410	{12,4,21,5}	{}	2018-08-25 11:05:00.005366
20411	{8,3,21,12}	{}	2018-08-25 11:20:00.004736
20412	{21,11,14,13}	{}	2018-08-25 11:35:00.00467
20413	{2,3,13,8}	{}	2018-08-25 11:50:00.00467
20414	{15,20,7,5}	{}	2018-08-25 12:05:00.005386
20415	{18,16,17,21}	{}	2018-08-25 12:20:00.00471
20416	{10,15,19,12}	{}	2018-08-25 12:35:00.004896
20417	{18,8,7,1}	{}	2018-08-25 12:50:00.004787
20418	{2,4,13,19}	{}	2018-08-25 13:05:00.005446
20419	{12,17,3,7}	{}	2018-08-25 13:20:00.004547
20420	{5,10,15,9}	{}	2018-08-25 13:35:00.004654
20421	{12,13,16,2}	{}	2018-08-25 13:50:00.004761
20422	{8,6,12,10}	{}	2018-08-25 14:05:00.00446
20423	{11,21,16,1}	{}	2018-08-25 14:20:00.004648
20424	{17,18,3,8}	{}	2018-08-25 14:35:00.004622
20425	{6,11,3,16}	{}	2018-08-25 14:50:00.004696
20426	{21,20,14,19}	{}	2018-08-25 15:05:00.004362
20427	{6,5,2,20}	{}	2018-08-25 15:20:00.004691
20428	{3,20,12,2}	{}	2018-08-25 15:35:00.004744
22629	{4,5,2,12}	{}	2018-09-17 11:35:00.004699
20429	{13,4,5,17}	{}	2018-08-25 15:50:00.004658
22630	{14,6,4,7}	{}	2018-09-17 11:50:00.004729
22633	{8,20,6,15}	{}	2018-09-17 12:35:00.004576
22638	{11,3,9,4}	{}	2018-09-17 13:50:00.004679
22642	{19,1,5,9}	{}	2018-09-17 14:50:00.004678
22646	{2,5,19,12}	{}	2018-09-17 15:50:00.004733
20430	{13,16,21,5}	{}	2018-08-25 16:05:00.004471
20431	{2,21,19,11}	{}	2018-08-25 16:20:00.004677
20432	{2,20,19,1}	{}	2018-08-25 16:35:00.004682
20433	{14,18,21,6}	{}	2018-08-25 16:50:00.004664
20434	{20,12,3,19}	{}	2018-08-25 17:05:00.005296
20435	{19,15,2,18}	{}	2018-08-25 17:20:00.004698
20436	{3,17,9,19}	{}	2018-08-25 17:35:00.004606
20437	{9,12,7,4}	{}	2018-08-25 17:50:00.004708
20438	{7,20,13,1}	{}	2018-08-25 18:05:00.004533
20439	{8,13,19,18}	{}	2018-08-25 18:20:00.004656
20440	{20,12,10,15}	{}	2018-08-25 18:35:00.004679
20441	{13,12,5,17}	{}	2018-08-25 18:50:00.004648
20442	{6,10,3,13}	{}	2018-08-25 19:05:00.005516
20443	{12,21,14,3}	{}	2018-08-25 19:20:00.004773
20444	{4,13,19,14}	{}	2018-08-25 19:35:00.004687
20445	{6,8,12,11}	{}	2018-08-25 19:50:00.004613
20446	{20,15,12,1}	{}	2018-08-25 20:05:00.005497
20447	{8,4,9,6}	{}	2018-08-25 20:20:00.00465
20448	{15,14,5,7}	{}	2018-08-25 20:35:00.004648
20449	{19,2,15,5}	{}	2018-08-25 20:50:00.004666
20450	{20,3,6,10}	{}	2018-08-25 21:05:00.004363
20451	{3,17,19,5}	{}	2018-08-25 21:20:00.004657
20452	{11,15,2,12}	{}	2018-08-25 21:35:00.004724
20453	{19,5,12,21}	{}	2018-08-25 21:50:00.004681
20454	{20,17,14,2}	{}	2018-08-25 22:05:00.004465
20455	{20,14,5,17}	{}	2018-08-25 22:20:00.004629
20456	{18,14,20,4}	{}	2018-08-25 22:35:00.004694
20457	{4,2,12,14}	{}	2018-08-25 22:50:00.004674
20458	{10,12,3,18}	{}	2018-08-25 23:05:00.005339
20459	{19,6,11,3}	{}	2018-08-25 23:20:00.004798
20460	{1,7,16,20}	{}	2018-08-25 23:35:00.004783
20461	{18,11,12,16}	{}	2018-08-25 23:50:00.00478
20462	{14,15,20,4}	{}	2018-08-26 00:05:00.005153
20463	{2,14,12,6}	{}	2018-08-26 00:20:00.004775
20464	{17,14,9,2}	{}	2018-08-26 00:35:00.004548
20465	{3,10,2,12}	{}	2018-08-26 00:50:00.004667
20466	{1,15,9,5}	{}	2018-08-26 01:05:00.005355
20467	{14,19,18,1}	{}	2018-08-26 01:20:00.00472
20468	{12,6,15,1}	{}	2018-08-26 01:35:00.004851
20469	{21,3,5,16}	{}	2018-08-26 01:50:00.004793
20470	{13,17,15,12}	{}	2018-08-26 02:05:00.004481
20471	{19,4,14,6}	{}	2018-08-26 02:20:00.004717
20472	{8,17,1,20}	{}	2018-08-26 02:35:00.00468
20473	{20,5,8,6}	{}	2018-08-26 02:50:00.004726
20474	{2,19,10,11}	{}	2018-08-26 03:05:00.004506
20475	{9,5,4,19}	{}	2018-08-26 03:20:00.004265
20476	{8,7,21,6}	{}	2018-08-26 03:35:00.004701
20477	{17,1,14,2}	{}	2018-08-26 03:50:00.004682
20478	{21,10,12,5}	{}	2018-08-26 04:05:00.004476
20479	{16,15,8,17}	{}	2018-08-26 04:20:00.00467
20480	{19,9,8,3}	{}	2018-08-26 04:35:00.004646
20481	{21,16,2,20}	{}	2018-08-26 04:50:00.004664
20482	{15,5,11,7}	{}	2018-08-26 05:05:00.005572
20483	{18,12,6,5}	{}	2018-08-26 05:20:00.004776
20484	{9,5,21,17}	{}	2018-08-26 05:35:00.004758
20485	{1,6,13,7}	{}	2018-08-26 05:50:00.004687
20486	{2,19,14,1}	{}	2018-08-26 06:05:00.004458
20487	{9,11,19,1}	{}	2018-08-26 06:20:00.00468
20488	{16,3,14,21}	{}	2018-08-26 06:35:00.004696
20489	{19,21,20,18}	{}	2018-08-26 06:50:00.004665
20490	{6,8,10,14}	{}	2018-08-26 07:05:00.005291
20491	{19,11,7,3}	{}	2018-08-26 07:20:00.004655
20492	{6,1,21,19}	{}	2018-08-26 07:35:00.004652
20493	{18,14,11,6}	{}	2018-08-26 07:50:00.004672
20494	{20,4,14,2}	{}	2018-08-26 08:05:00.005472
20495	{14,2,4,9}	{}	2018-08-26 08:20:00.004861
20496	{11,13,7,19}	{}	2018-08-26 08:35:00.004759
20497	{8,3,6,17}	{}	2018-08-26 08:50:00.004598
20498	{15,18,14,19}	{}	2018-08-26 09:05:00.004535
20499	{10,21,3,19}	{}	2018-08-26 09:20:00.0047
20500	{3,2,21,14}	{}	2018-08-26 09:35:00.004684
20501	{18,10,8,1}	{}	2018-08-26 09:50:00.004648
20502	{8,15,21,7}	{}	2018-08-26 10:05:00.004469
20503	{16,19,9,6}	{}	2018-08-26 10:20:00.004753
20504	{16,19,21,4}	{}	2018-08-26 10:35:00.004693
20505	{7,1,8,5}	{}	2018-08-26 10:50:00.004741
20506	{6,16,9,8}	{}	2018-08-26 11:05:00.005472
20507	{19,17,10,16}	{}	2018-08-26 11:20:00.004681
20508	{17,13,9,8}	{}	2018-08-26 11:35:00.0047
20509	{14,11,6,20}	{}	2018-08-26 11:50:00.004733
20510	{17,13,21,12}	{}	2018-08-26 12:05:00.005378
20511	{19,15,8,3}	{}	2018-08-26 12:20:00.004644
20512	{13,5,6,7}	{}	2018-08-26 12:35:00.004659
20513	{16,5,1,4}	{}	2018-08-26 12:50:00.004656
20530	{4,2,14,3}	{}	2018-08-26 17:05:00.005514
20531	{5,6,11,3}	{}	2018-08-26 17:20:00.004616
20532	{20,18,12,1}	{}	2018-08-26 17:35:00.004693
20533	{15,13,10,5}	{}	2018-08-26 17:50:00.004634
22631	{21,12,1,19}	{}	2018-09-17 12:05:00.005265
22632	{21,10,5,7}	{}	2018-09-17 12:20:00.004707
22636	{8,18,13,17}	{}	2018-09-17 13:20:00.004669
22640	{4,20,5,8}	{}	2018-09-17 14:20:00.004827
22644	{9,19,8,13}	{}	2018-09-17 15:20:00.004703
22648	{6,5,4,10}	{}	2018-09-17 16:20:00.004733
20514	{2,16,13,4}	{}	2018-08-26 13:05:00.005323
20515	{18,7,20,16}	{}	2018-08-26 13:20:00.004637
20516	{9,15,16,3}	{}	2018-08-26 13:35:00.004661
20517	{18,10,8,6}	{}	2018-08-26 13:50:00.004687
20518	{9,10,16,4}	{}	2018-08-26 14:05:00.004505
20519	{7,8,19,21}	{}	2018-08-26 14:20:00.004689
20520	{6,15,18,14}	{}	2018-08-26 14:35:00.004864
20521	{17,1,18,4}	{}	2018-08-26 14:50:00.004797
20522	{17,7,8,10}	{}	2018-08-26 15:05:00.004509
20523	{5,10,12,11}	{}	2018-08-26 15:20:00.00465
20524	{6,1,7,17}	{}	2018-08-26 15:35:00.004669
20525	{5,13,1,8}	{}	2018-08-26 15:50:00.004772
20526	{10,2,11,20}	{}	2018-08-26 16:05:00.00456
20527	{12,15,4,20}	{}	2018-08-26 16:20:00.004698
20528	{7,4,12,3}	{}	2018-08-26 16:35:00.004788
20529	{3,8,6,5}	{}	2018-08-26 16:50:00.004693
20534	{1,18,20,5}	{}	2018-08-26 18:05:00.004532
20535	{3,21,1,12}	{}	2018-08-26 18:20:00.004629
20536	{13,20,4,1}	{}	2018-08-26 18:35:00.004676
20537	{20,13,12,6}	{}	2018-08-26 18:50:00.004698
20538	{13,17,4,7}	{}	2018-08-26 19:05:00.005346
20539	{17,10,4,5}	{}	2018-08-26 19:20:00.004658
20540	{6,14,8,12}	{}	2018-08-26 19:35:00.004785
20541	{20,17,16,2}	{}	2018-08-26 19:50:00.004725
20542	{16,2,6,9}	{}	2018-08-26 20:05:00.005396
20543	{21,19,12,10}	{}	2018-08-26 20:20:00.004697
20544	{21,12,3,17}	{}	2018-08-26 20:35:00.004687
20545	{2,18,15,9}	{}	2018-08-26 20:50:00.004638
20546	{13,11,12,17}	{}	2018-08-26 21:05:00.004587
20547	{9,14,21,7}	{}	2018-08-26 21:20:00.004833
20548	{13,15,7,21}	{}	2018-08-26 21:35:00.004711
20549	{21,11,15,5}	{}	2018-08-26 21:50:00.004697
20550	{7,19,5,3}	{}	2018-08-26 22:05:00.004489
20551	{16,14,12,2}	{}	2018-08-26 22:20:00.004685
20552	{4,15,16,12}	{}	2018-08-26 22:35:00.004672
20553	{19,10,16,9}	{}	2018-08-26 22:50:00.004712
20554	{13,20,19,10}	{}	2018-08-26 23:05:00.005588
20555	{5,7,20,4}	{}	2018-08-26 23:20:00.004808
20556	{8,19,12,9}	{}	2018-08-26 23:35:00.004782
20557	{16,12,17,7}	{}	2018-08-26 23:50:00.004864
20558	{13,12,19,2}	{}	2018-08-27 00:05:00.005174
20559	{17,1,13,6}	{}	2018-08-27 00:20:00.004724
20560	{16,8,1,13}	{}	2018-08-27 00:35:00.004709
20561	{3,15,17,9}	{}	2018-08-27 00:50:00.004718
20562	{1,4,10,5}	{}	2018-08-27 01:05:00.005368
20563	{14,11,6,13}	{}	2018-08-27 01:20:00.004668
20564	{13,5,1,15}	{}	2018-08-27 01:35:00.004709
20565	{3,2,18,20}	{}	2018-08-27 01:50:00.004666
20566	{20,14,15,8}	{}	2018-08-27 02:05:00.004515
20567	{6,18,21,9}	{}	2018-08-27 02:20:00.004692
20568	{15,7,20,9}	{}	2018-08-27 02:35:00.004601
20569	{10,21,5,14}	{}	2018-08-27 02:50:00.004709
20570	{9,20,2,3}	{}	2018-08-27 03:05:00.004602
20571	{2,13,21,8}	{}	2018-08-27 03:20:00.004625
20572	{1,10,3,8}	{}	2018-08-27 03:35:00.004832
20573	{8,9,6,17}	{}	2018-08-27 03:50:00.004836
20574	{4,19,3,10}	{}	2018-08-27 04:05:00.004251
20575	{17,11,5,6}	{}	2018-08-27 04:20:00.004647
20576	{10,20,16,2}	{}	2018-08-27 04:35:00.004702
20577	{17,12,15,1}	{}	2018-08-27 04:50:00.004687
20578	{3,8,4,9}	{}	2018-08-27 05:05:00.005551
20579	{20,14,1,11}	{}	2018-08-27 05:20:00.00471
20580	{16,11,5,9}	{}	2018-08-27 05:35:00.004659
20581	{15,20,12,4}	{}	2018-08-27 05:50:00.00471
20582	{4,1,17,11}	{}	2018-08-27 06:05:00.004538
20583	{9,21,5,20}	{}	2018-08-27 06:20:00.00464
20584	{2,18,1,16}	{}	2018-08-27 06:35:00.004698
20585	{16,5,15,18}	{}	2018-08-27 06:50:00.00461
20586	{9,21,5,14}	{}	2018-08-27 07:05:00.005305
20587	{17,12,5,1}	{}	2018-08-27 07:20:00.004671
20588	{9,20,1,8}	{}	2018-08-27 07:35:00.004697
20589	{21,2,7,9}	{}	2018-08-27 07:50:00.004652
20590	{2,15,6,1}	{}	2018-08-27 08:05:00.005196
20591	{19,13,16,5}	{}	2018-08-27 08:20:00.00464
20592	{17,8,9,1}	{}	2018-08-27 08:35:00.0047
20593	{14,9,5,12}	{}	2018-08-27 08:50:00.004669
20594	{14,3,17,13}	{}	2018-08-27 09:05:00.004492
20595	{2,11,19,16}	{}	2018-08-27 09:20:00.004564
20596	{14,10,6,1}	{}	2018-08-27 09:35:00.004653
20597	{20,4,7,15}	{}	2018-08-27 09:50:00.004623
20598	{7,6,14,19}	{}	2018-08-27 10:05:00.004753
20599	{1,4,2,9}	{}	2018-08-27 10:20:00.004804
20600	{12,20,6,16}	{}	2018-08-27 10:35:00.004519
20601	{19,8,9,12}	{}	2018-08-27 10:50:00.004651
20610	{18,7,5,16}	{}	2018-08-27 13:05:00.005434
20611	{7,5,19,20}	{}	2018-08-27 13:20:00.004103
22634	{19,2,18,5}	{}	2018-09-17 12:50:00.004761
22637	{16,12,5,20}	{}	2018-09-17 13:35:00.004741
22641	{12,1,9,7}	{}	2018-09-17 14:35:00.004569
22645	{10,20,1,12}	{}	2018-09-17 15:35:00.004729
20602	{11,1,13,17}	{}	2018-08-27 11:05:00.00548
20603	{2,17,10,15}	{}	2018-08-27 11:20:00.004574
20604	{5,7,4,9}	{}	2018-08-27 11:35:00.004597
20605	{14,2,12,3}	{}	2018-08-27 11:50:00.004753
22635	{13,9,7,14}	{}	2018-09-17 13:05:00.005335
22639	{11,16,6,9}	{}	2018-09-17 14:05:00.004574
22643	{15,20,17,14}	{}	2018-09-17 15:05:00.004553
22647	{3,7,19,10}	{}	2018-09-17 16:05:00.004518
20606	{11,12,20,13}	{}	2018-08-27 12:05:00.005392
20607	{18,1,8,7}	{}	2018-08-27 12:20:00.004722
20608	{8,11,14,4}	{}	2018-08-27 12:35:00.004635
20609	{14,5,19,3}	{}	2018-08-27 12:50:00.004718
20612	{14,9,6,20}	{}	2018-08-27 13:35:00.004762
20613	{18,2,3,14}	{}	2018-08-27 13:50:00.004791
20614	{9,15,19,20}	{}	2018-08-27 14:05:00.004528
20615	{3,12,20,19}	{}	2018-08-27 14:20:00.004783
20616	{2,1,12,21}	{}	2018-08-27 14:35:00.004683
20617	{19,18,21,7}	{}	2018-08-27 14:50:00.004705
20618	{9,5,12,1}	{}	2018-08-27 15:05:00.004546
20619	{6,1,15,11}	{}	2018-08-27 15:20:00.00474
20620	{1,15,12,18}	{}	2018-08-27 15:35:00.004652
20621	{5,19,6,21}	{}	2018-08-27 15:50:00.0047
20622	{19,6,7,9}	{}	2018-08-27 16:05:00.00455
20623	{21,11,7,17}	{}	2018-08-27 16:20:00.004724
20624	{11,2,12,3}	{}	2018-08-27 16:35:00.004864
20625	{10,8,19,20}	{}	2018-08-27 16:50:00.004844
20626	{14,10,6,1}	{}	2018-08-27 17:05:00.005341
20627	{14,7,4,18}	{}	2018-08-27 17:20:00.004741
20628	{4,12,5,1}	{}	2018-08-27 17:35:00.004654
20629	{5,10,7,21}	{}	2018-08-27 17:50:00.004713
20630	{12,16,8,5}	{}	2018-08-27 18:05:00.004499
20631	{21,14,2,7}	{}	2018-08-27 18:20:00.004693
20632	{7,4,6,18}	{}	2018-08-27 18:35:00.00463
20633	{11,19,6,9}	{}	2018-08-27 18:50:00.004684
20634	{16,17,20,9}	{}	2018-08-27 19:05:00.005357
20635	{20,12,7,17}	{}	2018-08-27 19:20:00.004664
20636	{6,13,8,14}	{}	2018-08-27 19:35:00.004719
20637	{2,4,5,9}	{}	2018-08-27 19:50:00.004608
20638	{5,14,21,4}	{}	2018-08-27 20:05:00.005394
20639	{4,20,21,11}	{}	2018-08-27 20:20:00.004569
20640	{15,13,16,21}	{}	2018-08-27 20:35:00.004694
20641	{8,14,21,15}	{}	2018-08-27 20:50:00.004702
20642	{4,17,14,21}	{}	2018-08-27 21:05:00.004383
20643	{2,8,11,16}	{}	2018-08-27 21:20:00.004718
20644	{15,1,2,11}	{}	2018-08-27 21:35:00.004568
20645	{13,3,21,12}	{}	2018-08-27 21:50:00.004668
20646	{15,4,10,16}	{}	2018-08-27 22:05:00.004479
20647	{12,2,15,13}	{}	2018-08-27 22:20:00.004766
20648	{18,12,1,10}	{}	2018-08-27 22:35:00.004793
20649	{4,11,7,10}	{}	2018-08-27 22:50:00.004643
20650	{7,8,6,13}	{}	2018-08-27 23:05:00.00553
20651	{3,5,4,12}	{}	2018-08-27 23:20:00.004894
20652	{14,6,15,12}	{}	2018-08-27 23:35:00.004782
20653	{5,14,4,17}	{}	2018-08-27 23:50:00.004759
20654	{9,5,15,16}	{}	2018-08-28 00:05:00.005326
20655	{6,3,2,21}	{}	2018-08-28 00:20:00.004551
20656	{13,16,12,18}	{}	2018-08-28 00:35:00.004665
20657	{10,21,18,20}	{}	2018-08-28 00:50:00.004726
20658	{11,2,16,1}	{}	2018-08-28 01:05:00.005327
20659	{2,7,1,17}	{}	2018-08-28 01:20:00.004689
20660	{10,13,1,16}	{}	2018-08-28 01:35:00.004702
20661	{14,17,9,3}	{}	2018-08-28 01:50:00.004538
20662	{14,17,8,13}	{}	2018-08-28 02:05:00.004508
20663	{13,14,21,19}	{}	2018-08-28 02:20:00.00469
20664	{3,13,15,10}	{}	2018-08-28 02:35:00.004675
20665	{13,20,18,1}	{}	2018-08-28 02:50:00.004728
20666	{19,11,1,3}	{}	2018-08-28 03:05:00.004544
20667	{19,17,18,4}	{}	2018-08-28 03:20:00.004584
20668	{19,13,14,15}	{}	2018-08-28 03:35:00.00469
20669	{18,3,21,11}	{}	2018-08-28 03:50:00.004618
20670	{17,16,13,19}	{}	2018-08-28 04:05:00.004512
20671	{12,10,19,2}	{}	2018-08-28 04:20:00.004657
20672	{9,19,20,21}	{}	2018-08-28 04:35:00.004709
20673	{7,8,21,13}	{}	2018-08-28 04:50:00.004765
20674	{15,2,10,18}	{}	2018-08-28 05:05:00.005338
20675	{9,12,17,19}	{}	2018-08-28 05:20:00.004656
20676	{19,3,1,12}	{}	2018-08-28 05:35:00.004917
20677	{18,15,11,19}	{}	2018-08-28 05:50:00.004791
20678	{8,16,11,1}	{}	2018-08-28 06:05:00.004483
20679	{11,20,12,1}	{}	2018-08-28 06:20:00.004684
20680	{5,17,11,3}	{}	2018-08-28 06:35:00.004708
20681	{11,4,17,21}	{}	2018-08-28 06:50:00.004663
20682	{8,19,12,6}	{}	2018-08-28 07:05:00.00548
20683	{19,3,13,10}	{}	2018-08-28 07:20:00.004683
20684	{14,9,18,4}	{}	2018-08-28 07:35:00.004681
20685	{21,16,9,17}	{}	2018-08-28 07:50:00.004667
22649	{17,21,11,16}	{}	2018-09-17 16:35:00.00462
22650	{21,5,19,4}	{}	2018-09-17 16:50:00.004683
22652	{20,21,10,18}	{}	2018-09-17 17:20:00.004741
22656	{3,5,8,19}	{}	2018-09-17 18:20:00.004656
22659	{6,8,4,12}	{}	2018-09-17 19:05:00.005296
22676	{20,19,8,5}	{}	2018-09-17 23:20:00.00474
22679	{1,10,19,2}	{}	2018-09-18 00:05:00.005138
22700	{4,21,15,6}	{}	2018-09-18 05:20:00.004659
22704	{1,20,9,13}	{}	2018-09-18 06:20:00.004634
22707	{14,6,10,4}	{}	2018-09-18 07:05:00.005338
22724	{3,19,11,1}	{}	2018-09-18 11:20:00.004675
22727	{20,1,14,12}	{}	2018-09-18 12:05:00.005434
22748	{15,19,16,20}	{}	2018-09-18 17:20:00.004715
22752	{16,21,10,14}	{}	2018-09-18 18:20:00.004713
22755	{16,9,13,17}	{}	2018-09-18 19:05:00.005359
22772	{13,12,8,16}	{}	2018-09-18 23:20:00.00479
22775	{14,11,9,20}	{}	2018-09-19 00:05:00.005183
20686	{14,11,8,13}	{}	2018-08-28 08:05:00.005301
20687	{14,9,16,10}	{}	2018-08-28 08:20:00.00468
20688	{1,12,15,8}	{}	2018-08-28 08:35:00.00466
20689	{21,20,14,18}	{}	2018-08-28 08:50:00.00463
20690	{14,18,7,13}	{}	2018-08-28 09:05:00.004339
20691	{14,4,20,2}	{}	2018-08-28 09:20:00.004691
20692	{20,4,18,17}	{}	2018-08-28 09:35:00.004579
20693	{18,16,20,21}	{}	2018-08-28 09:50:00.004639
20694	{20,21,11,13}	{}	2018-08-28 10:05:00.004428
20695	{16,17,3,6}	{}	2018-08-28 10:20:00.004664
20696	{20,10,2,4}	{}	2018-08-28 10:35:00.004699
20697	{12,3,18,20}	{}	2018-08-28 10:50:00.004675
20698	{10,17,4,21}	{}	2018-08-28 11:05:00.005422
20699	{21,17,11,8}	{}	2018-08-28 11:20:00.004703
20700	{20,3,14,9}	{}	2018-08-28 11:35:00.004629
20701	{15,4,12,7}	{}	2018-08-28 11:50:00.004678
20702	{14,8,10,4}	{}	2018-08-28 12:05:00.005554
20703	{20,1,10,6}	{}	2018-08-28 12:20:00.004815
20704	{4,16,21,14}	{}	2018-08-28 12:35:00.004679
20705	{14,17,11,10}	{}	2018-08-28 12:50:00.004672
20706	{8,17,2,9}	{}	2018-08-28 13:05:00.005514
20707	{12,3,16,1}	{}	2018-08-28 13:20:00.004641
20708	{16,8,14,15}	{}	2018-08-28 13:35:00.004656
20709	{21,1,18,13}	{}	2018-08-28 13:50:00.004657
20710	{13,9,4,14}	{}	2018-08-28 14:05:00.004513
20711	{11,8,20,19}	{}	2018-08-28 14:20:00.004719
20712	{14,2,5,6}	{}	2018-08-28 14:35:00.004679
20713	{12,19,21,20}	{}	2018-08-28 14:50:00.004666
20714	{6,14,10,9}	{}	2018-08-28 15:05:00.004458
20715	{11,8,5,19}	{}	2018-08-28 15:20:00.004718
20716	{17,12,21,11}	{}	2018-08-28 15:35:00.004722
20717	{13,4,12,21}	{}	2018-08-28 15:50:00.004684
20718	{14,8,3,5}	{}	2018-08-28 16:05:00.00456
20719	{1,8,12,21}	{}	2018-08-28 16:20:00.004783
20720	{20,2,19,12}	{}	2018-08-28 16:35:00.004728
20721	{18,19,7,3}	{}	2018-08-28 16:50:00.004699
20722	{16,7,18,13}	{}	2018-08-28 17:05:00.005396
20723	{20,6,16,8}	{}	2018-08-28 17:20:00.004653
20724	{15,10,18,3}	{}	2018-08-28 17:35:00.0047
20725	{8,10,21,14}	{}	2018-08-28 17:50:00.004605
20726	{19,21,5,15}	{}	2018-08-28 18:05:00.004484
20727	{2,18,1,11}	{}	2018-08-28 18:20:00.004627
20728	{14,20,16,19}	{}	2018-08-28 18:35:00.004882
20729	{2,16,7,12}	{}	2018-08-28 18:50:00.004783
20730	{15,6,17,5}	{}	2018-08-28 19:05:00.005522
20731	{10,8,5,7}	{}	2018-08-28 19:20:00.003892
20732	{4,12,20,21}	{}	2018-08-28 19:35:00.004618
20733	{15,19,17,6}	{}	2018-08-28 19:50:00.00467
20734	{19,15,3,6}	{}	2018-08-28 20:05:00.005304
20735	{13,7,6,10}	{}	2018-08-28 20:20:00.004602
20736	{1,13,4,16}	{}	2018-08-28 20:35:00.004668
20737	{12,7,19,18}	{}	2018-08-28 20:50:00.004618
20738	{15,1,18,21}	{}	2018-08-28 21:05:00.00442
20739	{14,13,1,7}	{}	2018-08-28 21:20:00.004746
20740	{7,17,10,2}	{}	2018-08-28 21:35:00.00469
20741	{21,3,16,8}	{}	2018-08-28 21:50:00.004666
20742	{7,12,15,16}	{}	2018-08-28 22:05:00.004435
20743	{6,16,18,3}	{}	2018-08-28 22:20:00.004715
20744	{21,14,4,5}	{}	2018-08-28 22:35:00.004692
20745	{7,9,4,11}	{}	2018-08-28 22:50:00.004729
20746	{2,15,18,14}	{}	2018-08-28 23:05:00.005278
20747	{2,6,15,9}	{}	2018-08-28 23:20:00.0048
20748	{14,13,18,10}	{}	2018-08-28 23:35:00.004825
20749	{8,21,16,3}	{}	2018-08-28 23:50:00.00479
20750	{20,3,8,6}	{}	2018-08-29 00:05:00.005175
20751	{4,10,13,8}	{}	2018-08-29 00:20:00.004612
20752	{4,7,20,13}	{}	2018-08-29 00:35:00.004696
20753	{7,13,12,16}	{}	2018-08-29 00:50:00.004699
20754	{21,4,10,11}	{}	2018-08-29 01:05:00.005538
20755	{13,21,12,11}	{}	2018-08-29 01:20:00.00483
20756	{16,21,4,11}	{}	2018-08-29 01:35:00.004398
20757	{21,20,1,17}	{}	2018-08-29 01:50:00.004733
20758	{14,4,19,1}	{}	2018-08-29 02:05:00.004482
20759	{12,10,5,9}	{}	2018-08-29 02:20:00.004671
20760	{10,18,11,20}	{}	2018-08-29 02:35:00.004699
20761	{9,13,16,10}	{}	2018-08-29 02:50:00.004632
20762	{21,1,6,2}	{}	2018-08-29 03:05:00.004502
20763	{7,9,21,14}	{}	2018-08-29 03:20:00.004738
20764	{14,9,4,19}	{}	2018-08-29 03:35:00.004398
20765	{18,15,4,1}	{}	2018-08-29 03:50:00.004628
20766	{6,12,21,17}	{}	2018-08-29 04:05:00.004495
20767	{18,4,17,19}	{}	2018-08-29 04:20:00.00469
20768	{12,13,9,19}	{}	2018-08-29 04:35:00.004662
20769	{9,5,11,16}	{}	2018-08-29 04:50:00.004726
20782	{13,11,14,1}	{}	2018-08-29 08:05:00.005478
20783	{21,10,14,6}	{}	2018-08-29 08:20:00.004781
20784	{4,10,9,18}	{}	2018-08-29 08:35:00.004675
20785	{14,10,12,17}	{}	2018-08-29 08:50:00.004639
20786	{6,19,15,1}	{}	2018-08-29 09:05:00.004429
20787	{1,11,19,20}	{}	2018-08-29 09:20:00.004701
20788	{9,13,14,18}	{}	2018-08-29 09:35:00.004694
20789	{20,21,7,16}	{}	2018-08-29 09:50:00.00468
20790	{9,11,10,18}	{}	2018-08-29 10:05:00.004576
20791	{19,12,10,2}	{}	2018-08-29 10:20:00.00472
20792	{16,7,14,5}	{}	2018-08-29 10:35:00.004679
20793	{3,4,14,20}	{}	2018-08-29 10:50:00.004689
22651	{3,6,11,18}	{}	2018-09-17 17:05:00.005316
22655	{8,15,9,21}	{}	2018-09-17 18:05:00.004551
22664	{10,21,19,14}	{}	2018-09-17 20:20:00.004678
22668	{19,21,1,15}	{}	2018-09-17 21:20:00.00471
22672	{18,20,16,8}	{}	2018-09-17 22:20:00.004738
22675	{13,19,11,3}	{}	2018-09-17 23:05:00.005249
22684	{19,12,17,13}	{}	2018-09-18 01:20:00.004744
22688	{1,14,3,5}	{}	2018-09-18 02:20:00.004704
22692	{1,19,20,6}	{}	2018-09-18 03:20:00.004698
22696	{11,10,3,16}	{}	2018-09-18 04:20:00.004711
22699	{14,7,1,4}	{}	2018-09-18 05:05:00.005298
22703	{20,18,5,12}	{}	2018-09-18 06:05:00.00456
22712	{20,1,4,7}	{}	2018-09-18 08:20:00.004717
22716	{5,8,10,15}	{}	2018-09-18 09:20:00.004749
22720	{20,7,11,3}	{}	2018-09-18 10:20:00.004734
22723	{9,6,8,2}	{}	2018-09-18 11:05:00.005322
22732	{4,1,2,21}	{}	2018-09-18 13:20:00.004735
22736	{21,3,1,13}	{}	2018-09-18 14:20:00.004729
22740	{2,18,14,16}	{}	2018-09-18 15:20:00.004713
22744	{10,21,11,6}	{}	2018-09-18 16:20:00.004766
22747	{16,11,13,5}	{}	2018-09-18 17:05:00.005353
22751	{15,12,4,7}	{}	2018-09-18 18:05:00.004514
22760	{15,19,5,21}	{}	2018-09-18 20:20:00.004698
22764	{5,7,9,4}	{}	2018-09-18 21:20:00.004723
22768	{9,1,8,21}	{}	2018-09-18 22:20:00.004758
22771	{11,5,1,15}	{}	2018-09-18 23:05:00.005065
22780	{3,14,9,15}	{}	2018-09-19 01:20:00.004678
22784	{17,8,14,20}	{}	2018-09-19 02:20:00.004629
22788	{9,8,15,13}	{}	2018-09-19 03:20:00.004581
22792	{20,17,7,4}	{}	2018-09-19 04:20:00.004545
20770	{19,11,12,21}	{}	2018-08-29 05:05:00.005527
20771	{18,3,16,14}	{}	2018-08-29 05:20:00.004623
20772	{3,17,21,5}	{}	2018-08-29 05:35:00.004689
20773	{18,2,6,1}	{}	2018-08-29 05:50:00.004571
20774	{20,4,3,21}	{}	2018-08-29 06:05:00.004463
20775	{5,14,7,12}	{}	2018-08-29 06:20:00.004662
20776	{15,6,3,12}	{}	2018-08-29 06:35:00.004364
20777	{8,14,12,19}	{}	2018-08-29 06:50:00.004488
22653	{12,4,5,10}	{}	2018-09-17 17:35:00.004737
22657	{20,3,5,12}	{}	2018-09-17 18:35:00.004698
22662	{11,17,10,21}	{}	2018-09-17 19:50:00.00477
22665	{2,14,21,4}	{}	2018-09-17 20:35:00.004712
22669	{9,10,18,11}	{}	2018-09-17 21:35:00.004709
22673	{4,15,11,3}	{}	2018-09-17 22:35:00.004706
22678	{7,14,10,11}	{}	2018-09-17 23:50:00.004865
22681	{13,10,14,11}	{}	2018-09-18 00:35:00.004702
22686	{18,17,9,1}	{}	2018-09-18 01:50:00.004698
22690	{5,4,19,18}	{}	2018-09-18 02:50:00.004736
22694	{6,14,21,19}	{}	2018-09-18 03:50:00.004715
22698	{16,12,2,15}	{}	2018-09-18 04:50:00.004694
22701	{3,2,13,18}	{}	2018-09-18 05:35:00.00471
22705	{10,8,2,17}	{}	2018-09-18 06:35:00.004735
22710	{4,12,14,13}	{}	2018-09-18 07:50:00.004732
22713	{2,14,19,18}	{}	2018-09-18 08:35:00.004736
22717	{16,21,11,9}	{}	2018-09-18 09:35:00.004716
22721	{5,15,1,12}	{}	2018-09-18 10:35:00.004684
22726	{2,1,17,11}	{}	2018-09-18 11:50:00.004771
22729	{16,6,3,1}	{}	2018-09-18 12:35:00.004745
22734	{7,1,12,9}	{}	2018-09-18 13:50:00.004647
22738	{21,5,6,11}	{}	2018-09-18 14:50:00.004688
22742	{5,20,18,15}	{}	2018-09-18 15:50:00.004647
22746	{14,13,6,4}	{}	2018-09-18 16:50:00.004639
22749	{20,8,5,4}	{}	2018-09-18 17:35:00.004725
22753	{18,11,7,5}	{}	2018-09-18 18:35:00.004695
22758	{18,21,20,10}	{}	2018-09-18 19:50:00.004581
22761	{21,12,20,18}	{}	2018-09-18 20:35:00.004745
22765	{16,18,4,14}	{}	2018-09-18 21:35:00.004688
22769	{6,16,12,2}	{}	2018-09-18 22:35:00.004694
22774	{8,17,10,18}	{}	2018-09-18 23:50:00.004835
22777	{11,16,20,12}	{}	2018-09-19 00:35:00.004763
22782	{6,16,20,4}	{}	2018-09-19 01:50:00.004733
22786	{6,10,14,21}	{}	2018-09-19 02:50:00.004687
22790	{4,19,21,6}	{}	2018-09-19 03:50:00.004733
20778	{2,12,6,18}	{}	2018-08-29 07:05:00.005332
20779	{20,16,7,1}	{}	2018-08-29 07:20:00.004709
20780	{5,3,2,7}	{}	2018-08-29 07:35:00.004862
20781	{19,5,12,18}	{}	2018-08-29 07:50:00.004846
20794	{10,9,18,12}	{}	2018-08-29 11:05:00.005332
20795	{18,4,1,16}	{}	2018-08-29 11:20:00.004701
20796	{5,6,10,9}	{}	2018-08-29 11:35:00.004519
20797	{6,8,13,11}	{}	2018-08-29 11:50:00.00476
20798	{7,9,17,12}	{}	2018-08-29 12:05:00.005356
20799	{13,2,9,14}	{}	2018-08-29 12:20:00.004783
20800	{19,8,1,6}	{}	2018-08-29 12:35:00.0046
20801	{3,9,11,7}	{}	2018-08-29 12:50:00.004704
20802	{6,15,10,14}	{}	2018-08-29 13:05:00.00541
20803	{6,21,5,1}	{}	2018-08-29 13:20:00.004708
20804	{15,3,19,9}	{}	2018-08-29 13:35:00.004709
20805	{15,10,7,20}	{}	2018-08-29 13:50:00.004688
20806	{8,15,6,2}	{}	2018-08-29 14:05:00.00469
20807	{13,12,6,17}	{}	2018-08-29 14:20:00.004766
20808	{4,17,14,2}	{}	2018-08-29 14:35:00.004758
20809	{6,20,8,17}	{}	2018-08-29 14:50:00.004655
20810	{14,16,2,12}	{}	2018-08-29 15:05:00.004527
20811	{19,17,1,6}	{}	2018-08-29 15:20:00.004679
20812	{2,18,13,12}	{}	2018-08-29 15:35:00.004601
20813	{13,1,15,3}	{}	2018-08-29 15:50:00.00466
20814	{15,8,1,2}	{}	2018-08-29 16:05:00.004468
20815	{12,19,14,4}	{}	2018-08-29 16:20:00.004699
20816	{4,2,6,16}	{}	2018-08-29 16:35:00.004692
20817	{17,19,20,3}	{}	2018-08-29 16:50:00.004626
20818	{16,18,6,15}	{}	2018-08-29 17:05:00.005505
20819	{15,21,2,1}	{}	2018-08-29 17:20:00.004697
20820	{15,3,7,9}	{}	2018-08-29 17:35:00.004759
20821	{16,8,4,21}	{}	2018-08-29 17:50:00.004514
20822	{2,4,9,12}	{}	2018-08-29 18:05:00.004516
20823	{13,14,6,17}	{}	2018-08-29 18:20:00.004662
20824	{2,20,5,11}	{}	2018-08-29 18:35:00.004662
20825	{19,2,4,17}	{}	2018-08-29 18:50:00.004615
20826	{12,18,20,14}	{}	2018-08-29 19:05:00.005375
20827	{11,8,13,17}	{}	2018-08-29 19:20:00.004702
20828	{11,12,7,17}	{}	2018-08-29 19:35:00.004772
20829	{2,13,9,11}	{}	2018-08-29 19:50:00.004705
20830	{11,14,4,16}	{}	2018-08-29 20:05:00.005415
20831	{3,16,21,10}	{}	2018-08-29 20:20:00.004697
20832	{3,20,4,8}	{}	2018-08-29 20:35:00.004874
20833	{1,16,15,8}	{}	2018-08-29 20:50:00.004823
20834	{18,14,12,11}	{}	2018-08-29 21:05:00.004446
20835	{18,1,19,9}	{}	2018-08-29 21:20:00.004673
20836	{19,3,7,8}	{}	2018-08-29 21:35:00.004654
20837	{14,6,13,8}	{}	2018-08-29 21:50:00.004722
20838	{18,6,12,14}	{}	2018-08-29 22:05:00.004478
20839	{20,9,17,3}	{}	2018-08-29 22:20:00.004718
20840	{14,20,19,10}	{}	2018-08-29 22:35:00.004704
20841	{18,15,19,1}	{}	2018-08-29 22:50:00.004642
20842	{9,1,14,10}	{}	2018-08-29 23:05:00.005639
20843	{19,1,3,13}	{}	2018-08-29 23:20:00.004835
20844	{15,17,6,10}	\N	2018-08-29 23:35:00.004899
20845	{10,19,11,7}	{}	2018-08-29 23:35:00.007237
20846	{14,8,1,3}	\N	2018-08-29 23:50:00.004916
20847	{18,7,16,10}	{}	2018-08-29 23:50:00.006191
20848	{9,15,13,1}	\N	2018-08-30 00:05:00.005292
20849	{13,12,11,16}	{}	2018-08-30 00:05:00.009661
20850	{21,11,16,14}	{}	2018-08-30 00:20:00.004657
20851	{19,2,12,10}	{}	2018-08-30 00:35:00.004662
20852	{16,17,15,7}	{}	2018-08-30 00:50:00.004657
20853	{2,17,6,7}	{}	2018-08-30 01:05:00.005548
20854	{1,4,18,2}	{}	2018-08-30 01:20:00.004711
20855	{19,20,1,9}	{}	2018-08-30 01:35:00.004691
20856	{2,21,13,3}	{}	2018-08-30 01:50:00.004514
20857	{6,12,19,9}	{}	2018-08-30 02:05:00.004336
20858	{20,18,10,3}	{}	2018-08-30 02:20:00.004868
20859	{14,18,11,17}	{}	2018-08-30 02:35:00.004811
20860	{15,20,4,6}	{}	2018-08-30 02:50:00.004668
20861	{10,11,19,4}	{}	2018-08-30 03:05:00.004453
20862	{12,2,6,7}	{}	2018-08-30 03:20:00.004596
20863	{14,21,18,15}	{}	2018-08-30 03:35:00.004572
20864	{4,11,15,1}	{}	2018-08-30 03:50:00.004563
20865	{10,6,20,4}	{}	2018-08-30 04:05:00.004547
20866	{19,17,15,14}	{}	2018-08-30 04:20:00.004649
20867	{14,12,18,9}	{}	2018-08-30 04:35:00.004654
20868	{1,18,8,20}	{}	2018-08-30 04:50:00.004711
20869	{6,1,19,12}	{}	2018-08-30 05:05:00.004801
20870	{20,9,8,12}	{}	2018-08-30 05:20:00.004772
20871	{14,13,7,15}	{}	2018-08-30 05:35:00.004721
20872	{5,4,14,13}	{}	2018-08-30 05:50:00.00467
20873	{16,2,20,4}	{}	2018-08-30 06:05:00.00423
20874	{20,17,19,3}	{}	2018-08-30 06:20:00.004708
20875	{12,21,17,20}	{}	2018-08-30 06:35:00.004605
20876	{6,9,17,4}	{}	2018-08-30 06:50:00.004678
20877	{16,7,1,5}	{}	2018-08-30 07:05:00.005342
20878	{12,18,16,2}	{}	2018-08-30 07:20:00.004629
20879	{12,16,6,11}	{}	2018-08-30 07:35:00.004679
20880	{21,19,1,12}	{}	2018-08-30 07:50:00.004655
20893	{15,17,14,6}	{}	2018-08-30 11:05:00.005338
20894	{10,19,16,21}	{}	2018-08-30 11:20:00.004459
20895	{18,8,16,6}	{}	2018-08-30 11:35:00.004665
20896	{11,13,5,18}	{}	2018-08-30 11:50:00.004674
20897	{1,19,12,20}	{}	2018-08-30 12:05:00.005319
20898	{6,18,9,21}	{}	2018-08-30 12:20:00.004623
20899	{6,15,21,14}	{}	2018-08-30 12:35:00.004639
20900	{2,20,6,17}	{}	2018-08-30 12:50:00.004712
22654	{4,6,20,2}	{}	2018-09-17 17:50:00.004686
22658	{16,21,12,18}	{}	2018-09-17 18:50:00.004713
22660	{9,15,2,7}	{}	2018-09-17 19:20:00.004652
22663	{8,5,6,17}	{}	2018-09-17 20:05:00.005378
22667	{19,20,7,6}	{}	2018-09-17 21:05:00.004515
22671	{8,13,20,19}	{}	2018-09-17 22:05:00.004509
22680	{11,2,1,5}	{}	2018-09-18 00:20:00.004712
22683	{6,21,2,20}	{}	2018-09-18 01:05:00.00535
22687	{19,9,21,1}	{}	2018-09-18 02:05:00.004483
22691	{11,18,2,16}	{}	2018-09-18 03:05:00.00453
22695	{18,21,3,15}	{}	2018-09-18 04:05:00.004513
22708	{11,21,20,7}	{}	2018-09-18 07:20:00.004072
22711	{21,3,13,2}	{}	2018-09-18 08:05:00.005298
22715	{6,3,18,14}	{}	2018-09-18 09:05:00.004447
22719	{2,4,17,7}	{}	2018-09-18 10:05:00.004564
22728	{13,2,4,3}	{}	2018-09-18 12:20:00.004659
22731	{9,11,10,5}	{}	2018-09-18 13:05:00.005377
22735	{1,17,4,18}	{}	2018-09-18 14:05:00.004508
22739	{8,18,9,16}	{}	2018-09-18 15:05:00.004526
22743	{5,11,12,9}	{}	2018-09-18 16:05:00.004476
22756	{1,2,19,12}	{}	2018-09-18 19:20:00.004502
22759	{11,1,16,8}	{}	2018-09-18 20:05:00.005343
22763	{13,3,11,1}	{}	2018-09-18 21:05:00.004538
22767	{8,6,11,13}	{}	2018-09-18 22:05:00.00451
22776	{15,13,14,18}	{}	2018-09-19 00:20:00.004623
22779	{15,14,11,12}	{}	2018-09-19 01:05:00.005326
22783	{15,1,10,8}	{}	2018-09-19 02:05:00.004522
22787	{11,19,10,20}	{}	2018-09-19 03:05:00.004562
22791	{11,10,21,4}	{}	2018-09-19 04:05:00.004579
20881	{4,14,3,13}	{}	2018-08-30 08:05:00.005359
20882	{14,20,11,1}	{}	2018-08-30 08:20:00.004677
20883	{17,15,21,8}	{}	2018-08-30 08:35:00.004691
20884	{6,17,5,2}	{}	2018-08-30 08:50:00.004829
20885	{14,18,3,19}	{}	2018-08-30 09:05:00.004588
20886	{5,15,9,18}	{}	2018-08-30 09:20:00.004702
20887	{10,1,20,8}	{}	2018-08-30 09:35:00.004696
20888	{1,7,17,3}	{}	2018-08-30 09:50:00.004669
20889	{6,4,21,8}	{}	2018-08-30 10:05:00.004419
20890	{8,17,16,5}	{}	2018-08-30 10:20:00.00472
20891	{7,21,4,15}	{}	2018-08-30 10:35:00.004634
20892	{18,9,2,13}	{}	2018-08-30 10:50:00.004635
20901	{10,19,11,3}	{}	2018-08-30 13:05:00.005219
20902	{20,13,15,18}	{}	2018-08-30 13:20:00.004704
20903	{10,6,1,8}	{}	2018-08-30 13:35:00.004699
20904	{11,2,21,3}	{}	2018-08-30 13:50:00.004641
20905	{1,18,11,6}	{}	2018-08-30 14:05:00.004513
20906	{9,3,20,6}	{}	2018-08-30 14:20:00.004704
20907	{14,4,1,6}	{}	2018-08-30 14:35:00.004664
20908	{15,19,21,12}	{}	2018-08-30 14:50:00.004807
20909	{12,3,2,18}	{}	2018-08-30 15:05:00.004479
20910	{15,19,4,13}	{}	2018-08-30 15:20:00.004118
20911	{1,10,13,2}	{}	2018-08-30 15:35:00.004822
20912	{6,21,12,17}	{}	2018-08-30 15:50:00.004643
20913	{13,21,3,18}	{}	2018-08-30 16:05:00.004535
20914	{15,12,11,7}	{}	2018-08-30 16:20:00.004613
20915	{1,11,6,19}	{}	2018-08-30 16:35:00.004762
20916	{17,13,8,16}	{}	2018-08-30 16:50:00.004704
20917	{18,9,21,8}	{}	2018-08-30 17:05:00.005482
20918	{13,18,3,1}	{}	2018-08-30 17:20:00.004706
20919	{17,1,9,21}	{}	2018-08-30 17:35:00.004644
20920	{2,13,11,10}	{}	2018-08-30 17:50:00.004621
20921	{13,14,12,4}	{}	2018-08-30 18:05:00.00453
20922	{19,16,20,11}	{}	2018-08-30 18:20:00.004686
20923	{6,3,8,21}	{}	2018-08-30 18:35:00.004608
20924	{16,10,9,15}	{}	2018-08-30 18:50:00.004706
20925	{10,14,6,7}	{}	2018-08-30 19:05:00.005305
20926	{13,7,19,16}	{}	2018-08-30 19:20:00.004598
20927	{14,19,4,11}	{}	2018-08-30 19:35:00.004672
20928	{17,1,10,13}	{}	2018-08-30 19:50:00.004719
20929	{18,14,10,21}	{}	2018-08-30 20:05:00.005306
20930	{7,13,16,2}	{}	2018-08-30 20:20:00.004766
20931	{9,10,5,12}	{}	2018-08-30 20:35:00.004652
20932	{13,15,9,12}	{}	2018-08-30 20:50:00.004544
20933	{6,16,14,13}	{}	2018-08-30 21:05:00.004466
20934	{18,8,5,7}	{}	2018-08-30 21:20:00.00465
20935	{3,16,11,6}	{}	2018-08-30 21:35:00.004721
20936	{13,8,20,9}	{}	2018-08-30 21:50:00.004789
20937	{17,7,14,11}	{}	2018-08-30 22:05:00.004618
20938	{16,4,13,1}	{}	2018-08-30 22:20:00.004717
20939	{2,4,12,21}	{}	2018-08-30 22:35:00.004488
20940	{13,7,17,19}	{}	2018-08-30 22:50:00.004606
20941	{18,3,16,20}	{}	2018-08-30 23:05:00.005439
20942	{8,2,7,10}	{}	2018-08-30 23:20:00.004794
20943	{14,11,12,2}	{}	2018-08-30 23:35:00.004891
20944	{14,20,6,12}	\N	2018-08-30 23:50:00.004256
20945	{21,20,11,13}	{}	2018-08-30 23:50:00.006919
20946	{16,4,12,8}	{}	2018-08-31 00:05:00.005147
20947	{6,11,5,16}	{}	2018-08-31 00:20:00.004602
20948	{1,12,3,18}	{}	2018-08-31 00:35:00.004727
20949	{5,19,21,1}	{}	2018-08-31 00:50:00.004765
20950	{12,11,1,16}	{}	2018-08-31 01:05:00.00534
20951	{12,21,9,1}	{}	2018-08-31 01:20:00.004614
20952	{17,9,14,3}	{}	2018-08-31 01:35:00.004702
20953	{16,19,20,6}	{}	2018-08-31 01:50:00.004654
20954	{8,19,12,1}	{}	2018-08-31 02:05:00.004475
20955	{15,21,13,11}	{}	2018-08-31 02:20:00.004677
20956	{3,16,2,12}	{}	2018-08-31 02:35:00.004692
20957	{18,2,9,1}	{}	2018-08-31 02:50:00.004712
20958	{10,9,19,4}	{}	2018-08-31 03:05:00.004495
20959	{14,20,2,19}	{}	2018-08-31 03:20:00.004743
20960	{9,11,5,15}	{}	2018-08-31 03:35:00.004661
20961	{6,13,20,1}	{}	2018-08-31 03:50:00.004553
20962	{9,7,4,12}	{}	2018-08-31 04:05:00.004716
20963	{15,13,4,6}	{}	2018-08-31 04:20:00.004806
20964	{3,2,11,7}	{}	2018-08-31 04:35:00.004709
20965	{13,3,14,7}	{}	2018-08-31 04:50:00.004633
20966	{4,18,20,13}	{}	2018-08-31 05:05:00.005422
20967	{11,15,21,20}	{}	2018-08-31 05:20:00.004699
20968	{20,21,6,18}	{}	2018-08-31 05:35:00.004687
20969	{2,16,6,10}	{}	2018-08-31 05:50:00.004851
20970	{5,19,12,18}	{}	2018-08-31 06:05:00.004457
20978	{5,7,4,6}	\N	2018-08-31 08:05:00.005553
20980	{12,16,6,13}	\N	2018-08-31 08:20:00.004749
20982	{18,6,12,14}	\N	2018-08-31 08:35:00.004671
20984	{11,15,7,12}	\N	2018-08-31 08:50:00.004509
20987	{1,17,12,11}	{}	2018-08-31 09:05:00.004805
20988	{3,11,17,6}	\N	2018-08-31 09:20:00.004716
20991	{18,2,20,4}	{}	2018-08-31 09:35:00.004774
20992	{4,16,7,2}	\N	2018-08-31 09:50:00.004693
20994	{6,15,5,3}	\N	2018-08-31 10:05:00.004498
20996	{18,19,3,2}	\N	2018-08-31 10:20:00.004574
20998	{7,16,14,12}	{}	2018-08-31 10:35:00.004607
20999	{13,15,11,21}	{}	2018-08-31 10:50:00.004681
21004	{20,9,21,4}	{}	2018-08-31 12:05:00.005369
21005	{18,17,13,20}	{}	2018-08-31 12:20:00.004692
21006	{5,12,18,8}	{}	2018-08-31 12:35:00.004658
21007	{21,19,2,18}	{}	2018-08-31 12:50:00.004686
21008	{3,11,14,12}	{}	2018-08-31 13:05:00.00533
21009	{8,6,15,9}	{}	2018-08-31 13:20:00.004665
21010	{4,16,15,14}	{}	2018-08-31 13:35:00.00468
21011	{5,16,11,9}	{}	2018-08-31 13:50:00.004674
21012	{1,7,4,3}	{}	2018-08-31 14:05:00.004459
21013	{17,16,13,12}	{}	2018-08-31 14:20:00.00467
21014	{14,13,8,18}	{}	2018-08-31 14:35:00.004856
21015	{15,14,21,10}	{}	2018-08-31 14:50:00.004748
21016	{14,10,6,2}	{}	2018-08-31 15:05:00.004676
21017	{5,1,19,13}	{}	2018-08-31 15:20:00.004645
21018	{19,17,5,16}	{}	2018-08-31 15:35:00.004722
21019	{17,7,10,5}	{}	2018-08-31 15:50:00.004643
22661	{9,17,1,19}	{}	2018-09-17 19:35:00.004811
22666	{1,10,12,4}	{}	2018-09-17 20:50:00.004711
22670	{21,9,3,19}	{}	2018-09-17 21:50:00.004699
22674	{18,5,2,11}	{}	2018-09-17 22:50:00.00467
22677	{1,4,13,15}	{}	2018-09-17 23:35:00.004745
22682	{17,7,15,1}	{}	2018-09-18 00:50:00.004653
22685	{21,4,16,15}	{}	2018-09-18 01:35:00.004787
22689	{1,7,9,3}	{}	2018-09-18 02:35:00.004701
22693	{17,15,13,4}	{}	2018-09-18 03:35:00.004708
22697	{5,9,10,16}	{}	2018-09-18 04:35:00.004674
22702	{12,17,21,14}	{}	2018-09-18 05:50:00.004642
22706	{6,19,14,13}	{}	2018-09-18 06:50:00.004713
22709	{11,14,1,19}	{}	2018-09-18 07:35:00.004706
22714	{7,19,17,11}	{}	2018-09-18 08:50:00.004705
22718	{16,13,20,8}	{}	2018-09-18 09:50:00.004728
22722	{19,15,20,7}	{}	2018-09-18 10:50:00.004652
22725	{9,3,15,19}	{}	2018-09-18 11:35:00.004554
22730	{8,11,10,1}	{}	2018-09-18 12:50:00.004676
22733	{9,11,8,12}	{}	2018-09-18 13:35:00.004691
22737	{6,17,10,13}	{}	2018-09-18 14:35:00.004709
22741	{3,10,2,8}	{}	2018-09-18 15:35:00.00474
22745	{16,19,12,7}	{}	2018-09-18 16:35:00.004737
22750	{3,6,13,4}	{}	2018-09-18 17:50:00.004693
22754	{16,10,17,5}	{}	2018-09-18 18:50:00.004626
22757	{3,19,15,10}	{}	2018-09-18 19:35:00.004666
22762	{3,7,8,4}	{}	2018-09-18 20:50:00.004723
22766	{20,6,3,11}	{}	2018-09-18 21:50:00.004684
22770	{12,14,7,18}	{}	2018-09-18 22:50:00.004699
22773	{17,10,7,15}	{}	2018-09-18 23:35:00.00488
22778	{1,15,16,5}	{}	2018-09-19 00:50:00.004711
22781	{15,2,9,19}	{}	2018-09-19 01:35:00.004554
22785	{12,21,13,3}	{}	2018-09-19 02:35:00.004774
22789	{19,10,14,6}	{}	2018-09-19 03:35:00.004673
20971	{8,14,4,15}	{}	2018-08-31 06:20:00.004704
20972	{20,10,4,19}	{}	2018-08-31 06:35:00.004668
20973	{20,13,4,5}	{}	2018-08-31 06:50:00.004147
20974	{12,20,21,1}	{}	2018-08-31 07:05:00.005288
20975	{6,11,17,10}	{}	2018-08-31 07:20:00.004636
20976	{9,3,12,10}	{}	2018-08-31 07:35:00.004638
20977	{2,7,20,21}	{}	2018-08-31 07:50:00.00458
20979	{5,7,2,16}	{}	2018-08-31 08:05:00.011044
20981	{7,11,6,4}	{}	2018-08-31 08:20:00.006129
20983	{10,18,14,19}	{}	2018-08-31 08:35:00.00579
20985	{6,9,16,1}	{}	2018-08-31 08:50:00.004528
20986	{4,8,20,17}	\N	2018-08-31 09:05:00.004496
20989	{1,15,9,3}	{}	2018-08-31 09:20:00.004716
20990	{18,15,21,6}	\N	2018-08-31 09:35:00.004776
21040	{8,2,6,14}	{}	2018-08-31 22:05:00.0047
20993	{19,18,12,7}	{}	2018-08-31 09:50:00.00471
20995	{16,18,7,17}	{}	2018-08-31 10:05:00.004499
20997	{1,9,13,3}	{}	2018-08-31 10:20:00.004874
21000	{18,12,9,7}	{}	2018-08-31 11:05:00.005191
21001	{1,2,21,5}	{}	2018-08-31 11:20:00.004645
21002	{3,19,11,21}	{}	2018-08-31 11:35:00.004647
21003	{3,5,18,2}	{}	2018-08-31 11:50:00.004626
21020	{20,21,4,8}	{}	2018-08-31 16:05:00.005779
21021	{10,18,6,12}	{}	2018-08-31 16:20:00.006439
21022	{6,16,3,13}	{}	2018-08-31 16:35:00.005756
21023	{8,14,9,15}	{}	2018-08-31 16:50:00.010685
21024	{5,1,18,16}	{}	2018-08-31 17:20:00.010864
21025	{8,15,11,16}	{}	2018-08-31 17:35:00.007131
21026	{2,6,14,1}	{}	2018-08-31 17:50:00.006149
21027	{11,3,5,18}	{}	2018-08-31 18:05:00.006454
21028	{15,4,19,18}	{}	2018-08-31 19:05:00.010708
21029	{13,8,7,6}	{}	2018-08-31 19:20:00.005904
21030	{10,21,9,5}	{}	2018-08-31 19:35:00.006056
21031	{1,14,6,10}	{}	2018-08-31 19:50:00.006475
21032	{16,9,3,13}	{}	2018-08-31 20:05:00.007044
21033	{3,11,16,7}	{}	2018-08-31 20:20:00.004706
21034	{10,15,18,17}	{}	2018-08-31 20:35:00.004711
21035	{7,20,19,5}	{}	2018-08-31 20:50:00.004706
21036	{21,3,8,20}	{}	2018-08-31 21:05:00.004369
21037	{3,15,7,17}	{}	2018-08-31 21:20:00.004551
21038	{9,11,19,12}	{}	2018-08-31 21:35:00.004589
21039	{6,17,11,18}	{}	2018-08-31 21:50:00.004678
21041	{12,7,15,16}	{}	2018-08-31 22:20:00.004711
21042	{21,17,3,14}	{}	2018-08-31 22:35:00.00492
21043	{13,1,10,12}	{}	2018-08-31 22:50:00.004672
21044	{5,4,17,15}	{}	2018-08-31 23:20:00.006876
21045	{10,3,11,16}	{}	2018-08-31 23:35:00.006628
21046	{10,16,17,13}	{}	2018-08-31 23:50:00.006964
21047	{18,3,8,12}	{}	2018-09-01 00:05:00.006582
21048	{14,12,1,11}	{}	2018-09-01 00:20:00.006296
21049	{9,18,8,21}	{}	2018-09-01 00:35:00.006152
21050	{14,4,8,6}	{}	2018-09-01 00:50:00.010007
21051	{8,20,17,11}	{}	2018-09-01 01:05:00.011356
21052	{5,19,2,20}	{}	2018-09-01 01:20:00.006087
21053	{10,13,19,11}	{}	2018-09-01 01:35:00.005991
21054	{10,19,7,16}	{}	2018-09-01 01:50:00.005878
21055	{1,21,16,4}	{}	2018-09-01 02:05:00.010411
21056	{11,8,20,5}	{}	2018-09-01 02:20:00.006209
21057	{19,15,4,14}	{}	2018-09-01 02:35:00.00599
21058	{13,6,18,9}	{}	2018-09-01 02:50:00.006166
21059	{9,1,21,7}	{}	2018-09-01 03:05:00.00595
21060	{11,21,16,13}	{}	2018-09-01 03:20:00.006211
21061	{20,3,6,16}	{}	2018-09-01 03:35:00.004677
21062	{3,14,15,10}	{}	2018-09-01 03:50:00.004673
21063	{12,19,14,5}	{}	2018-09-01 04:05:00.004464
21064	{15,13,8,19}	{}	2018-09-01 04:20:00.004635
21065	{5,2,3,21}	{}	2018-09-01 04:35:00.004668
21066	{1,11,21,5}	{}	2018-09-01 04:50:00.004632
21067	{9,13,18,10}	{}	2018-09-01 05:05:00.005656
21068	{12,10,13,14}	{}	2018-09-01 05:20:00.004924
21069	{4,7,8,6}	{}	2018-09-01 05:35:00.004616
21070	{16,10,2,3}	{}	2018-09-01 05:50:00.004572
21071	{10,1,21,4}	{}	2018-09-01 06:05:00.004512
21072	{7,17,14,15}	{}	2018-09-01 06:20:00.004683
21073	{7,4,18,2}	{}	2018-09-01 06:35:00.004639
21074	{11,8,16,4}	{}	2018-09-01 06:50:00.004661
21075	{5,15,1,3}	{}	2018-09-01 07:05:00.0053
21076	{2,18,8,12}	{}	2018-09-01 07:20:00.004546
21077	{9,12,6,19}	{}	2018-09-01 07:35:00.004562
21078	{6,4,1,19}	{}	2018-09-01 07:50:00.004704
21079	{21,11,3,12}	{}	2018-09-01 08:05:00.005286
21080	{20,17,15,16}	{}	2018-09-01 08:20:00.004638
21081	{20,6,13,2}	{}	2018-09-01 08:35:00.00463
21083	{11,17,16,2}	{}	2018-09-01 09:05:00.004462
21084	{8,15,13,19}	{}	2018-09-01 09:20:00.004597
22793	{2,7,21,8}	{}	2018-09-19 04:35:00.004703
22798	{8,5,14,17}	{}	2018-09-19 05:50:00.00462
22802	{2,15,1,9}	{}	2018-09-19 06:50:00.004672
22805	{6,3,20,10}	{}	2018-09-19 07:35:00.004787
22810	{5,18,12,14}	{}	2018-09-19 08:50:00.004692
22814	{12,16,4,15}	{}	2018-09-19 09:50:00.00468
22818	{7,8,3,9}	{}	2018-09-19 10:50:00.004669
22821	{16,19,10,6}	{}	2018-09-19 11:35:00.004632
22826	{20,8,13,9}	{}	2018-09-19 12:50:00.004694
22829	{16,19,21,2}	{}	2018-09-19 13:35:00.004699
22833	{7,15,19,6}	{}	2018-09-19 14:35:00.004678
22837	{12,8,17,19}	{}	2018-09-19 15:35:00.004709
22841	{21,10,7,18}	{}	2018-09-19 16:35:00.004708
22846	{9,6,12,11}	{}	2018-09-19 17:50:00.004714
22850	{11,2,14,16}	{}	2018-09-19 18:50:00.004735
22853	{9,4,20,10}	{}	2018-09-19 19:35:00.004782
22858	{5,12,7,10}	{}	2018-09-19 20:50:00.004673
22862	{14,5,6,3}	{}	2018-09-19 21:50:00.004746
22866	{19,20,12,13}	{}	2018-09-19 22:50:00.004721
22869	{16,14,8,11}	{}	2018-09-19 23:35:00.004809
22874	{1,11,9,20}	{}	2018-09-20 00:50:00.004708
22877	{8,21,2,15}	{}	2018-09-20 01:35:00.004721
22881	{6,12,19,21}	{}	2018-09-20 02:35:00.004732
22885	{1,13,21,6}	{}	2018-09-20 03:35:00.00463
22889	{16,18,15,8}	{}	2018-09-20 04:35:00.00468
22894	{7,10,20,13}	{}	2018-09-20 05:50:00.004648
22898	{20,16,9,18}	{}	2018-09-20 06:50:00.004725
22901	{1,4,21,17}	{}	2018-09-20 07:35:00.004719
22906	{17,18,20,5}	{}	2018-09-20 08:50:00.004644
22910	{20,8,10,16}	{}	2018-09-20 09:50:00.004793
22914	{13,11,7,4}	{}	2018-09-20 10:50:00.004676
22917	{8,1,9,10}	{}	2018-09-20 11:35:00.004724
22922	{4,21,13,10}	{}	2018-09-20 12:50:00.004724
22925	{2,10,19,7}	{}	2018-09-20 13:35:00.004714
22929	{7,4,2,9}	{}	2018-09-20 14:35:00.004703
21082	{6,8,21,4}	{}	2018-09-01 08:50:00.004629
21085	{9,17,15,11}	{}	2018-09-01 09:35:00.004646
21086	{5,7,10,8}	{}	2018-09-01 09:50:00.004709
21087	{18,4,12,9}	{}	2018-09-01 10:05:00.00445
21088	{1,10,6,11}	{}	2018-09-01 10:20:00.004661
21089	{1,18,21,15}	{}	2018-09-01 10:35:00.004632
21090	{4,12,9,16}	{}	2018-09-01 10:50:00.004717
21091	{15,9,20,14}	{}	2018-09-01 11:05:00.005357
21092	{18,15,3,9}	{}	2018-09-01 11:20:00.00458
21093	{18,15,12,7}	{}	2018-09-01 11:35:00.00459
21094	{5,2,4,14}	{}	2018-09-01 11:50:00.00462
21095	{1,10,16,9}	{}	2018-09-01 12:05:00.005388
21096	{4,6,19,15}	{}	2018-09-01 12:20:00.004619
21097	{21,17,16,1}	{}	2018-09-01 12:35:00.00467
21098	{4,21,1,9}	{}	2018-09-01 12:50:00.004661
21099	{21,6,8,13}	{}	2018-09-01 13:05:00.005249
21100	{6,2,21,1}	{}	2018-09-01 13:20:00.004632
21101	{1,18,4,6}	{}	2018-09-01 13:35:00.004636
21102	{11,9,17,7}	{}	2018-09-01 13:50:00.004667
21103	{12,17,3,10}	{}	2018-09-01 14:05:00.004527
21104	{16,11,5,10}	{}	2018-09-01 14:20:00.004666
21105	{8,12,1,10}	{}	2018-09-01 14:35:00.00468
21106	{19,7,12,13}	{}	2018-09-01 14:50:00.00467
21107	{1,13,20,8}	{}	2018-09-01 15:05:00.004556
21108	{6,4,7,16}	{}	2018-09-01 15:20:00.004647
21109	{2,1,16,20}	{}	2018-09-01 15:35:00.004775
21110	{17,16,5,19}	{}	2018-09-01 15:50:00.0047
21111	{16,14,2,4}	{}	2018-09-01 16:05:00.004525
21112	{6,9,11,20}	{}	2018-09-01 16:20:00.004642
21113	{10,11,5,9}	{}	2018-09-01 16:35:00.004059
21114	{18,17,13,4}	{}	2018-09-01 16:50:00.004682
21115	{20,21,5,8}	{}	2018-09-01 17:05:00.005282
21116	{2,10,7,4}	{}	2018-09-01 17:20:00.004723
21117	{10,15,20,5}	{}	2018-09-01 17:35:00.004471
21118	{12,1,4,9}	{}	2018-09-01 17:50:00.00463
21119	{6,7,17,19}	{}	2018-09-01 18:05:00.004462
21120	{2,5,11,15}	{}	2018-09-01 18:20:00.004708
21121	{3,12,17,18}	{}	2018-09-01 18:35:00.004677
21122	{20,14,11,9}	{}	2018-09-01 18:50:00.0047
21123	{20,17,13,1}	{}	2018-09-01 19:05:00.005306
21124	{5,16,8,4}	{}	2018-09-01 19:20:00.004723
21125	{2,8,7,4}	{}	2018-09-01 19:35:00.004699
21126	{3,17,6,9}	{}	2018-09-01 19:50:00.004653
21127	{19,4,8,21}	{}	2018-09-01 20:05:00.005182
21128	{5,3,17,4}	{}	2018-09-01 20:20:00.004699
21129	{9,13,4,6}	{}	2018-09-01 20:35:00.004664
21130	{13,3,17,8}	{}	2018-09-01 20:50:00.004684
21131	{14,12,9,20}	{}	2018-09-01 21:05:00.004488
21132	{16,13,14,10}	{}	2018-09-01 21:20:00.00467
21133	{20,18,4,11}	{}	2018-09-01 21:35:00.004649
21134	{10,11,8,12}	{}	2018-09-01 21:50:00.004679
21135	{11,2,21,1}	{}	2018-09-01 22:05:00.004493
21136	{20,8,5,6}	{}	2018-09-01 22:20:00.004717
21137	{21,11,18,20}	{}	2018-09-01 22:35:00.004644
21138	{2,14,8,17}	{}	2018-09-01 22:50:00.004502
21139	{13,1,21,5}	{}	2018-09-01 23:05:00.005363
21140	{20,3,21,7}	{}	2018-09-01 23:20:00.004767
21141	{19,11,9,7}	{}	2018-09-01 23:35:00.004802
21142	{17,1,19,13}	{}	2018-09-01 23:50:00.004702
21143	{4,17,16,10}	{}	2018-09-02 00:05:00.005116
21144	{14,7,17,3}	{}	2018-09-02 00:20:00.0047
21145	{19,14,5,3}	{}	2018-09-02 00:35:00.004666
21146	{2,13,6,17}	{}	2018-09-02 00:50:00.004051
21147	{1,13,3,8}	{}	2018-09-02 01:05:00.005348
21148	{14,16,2,17}	{}	2018-09-02 01:20:00.004665
21149	{17,18,20,13}	{}	2018-09-02 01:35:00.004699
21150	{2,12,14,1}	{}	2018-09-02 01:50:00.004708
21151	{14,12,4,6}	{}	2018-09-02 02:05:00.004521
21152	{18,5,15,2}	{}	2018-09-02 02:20:00.004766
21153	{4,20,5,11}	{}	2018-09-02 02:35:00.004649
21154	{13,2,20,18}	{}	2018-09-02 02:50:00.004686
21155	{2,7,20,19}	{}	2018-09-02 03:05:00.004475
21156	{15,21,2,18}	{}	2018-09-02 03:20:00.004714
21157	{21,6,4,19}	{}	2018-09-02 03:35:00.004685
21158	{3,13,10,14}	{}	2018-09-02 03:50:00.004679
21159	{14,13,3,10}	{}	2018-09-02 04:05:00.00456
21160	{7,2,17,13}	{}	2018-09-02 04:20:00.004679
21161	{17,6,10,12}	{}	2018-09-02 04:35:00.004702
21166	{11,12,7,13}	{}	2018-09-02 05:50:00.004673
21170	{18,6,13,21}	{}	2018-09-02 06:50:00.004615
21173	{19,15,10,5}	{}	2018-09-02 07:35:00.004676
21178	{17,6,20,2}	{}	2018-09-02 08:50:00.004697
21182	{11,3,8,20}	{}	2018-09-02 09:50:00.004661
21186	{5,20,12,14}	{}	2018-09-02 10:50:00.004703
21189	{1,14,10,17}	{}	2018-09-02 11:35:00.004693
21194	{15,17,13,9}	{}	2018-09-02 12:50:00.004734
21197	{7,18,13,12}	{}	2018-09-02 13:35:00.004673
21201	{3,10,19,2}	{}	2018-09-02 14:35:00.004631
21205	{19,3,1,12}	{}	2018-09-02 15:35:00.004691
21209	{21,11,14,6}	{}	2018-09-02 16:35:00.004665
21214	{21,14,5,20}	{}	2018-09-02 17:50:00.004699
21218	{12,9,15,13}	{}	2018-09-02 18:50:00.004648
22794	{20,5,18,2}	{}	2018-09-19 04:50:00.004682
22796	{2,18,12,16}	{}	2018-09-19 05:20:00.004704
22800	{17,1,21,15}	{}	2018-09-19 06:20:00.004766
22803	{14,10,15,11}	{}	2018-09-19 07:05:00.005355
22820	{17,1,5,12}	{}	2018-09-19 11:20:00.004728
22823	{3,21,8,2}	{}	2018-09-19 12:05:00.005391
22844	{19,17,13,2}	{}	2018-09-19 17:20:00.0047
22848	{12,15,13,19}	{}	2018-09-19 18:20:00.004695
22851	{5,7,8,4}	{}	2018-09-19 19:05:00.005296
22868	{17,19,9,6}	{}	2018-09-19 23:20:00.00482
22871	{1,21,17,5}	{}	2018-09-20 00:05:00.005098
22892	{7,16,4,14}	{}	2018-09-20 05:20:00.00468
22896	{10,11,18,7}	{}	2018-09-20 06:20:00.004466
22899	{10,9,20,16}	{}	2018-09-20 07:05:00.005428
22916	{13,3,11,6}	{}	2018-09-20 11:20:00.00474
22919	{3,4,9,13}	{}	2018-09-20 12:05:00.005327
21162	{16,17,8,19}	{}	2018-09-02 04:50:00.004666
21165	{3,16,2,12}	{}	2018-09-02 05:35:00.004715
21169	{19,2,18,12}	{}	2018-09-02 06:35:00.004588
21174	{8,16,15,10}	{}	2018-09-02 07:50:00.004702
21177	{8,11,16,2}	{}	2018-09-02 08:35:00.004641
21181	{21,17,20,6}	{}	2018-09-02 09:35:00.004605
21185	{17,14,21,12}	{}	2018-09-02 10:35:00.004764
21190	{5,21,6,2}	{}	2018-09-02 11:50:00.004753
21193	{4,19,21,17}	{}	2018-09-02 12:35:00.004694
21198	{12,3,17,13}	{}	2018-09-02 13:50:00.004696
21202	{18,14,13,2}	{}	2018-09-02 14:50:00.004688
21206	{11,7,21,12}	{}	2018-09-02 15:50:00.004696
21210	{5,16,20,8}	{}	2018-09-02 16:50:00.004665
21213	{17,2,1,4}	{}	2018-09-02 17:35:00.004654
21217	{13,2,1,17}	{}	2018-09-02 18:35:00.004683
22795	{19,15,20,21}	{}	2018-09-19 05:05:00.005389
22799	{6,5,17,20}	{}	2018-09-19 06:05:00.004544
22804	{7,12,16,5}	{}	2018-09-19 07:20:00.004755
22808	{10,16,6,20}	{}	2018-09-19 08:20:00.004693
22812	{3,11,19,5}	{}	2018-09-19 09:20:00.004727
22816	{7,16,5,8}	{}	2018-09-19 10:20:00.004743
22819	{21,15,3,12}	{}	2018-09-19 11:05:00.005298
22828	{6,14,9,3}	{}	2018-09-19 13:20:00.004687
22832	{19,10,2,18}	{}	2018-09-19 14:20:00.004706
22836	{15,6,19,5}	{}	2018-09-19 15:20:00.004694
22840	{15,3,4,7}	{}	2018-09-19 16:20:00.004748
22843	{14,5,12,18}	{}	2018-09-19 17:05:00.005376
22847	{16,11,15,12}	{}	2018-09-19 18:05:00.004522
22856	{20,6,14,15}	{}	2018-09-19 20:20:00.004667
22860	{9,2,12,13}	{}	2018-09-19 21:20:00.004675
22864	{21,13,16,18}	{}	2018-09-19 22:20:00.004681
22867	{12,10,2,11}	{}	2018-09-19 23:05:00.005453
22876	{20,5,12,11}	{}	2018-09-20 01:20:00.00463
22880	{15,11,5,14}	{}	2018-09-20 02:20:00.004735
22884	{1,7,12,4}	{}	2018-09-20 03:20:00.0046
22888	{11,15,8,4}	{}	2018-09-20 04:20:00.004627
22891	{3,19,10,6}	{}	2018-09-20 05:05:00.005316
22895	{21,11,19,1}	{}	2018-09-20 06:05:00.004447
22904	{17,2,8,1}	{}	2018-09-20 08:20:00.004748
22908	{13,3,8,9}	{}	2018-09-20 09:20:00.004635
22912	{18,17,6,8}	{}	2018-09-20 10:20:00.004681
22915	{19,5,21,3}	{}	2018-09-20 11:05:00.005394
22924	{3,19,5,13}	{}	2018-09-20 13:20:00.004675
22928	{19,6,10,9}	{}	2018-09-20 14:20:00.0047
21163	{10,20,9,8}	{}	2018-09-02 05:05:00.005293
21164	{12,7,10,1}	{}	2018-09-02 05:20:00.004721
21167	{12,14,17,13}	{}	2018-09-02 06:05:00.004494
21168	{13,17,1,19}	{}	2018-09-02 06:20:00.004734
21171	{19,16,3,14}	{}	2018-09-02 07:05:00.005254
21176	{20,17,7,21}	{}	2018-09-02 08:20:00.00465
21180	{4,2,19,13}	{}	2018-09-02 09:20:00.004721
21184	{1,19,4,12}	{}	2018-09-02 10:20:00.004713
21187	{8,15,6,11}	{}	2018-09-02 11:05:00.005297
21188	{6,1,9,11}	{}	2018-09-02 11:20:00.004722
21191	{1,9,15,12}	{}	2018-09-02 12:05:00.005358
21196	{1,15,11,18}	{}	2018-09-02 13:20:00.004727
21200	{2,3,4,17}	{}	2018-09-02 14:20:00.004271
21204	{5,11,6,13}	{}	2018-09-02 15:20:00.004792
21208	{17,19,8,15}	{}	2018-09-02 16:20:00.004696
21211	{9,17,18,21}	{}	2018-09-02 17:05:00.00525
21212	{13,2,18,14}	{}	2018-09-02 17:20:00.004626
21215	{8,18,1,5}	{}	2018-09-02 18:05:00.004513
21216	{1,2,21,3}	{}	2018-09-02 18:20:00.004713
21219	{10,18,7,9}	{}	2018-09-02 19:05:00.005348
22797	{10,7,5,1}	{}	2018-09-19 05:35:00.004718
22801	{4,21,12,14}	{}	2018-09-19 06:35:00.004738
22806	{13,10,7,20}	{}	2018-09-19 07:50:00.004779
22809	{8,9,12,4}	{}	2018-09-19 08:35:00.004732
22813	{18,9,6,5}	{}	2018-09-19 09:35:00.004723
22817	{11,2,21,6}	{}	2018-09-19 10:35:00.004743
22822	{20,14,12,21}	{}	2018-09-19 11:50:00.004708
22825	{21,9,11,13}	{}	2018-09-19 12:35:00.004716
22830	{17,8,1,18}	{}	2018-09-19 13:50:00.004729
22834	{12,4,14,18}	{}	2018-09-19 14:50:00.004719
22838	{14,19,4,3}	{}	2018-09-19 15:50:00.0047
22842	{19,13,18,17}	{}	2018-09-19 16:50:00.00466
22845	{16,20,21,14}	{}	2018-09-19 17:35:00.004681
22849	{17,20,5,11}	{}	2018-09-19 18:35:00.004703
22854	{8,5,14,13}	{}	2018-09-19 19:50:00.004704
22857	{5,21,2,6}	{}	2018-09-19 20:35:00.004645
22861	{8,10,11,6}	{}	2018-09-19 21:35:00.004643
22865	{12,6,2,4}	{}	2018-09-19 22:35:00.004647
22870	{18,2,5,14}	{}	2018-09-19 23:50:00.004854
22873	{18,13,8,14}	{}	2018-09-20 00:35:00.004745
22878	{3,5,9,7}	{}	2018-09-20 01:50:00.004634
22882	{14,12,11,19}	{}	2018-09-20 02:50:00.004669
22886	{20,19,9,4}	{}	2018-09-20 03:50:00.004701
22890	{4,15,12,8}	{}	2018-09-20 04:50:00.004672
22893	{19,5,9,3}	{}	2018-09-20 05:35:00.004687
22897	{4,14,11,12}	{}	2018-09-20 06:35:00.004734
22902	{10,12,1,18}	{}	2018-09-20 07:50:00.004698
22905	{11,15,14,3}	{}	2018-09-20 08:35:00.004768
22909	{10,21,6,9}	{}	2018-09-20 09:35:00.004738
22913	{17,8,21,6}	{}	2018-09-20 10:35:00.004716
22918	{1,15,9,7}	{}	2018-09-20 11:50:00.004754
22921	{5,18,8,16}	{}	2018-09-20 12:35:00.003983
22926	{14,7,9,12}	{}	2018-09-20 13:50:00.004687
22930	{11,6,2,9}	{}	2018-09-20 14:50:00.004727
21172	{2,20,12,9}	{}	2018-09-02 07:20:00.004658
21175	{20,16,17,18}	{}	2018-09-02 08:05:00.005258
21179	{16,8,18,10}	{}	2018-09-02 09:05:00.004497
21183	{18,6,20,16}	{}	2018-09-02 10:05:00.004517
21192	{2,5,3,11}	{}	2018-09-02 12:20:00.004713
21195	{3,2,5,7}	{}	2018-09-02 13:05:00.005273
21199	{7,19,4,8}	{}	2018-09-02 14:05:00.004549
21203	{1,7,5,21}	{}	2018-09-02 15:05:00.004535
21207	{11,2,13,9}	{}	2018-09-02 16:05:00.004551
21220	{18,1,8,3}	{}	2018-09-02 19:20:00.004718
21221	{14,11,8,20}	{}	2018-09-02 19:35:00.004733
21222	{19,8,15,6}	{}	2018-09-02 19:50:00.004668
21223	{10,9,14,18}	{}	2018-09-02 20:05:00.005346
21224	{11,5,9,16}	{}	2018-09-02 20:20:00.004685
21225	{1,3,4,17}	{}	2018-09-02 20:35:00.004565
21226	{6,2,19,20}	{}	2018-09-02 20:50:00.004673
21227	{19,16,3,18}	{}	2018-09-02 21:05:00.004498
21228	{21,11,13,9}	{}	2018-09-02 21:20:00.004722
21229	{10,17,8,3}	{}	2018-09-02 21:35:00.004671
21230	{2,16,10,8}	{}	2018-09-02 21:50:00.00473
21231	{4,14,10,18}	{}	2018-09-02 22:05:00.004577
21232	{15,5,11,8}	{}	2018-09-02 22:20:00.004692
21233	{6,14,7,1}	{}	2018-09-02 22:35:00.004788
21234	{19,15,16,6}	{}	2018-09-02 22:50:00.004725
21235	{11,9,2,19}	{}	2018-09-02 23:05:00.005308
21236	{10,5,18,16}	{}	2018-09-02 23:20:00.0049
21237	{10,12,16,17}	{}	2018-09-02 23:35:00.004828
21238	{14,2,19,8}	{}	2018-09-02 23:50:00.004849
21239	{20,10,14,13}	{}	2018-09-03 00:05:00.005223
21240	{20,3,16,2}	{}	2018-09-03 00:20:00.004668
21241	{13,21,7,3}	{}	2018-09-03 00:35:00.004716
21242	{10,19,14,17}	{}	2018-09-03 00:50:00.004663
21243	{8,3,19,5}	{}	2018-09-03 01:05:00.005238
21244	{1,8,5,12}	{}	2018-09-03 01:20:00.004753
21245	{10,19,13,3}	{}	2018-09-03 01:35:00.004677
21246	{18,8,12,16}	{}	2018-09-03 01:50:00.004019
21247	{10,16,18,4}	{}	2018-09-03 02:05:00.004554
21248	{2,7,13,10}	{}	2018-09-03 02:20:00.004644
21249	{9,7,10,5}	{}	2018-09-03 02:35:00.004669
21250	{7,1,19,13}	{}	2018-09-03 02:50:00.004739
21251	{13,8,11,21}	{}	2018-09-03 03:05:00.004476
21252	{6,7,2,14}	{}	2018-09-03 03:20:00.004647
21253	{6,4,1,15}	{}	2018-09-03 03:35:00.004688
21254	{20,8,17,11}	{}	2018-09-03 03:50:00.004647
21255	{7,3,18,21}	{}	2018-09-03 04:05:00.00443
21256	{7,1,16,15}	{}	2018-09-03 04:20:00.004742
21257	{13,14,21,4}	{}	2018-09-03 04:35:00.004695
21258	{4,16,8,15}	{}	2018-09-03 04:50:00.004674
21259	{6,3,10,9}	{}	2018-09-03 05:05:00.005279
21260	{20,2,16,7}	{}	2018-09-03 05:20:00.004711
21261	{13,16,21,4}	{}	2018-09-03 05:35:00.00464
21262	{13,12,20,19}	{}	2018-09-03 05:50:00.004714
21263	{9,11,3,13}	{}	2018-09-03 06:05:00.004582
21264	{4,5,7,2}	{}	2018-09-03 06:20:00.004719
21265	{1,2,15,14}	{}	2018-09-03 06:35:00.004769
21266	{2,13,1,10}	{}	2018-09-03 06:50:00.004722
21267	{12,8,3,4}	{}	2018-09-03 07:05:00.005337
21268	{1,9,21,16}	{}	2018-09-03 07:20:00.004747
21269	{17,9,2,18}	{}	2018-09-03 07:35:00.004707
21270	{5,14,10,7}	{}	2018-09-03 07:50:00.004671
21271	{7,14,10,11}	{}	2018-09-03 08:05:00.005443
21272	{10,18,4,19}	{}	2018-09-03 08:20:00.004636
21273	{7,2,19,10}	{}	2018-09-03 08:35:00.004737
21274	{5,13,10,7}	{}	2018-09-03 08:50:00.004656
21275	{6,15,10,11}	{}	2018-09-03 09:05:00.004568
21276	{15,8,9,16}	{}	2018-09-03 09:20:00.004723
21277	{11,5,15,12}	{}	2018-09-03 09:35:00.004755
21278	{10,21,12,20}	{}	2018-09-03 09:50:00.004649
21279	{12,14,8,4}	{}	2018-09-03 10:05:00.004511
21280	{9,14,2,5}	{}	2018-09-03 10:20:00.004702
21281	{15,7,9,4}	{}	2018-09-03 10:35:00.004733
21282	{14,4,19,5}	{}	2018-09-03 10:50:00.004713
21283	{3,1,19,17}	{}	2018-09-03 11:05:00.005454
21284	{11,10,21,16}	{}	2018-09-03 11:20:00.004692
21285	{16,1,15,11}	{}	2018-09-03 11:35:00.004723
21286	{1,9,12,2}	{}	2018-09-03 11:50:00.004709
21287	{2,4,18,10}	{}	2018-09-03 12:05:00.005293
21288	{12,15,5,3}	{}	2018-09-03 12:20:00.00464
21291	{6,7,2,16}	{}	2018-09-03 13:05:00.005358
22807	{2,16,21,17}	{}	2018-09-19 08:05:00.005329
22811	{11,2,8,10}	{}	2018-09-19 09:05:00.004565
22815	{17,6,20,8}	{}	2018-09-19 10:05:00.004563
22824	{17,13,1,18}	{}	2018-09-19 12:20:00.004642
22827	{21,13,7,17}	{}	2018-09-19 13:05:00.005314
22831	{15,13,21,2}	{}	2018-09-19 14:05:00.004524
22835	{15,18,19,8}	{}	2018-09-19 15:05:00.004513
22839	{7,18,16,12}	{}	2018-09-19 16:05:00.004502
22852	{17,15,21,13}	{}	2018-09-19 19:20:00.004664
22855	{16,14,7,6}	{}	2018-09-19 20:05:00.005264
22859	{1,9,5,2}	{}	2018-09-19 21:05:00.004564
22863	{4,7,17,11}	{}	2018-09-19 22:05:00.004543
22872	{17,2,13,1}	{}	2018-09-20 00:20:00.004745
22875	{15,3,6,4}	{}	2018-09-20 01:05:00.005323
22879	{17,12,4,18}	{}	2018-09-20 02:05:00.004548
22883	{11,6,16,10}	{}	2018-09-20 03:05:00.004485
22887	{8,4,13,10}	{}	2018-09-20 04:05:00.004571
22900	{15,8,2,17}	{}	2018-09-20 07:20:00.003976
22903	{20,10,4,18}	{}	2018-09-20 08:05:00.005216
22907	{21,12,4,6}	{}	2018-09-20 09:05:00.004552
22911	{13,15,12,3}	{}	2018-09-20 10:05:00.004511
22920	{15,2,6,10}	{}	2018-09-20 12:20:00.00469
22923	{19,18,17,11}	{}	2018-09-20 13:05:00.005346
22927	{5,13,2,10}	{}	2018-09-20 14:05:00.004586
22931	{7,18,10,9}	{}	2018-09-20 15:05:00.004539
21289	{2,8,1,20}	{}	2018-09-03 12:35:00.004758
22932	{13,9,21,16}	{}	2018-09-20 15:20:00.006976
22933	{12,20,14,16}	{}	2018-09-20 15:35:00.006161
22934	{5,1,8,15}	{}	2018-09-20 15:50:00.006243
22935	{4,5,11,1}	{}	2018-09-20 16:05:00.004448
22936	{4,14,3,7}	{}	2018-09-20 16:20:00.004679
22937	{4,5,12,7}	{}	2018-09-20 16:35:00.00464
22938	{11,7,6,3}	{}	2018-09-20 16:50:00.004412
21290	{7,1,12,9}	{}	2018-09-03 12:50:00.004714
22939	{19,17,2,9}	{}	2018-09-20 17:05:00.005652
22940	{6,14,4,20}	{}	2018-09-20 17:20:00.004676
22941	{15,14,8,11}	{}	2018-09-20 17:35:00.004667
22942	{11,21,3,17}	{}	2018-09-20 17:50:00.004689
22943	{13,21,2,19}	{}	2018-09-20 18:05:00.004546
21292	{12,1,8,14}	{}	2018-09-03 13:20:00.004649
21293	{8,5,19,2}	{}	2018-09-03 13:35:00.004695
21294	{21,19,20,9}	{}	2018-09-03 13:50:00.00473
21295	{9,13,18,17}	{}	2018-09-03 14:05:00.004581
21296	{10,17,11,18}	{}	2018-09-03 14:20:00.004703
21297	{18,21,5,7}	{}	2018-09-03 14:35:00.004677
21298	{10,4,15,7}	{}	2018-09-03 14:50:00.004708
21299	{9,16,12,19}	{}	2018-09-03 15:05:00.004528
21300	{5,9,18,8}	{}	2018-09-03 15:20:00.004735
21301	{9,13,10,14}	{}	2018-09-03 15:35:00.004754
21302	{19,9,10,7}	{}	2018-09-03 15:50:00.0047
21303	{1,20,19,11}	{}	2018-09-03 16:05:00.004503
21304	{15,9,14,20}	{}	2018-09-03 16:20:00.004505
21305	{10,7,17,21}	{}	2018-09-03 16:35:00.004746
21306	{7,20,2,5}	{}	2018-09-03 16:50:00.004663
21307	{18,14,12,5}	{}	2018-09-03 17:05:00.005338
21308	{7,3,5,18}	{}	2018-09-03 17:20:00.004645
21309	{15,18,2,21}	{}	2018-09-03 17:35:00.004774
21310	{9,14,6,17}	{}	2018-09-03 17:50:00.004712
21311	{14,12,16,13}	{}	2018-09-03 18:05:00.00455
21312	{14,5,9,7}	{}	2018-09-03 18:20:00.004475
21313	{12,13,17,18}	{}	2018-09-03 18:35:00.004767
21314	{17,15,4,13}	{}	2018-09-03 18:50:00.004741
21315	{21,20,18,1}	{}	2018-09-03 19:05:00.005261
21316	{6,16,15,18}	{}	2018-09-03 19:20:00.00465
21317	{17,7,16,14}	{}	2018-09-03 19:35:00.004691
21318	{14,21,11,13}	{}	2018-09-03 19:50:00.004788
21319	{13,5,2,16}	{}	2018-09-03 20:05:00.00539
21320	{4,15,9,17}	{}	2018-09-03 20:20:00.004714
21321	{3,17,7,6}	{}	2018-09-03 20:35:00.004696
21322	{5,20,7,3}	{}	2018-09-03 20:50:00.004676
21323	{9,16,11,7}	{}	2018-09-03 21:05:00.004525
21324	{9,8,5,16}	{}	2018-09-03 21:20:00.004688
21325	{1,4,10,9}	{}	2018-09-03 21:35:00.004691
21326	{9,15,1,18}	{}	2018-09-03 21:50:00.004609
21327	{19,16,3,14}	{}	2018-09-03 22:05:00.004577
21328	{17,16,4,21}	{}	2018-09-03 22:20:00.004801
21329	{4,11,15,6}	{}	2018-09-03 22:35:00.004739
21330	{16,9,1,17}	{}	2018-09-03 22:50:00.004713
21331	{14,9,15,7}	{}	2018-09-03 23:05:00.005298
21332	{16,15,18,11}	{}	2018-09-03 23:20:00.004795
21333	{19,10,7,3}	{}	2018-09-03 23:35:00.004858
21334	{2,15,21,7}	{}	2018-09-03 23:50:00.004842
21335	{16,21,20,8}	{}	2018-09-04 00:05:00.005043
21336	{11,7,21,9}	{}	2018-09-04 00:20:00.004677
21337	{17,15,11,20}	{}	2018-09-04 00:35:00.00464
21338	{6,4,14,21}	{}	2018-09-04 00:50:00.004639
21339	{21,16,13,14}	{}	2018-09-04 01:05:00.005245
21340	{18,14,16,2}	{}	2018-09-04 01:20:00.004677
21341	{16,11,8,3}	{}	2018-09-04 01:35:00.00471
21342	{3,11,15,4}	{}	2018-09-04 01:50:00.004651
21343	{18,9,2,15}	{}	2018-09-04 02:05:00.004527
21344	{16,20,19,18}	{}	2018-09-04 02:20:00.004677
21345	{7,10,17,13}	{}	2018-09-04 02:35:00.004708
21346	{16,6,21,4}	{}	2018-09-04 02:50:00.004628
21347	{18,2,6,11}	{}	2018-09-04 03:05:00.004483
21348	{8,14,12,7}	{}	2018-09-04 03:20:00.004733
21349	{1,8,14,10}	{}	2018-09-04 03:35:00.004651
21350	{4,9,12,14}	{}	2018-09-04 03:50:00.004538
21351	{19,16,17,3}	{}	2018-09-04 04:05:00.004412
21352	{10,21,13,20}	{}	2018-09-04 04:20:00.004699
21353	{3,5,16,8}	{}	2018-09-04 04:35:00.00474
21354	{13,9,1,6}	{}	2018-09-04 04:50:00.004745
21355	{10,4,21,6}	{}	2018-09-04 05:05:00.00536
21356	{6,3,12,17}	{}	2018-09-04 05:20:00.004726
21357	{21,20,10,16}	{}	2018-09-04 05:35:00.004611
21358	{7,12,13,19}	{}	2018-09-04 05:50:00.004699
21359	{5,10,16,8}	{}	2018-09-04 06:05:00.004551
21360	{1,19,14,15}	{}	2018-09-04 06:20:00.004693
21361	{6,4,17,14}	{}	2018-09-04 06:35:00.004704
21362	{11,10,21,16}	{}	2018-09-04 06:50:00.004752
21363	{11,14,21,20}	{}	2018-09-04 07:05:00.005345
21364	{5,16,13,8}	{}	2018-09-04 07:20:00.004629
21365	{3,13,21,17}	{}	2018-09-04 07:35:00.004703
21366	{14,7,10,17}	{}	2018-09-04 07:50:00.004681
21367	{21,10,7,19}	{}	2018-09-04 08:05:00.005344
21368	{15,9,11,21}	{}	2018-09-04 08:20:00.004695
21369	{18,11,7,2}	{}	2018-09-04 08:35:00.004712
21370	{2,8,14,18}	{}	2018-09-04 08:50:00.004678
21371	{2,21,15,1}	{}	2018-09-04 09:05:00.004549
21372	{1,9,2,6}	{}	2018-09-04 09:20:00.004684
21373	{13,20,16,10}	{}	2018-09-04 09:35:00.00469
21374	{5,21,3,11}	{}	2018-09-04 09:50:00.004665
21375	{6,17,3,20}	{}	2018-09-04 10:05:00.004596
21376	{2,18,20,8}	{}	2018-09-04 10:20:00.004624
21377	{19,16,5,12}	{}	2018-09-04 10:35:00.004775
21378	{13,15,7,12}	{}	2018-09-04 10:50:00.004802
21379	{14,1,15,21}	{}	2018-09-04 11:05:00.005343
21380	{10,4,20,5}	{}	2018-09-04 11:20:00.004667
21381	{9,16,17,20}	{}	2018-09-04 11:35:00.00452
21382	{10,3,14,9}	{}	2018-09-04 11:50:00.004713
21383	{1,10,14,19}	{}	2018-09-04 12:05:00.005256
21384	{8,4,1,20}	{}	2018-09-04 12:20:00.004675
21385	{4,12,11,17}	{}	2018-09-04 12:35:00.004664
21386	{10,13,2,9}	{}	2018-09-04 12:50:00.004666
21387	{21,4,14,7}	{}	2018-09-04 13:05:00.004924
21388	{7,1,5,17}	{}	2018-09-04 13:20:00.004666
21389	{4,7,1,2}	{}	2018-09-04 13:35:00.004679
21390	{6,10,11,16}	{}	2018-09-04 13:50:00.004625
21391	{20,9,6,16}	{}	2018-09-04 14:05:00.004197
21392	{1,16,4,2}	{}	2018-09-04 14:20:00.004711
21393	{18,10,20,16}	{}	2018-09-04 14:35:00.004659
21394	{11,7,9,16}	{}	2018-09-04 14:50:00.004616
21395	{5,21,12,19}	{}	2018-09-04 15:05:00.004554
21396	{10,16,20,9}	{}	2018-09-04 15:20:00.004638
21397	{19,2,21,7}	{}	2018-09-04 15:35:00.004654
21398	{9,14,8,13}	{}	2018-09-04 15:50:00.004719
21399	{7,16,6,11}	{}	2018-09-04 16:05:00.004485
21400	{3,10,5,15}	{}	2018-09-04 16:20:00.004594
21401	{7,5,2,13}	{}	2018-09-04 16:35:00.004698
21402	{9,18,16,11}	{}	2018-09-04 16:50:00.00457
21403	{15,21,16,9}	{}	2018-09-04 17:05:00.005355
21404	{4,17,19,7}	{}	2018-09-04 17:20:00.004667
21405	{6,16,7,21}	{}	2018-09-04 17:35:00.004711
21406	{3,18,13,11}	{}	2018-09-04 17:50:00.00467
21407	{17,3,20,11}	{}	2018-09-04 18:05:00.004558
21408	{15,8,9,10}	{}	2018-09-04 18:20:00.004475
21409	{12,16,7,18}	{}	2018-09-04 18:35:00.004563
21410	{14,7,13,12}	{}	2018-09-04 18:50:00.004682
21411	{7,19,8,18}	{}	2018-09-04 19:05:00.005342
21412	{14,20,21,13}	{}	2018-09-04 19:20:00.00464
21413	{8,5,10,3}	{}	2018-09-04 19:35:00.004676
21414	{21,10,5,14}	{}	2018-09-04 19:50:00.004636
21415	{9,14,21,11}	{}	2018-09-04 20:05:00.005326
21416	{12,17,5,10}	{}	2018-09-04 20:20:00.004687
21417	{16,19,4,14}	{}	2018-09-04 20:35:00.004654
21418	{9,13,10,4}	{}	2018-09-04 20:50:00.004669
21419	{13,3,16,9}	{}	2018-09-04 21:05:00.004467
21420	{10,12,4,2}	{}	2018-09-04 21:20:00.004356
21421	{10,5,17,15}	{}	2018-09-04 21:35:00.004687
21422	{7,19,18,16}	{}	2018-09-04 21:50:00.004694
21423	{13,5,17,11}	{}	2018-09-04 22:05:00.004538
21424	{13,5,9,16}	{}	2018-09-04 22:20:00.004709
21425	{14,6,16,15}	{}	2018-09-04 22:35:00.004645
21426	{1,19,5,16}	{}	2018-09-04 22:50:00.004742
21427	{1,17,10,13}	{}	2018-09-04 23:05:00.005315
21428	{13,4,19,3}	{}	2018-09-04 23:20:00.004877
21429	{1,17,6,16}	{}	2018-09-04 23:35:00.004846
21430	{3,4,6,14}	{}	2018-09-04 23:50:00.004819
21431	{3,5,9,1}	{}	2018-09-05 00:05:00.005073
21432	{2,10,3,11}	{}	2018-09-05 00:20:00.004644
21433	{14,8,19,3}	{}	2018-09-05 00:35:00.004743
21434	{10,16,13,6}	{}	2018-09-05 00:50:00.004621
21435	{17,11,5,2}	{}	2018-09-05 01:05:00.005314
21436	{15,13,12,1}	{}	2018-09-05 01:20:00.004723
21437	{8,18,11,9}	{}	2018-09-05 01:35:00.004668
21438	{12,16,9,10}	{}	2018-09-05 01:50:00.004686
21439	{11,17,4,15}	{}	2018-09-05 02:05:00.004483
21440	{12,8,15,2}	{}	2018-09-05 02:20:00.00464
21441	{16,10,20,5}	{}	2018-09-05 02:35:00.004613
21442	{6,13,16,15}	{}	2018-09-05 02:50:00.004701
21443	{3,20,6,17}	{}	2018-09-05 03:05:00.004509
21444	{3,4,9,13}	{}	2018-09-05 03:20:00.004681
21445	{16,14,12,15}	{}	2018-09-05 03:35:00.004717
22944	{2,19,8,21}	{}	2018-09-20 18:20:00.00474
21446	{18,2,5,10}	{}	2018-09-05 03:50:00.004662
22945	{20,1,3,15}	{}	2018-09-20 18:35:00.004722
22946	{13,4,8,6}	{}	2018-09-20 18:50:00.004726
22971	{6,17,15,10}	{}	2018-09-21 01:05:00.005429
22972	{11,20,13,2}	{}	2018-09-21 01:20:00.004696
22973	{10,11,12,8}	{}	2018-09-21 01:35:00.004748
22974	{10,19,5,21}	{}	2018-09-21 01:50:00.00472
22975	{7,13,8,3}	{}	2018-09-21 02:05:00.004282
22976	{21,6,17,1}	{}	2018-09-21 02:20:00.004792
22977	{13,4,2,10}	{}	2018-09-21 02:35:00.004689
22978	{12,1,11,14}	{}	2018-09-21 02:50:00.004709
22979	{13,14,21,3}	{}	2018-09-21 03:05:00.004549
22980	{11,14,9,1}	{}	2018-09-21 03:20:00.00465
22981	{4,5,15,2}	{}	2018-09-21 03:35:00.004649
22982	{15,13,18,7}	{}	2018-09-21 03:50:00.004737
22983	{19,17,2,3}	{}	2018-09-21 04:05:00.004572
22984	{5,4,17,12}	{}	2018-09-21 04:20:00.004762
22985	{10,2,7,15}	{}	2018-09-21 04:35:00.004715
22986	{10,17,4,13}	{}	2018-09-21 04:50:00.004654
22999	{6,4,20,10}	{}	2018-09-21 08:05:00.005364
23000	{8,13,18,6}	{}	2018-09-21 08:20:00.004687
23001	{9,1,17,18}	{}	2018-09-21 08:35:00.004716
23002	{1,21,4,18}	{}	2018-09-21 08:50:00.004778
23003	{5,19,17,21}	{}	2018-09-21 09:05:00.004566
23004	{12,3,16,5}	{}	2018-09-21 09:20:00.00466
23005	{3,13,4,17}	{}	2018-09-21 09:35:00.004732
23006	{16,1,8,4}	{}	2018-09-21 09:50:00.004771
23007	{14,1,15,6}	{}	2018-09-21 10:05:00.004558
23008	{3,17,11,6}	{}	2018-09-21 10:20:00.004746
23009	{14,5,20,18}	{}	2018-09-21 10:35:00.004673
23010	{17,4,18,6}	{}	2018-09-21 10:50:00.004747
23035	{18,21,19,10}	{}	2018-09-21 17:05:00.005362
23036	{16,20,7,3}	{}	2018-09-21 17:20:00.004742
23037	{6,9,7,10}	{}	2018-09-21 17:35:00.004677
23038	{15,7,18,9}	{}	2018-09-21 17:50:00.004746
23039	{17,4,6,2}	{}	2018-09-21 18:05:00.004531
23040	{21,14,10,9}	{}	2018-09-21 18:20:00.004663
23041	{8,21,2,12}	{}	2018-09-21 18:35:00.004701
23042	{19,6,10,9}	{}	2018-09-21 18:50:00.004717
23067	{10,13,17,15}	{}	2018-09-22 01:05:00.005363
23068	{21,9,4,5}	{}	2018-09-22 01:20:00.004703
23069	{9,12,17,4}	{}	2018-09-22 01:35:00.004701
23070	{5,8,7,18}	{}	2018-09-22 01:50:00.004684
23071	{4,10,14,12}	{}	2018-09-22 02:05:00.004543
23072	{17,4,18,10}	{}	2018-09-22 02:20:00.004783
23073	{4,17,2,16}	{}	2018-09-22 02:35:00.004715
23074	{19,16,8,1}	{}	2018-09-22 02:50:00.004729
23075	{12,3,2,11}	{}	2018-09-22 03:05:00.004526
23076	{13,10,2,4}	{}	2018-09-22 03:20:00.00465
23077	{3,19,5,20}	{}	2018-09-22 03:35:00.004688
23078	{8,20,3,6}	{}	2018-09-22 03:50:00.004706
23079	{15,13,19,3}	{}	2018-09-22 04:05:00.004449
23080	{3,15,18,20}	{}	2018-09-22 04:20:00.0048
23081	{20,3,18,5}	{}	2018-09-22 04:35:00.004765
23082	{4,12,5,2}	{}	2018-09-22 04:50:00.004723
23095	{20,4,7,19}	{}	2018-09-22 08:05:00.005322
23096	{12,10,15,6}	{}	2018-09-22 08:20:00.004756
23097	{14,1,4,18}	{}	2018-09-22 08:35:00.004714
23098	{4,13,6,11}	{}	2018-09-22 08:50:00.004688
23099	{18,14,2,3}	{}	2018-09-22 09:05:00.004483
23100	{3,11,7,15}	{}	2018-09-22 09:20:00.004832
23101	{1,12,9,10}	{}	2018-09-22 09:35:00.004747
23102	{13,10,8,6}	{}	2018-09-22 09:50:00.004695
21447	{9,2,21,5}	{}	2018-09-05 04:05:00.004469
22947	{4,20,16,11}	{}	2018-09-20 19:05:00.005297
22948	{19,17,16,11}	{}	2018-09-20 19:20:00.004801
22949	{8,19,21,18}	{}	2018-09-20 19:35:00.004698
22950	{18,15,2,14}	{}	2018-09-20 19:50:00.004596
22951	{19,13,15,12}	{}	2018-09-20 20:05:00.005364
22963	{20,6,18,3}	{}	2018-09-20 23:05:00.005132
22964	{9,4,17,16}	{}	2018-09-20 23:20:00.004804
22965	{15,3,11,8}	{}	2018-09-20 23:35:00.004854
22966	{1,20,5,17}	{}	2018-09-20 23:50:00.004801
23015	{11,21,5,15}	{}	2018-09-21 12:05:00.005312
23016	{10,5,7,17}	{}	2018-09-21 12:20:00.004816
23017	{15,11,5,1}	{}	2018-09-21 12:35:00.004676
23018	{3,14,17,13}	{}	2018-09-21 12:50:00.004613
23043	{19,14,20,3}	{}	2018-09-21 19:05:00.005254
23044	{9,14,19,17}	{}	2018-09-21 19:20:00.004709
23045	{3,20,13,11}	{}	2018-09-21 19:35:00.004731
23046	{4,6,13,17}	{}	2018-09-21 19:50:00.004658
23059	{11,8,12,19}	{}	2018-09-21 23:05:00.005122
23060	{20,10,6,21}	{}	2018-09-21 23:20:00.004823
23061	{4,17,3,14}	{}	2018-09-21 23:35:00.004885
23062	{8,1,2,11}	{}	2018-09-21 23:50:00.004826
21448	{15,17,20,13}	{}	2018-09-05 04:20:00.004691
21449	{11,20,2,12}	{}	2018-09-05 04:35:00.004655
21450	{12,8,7,17}	{}	2018-09-05 04:50:00.004684
21451	{12,8,3,9}	{}	2018-09-05 05:05:00.005275
21452	{9,19,8,16}	{}	2018-09-05 05:20:00.004693
21453	{9,3,11,10}	{}	2018-09-05 05:35:00.004717
21454	{7,1,10,15}	{}	2018-09-05 05:50:00.004701
21455	{21,14,9,8}	{}	2018-09-05 06:05:00.004483
21456	{21,1,15,6}	{}	2018-09-05 06:20:00.004652
21457	{7,16,6,8}	{}	2018-09-05 06:35:00.00472
21458	{3,12,17,11}	{}	2018-09-05 06:50:00.004671
21459	{11,16,21,7}	{}	2018-09-05 07:05:00.005304
21460	{9,6,10,12}	{}	2018-09-05 07:20:00.00472
21461	{2,14,6,9}	{}	2018-09-05 07:35:00.00473
21462	{20,16,21,6}	{}	2018-09-05 07:50:00.004563
21463	{10,20,11,5}	{}	2018-09-05 08:05:00.00532
21464	{18,8,9,11}	{}	2018-09-05 08:20:00.004697
21465	{1,4,2,7}	{}	2018-09-05 08:35:00.004704
21466	{12,9,8,6}	{}	2018-09-05 08:50:00.004675
21467	{12,2,19,16}	{}	2018-09-05 09:05:00.004543
21468	{7,4,13,21}	{}	2018-09-05 09:20:00.00465
21469	{6,1,7,13}	{}	2018-09-05 09:35:00.004682
21470	{18,5,13,21}	{}	2018-09-05 09:50:00.004679
21471	{18,13,3,6}	{}	2018-09-05 10:05:00.004396
21472	{16,14,21,11}	{}	2018-09-05 10:20:00.004659
21473	{12,18,5,2}	{}	2018-09-05 10:35:00.004333
21474	{13,17,16,1}	{}	2018-09-05 10:50:00.00468
21475	{3,5,11,21}	{}	2018-09-05 11:05:00.005297
21476	{16,15,13,6}	{}	2018-09-05 11:20:00.004653
21477	{17,20,3,14}	{}	2018-09-05 11:35:00.004687
21478	{21,5,6,10}	{}	2018-09-05 11:50:00.004667
21479	{16,20,21,6}	{}	2018-09-05 12:05:00.005216
21480	{2,20,6,11}	{}	2018-09-05 12:20:00.00474
21481	{15,2,8,19}	{}	2018-09-05 12:35:00.004699
21482	{16,21,11,15}	{}	2018-09-05 12:50:00.004724
21483	{11,21,18,10}	{}	2018-09-05 13:05:00.00531
21484	{9,21,16,13}	{}	2018-09-05 13:20:00.004745
21485	{4,15,18,2}	{}	2018-09-05 13:35:00.004542
21486	{12,1,4,17}	{}	2018-09-05 13:50:00.004626
21487	{4,15,2,10}	{}	2018-09-05 14:05:00.004577
21488	{18,8,16,11}	{}	2018-09-05 14:20:00.004733
21489	{11,18,1,13}	{}	2018-09-05 14:35:00.004693
21490	{10,16,3,21}	{}	2018-09-05 14:50:00.004748
21491	{20,19,1,11}	{}	2018-09-05 15:05:00.004423
21492	{17,21,14,8}	{}	2018-09-05 15:20:00.004678
21493	{20,12,4,1}	{}	2018-09-05 15:35:00.004635
21494	{9,6,5,10}	{}	2018-09-05 15:50:00.004735
21495	{13,19,2,1}	{}	2018-09-05 16:05:00.004493
21496	{7,9,16,3}	{}	2018-09-05 16:20:00.004623
21497	{8,9,19,10}	{}	2018-09-05 16:35:00.004571
21498	{16,21,9,8}	{}	2018-09-05 16:50:00.004701
21499	{3,5,21,14}	{}	2018-09-05 17:05:00.005312
21500	{15,20,21,11}	{}	2018-09-05 17:20:00.004653
21501	{16,18,12,5}	{}	2018-09-05 17:35:00.004714
21502	{10,5,15,14}	{}	2018-09-05 17:50:00.004044
21503	{13,1,18,15}	{}	2018-09-05 18:05:00.004486
21504	{6,17,19,18}	{}	2018-09-05 18:20:00.004577
21505	{5,20,17,2}	{}	2018-09-05 18:35:00.00465
21506	{16,8,2,5}	{}	2018-09-05 18:50:00.004348
21507	{12,18,14,7}	{}	2018-09-05 19:05:00.005353
21508	{16,11,5,8}	{}	2018-09-05 19:20:00.004702
21509	{4,20,17,19}	{}	2018-09-05 19:35:00.004687
21510	{8,10,11,20}	{}	2018-09-05 19:50:00.004052
21511	{6,8,15,21}	{}	2018-09-05 20:05:00.005345
21512	{13,15,6,12}	{}	2018-09-05 20:20:00.004637
21513	{5,12,2,8}	{}	2018-09-05 20:35:00.00469
21514	{11,2,8,19}	{}	2018-09-05 20:50:00.004661
21515	{3,8,15,18}	{}	2018-09-05 21:05:00.004465
21516	{6,16,5,4}	{}	2018-09-05 21:20:00.004743
21517	{19,20,9,2}	{}	2018-09-05 21:35:00.004653
21518	{1,2,12,19}	{}	2018-09-05 21:50:00.004648
21519	{17,19,5,13}	{}	2018-09-05 22:05:00.004503
21520	{16,7,9,12}	{}	2018-09-05 22:20:00.00468
21521	{13,20,15,6}	{}	2018-09-05 22:35:00.004707
21522	{1,4,5,16}	{}	2018-09-05 22:50:00.004583
21523	{4,13,12,2}	{}	2018-09-05 23:05:00.005379
21524	{19,20,11,18}	{}	2018-09-05 23:20:00.004793
21525	{7,20,19,4}	{}	2018-09-05 23:35:00.004866
21530	{11,8,19,12}	{}	2018-09-06 00:50:00.004725
22952	{3,2,16,17}	{}	2018-09-20 20:20:00.004734
22953	{19,9,14,20}	{}	2018-09-20 20:35:00.004743
22954	{7,18,17,2}	{}	2018-09-20 20:50:00.004615
22955	{4,16,2,10}	{}	2018-09-20 21:05:00.004564
22956	{8,20,5,15}	{}	2018-09-20 21:20:00.004547
22957	{16,21,6,2}	{}	2018-09-20 21:35:00.004764
22958	{3,16,14,5}	{}	2018-09-20 21:50:00.004744
22959	{6,4,1,17}	{}	2018-09-20 22:05:00.004503
22960	{10,5,2,12}	{}	2018-09-20 22:20:00.004673
22961	{16,8,12,2}	{}	2018-09-20 22:35:00.004614
22962	{2,12,6,3}	{}	2018-09-20 22:50:00.004707
22987	{2,11,15,7}	{}	2018-09-21 05:05:00.005294
22988	{18,21,8,19}	{}	2018-09-21 05:20:00.004633
22989	{1,7,14,8}	{}	2018-09-21 05:35:00.004738
22990	{15,13,10,1}	{}	2018-09-21 05:50:00.004678
22991	{13,15,20,14}	{}	2018-09-21 06:05:00.004541
22992	{8,21,17,7}	{}	2018-09-21 06:20:00.004706
22993	{10,8,16,18}	{}	2018-09-21 06:35:00.004635
22994	{15,4,2,21}	{}	2018-09-21 06:50:00.004724
23019	{8,15,16,3}	{}	2018-09-21 13:05:00.0054
23020	{21,7,1,4}	{}	2018-09-21 13:20:00.004758
23021	{10,20,16,7}	{}	2018-09-21 13:35:00.004107
23022	{1,16,19,21}	{}	2018-09-21 13:50:00.004479
23023	{6,14,18,15}	{}	2018-09-21 14:05:00.004442
23024	{4,2,12,8}	{}	2018-09-21 14:20:00.004717
23025	{2,12,7,10}	{}	2018-09-21 14:35:00.004694
23026	{15,16,18,5}	{}	2018-09-21 14:50:00.004705
23027	{2,15,10,18}	{}	2018-09-21 15:05:00.004531
23028	{6,10,3,7}	{}	2018-09-21 15:20:00.004718
23029	{17,3,15,9}	{}	2018-09-21 15:35:00.004756
23030	{6,7,14,17}	{}	2018-09-21 15:50:00.004685
23031	{8,10,17,13}	{}	2018-09-21 16:05:00.004522
23032	{20,4,10,8}	{}	2018-09-21 16:20:00.00463
23033	{14,16,18,19}	{}	2018-09-21 16:35:00.004721
23034	{19,16,18,11}	{}	2018-09-21 16:50:00.004459
23047	{13,21,12,15}	{}	2018-09-21 20:05:00.005323
23048	{3,7,8,9}	{}	2018-09-21 20:20:00.004709
23049	{9,10,4,5}	{}	2018-09-21 20:35:00.004713
23050	{9,20,21,2}	{}	2018-09-21 20:50:00.004691
23051	{1,2,8,14}	{}	2018-09-21 21:05:00.004547
23052	{5,20,4,6}	{}	2018-09-21 21:20:00.00474
23053	{14,16,8,4}	{}	2018-09-21 21:35:00.004681
23054	{11,17,5,10}	{}	2018-09-21 21:50:00.004778
23055	{17,14,15,2}	{}	2018-09-21 22:05:00.004506
23056	{6,19,12,14}	{}	2018-09-21 22:20:00.004738
23057	{10,14,8,5}	{}	2018-09-21 22:35:00.004737
23058	{15,17,8,7}	{}	2018-09-21 22:50:00.004711
23083	{2,6,8,17}	{}	2018-09-22 05:05:00.005332
23084	{7,1,19,17}	{}	2018-09-22 05:20:00.004749
23085	{14,6,5,8}	{}	2018-09-22 05:35:00.004635
23086	{16,8,13,5}	{}	2018-09-22 05:50:00.004675
23087	{21,2,12,11}	{}	2018-09-22 06:05:00.004537
23088	{4,10,12,6}	{}	2018-09-22 06:20:00.004716
23089	{3,21,12,15}	{}	2018-09-22 06:35:00.00465
23090	{7,15,19,4}	{}	2018-09-22 06:50:00.004648
21526	{20,12,2,15}	{}	2018-09-05 23:50:00.00481
21529	{13,6,19,2}	{}	2018-09-06 00:35:00.004666
22967	{11,4,2,13}	{}	2018-09-21 00:05:00.005217
22968	{17,9,4,11}	{}	2018-09-21 00:20:00.004701
22969	{2,13,8,10}	{}	2018-09-21 00:35:00.004782
22970	{5,15,17,4}	{}	2018-09-21 00:50:00.004783
22995	{10,5,6,12}	{}	2018-09-21 07:05:00.005386
22996	{4,12,13,5}	{}	2018-09-21 07:20:00.004588
22997	{13,2,8,18}	{}	2018-09-21 07:35:00.004773
22998	{4,2,3,19}	{}	2018-09-21 07:50:00.00462
23011	{2,1,18,17}	{}	2018-09-21 11:05:00.005359
23012	{2,18,3,7}	{}	2018-09-21 11:20:00.004627
23013	{21,3,7,10}	{}	2018-09-21 11:35:00.004723
23014	{5,12,3,1}	{}	2018-09-21 11:50:00.004742
23063	{6,2,9,20}	{}	2018-09-22 00:05:00.005149
23064	{10,7,16,1}	{}	2018-09-22 00:20:00.004774
23065	{5,6,19,13}	{}	2018-09-22 00:35:00.004755
23066	{1,19,17,14}	{}	2018-09-22 00:50:00.004739
23091	{15,17,4,19}	{}	2018-09-22 07:05:00.005365
23092	{2,19,17,12}	{}	2018-09-22 07:20:00.004538
23093	{17,15,10,20}	{}	2018-09-22 07:35:00.004757
23094	{17,12,1,15}	{}	2018-09-22 07:50:00.004537
21527	{1,11,9,5}	{}	2018-09-06 00:05:00.005133
23103	{1,5,17,19}	{}	2018-09-22 10:05:00.004527
23104	{2,10,11,13}	{}	2018-09-22 10:20:00.004679
23105	{13,16,15,17}	{}	2018-09-22 10:35:00.004742
23106	{8,18,12,19}	{}	2018-09-22 10:50:00.004752
23131	{5,6,11,14}	{}	2018-09-22 17:05:00.005305
23132	{6,21,12,19}	{}	2018-09-22 17:20:00.004687
23133	{7,16,5,12}	{}	2018-09-22 17:35:00.004758
23134	{8,17,14,7}	{}	2018-09-22 17:50:00.004723
23135	{3,10,11,20}	{}	2018-09-22 18:05:00.004534
23136	{8,14,5,7}	{}	2018-09-22 18:20:00.004736
23137	{20,11,8,21}	{}	2018-09-22 18:35:00.004757
23138	{20,17,13,10}	{}	2018-09-22 18:50:00.004713
23163	{20,21,19,9}	{}	2018-09-23 01:05:00.00535
23164	{21,18,10,20}	{}	2018-09-23 01:20:00.004682
23165	{10,12,2,4}	{}	2018-09-23 01:35:00.004672
23166	{1,19,10,21}	{}	2018-09-23 01:50:00.004786
23167	{5,8,3,7}	{}	2018-09-23 02:05:00.004511
23168	{3,9,21,14}	{}	2018-09-23 02:20:00.00475
23169	{18,4,2,11}	{}	2018-09-23 02:35:00.004742
23170	{14,18,13,21}	{}	2018-09-23 02:50:00.004719
23171	{20,8,1,16}	{}	2018-09-23 03:05:00.00457
23172	{6,1,12,7}	{}	2018-09-23 03:20:00.004783
23173	{7,5,17,15}	{}	2018-09-23 03:35:00.004741
23174	{10,1,7,19}	{}	2018-09-23 03:50:00.004723
23175	{1,9,18,2}	{}	2018-09-23 04:05:00.004487
23176	{16,2,7,18}	{}	2018-09-23 04:20:00.004726
23177	{16,3,4,15}	{}	2018-09-23 04:35:00.004606
23178	{20,6,16,11}	{}	2018-09-23 04:50:00.004664
23191	{9,4,6,5}	{}	2018-09-23 08:05:00.005465
23192	{19,14,16,6}	{}	2018-09-23 08:20:00.004693
23193	{14,21,10,8}	{}	2018-09-23 08:35:00.004718
23194	{1,14,12,5}	{}	2018-09-23 08:50:00.004775
23195	{20,1,2,10}	{}	2018-09-23 09:05:00.004624
23196	{20,11,14,16}	{}	2018-09-23 09:20:00.004705
23197	{5,1,8,13}	{}	2018-09-23 09:35:00.004717
23198	{16,11,19,13}	{}	2018-09-23 09:50:00.004688
23199	{20,13,5,12}	{}	2018-09-23 10:05:00.004445
23200	{10,21,7,20}	{}	2018-09-23 10:20:00.004797
23201	{8,12,5,3}	{}	2018-09-23 10:35:00.004725
23202	{5,10,6,12}	{}	2018-09-23 10:50:00.004791
23227	{8,17,19,15}	{}	2018-09-23 17:05:00.005408
23228	{5,3,15,9}	{}	2018-09-23 17:20:00.00469
23229	{15,18,8,11}	{}	2018-09-23 17:35:00.004792
23230	{12,2,10,20}	{}	2018-09-23 17:50:00.004691
23231	{14,5,19,10}	{}	2018-09-23 18:05:00.004543
23232	{16,21,10,5}	{}	2018-09-23 18:20:00.004514
23233	{5,2,20,18}	{}	2018-09-23 18:35:00.004672
23234	{13,4,7,19}	{}	2018-09-23 18:50:00.004684
23259	{16,20,8,18}	{}	2018-09-24 01:05:00.005325
23260	{5,8,17,15}	{}	2018-09-24 01:20:00.004778
23261	{9,4,15,6}	{}	2018-09-24 01:35:00.004688
23262	{4,21,7,17}	{}	2018-09-24 01:50:00.004681
23263	{5,1,3,7}	{}	2018-09-24 02:05:00.004527
23264	{10,3,1,13}	{}	2018-09-24 02:20:00.004741
23265	{17,15,2,11}	{}	2018-09-24 02:35:00.004743
23266	{11,15,14,1}	{}	2018-09-24 02:50:00.004621
23267	{16,8,18,2}	{}	2018-09-24 03:05:00.004507
23268	{10,19,18,17}	{}	2018-09-24 03:20:00.004763
21528	{16,10,21,11}	{}	2018-09-06 00:20:00.004716
21531	{11,17,20,18}	{}	2018-09-06 01:05:00.005337
23107	{19,2,4,20}	{}	2018-09-22 11:05:00.00509
23108	{8,21,18,14}	{}	2018-09-22 11:20:00.004686
23109	{21,8,16,1}	{}	2018-09-22 11:35:00.004776
23110	{10,14,3,8}	{}	2018-09-22 11:50:00.004722
23111	{11,4,17,21}	{}	2018-09-22 12:05:00.005348
23159	{20,9,11,6}	{}	2018-09-23 00:05:00.005234
23160	{17,1,9,21}	{}	2018-09-23 00:20:00.004816
23161	{5,13,21,15}	{}	2018-09-23 00:35:00.004728
23162	{15,9,12,21}	{}	2018-09-23 00:50:00.004654
23187	{17,10,3,7}	{}	2018-09-23 07:05:00.005301
23188	{21,1,12,2}	{}	2018-09-23 07:20:00.004722
23189	{6,12,9,20}	{}	2018-09-23 07:35:00.004723
23190	{9,8,4,16}	{}	2018-09-23 07:50:00.004716
23203	{16,6,9,15}	{}	2018-09-23 11:05:00.005363
23204	{15,9,7,3}	{}	2018-09-23 11:20:00.004669
23205	{6,13,17,18}	{}	2018-09-23 11:35:00.004728
23206	{5,16,21,17}	{}	2018-09-23 11:50:00.004718
23255	{11,4,2,15}	{}	2018-09-24 00:05:00.005203
23256	{6,5,3,17}	{}	2018-09-24 00:20:00.004673
23257	{4,19,16,9}	{}	2018-09-24 00:35:00.00416
23258	{16,20,13,3}	{}	2018-09-24 00:50:00.004739
21532	{18,10,3,15}	{}	2018-09-06 01:20:00.004722
21533	{8,2,7,6}	{}	2018-09-06 01:35:00.004656
21534	{1,11,12,4}	{}	2018-09-06 01:50:00.004698
21535	{15,18,16,11}	{}	2018-09-06 02:05:00.004407
21536	{21,19,20,1}	{}	2018-09-06 02:20:00.004649
21537	{4,20,10,12}	{}	2018-09-06 02:35:00.004734
21538	{14,12,16,2}	{}	2018-09-06 02:50:00.004695
21539	{4,21,15,5}	{}	2018-09-06 03:05:00.004535
21540	{7,15,2,20}	{}	2018-09-06 03:20:00.004698
21541	{11,19,6,13}	{}	2018-09-06 03:35:00.004764
21542	{21,14,19,17}	{}	2018-09-06 03:50:00.004703
21543	{4,12,17,14}	{}	2018-09-06 04:05:00.004344
21544	{16,7,18,14}	{}	2018-09-06 04:20:00.004705
21545	{18,17,12,16}	{}	2018-09-06 04:35:00.004688
21546	{9,1,17,11}	{}	2018-09-06 04:50:00.004742
21547	{7,17,6,12}	{}	2018-09-06 05:05:00.005321
21548	{20,6,15,17}	{}	2018-09-06 05:20:00.004684
21549	{12,19,9,20}	{}	2018-09-06 05:35:00.004662
21550	{11,2,13,15}	{}	2018-09-06 05:50:00.004675
21551	{10,7,21,16}	{}	2018-09-06 06:05:00.004555
21552	{18,20,8,17}	{}	2018-09-06 06:20:00.004673
21553	{9,1,20,5}	{}	2018-09-06 06:35:00.004675
21554	{2,9,8,6}	{}	2018-09-06 06:50:00.004656
21555	{12,9,11,3}	{}	2018-09-06 07:05:00.005299
21556	{8,4,15,20}	{}	2018-09-06 07:20:00.004721
21557	{13,8,15,20}	{}	2018-09-06 07:35:00.004646
21558	{17,21,20,7}	{}	2018-09-06 07:50:00.004621
21559	{4,9,19,16}	{}	2018-09-06 08:05:00.005341
21560	{9,6,2,16}	{}	2018-09-06 08:20:00.00461
21561	{9,4,16,10}	{}	2018-09-06 08:35:00.004722
21562	{15,2,4,20}	{}	2018-09-06 08:50:00.004695
21563	{11,20,12,15}	{}	2018-09-06 09:05:00.00455
21564	{4,20,9,12}	{}	2018-09-06 09:20:00.004749
21565	{2,20,12,5}	{}	2018-09-06 09:35:00.004668
21566	{11,21,9,4}	{}	2018-09-06 09:50:00.004637
21567	{20,1,5,6}	{}	2018-09-06 10:05:00.004521
21568	{6,19,1,4}	{}	2018-09-06 10:20:00.004699
21569	{15,4,16,12}	{}	2018-09-06 10:35:00.004661
21570	{20,10,17,11}	{}	2018-09-06 10:50:00.004712
21571	{4,16,8,17}	{}	2018-09-06 11:05:00.005301
21572	{7,13,17,16}	{}	2018-09-06 11:20:00.004604
21573	{6,5,1,4}	{}	2018-09-06 11:35:00.004728
21574	{19,7,20,21}	{}	2018-09-06 11:50:00.004695
21575	{16,7,17,5}	{}	2018-09-06 12:05:00.005352
21576	{1,13,5,15}	{}	2018-09-06 12:20:00.004699
21577	{21,6,20,8}	{}	2018-09-06 12:35:00.004742
21578	{16,19,4,15}	{}	2018-09-06 12:50:00.004643
21579	{18,5,3,17}	{}	2018-09-06 13:05:00.005257
21580	{6,18,3,8}	{}	2018-09-06 13:20:00.003906
21581	{18,15,4,11}	{}	2018-09-06 13:35:00.004748
21582	{7,14,15,16}	{}	2018-09-06 13:50:00.004699
21583	{2,10,1,14}	{}	2018-09-06 14:05:00.004549
21584	{10,17,3,4}	{}	2018-09-06 14:20:00.004626
21585	{9,8,20,13}	{}	2018-09-06 14:35:00.004704
21586	{3,1,8,13}	{}	2018-09-06 14:50:00.004658
21587	{14,2,11,19}	{}	2018-09-06 15:05:00.004482
21588	{18,7,9,5}	{}	2018-09-06 15:20:00.004745
21589	{19,21,13,6}	{}	2018-09-06 15:35:00.004704
21590	{14,19,12,21}	{}	2018-09-06 15:50:00.004619
21591	{6,9,20,4}	{}	2018-09-06 16:05:00.004473
21592	{15,21,10,9}	{}	2018-09-06 16:20:00.004638
21593	{2,11,21,19}	{}	2018-09-06 16:35:00.004671
21594	{18,1,19,15}	{}	2018-09-06 16:50:00.004741
21595	{20,5,18,11}	{}	2018-09-06 17:05:00.005373
21596	{14,7,11,1}	{}	2018-09-06 17:20:00.004724
21597	{4,15,21,9}	{}	2018-09-06 17:35:00.004647
21598	{1,20,18,16}	{}	2018-09-06 17:50:00.004615
21599	{3,5,14,18}	{}	2018-09-06 18:05:00.004529
21600	{9,15,19,8}	{}	2018-09-06 18:20:00.004677
21601	{12,6,5,1}	{}	2018-09-06 18:35:00.004674
21602	{7,6,18,20}	{}	2018-09-06 18:50:00.004737
21603	{21,18,11,6}	{}	2018-09-06 19:05:00.00533
21604	{21,10,6,19}	{}	2018-09-06 19:20:00.004697
21605	{11,3,9,14}	{}	2018-09-06 19:35:00.00469
21606	{19,10,2,20}	{}	2018-09-06 19:50:00.004677
21607	{4,19,7,9}	{}	2018-09-06 20:05:00.005277
21608	{15,18,17,3}	{}	2018-09-06 20:20:00.004718
21609	{14,18,7,8}	{}	2018-09-06 20:35:00.004475
21613	{1,2,9,6}	{}	2018-09-06 21:35:00.004707
21617	{13,15,11,21}	{}	2018-09-06 22:35:00.004755
23112	{5,9,16,20}	{}	2018-09-22 12:20:00.004689
23113	{7,18,2,3}	{}	2018-09-22 12:35:00.004713
23114	{13,17,2,4}	{}	2018-09-22 12:50:00.004672
23139	{14,3,2,4}	{}	2018-09-22 19:05:00.005347
23140	{8,13,7,16}	{}	2018-09-22 19:20:00.004753
23141	{17,2,19,9}	{}	2018-09-22 19:35:00.00472
23142	{6,8,11,9}	{}	2018-09-22 19:50:00.00472
23155	{10,12,13,19}	{}	2018-09-22 23:05:00.00544
23156	{9,12,14,10}	{}	2018-09-22 23:20:00.004781
23157	{15,18,11,2}	{}	2018-09-22 23:35:00.00484
23158	{7,9,20,18}	{}	2018-09-22 23:50:00.004836
23207	{5,16,19,7}	{}	2018-09-23 12:05:00.00538
23208	{5,9,11,20}	{}	2018-09-23 12:20:00.004767
23209	{8,19,11,20}	{}	2018-09-23 12:35:00.004716
23210	{19,21,10,7}	{}	2018-09-23 12:50:00.004733
23235	{11,14,5,19}	{}	2018-09-23 19:05:00.005328
23236	{8,15,6,9}	{}	2018-09-23 19:20:00.004702
23237	{14,1,6,18}	{}	2018-09-23 19:35:00.004703
23238	{16,13,1,9}	{}	2018-09-23 19:50:00.004677
23251	{13,11,7,9}	{}	2018-09-23 23:05:00.0053
23252	{14,5,19,21}	{}	2018-09-23 23:20:00.004826
23253	{4,7,17,13}	{}	2018-09-23 23:35:00.004886
23254	{3,21,10,2}	{}	2018-09-23 23:50:00.004835
21610	{6,18,2,19}	{}	2018-09-06 20:50:00.004682
21614	{11,2,9,15}	{}	2018-09-06 21:50:00.004729
21618	{10,8,19,20}	{}	2018-09-06 22:50:00.004669
23115	{13,3,9,15}	{}	2018-09-22 13:05:00.005359
23116	{16,1,14,5}	{}	2018-09-22 13:20:00.004727
23117	{14,12,21,16}	{}	2018-09-22 13:35:00.004736
23118	{12,18,4,10}	{}	2018-09-22 13:50:00.004724
23119	{7,9,15,8}	{}	2018-09-22 14:05:00.004525
23120	{21,1,5,17}	{}	2018-09-22 14:20:00.004655
23121	{16,13,21,6}	{}	2018-09-22 14:35:00.004741
23122	{4,3,15,11}	{}	2018-09-22 14:50:00.00471
23123	{5,1,11,20}	{}	2018-09-22 15:05:00.004474
23124	{15,16,9,8}	{}	2018-09-22 15:20:00.004733
23125	{19,3,11,2}	{}	2018-09-22 15:35:00.004519
23126	{14,9,21,15}	{}	2018-09-22 15:50:00.004702
23127	{7,15,17,13}	{}	2018-09-22 16:05:00.004534
23128	{2,12,4,15}	{}	2018-09-22 16:20:00.00474
23129	{8,12,16,21}	{}	2018-09-22 16:35:00.0047
23130	{18,15,6,13}	{}	2018-09-22 16:50:00.00473
23143	{21,1,10,19}	{}	2018-09-22 20:05:00.005267
23144	{7,21,10,4}	{}	2018-09-22 20:20:00.004666
23145	{20,10,6,7}	{}	2018-09-22 20:35:00.004757
23146	{18,3,11,5}	{}	2018-09-22 20:50:00.004697
23147	{16,5,19,7}	{}	2018-09-22 21:05:00.004523
23148	{12,20,1,8}	{}	2018-09-22 21:20:00.004745
23149	{7,9,13,6}	{}	2018-09-22 21:35:00.004713
23150	{13,21,14,11}	{}	2018-09-22 21:50:00.00477
23151	{14,4,2,7}	{}	2018-09-22 22:05:00.004498
23152	{10,12,17,14}	{}	2018-09-22 22:20:00.004814
23153	{19,13,3,6}	{}	2018-09-22 22:35:00.004851
23154	{14,13,4,5}	{}	2018-09-22 22:50:00.004756
23179	{12,17,14,4}	{}	2018-09-23 05:05:00.005341
23180	{2,8,5,12}	{}	2018-09-23 05:20:00.004697
23181	{11,12,20,6}	{}	2018-09-23 05:35:00.004688
23182	{4,10,17,8}	{}	2018-09-23 05:50:00.004627
23183	{19,8,18,14}	{}	2018-09-23 06:05:00.004532
23184	{8,19,4,14}	{}	2018-09-23 06:20:00.00469
23185	{4,6,19,9}	{}	2018-09-23 06:35:00.00476
23186	{12,6,15,16}	{}	2018-09-23 06:50:00.004753
23211	{19,8,7,3}	{}	2018-09-23 13:05:00.005344
23212	{5,4,7,6}	{}	2018-09-23 13:20:00.004531
23213	{18,20,10,11}	{}	2018-09-23 13:35:00.004766
23214	{10,13,16,11}	{}	2018-09-23 13:50:00.004715
23215	{19,9,21,10}	{}	2018-09-23 14:05:00.004512
23216	{11,18,19,1}	{}	2018-09-23 14:20:00.004743
23217	{5,7,1,10}	{}	2018-09-23 14:35:00.004747
23218	{2,14,10,19}	{}	2018-09-23 14:50:00.004727
23219	{20,13,10,7}	{}	2018-09-23 15:05:00.004574
23220	{5,15,3,11}	{}	2018-09-23 15:20:00.004529
23221	{14,19,18,15}	{}	2018-09-23 15:35:00.00472
23222	{18,21,7,12}	{}	2018-09-23 15:50:00.004753
23223	{11,4,14,18}	{}	2018-09-23 16:05:00.004562
23224	{11,8,4,6}	{}	2018-09-23 16:20:00.004755
23225	{19,12,10,7}	{}	2018-09-23 16:35:00.00475
23226	{21,16,4,10}	{}	2018-09-23 16:50:00.00467
23239	{8,13,19,11}	{}	2018-09-23 20:05:00.005315
23240	{8,13,19,20}	{}	2018-09-23 20:20:00.004717
23241	{1,18,20,16}	{}	2018-09-23 20:35:00.004682
23242	{19,6,2,9}	{}	2018-09-23 20:50:00.004695
23243	{4,16,12,20}	{}	2018-09-23 21:05:00.004599
23244	{8,6,5,19}	{}	2018-09-23 21:20:00.005349
23245	{16,19,14,3}	{}	2018-09-23 21:35:00.004623
23246	{11,13,16,3}	{}	2018-09-23 21:50:00.004703
23247	{4,3,6,1}	{}	2018-09-23 22:05:00.004501
23248	{21,13,8,16}	{}	2018-09-23 22:20:00.004644
23249	{15,11,14,10}	{}	2018-09-23 22:35:00.004584
23250	{18,16,9,3}	{}	2018-09-23 22:50:00.004708
21611	{13,6,8,18}	{}	2018-09-06 21:05:00.004513
21615	{19,5,20,16}	{}	2018-09-06 22:05:00.004567
21620	{4,8,19,20}	{}	2018-09-06 23:20:00.00489
23269	{5,17,14,21}	{}	2018-09-24 03:35:00.004616
23270	{3,17,11,7}	{}	2018-09-24 03:50:00.004682
23271	{17,4,6,13}	{}	2018-09-24 04:05:00.004566
23272	{8,5,19,9}	{}	2018-09-24 04:20:00.004643
23273	{16,6,9,12}	{}	2018-09-24 04:35:00.004729
23274	{21,12,16,4}	{}	2018-09-24 04:50:00.004699
23275	{16,4,8,17}	{}	2018-09-24 05:05:00.005341
23287	{21,12,10,15}	{}	2018-09-24 08:05:00.005332
23288	{17,21,10,11}	{}	2018-09-24 08:20:00.004722
23289	{16,2,9,20}	{}	2018-09-24 08:35:00.004742
23290	{14,8,2,15}	{}	2018-09-24 08:50:00.004718
23291	{1,7,10,13}	{}	2018-09-24 09:05:00.004532
23292	{13,19,16,10}	{}	2018-09-24 09:20:00.00471
23293	{6,2,21,9}	{}	2018-09-24 09:35:00.004698
23294	{15,13,17,10}	{}	2018-09-24 09:50:00.004661
23295	{13,21,8,20}	{}	2018-09-24 10:05:00.00437
23296	{3,4,14,7}	{}	2018-09-24 10:20:00.004776
23297	{11,14,17,8}	{}	2018-09-24 10:35:00.004685
23298	{3,8,10,17}	{}	2018-09-24 10:50:00.004794
23323	{3,11,14,4}	{}	2018-09-24 17:05:00.00527
23324	{8,3,14,2}	{}	2018-09-24 17:20:00.004273
23325	{3,12,10,7}	{}	2018-09-24 17:35:00.004631
23326	{11,9,10,15}	{}	2018-09-24 17:50:00.004603
23327	{15,2,1,21}	{}	2018-09-24 18:05:00.004525
23328	{8,16,19,13}	{}	2018-09-24 18:20:00.004683
23329	{11,1,4,2}	{}	2018-09-24 18:35:00.004677
23330	{21,17,16,12}	{}	2018-09-24 18:50:00.004737
23352	{17,14,13,2}	{}	2018-09-25 00:20:00.004619
23355	{12,8,6,10}	{}	2018-09-25 01:05:00.005318
23359	{11,14,3,5}	{}	2018-09-25 02:05:00.004498
23363	{1,15,12,4}	{}	2018-09-25 03:05:00.00453
23367	{19,14,8,20}	{}	2018-09-25 04:05:00.004547
23380	{21,17,3,12}	{}	2018-09-25 07:20:00.004679
23383	{20,15,4,6}	{}	2018-09-25 08:05:00.005247
23387	{20,13,19,16}	{}	2018-09-25 09:05:00.004533
23391	{2,16,1,10}	{}	2018-09-25 10:05:00.004548
23400	{18,9,11,20}	{}	2018-09-25 12:20:00.004665
23403	{16,20,17,1}	{}	2018-09-25 13:05:00.005334
23407	{9,17,1,18}	{}	2018-09-25 14:05:00.004566
23411	{8,2,17,1}	{}	2018-09-25 15:05:00.004554
23415	{5,19,9,16}	{}	2018-09-25 16:05:00.004474
23428	{13,9,1,4}	{}	2018-09-25 19:20:00.004474
23431	{1,13,18,4}	{}	2018-09-25 20:05:00.005266
23435	{13,20,10,9}	{}	2018-09-25 21:05:00.004628
23439	{20,11,7,14}	{}	2018-09-25 22:05:00.004519
21612	{17,18,6,3}	{}	2018-09-06 21:20:00.004683
21616	{11,9,4,6}	{}	2018-09-06 22:20:00.0048
21619	{10,15,12,4}	{}	2018-09-06 23:05:00.005428
21621	{9,4,18,2}	{}	2018-09-06 23:35:00.00486
21622	{19,10,20,12}	{}	2018-09-06 23:50:00.004847
21623	{12,15,7,16}	{}	2018-09-07 00:05:00.005218
21624	{3,13,1,7}	{}	2018-09-07 00:20:00.004727
21625	{9,10,18,15}	{}	2018-09-07 00:35:00.004736
21626	{7,17,4,21}	{}	2018-09-07 00:50:00.004724
21627	{3,9,7,12}	{}	2018-09-07 01:05:00.005306
21628	{17,1,13,12}	{}	2018-09-07 01:20:00.004713
21629	{2,17,20,4}	{}	2018-09-07 01:35:00.00479
21630	{8,20,21,12}	{}	2018-09-07 01:50:00.004682
21631	{18,20,19,14}	{}	2018-09-07 02:05:00.004463
21632	{17,14,19,7}	{}	2018-09-07 02:20:00.004739
21633	{2,14,3,6}	{}	2018-09-07 02:35:00.004616
21634	{14,9,4,6}	{}	2018-09-07 02:50:00.004746
21635	{7,2,5,15}	{}	2018-09-07 03:05:00.004549
21636	{13,18,3,15}	{}	2018-09-07 03:20:00.004694
21637	{8,20,9,4}	{}	2018-09-07 03:35:00.004769
21638	{1,9,5,15}	{}	2018-09-07 03:50:00.004611
21639	{21,18,10,11}	{}	2018-09-07 04:05:00.004507
21640	{18,4,2,1}	{}	2018-09-07 04:20:00.004711
21641	{13,2,1,20}	{}	2018-09-07 04:35:00.004706
21642	{14,10,20,7}	{}	2018-09-07 04:50:00.00462
21643	{9,11,3,19}	{}	2018-09-07 05:05:00.005306
21644	{14,9,17,3}	{}	2018-09-07 05:20:00.004725
21645	{5,7,18,17}	{}	2018-09-07 05:35:00.004723
21646	{1,15,13,21}	{}	2018-09-07 05:50:00.004693
21647	{18,20,10,7}	{}	2018-09-07 06:05:00.004457
21648	{4,16,15,11}	{}	2018-09-07 06:20:00.004776
21649	{8,2,15,11}	{}	2018-09-07 06:35:00.004712
21650	{5,18,20,12}	{}	2018-09-07 06:50:00.004582
21651	{6,11,19,1}	{}	2018-09-07 07:05:00.005352
21652	{6,5,19,10}	{}	2018-09-07 07:20:00.004644
21653	{6,19,11,16}	{}	2018-09-07 07:35:00.004714
21654	{7,12,4,11}	{}	2018-09-07 07:50:00.004747
21655	{7,15,5,9}	{}	2018-09-07 08:05:00.005277
21656	{2,21,4,10}	{}	2018-09-07 08:20:00.00472
21657	{12,10,8,21}	{}	2018-09-07 08:35:00.004696
21658	{14,6,21,11}	{}	2018-09-07 08:50:00.003957
21659	{14,19,20,21}	{}	2018-09-07 09:05:00.004512
21660	{19,15,2,18}	{}	2018-09-07 09:20:00.004745
21661	{1,13,9,16}	{}	2018-09-07 09:35:00.004738
21662	{18,16,21,1}	{}	2018-09-07 09:50:00.00464
21663	{12,16,21,4}	{}	2018-09-07 10:05:00.004515
21664	{1,9,6,19}	{}	2018-09-07 10:20:00.004464
21665	{13,11,2,5}	{}	2018-09-07 10:35:00.004628
21666	{6,11,17,14}	{}	2018-09-07 10:50:00.004724
21667	{5,14,16,20}	{}	2018-09-07 11:05:00.005337
21668	{13,19,5,4}	{}	2018-09-07 11:20:00.004698
21669	{1,14,5,17}	{}	2018-09-07 11:35:00.004662
21670	{8,16,2,19}	{}	2018-09-07 11:50:00.004661
21671	{8,14,4,11}	{}	2018-09-07 12:05:00.00538
21672	{20,4,21,12}	{}	2018-09-07 12:20:00.004719
21673	{14,10,6,17}	{}	2018-09-07 12:35:00.004625
21674	{14,12,5,8}	{}	2018-09-07 12:50:00.004668
21675	{19,20,7,1}	{}	2018-09-07 13:05:00.005339
21676	{20,7,18,3}	{}	2018-09-07 13:20:00.004687
21677	{13,5,7,9}	{}	2018-09-07 13:35:00.004691
21678	{11,21,19,2}	{}	2018-09-07 13:50:00.004653
21679	{1,18,19,8}	{}	2018-09-07 14:05:00.004508
21680	{5,9,2,20}	{}	2018-09-07 14:20:00.004731
21681	{11,15,14,8}	{}	2018-09-07 14:35:00.004684
21682	{3,2,11,14}	{}	2018-09-07 14:50:00.004641
21683	{9,2,10,5}	{}	2018-09-07 15:05:00.004497
21684	{13,9,6,7}	{}	2018-09-07 15:20:00.00468
21685	{5,20,21,17}	{}	2018-09-07 15:35:00.004691
21686	{17,20,12,3}	{}	2018-09-07 15:50:00.004713
21687	{18,4,17,21}	{}	2018-09-07 16:05:00.004479
21688	{12,9,1,7}	{}	2018-09-07 16:20:00.004732
21689	{3,6,5,17}	{}	2018-09-07 16:35:00.004643
21690	{5,12,19,11}	{}	2018-09-07 16:50:00.004767
21691	{4,9,20,12}	{}	2018-09-07 17:05:00.005319
21692	{1,9,15,16}	{}	2018-09-07 17:20:00.004714
21693	{4,16,14,20}	{}	2018-09-07 17:35:00.004708
21694	{1,21,20,16}	{}	2018-09-07 17:50:00.004719
21695	{13,1,17,14}	{}	2018-09-07 18:05:00.00454
21704	{8,17,20,9}	{}	2018-09-07 20:20:00.004741
21708	{16,8,21,15}	{}	2018-09-07 21:20:00.004603
21712	{21,1,10,7}	{}	2018-09-07 22:20:00.004684
23276	{7,8,12,2}	{}	2018-09-24 05:20:00.004707
23277	{13,9,10,12}	{}	2018-09-24 05:35:00.004716
23278	{8,15,5,21}	{}	2018-09-24 05:50:00.004804
23279	{5,7,6,9}	{}	2018-09-24 06:05:00.004466
23280	{2,6,18,13}	{}	2018-09-24 06:20:00.00469
23281	{20,14,17,19}	{}	2018-09-24 06:35:00.004758
23282	{5,13,1,2}	{}	2018-09-24 06:50:00.004513
23307	{14,8,12,15}	{}	2018-09-24 13:05:00.005338
23308	{16,13,5,8}	{}	2018-09-24 13:20:00.00479
23309	{9,15,18,11}	{}	2018-09-24 13:35:00.004743
23310	{6,17,18,13}	{}	2018-09-24 13:50:00.004737
23311	{6,8,4,16}	{}	2018-09-24 14:05:00.004495
23312	{21,6,17,16}	{}	2018-09-24 14:20:00.004718
23313	{20,6,12,17}	{}	2018-09-24 14:35:00.00469
23314	{9,3,2,6}	{}	2018-09-24 14:50:00.004687
23315	{10,8,12,2}	{}	2018-09-24 15:05:00.004499
23316	{15,20,10,19}	{}	2018-09-24 15:20:00.00456
23317	{14,21,12,10}	{}	2018-09-24 15:35:00.004702
23318	{7,14,8,4}	{}	2018-09-24 15:50:00.004696
23319	{7,13,8,21}	{}	2018-09-24 16:05:00.004534
23320	{16,15,11,18}	{}	2018-09-24 16:20:00.004713
23321	{18,4,6,10}	{}	2018-09-24 16:35:00.004733
23322	{13,15,20,14}	{}	2018-09-24 16:50:00.004756
23335	{2,4,18,11}	{}	2018-09-24 20:05:00.005356
23336	{14,8,6,21}	{}	2018-09-24 20:20:00.004695
23337	{8,1,21,12}	{}	2018-09-24 20:35:00.004639
23338	{12,14,10,9}	{}	2018-09-24 20:50:00.004751
23339	{6,8,9,15}	{}	2018-09-24 21:05:00.004693
23340	{3,6,8,15}	{}	2018-09-24 21:20:00.004719
23341	{6,9,2,11}	{}	2018-09-24 21:35:00.004732
23342	{1,18,19,13}	{}	2018-09-24 21:50:00.004659
23343	{18,3,10,16}	{}	2018-09-24 22:05:00.004351
23344	{18,19,1,21}	{}	2018-09-24 22:20:00.004686
23345	{1,4,20,18}	{}	2018-09-24 22:35:00.004761
23346	{5,1,16,13}	{}	2018-09-24 22:50:00.004746
23349	{6,17,12,1}	{}	2018-09-24 23:35:00.004873
23354	{21,8,12,16}	{}	2018-09-25 00:50:00.004754
23357	{9,19,10,13}	{}	2018-09-25 01:35:00.004651
23361	{18,6,12,21}	{}	2018-09-25 02:35:00.00439
23365	{10,21,1,5}	{}	2018-09-25 03:35:00.004794
23369	{13,9,4,2}	{}	2018-09-25 04:35:00.004725
23374	{12,11,1,3}	{}	2018-09-25 05:50:00.004712
23378	{17,13,1,6}	{}	2018-09-25 06:50:00.004682
23381	{18,21,12,7}	{}	2018-09-25 07:35:00.004709
23386	{3,4,10,6}	{}	2018-09-25 08:50:00.004701
23390	{1,8,15,6}	{}	2018-09-25 09:50:00.00467
23394	{15,14,9,16}	{}	2018-09-25 10:50:00.004733
23397	{11,8,4,12}	{}	2018-09-25 11:35:00.004676
23402	{13,1,21,15}	{}	2018-09-25 12:50:00.004482
23405	{11,5,2,10}	{}	2018-09-25 13:35:00.004714
23409	{15,1,14,8}	{}	2018-09-25 14:35:00.004726
23413	{16,6,15,17}	{}	2018-09-25 15:35:00.004681
23417	{10,12,11,13}	{}	2018-09-25 16:35:00.004683
23422	{2,14,5,21}	{}	2018-09-25 17:50:00.004755
23426	{14,7,2,17}	{}	2018-09-25 18:50:00.004732
23429	{12,14,13,6}	{}	2018-09-25 19:35:00.004736
23434	{15,17,11,19}	{}	2018-09-25 20:50:00.00467
23438	{3,6,19,18}	{}	2018-09-25 21:50:00.004709
23442	{6,18,21,10}	{}	2018-09-25 22:50:00.004702
21696	{18,8,12,16}	{}	2018-09-07 18:20:00.004733
21699	{20,21,2,15}	{}	2018-09-07 19:05:00.005352
23283	{13,14,18,2}	{}	2018-09-24 07:05:00.005236
23284	{20,17,4,12}	{}	2018-09-24 07:20:00.004699
23285	{4,15,19,18}	{}	2018-09-24 07:35:00.004747
23286	{14,11,3,13}	{}	2018-09-24 07:50:00.004714
23299	{1,19,10,4}	{}	2018-09-24 11:05:00.005438
23300	{13,12,10,15}	{}	2018-09-24 11:20:00.004685
23301	{10,14,4,20}	{}	2018-09-24 11:35:00.004711
23302	{18,16,8,17}	{}	2018-09-24 11:50:00.004773
23348	{4,20,17,8}	{}	2018-09-24 23:20:00.004799
23351	{2,6,13,7}	{}	2018-09-25 00:05:00.005164
23372	{4,14,10,6}	{}	2018-09-25 05:20:00.004681
23376	{15,7,17,13}	{}	2018-09-25 06:20:00.00472
23379	{17,5,11,14}	{}	2018-09-25 07:05:00.005343
23396	{14,9,13,15}	{}	2018-09-25 11:20:00.004616
23399	{2,1,6,15}	{}	2018-09-25 12:05:00.005348
23420	{10,7,2,20}	{}	2018-09-25 17:20:00.00466
23424	{11,8,2,12}	{}	2018-09-25 18:20:00.004725
23427	{17,18,2,16}	{}	2018-09-25 19:05:00.005358
21697	{21,12,17,15}	{}	2018-09-07 18:35:00.004664
21702	{15,8,17,9}	{}	2018-09-07 19:50:00.00475
21705	{3,11,14,18}	{}	2018-09-07 20:35:00.004625
21709	{7,11,5,19}	{}	2018-09-07 21:35:00.004657
21713	{18,4,12,20}	{}	2018-09-07 22:35:00.004728
23303	{8,15,17,18}	{}	2018-09-24 12:05:00.005357
23304	{13,7,17,8}	{}	2018-09-24 12:20:00.004661
23305	{9,7,2,13}	{}	2018-09-24 12:35:00.004804
23306	{14,13,7,19}	{}	2018-09-24 12:50:00.004736
23331	{2,12,16,11}	{}	2018-09-24 19:05:00.005347
23332	{16,2,9,10}	{}	2018-09-24 19:20:00.004693
23333	{7,2,3,10}	{}	2018-09-24 19:35:00.00468
23334	{4,3,1,7}	{}	2018-09-24 19:50:00.004754
23347	{14,9,8,6}	{}	2018-09-24 23:05:00.005404
23356	{1,8,9,4}	{}	2018-09-25 01:20:00.004672
23360	{21,12,5,16}	{}	2018-09-25 02:20:00.004682
23364	{4,7,16,6}	{}	2018-09-25 03:20:00.00481
23368	{11,4,1,14}	{}	2018-09-25 04:20:00.004748
23371	{17,12,6,18}	{}	2018-09-25 05:05:00.00534
23375	{18,19,15,8}	{}	2018-09-25 06:05:00.004478
23384	{16,21,14,3}	{}	2018-09-25 08:20:00.004705
23388	{6,20,1,17}	{}	2018-09-25 09:20:00.004684
23392	{18,1,6,15}	{}	2018-09-25 10:20:00.004721
23395	{8,4,10,17}	{}	2018-09-25 11:05:00.005329
23404	{7,18,2,3}	{}	2018-09-25 13:20:00.004751
23408	{17,2,7,20}	{}	2018-09-25 14:20:00.004711
23412	{7,4,9,6}	{}	2018-09-25 15:20:00.004653
23416	{1,2,20,5}	{}	2018-09-25 16:20:00.004705
23419	{19,1,15,2}	{}	2018-09-25 17:05:00.005373
23423	{4,1,13,11}	{}	2018-09-25 18:05:00.0045
23432	{11,13,4,7}	{}	2018-09-25 20:20:00.004503
23436	{1,2,4,11}	{}	2018-09-25 21:20:00.004729
23440	{10,17,1,16}	{}	2018-09-25 22:20:00.004133
23443	{19,1,17,10}	{}	2018-09-25 23:05:00.005369
21698	{10,20,19,17}	{}	2018-09-07 18:50:00.004711
21701	{16,5,2,8}	{}	2018-09-07 19:35:00.004591
21706	{2,5,18,20}	{}	2018-09-07 20:50:00.004677
21710	{18,9,4,2}	{}	2018-09-07 21:50:00.004707
23350	{4,14,12,9}	{}	2018-09-24 23:50:00.004815
23353	{20,15,2,5}	{}	2018-09-25 00:35:00.004525
23358	{14,2,5,8}	{}	2018-09-25 01:50:00.0047
23362	{17,14,21,11}	{}	2018-09-25 02:50:00.004693
23366	{18,9,7,4}	{}	2018-09-25 03:50:00.004695
23370	{3,5,20,4}	{}	2018-09-25 04:50:00.004705
23373	{19,3,7,17}	{}	2018-09-25 05:35:00.004569
23377	{17,7,12,10}	{}	2018-09-25 06:35:00.00476
23382	{20,18,1,4}	{}	2018-09-25 07:50:00.00472
23385	{9,10,15,17}	{}	2018-09-25 08:35:00.004738
23389	{5,13,18,10}	{}	2018-09-25 09:35:00.004714
23393	{13,7,8,16}	{}	2018-09-25 10:35:00.00465
23398	{16,6,12,20}	{}	2018-09-25 11:50:00.004717
23401	{2,13,12,21}	{}	2018-09-25 12:35:00.004687
23406	{4,19,8,20}	{}	2018-09-25 13:50:00.004711
23410	{15,20,14,11}	{}	2018-09-25 14:50:00.004643
23414	{4,5,14,10}	{}	2018-09-25 15:50:00.00431
23418	{9,5,20,2}	{}	2018-09-25 16:50:00.004618
23421	{8,5,13,19}	{}	2018-09-25 17:35:00.00473
23425	{12,14,11,21}	{}	2018-09-25 18:35:00.004683
23430	{18,17,1,9}	{}	2018-09-25 19:50:00.004711
23433	{3,5,4,10}	{}	2018-09-25 20:35:00.004725
23437	{20,16,8,11}	{}	2018-09-25 21:35:00.004483
23441	{8,16,6,11}	{}	2018-09-25 22:35:00.004712
21700	{15,5,10,21}	{}	2018-09-07 19:20:00.00473
21703	{14,10,18,2}	{}	2018-09-07 20:05:00.005326
21707	{17,13,18,5}	{}	2018-09-07 21:05:00.004492
21711	{19,14,21,13}	{}	2018-09-07 22:05:00.004525
21714	{3,2,15,7}	{}	2018-09-07 22:50:00.004732
21715	{4,17,6,12}	{}	2018-09-07 23:05:00.005498
21716	{20,11,19,5}	{}	2018-09-07 23:20:00.004837
21717	{3,5,20,10}	{}	2018-09-07 23:35:00.004848
21718	{16,21,3,8}	{}	2018-09-07 23:50:00.004872
21719	{7,11,8,17}	{}	2018-09-08 00:05:00.005233
21720	{4,12,11,1}	{}	2018-09-08 00:20:00.004696
21721	{17,14,13,11}	{}	2018-09-08 00:35:00.004724
21722	{3,4,18,19}	{}	2018-09-08 00:50:00.004765
21723	{17,5,19,16}	{}	2018-09-08 01:05:00.005327
21724	{20,7,16,6}	{}	2018-09-08 01:20:00.004767
21725	{4,18,11,14}	{}	2018-09-08 01:35:00.00465
21726	{7,11,21,9}	{}	2018-09-08 01:50:00.004731
21727	{19,16,3,8}	{}	2018-09-08 02:05:00.004517
21728	{19,8,10,20}	{}	2018-09-08 02:20:00.004716
21729	{15,13,10,4}	{}	2018-09-08 02:35:00.004781
21730	{5,8,9,3}	{}	2018-09-08 02:50:00.004687
21731	{17,3,15,21}	{}	2018-09-08 03:05:00.004559
21732	{5,1,2,13}	{}	2018-09-08 03:20:00.004701
21733	{13,16,1,10}	{}	2018-09-08 03:35:00.00472
21734	{14,4,6,18}	{}	2018-09-08 03:50:00.004702
21735	{7,18,17,12}	{}	2018-09-08 04:05:00.004527
21736	{5,2,11,19}	{}	2018-09-08 04:20:00.00466
21737	{10,17,1,15}	{}	2018-09-08 04:35:00.0047
21738	{3,6,12,20}	{}	2018-09-08 04:50:00.004647
21739	{14,6,1,19}	{}	2018-09-08 05:05:00.005326
21740	{18,8,11,19}	{}	2018-09-08 05:20:00.004651
21741	{19,4,20,18}	{}	2018-09-08 05:35:00.004694
21742	{11,20,16,10}	{}	2018-09-08 05:50:00.004739
21743	{10,13,5,9}	{}	2018-09-08 06:05:00.004418
21744	{13,20,16,15}	{}	2018-09-08 06:20:00.004684
21745	{10,2,14,18}	{}	2018-09-08 06:35:00.00472
21746	{5,18,1,14}	{}	2018-09-08 06:50:00.004717
21747	{7,4,15,13}	{}	2018-09-08 07:05:00.005339
21748	{10,19,9,2}	{}	2018-09-08 07:20:00.004674
21749	{6,3,20,13}	{}	2018-09-08 07:35:00.004609
21750	{9,19,20,2}	{}	2018-09-08 07:50:00.004662
21751	{17,15,1,20}	{}	2018-09-08 08:05:00.005332
21752	{19,21,12,14}	{}	2018-09-08 08:20:00.004652
21753	{3,7,11,21}	{}	2018-09-08 08:35:00.004627
21754	{1,20,18,5}	{}	2018-09-08 08:50:00.004721
21755	{6,15,3,19}	{}	2018-09-08 09:05:00.004495
21756	{7,4,18,12}	{}	2018-09-08 09:20:00.004731
21757	{20,16,2,11}	{}	2018-09-08 09:35:00.004744
21758	{10,5,17,16}	{}	2018-09-08 09:50:00.004751
21759	{19,17,14,6}	{}	2018-09-08 10:05:00.004556
21760	{9,10,2,13}	{}	2018-09-08 10:20:00.004723
21761	{10,4,19,3}	{}	2018-09-08 10:35:00.004645
21762	{8,14,16,12}	{}	2018-09-08 10:50:00.004645
21763	{6,3,17,10}	{}	2018-09-08 11:05:00.005355
21764	{17,4,3,13}	{}	2018-09-08 11:20:00.004748
21765	{15,6,10,11}	{}	2018-09-08 11:35:00.004607
21766	{7,10,20,6}	{}	2018-09-08 11:50:00.004744
21767	{18,10,20,2}	{}	2018-09-08 12:05:00.005356
21768	{16,2,18,13}	{}	2018-09-08 12:20:00.00468
21769	{20,17,11,6}	{}	2018-09-08 12:35:00.004595
21770	{2,17,9,19}	{}	2018-09-08 12:50:00.00471
21771	{21,12,16,13}	{}	2018-09-08 13:05:00.00544
21772	{8,21,10,16}	{}	2018-09-08 13:20:00.004738
21773	{2,3,21,11}	{}	2018-09-08 13:35:00.004597
21774	{12,6,10,7}	{}	2018-09-08 13:50:00.004677
21775	{6,10,1,2}	{}	2018-09-08 14:05:00.004491
21776	{2,9,3,16}	{}	2018-09-08 14:20:00.00475
21777	{2,9,8,10}	{}	2018-09-08 14:35:00.004685
21778	{3,5,19,21}	{}	2018-09-08 14:50:00.004632
21779	{5,13,4,17}	{}	2018-09-08 15:05:00.004508
21780	{6,8,10,19}	{}	2018-09-08 15:20:00.004665
21781	{17,2,11,8}	{}	2018-09-08 15:35:00.004667
21782	{2,15,4,18}	{}	2018-09-08 15:50:00.004682
21783	{20,6,5,11}	{}	2018-09-08 16:05:00.004525
21784	{2,4,15,21}	{}	2018-09-08 16:20:00.004736
21785	{14,17,7,4}	{}	2018-09-08 16:35:00.004681
21786	{13,17,20,19}	{}	2018-09-08 16:50:00.004721
21787	{19,3,6,12}	{}	2018-09-08 17:05:00.005346
21791	{12,8,17,13}	{}	2018-09-08 18:05:00.004529
21800	{4,9,19,14}	{}	2018-09-08 20:20:00.004717
21804	{2,8,3,19}	{}	2018-09-08 21:20:00.004707
21808	{1,6,8,21}	{}	2018-09-08 22:20:00.004649
23444	{12,18,16,9}	{}	2018-09-25 23:20:00.004847
23448	{6,8,10,11}	{}	2018-09-26 00:20:00.004735
23451	{10,14,6,17}	{}	2018-09-26 01:05:00.005349
23455	{15,9,20,8}	{}	2018-09-26 02:05:00.00455
23459	{3,19,5,4}	{}	2018-09-26 03:05:00.004561
23463	{6,15,18,21}	{}	2018-09-26 04:05:00.004541
23476	{4,13,16,9}	{}	2018-09-26 07:20:00.004665
23479	{20,6,16,14}	{}	2018-09-26 08:05:00.005347
23483	{5,9,4,14}	{}	2018-09-26 09:05:00.004537
23487	{10,17,9,3}	{}	2018-09-26 10:05:00.004583
23496	{2,12,18,16}	{}	2018-09-26 12:20:00.004721
23499	{2,5,10,15}	{}	2018-09-26 13:05:00.005265
23503	{15,19,12,7}	{}	2018-09-26 14:05:00.004532
23507	{19,10,2,6}	{}	2018-09-26 15:05:00.004541
23511	{1,13,15,5}	{}	2018-09-26 16:05:00.004362
23524	{17,2,12,3}	{}	2018-09-26 19:20:00.004688
23527	{12,15,9,18}	{}	2018-09-26 20:05:00.005349
23531	{16,18,17,2}	{}	2018-09-26 21:05:00.004562
23535	{5,19,12,15}	{}	2018-09-26 22:05:00.004564
23544	{11,8,3,12}	{}	2018-09-27 00:20:00.004254
23547	{18,2,12,8}	{}	2018-09-27 01:05:00.005363
23551	{5,2,17,9}	{}	2018-09-27 02:05:00.004558
23555	{7,9,15,21}	{}	2018-09-27 03:05:00.004579
23559	{15,21,10,9}	{}	2018-09-27 04:05:00.004549
23572	{9,12,8,21}	{}	2018-09-27 07:20:00.004692
23575	{9,6,2,12}	{}	2018-09-27 08:05:00.005378
23579	{10,19,3,1}	{}	2018-09-27 09:05:00.004578
23583	{15,5,21,17}	{}	2018-09-27 10:05:00.004582
23592	{15,9,4,20}	{}	2018-09-27 12:20:00.004792
23595	{6,1,5,16}	{}	2018-09-27 13:05:00.005432
23599	{1,9,14,20}	{}	2018-09-27 14:05:00.004531
23603	{18,5,17,2}	{}	2018-09-27 15:05:00.004529
23607	{9,4,19,18}	{}	2018-09-27 16:05:00.004586
23620	{14,5,2,20}	{}	2018-09-27 19:20:00.004713
23623	{2,12,21,10}	{}	2018-09-27 20:05:00.005349
23627	{8,14,1,12}	{}	2018-09-27 21:05:00.004542
21788	{20,11,3,17}	{}	2018-09-08 17:20:00.004673
21792	{18,21,7,8}	{}	2018-09-08 18:20:00.004653
21795	{1,11,7,12}	{}	2018-09-08 19:05:00.005349
23445	{16,3,6,14}	{}	2018-09-25 23:35:00.004815
23450	{4,10,9,7}	{}	2018-09-26 00:50:00.004692
23453	{12,8,5,9}	{}	2018-09-26 01:35:00.004643
23457	{6,14,16,7}	{}	2018-09-26 02:35:00.004725
23461	{8,5,2,18}	{}	2018-09-26 03:35:00.004761
23465	{18,16,13,6}	{}	2018-09-26 04:35:00.004787
23470	{6,5,19,12}	{}	2018-09-26 05:50:00.004604
23474	{9,14,12,13}	{}	2018-09-26 06:50:00.004738
23477	{18,13,8,17}	{}	2018-09-26 07:35:00.004763
23482	{18,16,13,19}	{}	2018-09-26 08:50:00.004709
23486	{14,7,4,3}	{}	2018-09-26 09:50:00.004741
23490	{2,17,8,9}	{}	2018-09-26 10:50:00.004483
23493	{8,1,9,10}	{}	2018-09-26 11:35:00.004738
23498	{8,17,13,19}	{}	2018-09-26 12:50:00.004703
23501	{3,14,16,18}	{}	2018-09-26 13:35:00.004735
23505	{15,5,14,4}	{}	2018-09-26 14:35:00.004641
23509	{16,11,14,12}	{}	2018-09-26 15:35:00.004717
23513	{17,12,11,2}	{}	2018-09-26 16:35:00.004736
23518	{6,21,4,3}	{}	2018-09-26 17:50:00.00467
23522	{2,19,10,21}	{}	2018-09-26 18:50:00.004779
23525	{12,18,17,4}	{}	2018-09-26 19:35:00.004724
23530	{6,20,14,16}	{}	2018-09-26 20:50:00.004766
23534	{16,20,14,11}	{}	2018-09-26 21:50:00.004777
23538	{13,4,7,20}	{}	2018-09-26 22:50:00.004811
23541	{4,14,6,12}	{}	2018-09-26 23:35:00.004887
23546	{5,20,1,7}	{}	2018-09-27 00:50:00.004749
23549	{15,10,18,17}	{}	2018-09-27 01:35:00.004754
23553	{5,11,3,15}	{}	2018-09-27 02:35:00.004768
23557	{16,14,10,17}	{}	2018-09-27 03:35:00.004718
23561	{12,3,10,14}	{}	2018-09-27 04:35:00.00478
23566	{7,8,5,12}	{}	2018-09-27 05:50:00.004748
23570	{15,3,17,10}	{}	2018-09-27 06:50:00.004723
23573	{1,11,19,8}	{}	2018-09-27 07:35:00.004706
23578	{13,8,15,3}	{}	2018-09-27 08:50:00.004746
23582	{1,14,10,16}	{}	2018-09-27 09:50:00.004793
23586	{17,21,2,19}	{}	2018-09-27 10:50:00.004734
23589	{4,11,15,3}	{}	2018-09-27 11:35:00.004743
23594	{2,10,4,20}	{}	2018-09-27 12:50:00.004767
23597	{10,15,8,6}	{}	2018-09-27 13:35:00.004739
23601	{12,3,5,16}	{}	2018-09-27 14:35:00.004707
23605	{11,20,12,1}	{}	2018-09-27 15:35:00.004767
23609	{18,4,21,14}	{}	2018-09-27 16:35:00.004706
23614	{14,2,5,13}	{}	2018-09-27 17:50:00.004749
23618	{10,6,1,20}	{}	2018-09-27 18:50:00.004694
23621	{8,17,11,9}	{}	2018-09-27 19:35:00.004743
23626	{18,7,10,9}	{}	2018-09-27 20:50:00.004811
21789	{13,19,20,11}	{}	2018-09-08 17:35:00.004715
21793	{20,15,8,13}	{}	2018-09-08 18:35:00.004732
21798	{8,9,5,7}	{}	2018-09-08 19:50:00.004705
21801	{11,1,13,10}	{}	2018-09-08 20:35:00.004723
21805	{21,2,11,14}	{}	2018-09-08 21:35:00.004657
21809	{3,17,16,6}	{}	2018-09-08 22:35:00.004731
23446	{20,19,1,14}	{}	2018-09-25 23:50:00.004724
23449	{4,3,15,6}	{}	2018-09-26 00:35:00.004641
23454	{2,21,10,13}	{}	2018-09-26 01:50:00.004729
23458	{6,5,15,10}	{}	2018-09-26 02:50:00.004698
23462	{6,14,2,20}	{}	2018-09-26 03:50:00.004753
23466	{3,2,8,14}	{}	2018-09-26 04:50:00.004643
23469	{6,17,14,20}	{}	2018-09-26 05:35:00.004746
23473	{9,17,12,6}	{}	2018-09-26 06:35:00.004686
23478	{6,14,8,17}	{}	2018-09-26 07:50:00.00474
23481	{11,20,2,16}	{}	2018-09-26 08:35:00.004709
23485	{3,13,10,7}	{}	2018-09-26 09:35:00.004712
23489	{21,6,17,20}	{}	2018-09-26 10:35:00.004731
23494	{5,13,12,21}	{}	2018-09-26 11:50:00.004742
23497	{4,10,7,3}	{}	2018-09-26 12:35:00.0047
23502	{12,6,13,3}	{}	2018-09-26 13:50:00.004796
23506	{10,5,13,2}	{}	2018-09-26 14:50:00.004819
23510	{6,2,14,12}	{}	2018-09-26 15:50:00.00469
23514	{4,21,9,11}	{}	2018-09-26 16:50:00.004719
23517	{13,1,21,18}	{}	2018-09-26 17:35:00.00466
23521	{11,7,20,16}	{}	2018-09-26 18:35:00.0048
23526	{3,9,2,10}	{}	2018-09-26 19:50:00.00477
23529	{11,6,19,10}	{}	2018-09-26 20:35:00.004741
23533	{16,8,6,14}	{}	2018-09-26 21:35:00.004758
23537	{18,1,16,2}	{}	2018-09-26 22:35:00.004794
23542	{3,20,8,10}	{}	2018-09-26 23:50:00.004854
23545	{10,19,7,8}	{}	2018-09-27 00:35:00.004721
23550	{3,14,11,6}	{}	2018-09-27 01:50:00.004643
23554	{2,14,19,18}	{}	2018-09-27 02:50:00.004705
23558	{12,13,20,6}	{}	2018-09-27 03:50:00.004737
23562	{2,11,7,1}	{}	2018-09-27 04:50:00.004783
23565	{1,11,7,17}	{}	2018-09-27 05:35:00.004775
23569	{20,8,14,6}	{}	2018-09-27 06:35:00.004648
23574	{9,2,13,18}	{}	2018-09-27 07:50:00.00474
23577	{13,14,15,7}	{}	2018-09-27 08:35:00.004716
23581	{14,12,20,6}	{}	2018-09-27 09:35:00.004779
23585	{12,9,2,16}	{}	2018-09-27 10:35:00.00478
23590	{13,5,6,7}	{}	2018-09-27 11:50:00.004658
23593	{10,2,16,11}	{}	2018-09-27 12:35:00.004731
23598	{3,7,12,14}	{}	2018-09-27 13:50:00.004721
23602	{1,21,12,4}	{}	2018-09-27 14:50:00.004718
23606	{6,2,19,17}	{}	2018-09-27 15:50:00.004617
23610	{8,10,19,17}	{}	2018-09-27 16:50:00.004771
23613	{19,6,16,2}	{}	2018-09-27 17:35:00.004782
23617	{15,8,19,17}	{}	2018-09-27 18:35:00.004746
23622	{8,18,13,2}	{}	2018-09-27 19:50:00.004783
23625	{15,14,16,1}	{}	2018-09-27 20:35:00.004782
21790	{16,2,17,20}	{}	2018-09-08 17:50:00.004651
21794	{4,7,13,8}	{}	2018-09-08 18:50:00.004715
21797	{8,17,9,14}	{}	2018-09-08 19:35:00.00478
21802	{14,18,13,8}	{}	2018-09-08 20:50:00.004762
21806	{6,17,20,7}	{}	2018-09-08 21:50:00.004583
21810	{5,12,21,8}	{}	2018-09-08 22:50:00.004615
23447	{13,1,5,17}	{}	2018-09-26 00:05:00.005172
23452	{7,3,14,4}	{}	2018-09-26 01:20:00.004725
23468	{9,20,13,10}	{}	2018-09-26 05:20:00.004736
23472	{16,11,18,3}	{}	2018-09-26 06:20:00.004703
23475	{12,7,20,13}	{}	2018-09-26 07:05:00.005342
23492	{10,8,17,9}	{}	2018-09-26 11:20:00.004672
23495	{17,14,7,10}	{}	2018-09-26 12:05:00.005236
23516	{13,10,15,16}	{}	2018-09-26 17:20:00.004743
23520	{8,6,15,19}	{}	2018-09-26 18:20:00.004702
23523	{17,10,15,16}	{}	2018-09-26 19:05:00.004898
23540	{14,6,2,4}	{}	2018-09-26 23:20:00.004862
23543	{21,11,7,14}	{}	2018-09-27 00:05:00.005136
23564	{19,2,21,4}	{}	2018-09-27 05:20:00.00473
23568	{12,1,3,21}	{}	2018-09-27 06:20:00.00474
23571	{8,20,7,10}	{}	2018-09-27 07:05:00.00534
23588	{12,7,2,19}	{}	2018-09-27 11:20:00.004783
23591	{4,5,20,7}	{}	2018-09-27 12:05:00.005422
23612	{19,7,8,1}	{}	2018-09-27 17:20:00.004783
23616	{8,3,18,7}	{}	2018-09-27 18:20:00.004782
23619	{1,20,14,2}	{}	2018-09-27 19:05:00.005324
21796	{10,20,9,18}	{}	2018-09-08 19:20:00.004726
21799	{1,5,14,11}	{}	2018-09-08 20:05:00.005338
21803	{17,15,20,19}	{}	2018-09-08 21:05:00.004499
21807	{18,6,15,14}	{}	2018-09-08 22:05:00.004492
21811	{3,17,5,2}	{}	2018-09-08 23:05:00.005304
21812	{19,4,12,15}	{}	2018-09-08 23:20:00.004863
21813	{20,6,13,12}	{}	2018-09-08 23:35:00.004846
21814	{12,10,15,6}	{}	2018-09-08 23:50:00.004733
21815	{9,12,6,2}	{}	2018-09-09 00:05:00.00503
21816	{18,14,5,19}	{}	2018-09-09 00:20:00.004719
21817	{8,9,10,11}	{}	2018-09-09 00:35:00.004672
21818	{11,21,9,12}	{}	2018-09-09 00:50:00.004711
21819	{10,16,19,5}	{}	2018-09-09 01:05:00.005301
21820	{19,17,2,21}	{}	2018-09-09 01:20:00.004751
21821	{19,3,12,16}	{}	2018-09-09 01:35:00.004728
21822	{9,12,20,1}	{}	2018-09-09 01:50:00.004629
21823	{18,4,13,19}	{}	2018-09-09 02:05:00.00457
21824	{7,3,18,2}	{}	2018-09-09 02:20:00.004759
21825	{4,15,14,8}	{}	2018-09-09 02:35:00.004663
21826	{16,5,19,9}	{}	2018-09-09 02:50:00.004742
21827	{18,19,9,21}	{}	2018-09-09 03:05:00.004512
21828	{21,6,4,3}	{}	2018-09-09 03:20:00.004631
21829	{10,17,9,20}	{}	2018-09-09 03:35:00.00461
21830	{15,1,10,13}	{}	2018-09-09 03:50:00.004701
21831	{17,2,8,6}	{}	2018-09-09 04:05:00.004441
21832	{1,17,5,13}	{}	2018-09-09 04:20:00.004636
21833	{18,11,6,2}	{}	2018-09-09 04:35:00.004666
21834	{13,2,4,7}	{}	2018-09-09 04:50:00.004692
21835	{19,21,13,12}	{}	2018-09-09 05:05:00.005324
21836	{17,10,1,8}	{}	2018-09-09 05:20:00.004759
21837	{7,13,6,20}	{}	2018-09-09 05:35:00.004633
21838	{10,21,3,18}	{}	2018-09-09 05:50:00.004605
21839	{18,2,5,11}	{}	2018-09-09 06:05:00.004424
21840	{11,20,7,19}	{}	2018-09-09 06:20:00.00472
21841	{20,15,16,1}	{}	2018-09-09 06:35:00.004619
21842	{18,12,17,11}	{}	2018-09-09 06:50:00.004752
21843	{14,16,1,13}	{}	2018-09-09 07:05:00.005318
21844	{1,13,8,4}	{}	2018-09-09 07:20:00.004695
21845	{5,2,13,20}	{}	2018-09-09 07:35:00.004735
21846	{17,8,4,15}	{}	2018-09-09 07:50:00.004696
21847	{20,5,7,15}	{}	2018-09-09 08:05:00.005315
21848	{6,10,5,7}	{}	2018-09-09 08:20:00.004591
21849	{10,5,4,16}	{}	2018-09-09 08:35:00.004585
21850	{20,2,9,11}	{}	2018-09-09 08:50:00.004821
21851	{8,18,9,20}	{}	2018-09-09 09:05:00.004571
21852	{1,6,18,11}	{}	2018-09-09 09:20:00.004727
21853	{14,21,1,18}	{}	2018-09-09 09:35:00.004691
21854	{6,3,2,17}	{}	2018-09-09 09:50:00.004609
21855	{3,21,20,8}	{}	2018-09-09 10:05:00.003941
21856	{6,21,11,14}	{}	2018-09-09 10:20:00.004735
21857	{8,9,12,5}	{}	2018-09-09 10:35:00.004726
21858	{17,3,7,20}	{}	2018-09-09 10:50:00.004704
21859	{8,17,14,10}	{}	2018-09-09 11:05:00.005328
21860	{6,3,19,15}	{}	2018-09-09 11:20:00.004717
21861	{1,20,15,14}	{}	2018-09-09 11:35:00.004732
21862	{12,19,16,15}	{}	2018-09-09 11:50:00.004736
21863	{12,20,2,21}	{}	2018-09-09 12:05:00.005305
21864	{12,15,9,4}	{}	2018-09-09 12:20:00.004704
21865	{19,9,1,6}	{}	2018-09-09 12:35:00.004705
21866	{1,15,2,19}	{}	2018-09-09 12:50:00.004753
21867	{21,18,2,12}	{}	2018-09-09 13:05:00.005375
21868	{10,3,7,12}	{}	2018-09-09 13:20:00.004639
21869	{6,20,7,2}	{}	2018-09-09 13:35:00.004731
21870	{4,3,2,10}	{}	2018-09-09 13:50:00.004748
21871	{11,6,7,18}	{}	2018-09-09 14:05:00.004473
21872	{6,2,9,8}	{}	2018-09-09 14:20:00.004746
21873	{7,20,10,15}	{}	2018-09-09 14:35:00.004724
21874	{19,2,1,10}	{}	2018-09-09 14:50:00.004667
21875	{15,14,6,10}	{}	2018-09-09 15:05:00.004554
21876	{21,8,20,9}	{}	2018-09-09 15:20:00.004708
21877	{19,2,4,17}	{}	2018-09-09 15:35:00.004611
21878	{1,15,20,14}	{}	2018-09-09 15:50:00.0047
21879	{20,8,17,5}	{}	2018-09-09 16:05:00.004522
21880	{16,8,9,6}	{}	2018-09-09 16:20:00.004781
21881	{6,8,3,9}	{}	2018-09-09 16:35:00.004674
21882	{6,14,8,12}	{}	2018-09-09 16:50:00.004701
21883	{1,17,21,12}	{}	2018-09-09 17:05:00.005369
21884	{20,8,2,21}	{}	2018-09-09 17:20:00.004706
21888	{21,17,7,19}	{}	2018-09-09 18:20:00.004705
21891	{10,4,8,7}	{}	2018-09-09 19:05:00.00534
21908	{6,15,14,21}	{}	2018-09-09 23:20:00.00478
21911	{12,18,2,4}	{}	2018-09-10 00:05:00.005193
23456	{14,20,12,21}	{}	2018-09-26 02:20:00.004708
23460	{13,9,19,11}	{}	2018-09-26 03:20:00.004752
23464	{20,13,15,7}	{}	2018-09-26 04:20:00.004649
23467	{21,16,6,20}	{}	2018-09-26 05:05:00.005255
23471	{11,20,17,9}	{}	2018-09-26 06:05:00.004567
23480	{15,20,4,18}	{}	2018-09-26 08:20:00.004665
23484	{3,16,6,2}	{}	2018-09-26 09:20:00.004748
23488	{16,8,6,13}	{}	2018-09-26 10:20:00.004773
23491	{10,8,21,20}	{}	2018-09-26 11:05:00.005343
23500	{7,6,16,1}	{}	2018-09-26 13:20:00.004782
23504	{16,21,13,5}	{}	2018-09-26 14:20:00.004661
23508	{13,21,19,11}	{}	2018-09-26 15:20:00.004743
23512	{6,1,9,11}	{}	2018-09-26 16:20:00.004656
23515	{21,13,17,14}	{}	2018-09-26 17:05:00.005255
23519	{12,7,8,6}	{}	2018-09-26 18:05:00.004404
23528	{15,21,19,2}	{}	2018-09-26 20:20:00.004651
23532	{6,21,20,1}	{}	2018-09-26 21:20:00.004778
23536	{12,6,21,7}	{}	2018-09-26 22:20:00.004714
23539	{5,13,9,19}	{}	2018-09-26 23:05:00.005438
23548	{11,15,14,6}	{}	2018-09-27 01:20:00.004753
23552	{20,7,13,21}	{}	2018-09-27 02:20:00.004757
23556	{1,21,7,6}	{}	2018-09-27 03:20:00.004769
23560	{20,8,9,6}	{}	2018-09-27 04:20:00.004811
23563	{4,11,12,1}	{}	2018-09-27 05:05:00.005371
23567	{19,9,10,1}	{}	2018-09-27 06:05:00.004466
23576	{10,11,17,21}	{}	2018-09-27 08:20:00.004768
23580	{20,8,1,19}	{}	2018-09-27 09:20:00.004724
23584	{18,15,16,20}	{}	2018-09-27 10:20:00.004734
23587	{14,9,1,20}	{}	2018-09-27 11:05:00.005418
23596	{18,2,17,12}	{}	2018-09-27 13:20:00.004726
23600	{3,2,16,6}	{}	2018-09-27 14:20:00.004766
23604	{12,18,4,20}	{}	2018-09-27 15:20:00.004767
23608	{19,13,8,7}	{}	2018-09-27 16:20:00.004762
23611	{18,15,20,19}	{}	2018-09-27 17:05:00.005343
23615	{10,8,9,20}	{}	2018-09-27 18:05:00.004512
23624	{16,1,11,9}	{}	2018-09-27 20:20:00.004752
21885	{15,18,17,12}	{}	2018-09-09 17:35:00.004612
21889	{6,16,20,8}	{}	2018-09-09 18:35:00.004595
21894	{2,14,5,11}	{}	2018-09-09 19:50:00.004754
21897	{11,5,17,8}	{}	2018-09-09 20:35:00.004716
21901	{16,13,20,14}	{}	2018-09-09 21:35:00.004139
21905	{3,18,15,11}	{}	2018-09-09 22:35:00.004683
21910	{4,20,1,10}	{}	2018-09-09 23:50:00.004823
23628	{15,11,14,19}	{}	2018-09-27 21:20:00.004762
23632	{12,5,14,3}	{}	2018-09-27 22:20:00.004766
23635	{10,18,3,5}	{}	2018-09-27 23:05:00.005478
23640	{2,18,11,8}	{}	2018-09-28 00:20:00.004766
23644	{9,3,5,15}	{}	2018-09-28 01:20:00.004775
23648	{3,17,21,15}	{}	2018-09-28 02:20:00.00475
23652	{2,16,7,15}	{}	2018-09-28 03:20:00.004737
23656	{15,14,17,16}	{}	2018-09-28 04:20:00.00479
23659	{13,10,18,1}	{}	2018-09-28 05:05:00.005399
23663	{15,1,7,13}	{}	2018-09-28 06:05:00.004551
23672	{3,11,6,18}	{}	2018-09-28 08:20:00.004712
23676	{10,4,21,5}	{}	2018-09-28 09:20:00.004779
23680	{2,4,12,15}	{}	2018-09-28 10:20:00.004621
23683	{2,4,21,19}	{}	2018-09-28 11:05:00.005364
23692	{18,7,13,16}	{}	2018-09-28 13:20:00.004777
23696	{20,15,1,13}	{}	2018-09-28 14:20:00.004728
23700	{10,15,14,13}	{}	2018-09-28 15:20:00.004721
23704	{19,5,10,14}	{}	2018-09-28 16:20:00.004676
23707	{7,13,4,2}	{}	2018-09-28 17:05:00.005373
21886	{1,17,4,2}	{}	2018-09-09 17:50:00.004737
21890	{10,16,14,13}	{}	2018-09-09 18:50:00.004646
21893	{3,17,21,4}	{}	2018-09-09 19:35:00.004747
21898	{13,18,21,20}	{}	2018-09-09 20:50:00.004748
21902	{1,18,9,11}	{}	2018-09-09 21:50:00.004731
21906	{8,9,15,2}	{}	2018-09-09 22:50:00.004697
21909	{19,13,4,7}	{}	2018-09-09 23:35:00.004808
23629	{10,1,9,17}	{}	2018-09-27 21:35:00.004793
23633	{11,6,12,21}	{}	2018-09-27 22:35:00.004752
23638	{12,18,20,5}	{}	2018-09-27 23:50:00.004892
23641	{1,7,18,19}	{}	2018-09-28 00:35:00.004706
23646	{11,17,9,20}	{}	2018-09-28 01:50:00.004727
23650	{1,21,11,13}	{}	2018-09-28 02:50:00.004752
23654	{19,20,12,2}	{}	2018-09-28 03:50:00.00467
23658	{17,11,14,9}	{}	2018-09-28 04:50:00.004814
23661	{20,6,16,19}	{}	2018-09-28 05:35:00.004721
23665	{11,7,18,8}	{}	2018-09-28 06:35:00.004526
23670	{3,4,8,1}	{}	2018-09-28 07:50:00.004634
23673	{3,4,17,7}	{}	2018-09-28 08:35:00.004529
23677	{16,2,3,1}	{}	2018-09-28 09:35:00.004801
23681	{3,12,10,1}	{}	2018-09-28 10:35:00.004774
23686	{4,9,13,3}	{}	2018-09-28 11:50:00.004718
23689	{3,15,16,10}	{}	2018-09-28 12:35:00.004745
23694	{12,7,2,3}	{}	2018-09-28 13:50:00.00462
23698	{20,6,14,13}	{}	2018-09-28 14:50:00.004765
23702	{1,4,16,6}	{}	2018-09-28 15:50:00.004673
23706	{10,17,6,2}	{}	2018-09-28 16:50:00.00467
21887	{5,4,2,9}	{}	2018-09-09 18:05:00.004543
21896	{6,20,5,14}	{}	2018-09-09 20:20:00.004633
21900	{6,3,21,12}	{}	2018-09-09 21:20:00.004653
21904	{19,7,4,16}	{}	2018-09-09 22:20:00.004633
21907	{3,6,14,16}	{}	2018-09-09 23:05:00.005493
23630	{16,7,3,6}	{}	2018-09-27 21:50:00.004801
23634	{9,14,6,11}	{}	2018-09-27 22:50:00.004736
23637	{19,12,8,21}	{}	2018-09-27 23:35:00.004853
23642	{16,19,6,8}	{}	2018-09-28 00:50:00.004722
23645	{20,15,6,9}	{}	2018-09-28 01:35:00.004687
23649	{19,17,16,13}	{}	2018-09-28 02:35:00.004714
23653	{21,14,18,3}	{}	2018-09-28 03:35:00.004547
23657	{1,18,5,16}	{}	2018-09-28 04:35:00.004772
23662	{13,16,10,11}	{}	2018-09-28 05:50:00.004676
23666	{3,15,13,14}	{}	2018-09-28 06:50:00.004797
23669	{14,10,8,16}	{}	2018-09-28 07:35:00.004782
23674	{5,11,16,1}	{}	2018-09-28 08:50:00.004674
23678	{10,19,21,1}	{}	2018-09-28 09:50:00.004743
23682	{19,3,2,16}	{}	2018-09-28 10:50:00.004697
23685	{15,6,9,11}	{}	2018-09-28 11:35:00.004738
23690	{8,17,2,4}	{}	2018-09-28 12:50:00.004764
23693	{8,5,6,2}	{}	2018-09-28 13:35:00.004716
23697	{4,8,9,12}	{}	2018-09-28 14:35:00.004713
23701	{8,19,9,14}	{}	2018-09-28 15:35:00.004758
23705	{21,3,7,15}	{}	2018-09-28 16:35:00.004731
21892	{1,20,7,5}	{}	2018-09-09 19:20:00.004684
21895	{13,19,14,20}	{}	2018-09-09 20:05:00.005403
21899	{20,21,5,4}	{}	2018-09-09 21:05:00.00448
21903	{1,16,19,18}	{}	2018-09-09 22:05:00.00451
21912	{17,16,14,6}	{}	2018-09-10 00:20:00.004673
21913	{8,14,2,21}	{}	2018-09-10 00:35:00.004692
21914	{13,5,17,8}	{}	2018-09-10 00:50:00.004669
21915	{6,4,17,14}	{}	2018-09-10 01:05:00.005345
21916	{12,4,9,18}	{}	2018-09-10 01:20:00.004754
21917	{11,21,16,5}	{}	2018-09-10 01:35:00.004734
21918	{7,15,1,6}	{}	2018-09-10 01:50:00.004766
21919	{12,17,20,10}	{}	2018-09-10 02:05:00.004521
21920	{14,13,3,16}	{}	2018-09-10 02:20:00.004757
21921	{9,15,3,16}	{}	2018-09-10 02:35:00.004698
21922	{4,7,13,8}	{}	2018-09-10 02:50:00.004671
21923	{1,8,11,4}	{}	2018-09-10 03:05:00.004536
21924	{1,8,17,20}	{}	2018-09-10 03:20:00.004783
21925	{6,9,14,5}	{}	2018-09-10 03:35:00.004701
21926	{19,17,14,15}	{}	2018-09-10 03:50:00.004775
21927	{17,19,7,3}	{}	2018-09-10 04:05:00.004512
21928	{11,21,15,6}	{}	2018-09-10 04:20:00.004753
21929	{19,7,6,11}	{}	2018-09-10 04:35:00.004755
21930	{15,18,4,9}	{}	2018-09-10 04:50:00.004724
21931	{21,14,15,20}	{}	2018-09-10 05:05:00.005227
21932	{4,8,6,16}	{}	2018-09-10 05:20:00.004671
21933	{11,15,4,1}	{}	2018-09-10 05:35:00.0047
21934	{1,4,20,16}	{}	2018-09-10 05:50:00.004703
21935	{11,16,1,19}	{}	2018-09-10 06:05:00.004554
21936	{3,12,1,17}	{}	2018-09-10 06:20:00.004755
21937	{20,7,16,9}	{}	2018-09-10 06:35:00.004696
21938	{20,6,21,14}	{}	2018-09-10 06:50:00.004694
21939	{19,12,13,2}	{}	2018-09-10 07:05:00.005406
21940	{21,19,6,20}	{}	2018-09-10 07:20:00.004718
21941	{10,17,20,4}	{}	2018-09-10 07:35:00.0047
21942	{2,8,9,4}	{}	2018-09-10 07:50:00.00475
21943	{10,20,5,16}	{}	2018-09-10 08:05:00.00537
21944	{21,6,4,3}	{}	2018-09-10 08:20:00.004574
21945	{10,8,14,17}	{}	2018-09-10 08:35:00.004645
21946	{10,3,12,13}	{}	2018-09-10 08:50:00.004668
21947	{4,14,15,5}	{}	2018-09-10 09:05:00.004481
21948	{15,21,4,3}	{}	2018-09-10 09:20:00.004707
21949	{19,18,4,11}	{}	2018-09-10 09:35:00.004684
21950	{6,11,10,2}	{}	2018-09-10 09:50:00.004665
21951	{9,20,17,7}	{}	2018-09-10 10:05:00.004547
21952	{2,16,5,18}	{}	2018-09-10 10:20:00.004711
21953	{3,21,7,20}	{}	2018-09-10 10:35:00.004693
21954	{7,2,14,19}	{}	2018-09-10 10:50:00.004695
21955	{4,13,12,18}	{}	2018-09-10 11:05:00.005318
21956	{10,21,18,2}	{}	2018-09-10 11:20:00.00469
21957	{1,7,14,12}	{}	2018-09-10 11:35:00.004706
21958	{13,6,11,15}	{}	2018-09-10 11:50:00.004745
21959	{21,13,12,17}	{}	2018-09-10 12:05:00.004761
21960	{4,10,15,9}	{}	2018-09-10 12:20:00.0047
21961	{6,7,21,13}	{}	2018-09-10 12:35:00.004742
21962	{12,13,16,10}	{}	2018-09-10 12:50:00.004691
21963	{12,6,5,17}	{}	2018-09-10 13:05:00.005312
21964	{13,9,2,21}	{}	2018-09-10 13:20:00.004565
21965	{12,2,5,18}	{}	2018-09-10 13:35:00.004744
21966	{21,6,16,10}	{}	2018-09-10 13:50:00.004728
21967	{9,4,7,13}	{}	2018-09-10 14:05:00.004464
21968	{4,6,20,15}	{}	2018-09-10 14:20:00.004703
21969	{1,16,3,19}	{}	2018-09-10 14:35:00.004677
21970	{15,18,19,16}	{}	2018-09-10 14:50:00.004551
21971	{1,6,15,3}	{}	2018-09-10 15:05:00.004211
21972	{13,19,6,1}	{}	2018-09-10 15:20:00.0047
21973	{4,20,17,5}	{}	2018-09-10 15:35:00.004638
21974	{8,16,15,10}	{}	2018-09-10 15:50:00.004687
21975	{21,3,2,18}	{}	2018-09-10 16:05:00.00449
21976	{20,1,10,13}	{}	2018-09-10 16:20:00.004725
21977	{16,19,20,14}	{}	2018-09-10 16:35:00.004692
21978	{17,1,12,21}	{}	2018-09-10 16:50:00.004765
21979	{18,7,1,13}	{}	2018-09-10 17:05:00.005324
21980	{11,18,17,2}	{}	2018-09-10 17:20:00.004721
21981	{20,21,10,5}	{}	2018-09-10 17:35:00.004665
21982	{10,8,12,20}	{}	2018-09-10 17:50:00.004676
21983	{4,7,12,10}	{}	2018-09-10 18:05:00.004521
21984	{20,10,7,12}	{}	2018-09-10 18:20:00.004698
21985	{7,11,4,14}	{}	2018-09-10 18:35:00.004629
21990	{2,5,20,1}	{}	2018-09-10 19:50:00.00469
21993	{7,15,17,18}	{}	2018-09-10 20:35:00.004802
21997	{11,8,21,1}	{}	2018-09-10 21:35:00.004686
22001	{6,20,11,17}	{}	2018-09-10 22:35:00.004671
22006	{11,15,12,9}	{}	2018-09-10 23:50:00.004833
22009	{15,1,17,4}	{}	2018-09-11 00:35:00.00467
22014	{21,10,5,6}	{}	2018-09-11 01:50:00.004691
22018	{7,6,2,10}	{}	2018-09-11 02:50:00.00469
23631	{19,8,20,5}	{}	2018-09-27 22:05:00.004581
23636	{12,7,20,5}	{}	2018-09-27 23:20:00.00494
23639	{15,18,7,6}	{}	2018-09-28 00:05:00.005191
23660	{2,15,21,16}	{}	2018-09-28 05:20:00.004728
23664	{18,19,9,12}	{}	2018-09-28 06:20:00.004722
23667	{6,19,7,3}	{}	2018-09-28 07:05:00.005483
23684	{12,13,14,6}	{}	2018-09-28 11:20:00.004676
23687	{4,3,5,10}	{}	2018-09-28 12:05:00.005401
23708	{15,20,18,10}	{}	2018-09-28 17:20:00.004698
21986	{5,17,7,12}	{}	2018-09-10 18:50:00.004624
21989	{16,19,12,18}	{}	2018-09-10 19:35:00.004732
21994	{9,10,3,8}	{}	2018-09-10 20:50:00.004638
21998	{7,5,17,3}	{}	2018-09-10 21:50:00.004664
22002	{17,1,11,18}	{}	2018-09-10 22:50:00.004737
22005	{8,19,16,14}	{}	2018-09-10 23:35:00.004852
22010	{7,16,4,17}	{}	2018-09-11 00:50:00.004789
22013	{8,12,4,5}	{}	2018-09-11 01:35:00.004762
22017	{17,1,14,16}	{}	2018-09-11 02:35:00.004699
23643	{17,8,20,9}	{}	2018-09-28 01:05:00.00535
23647	{8,3,16,19}	{}	2018-09-28 02:05:00.004501
23651	{6,1,4,15}	{}	2018-09-28 03:05:00.00457
23655	{1,2,6,17}	{}	2018-09-28 04:05:00.004579
23668	{4,3,19,18}	{}	2018-09-28 07:20:00.004718
23671	{3,20,5,18}	{}	2018-09-28 08:05:00.005358
23675	{4,5,10,9}	{}	2018-09-28 09:05:00.004539
23679	{19,16,7,10}	{}	2018-09-28 10:05:00.00456
23688	{7,14,9,11}	{}	2018-09-28 12:20:00.004739
23691	{8,10,15,12}	{}	2018-09-28 13:05:00.005365
23695	{4,1,20,12}	{}	2018-09-28 14:05:00.004571
23699	{8,10,12,7}	{}	2018-09-28 15:05:00.00452
23703	{6,17,9,13}	{}	2018-09-28 16:05:00.00458
21987	{14,5,18,3}	{}	2018-09-10 19:05:00.005275
22004	{1,3,6,15}	{}	2018-09-10 23:20:00.004855
22007	{15,8,10,11}	{}	2018-09-11 00:05:00.00514
23709	{7,14,5,8}	{}	2018-09-28 17:50:00.006835
23710	{10,11,19,18}	{}	2018-09-28 18:05:00.005803
23711	{5,15,14,18}	{}	2018-09-28 18:20:00.006106
23712	{7,14,10,12}	{}	2018-09-28 18:35:00.004568
23713	{12,7,10,3}	{}	2018-09-28 18:50:00.004596
23734	{9,8,18,20}	{}	2018-09-29 00:05:00.005139
23735	{5,19,18,7}	{}	2018-09-29 00:20:00.004615
23736	{9,21,18,17}	{}	2018-09-29 00:35:00.004655
23737	{16,9,12,20}	{}	2018-09-29 00:50:00.004577
23762	{21,6,18,14}	{}	2018-09-29 07:05:00.005312
23763	{3,17,5,8}	{}	2018-09-29 07:20:00.004566
23764	{15,5,7,8}	{}	2018-09-29 07:35:00.004598
23765	{19,12,17,8}	{}	2018-09-29 07:50:00.004657
23778	{1,17,7,2}	{}	2018-09-29 11:05:00.005281
23779	{3,18,1,9}	{}	2018-09-29 11:20:00.004614
23780	{2,18,20,6}	{}	2018-09-29 11:35:00.004397
23781	{21,4,11,15}	{}	2018-09-29 11:50:00.004494
21988	{11,6,12,4}	{}	2018-09-10 19:20:00.004463
21991	{6,15,7,16}	{}	2018-09-10 20:05:00.005318
21995	{1,10,4,6}	{}	2018-09-10 21:05:00.004544
21999	{10,16,8,7}	{}	2018-09-10 22:05:00.004613
22008	{17,19,3,18}	{}	2018-09-11 00:20:00.004762
22011	{21,1,2,19}	{}	2018-09-11 01:05:00.005244
22015	{18,8,13,11}	{}	2018-09-11 02:05:00.004534
22019	{16,9,2,6}	{}	2018-09-11 03:05:00.004533
23714	{14,2,8,15}	{}	2018-09-28 19:05:00.005503
23715	{5,3,7,15}	{}	2018-09-28 19:20:00.004938
23716	{5,16,12,2}	{}	2018-09-28 19:35:00.004614
23717	{1,9,2,4}	{}	2018-09-28 19:50:00.004604
23718	{13,16,14,15}	{}	2018-09-28 20:05:00.005331
23730	{16,6,2,17}	{}	2018-09-28 23:05:00.005229
23731	{20,21,7,18}	{}	2018-09-28 23:20:00.004663
23732	{15,1,14,3}	{}	2018-09-28 23:35:00.004745
23733	{3,5,2,6}	{}	2018-09-28 23:50:00.004786
23782	{14,15,5,11}	{}	2018-09-29 12:05:00.005373
23783	{10,14,3,9}	{}	2018-09-29 12:20:00.004639
23784	{12,21,14,3}	{}	2018-09-29 12:35:00.004656
23785	{6,2,5,1}	{}	2018-09-29 12:50:00.004633
23810	{19,8,5,20}	{}	2018-09-29 19:05:00.00519
23811	{2,6,1,18}	{}	2018-09-29 19:20:00.004605
23812	{6,19,13,21}	{}	2018-09-29 19:35:00.004596
23813	{2,9,13,5}	{}	2018-09-29 19:50:00.004648
21992	{19,20,12,21}	{}	2018-09-10 20:20:00.004744
21996	{4,7,3,19}	{}	2018-09-10 21:20:00.004683
22000	{3,19,15,9}	{}	2018-09-10 22:20:00.004505
22003	{12,21,14,16}	{}	2018-09-10 23:05:00.005464
22012	{3,14,11,20}	{}	2018-09-11 01:20:00.004722
22016	{11,20,15,6}	{}	2018-09-11 02:20:00.004707
22020	{9,16,7,20}	{}	2018-09-11 03:20:00.004731
22021	{14,19,9,18}	{}	2018-09-11 03:35:00.004686
22022	{1,11,18,4}	{}	2018-09-11 03:50:00.004719
22023	{8,2,9,17}	{}	2018-09-11 04:05:00.004553
22024	{18,3,15,1}	{}	2018-09-11 04:20:00.004757
22025	{4,12,3,13}	{}	2018-09-11 04:35:00.004495
22026	{12,2,6,8}	{}	2018-09-11 04:50:00.00463
22027	{8,3,15,2}	{}	2018-09-11 05:05:00.005312
22028	{20,17,10,12}	{}	2018-09-11 05:20:00.004731
22029	{11,8,2,15}	{}	2018-09-11 05:35:00.004678
22030	{2,4,16,20}	{}	2018-09-11 05:50:00.004642
22031	{20,9,18,7}	{}	2018-09-11 06:05:00.004407
22032	{21,2,8,15}	{}	2018-09-11 06:20:00.004733
22033	{9,6,16,2}	{}	2018-09-11 06:35:00.004766
22034	{8,13,5,4}	{}	2018-09-11 06:50:00.004697
22035	{19,9,1,10}	{}	2018-09-11 07:05:00.005352
22036	{12,10,7,6}	{}	2018-09-11 07:20:00.004709
22037	{3,21,15,7}	{}	2018-09-11 07:35:00.004723
22038	{4,18,8,3}	{}	2018-09-11 07:50:00.004711
22039	{1,13,17,14}	{}	2018-09-11 08:05:00.005317
22040	{16,5,14,21}	{}	2018-09-11 08:20:00.004628
22041	{14,21,7,17}	{}	2018-09-11 08:35:00.004661
22042	{6,18,7,3}	{}	2018-09-11 08:50:00.004715
22043	{4,16,10,17}	{}	2018-09-11 09:05:00.004483
22044	{6,1,17,14}	{}	2018-09-11 09:20:00.004733
22045	{18,11,21,16}	{}	2018-09-11 09:35:00.004716
22046	{4,14,8,20}	{}	2018-09-11 09:50:00.004674
22047	{11,17,13,18}	{}	2018-09-11 10:05:00.004492
22048	{17,1,14,16}	{}	2018-09-11 10:20:00.004725
22049	{17,9,18,7}	{}	2018-09-11 10:35:00.00468
22050	{13,2,20,11}	{}	2018-09-11 10:50:00.004772
22051	{6,20,3,7}	{}	2018-09-11 11:05:00.005314
22052	{4,13,21,18}	{}	2018-09-11 11:20:00.00475
22053	{8,5,19,21}	{}	2018-09-11 11:35:00.004674
22054	{15,14,4,19}	{}	2018-09-11 11:50:00.004602
22055	{15,17,18,1}	{}	2018-09-11 12:05:00.005336
22056	{5,11,12,17}	{}	2018-09-11 12:20:00.004722
22057	{4,6,12,5}	{}	2018-09-11 12:35:00.004715
22058	{9,2,4,12}	{}	2018-09-11 12:50:00.004713
22059	{15,10,9,11}	{}	2018-09-11 13:05:00.005356
22060	{9,4,20,15}	{}	2018-09-11 13:20:00.004658
22061	{13,2,16,1}	{}	2018-09-11 13:35:00.004685
22062	{9,6,8,15}	{}	2018-09-11 13:50:00.004695
22063	{9,15,6,4}	{}	2018-09-11 14:05:00.004516
22064	{8,12,4,19}	{}	2018-09-11 14:20:00.004687
22065	{12,17,21,3}	{}	2018-09-11 14:35:00.004669
22066	{8,5,12,7}	{}	2018-09-11 14:50:00.004711
22067	{10,15,11,3}	{}	2018-09-11 15:05:00.004516
22068	{4,11,7,2}	{}	2018-09-11 15:20:00.004653
22069	{8,11,21,4}	{}	2018-09-11 15:35:00.004646
22070	{10,6,2,12}	{}	2018-09-11 15:50:00.004761
22071	{11,1,17,4}	{}	2018-09-11 16:05:00.004483
22072	{12,9,13,14}	{}	2018-09-11 16:20:00.004733
22073	{10,20,7,12}	{}	2018-09-11 16:35:00.004724
22074	{4,21,16,20}	{}	2018-09-11 16:50:00.004714
22075	{13,16,19,8}	{}	2018-09-11 17:05:00.005401
22076	{13,19,21,6}	{}	2018-09-11 17:20:00.004627
22077	{4,18,10,8}	{}	2018-09-11 17:35:00.00468
22078	{15,16,17,3}	{}	2018-09-11 17:50:00.0047
22079	{17,20,21,4}	{}	2018-09-11 18:05:00.004505
22080	{16,5,8,2}	{}	2018-09-11 18:20:00.004695
22081	{19,7,20,8}	{}	2018-09-11 18:35:00.004733
22082	{18,16,17,5}	{}	2018-09-11 18:50:00.004653
22083	{14,3,11,2}	{}	2018-09-11 19:05:00.005333
22084	{21,5,2,7}	{}	2018-09-11 19:20:00.00472
22085	{13,3,1,16}	{}	2018-09-11 19:35:00.004773
22086	{7,4,11,6}	{}	2018-09-11 19:50:00.004742
22087	{14,2,17,11}	{}	2018-09-11 20:05:00.005411
22088	{6,9,19,16}	{}	2018-09-11 20:20:00.00472
22089	{5,14,2,4}	{}	2018-09-11 20:35:00.00467
22090	{19,5,4,20}	{}	2018-09-11 20:50:00.004725
22091	{5,16,8,19}	{}	2018-09-11 21:05:00.004492
22095	{17,9,18,19}	{}	2018-09-11 22:05:00.004557
22100	{13,14,20,9}	{}	2018-09-11 23:20:00.004851
22104	{12,18,3,4}	{}	2018-09-12 00:20:00.004556
22107	{1,14,8,2}	{}	2018-09-12 01:05:00.005308
22111	{4,18,2,10}	{}	2018-09-12 02:05:00.004536
22115	{18,7,13,16}	{}	2018-09-12 03:05:00.0045
22119	{8,9,4,16}	{}	2018-09-12 04:05:00.00461
22132	{2,16,21,3}	{}	2018-09-12 07:20:00.004791
23719	{3,17,16,15}	{}	2018-09-28 20:20:00.004692
23720	{21,9,15,4}	{}	2018-09-28 20:35:00.004602
23721	{17,14,6,16}	{}	2018-09-28 20:50:00.004652
23722	{20,7,1,21}	{}	2018-09-28 21:05:00.004513
23723	{9,8,11,6}	{}	2018-09-28 21:20:00.00463
23724	{16,11,5,4}	{}	2018-09-28 21:35:00.004637
23725	{6,9,13,4}	{}	2018-09-28 21:50:00.004742
23726	{1,15,8,9}	{}	2018-09-28 22:05:00.00393
23727	{21,19,1,7}	{}	2018-09-28 22:20:00.004645
23728	{5,19,18,21}	{}	2018-09-28 22:35:00.004568
23729	{19,20,5,9}	{}	2018-09-28 22:50:00.004708
23754	{18,3,2,21}	{}	2018-09-29 05:05:00.005361
23755	{13,19,17,18}	{}	2018-09-29 05:20:00.004614
23756	{9,8,20,18}	{}	2018-09-29 05:35:00.00468
23757	{3,7,6,18}	{}	2018-09-29 05:50:00.004609
23758	{1,9,12,21}	{}	2018-09-29 06:05:00.004417
23759	{8,13,14,19}	{}	2018-09-29 06:20:00.004607
23760	{20,6,1,7}	{}	2018-09-29 06:35:00.004629
23761	{6,12,15,9}	{}	2018-09-29 06:50:00.004633
23786	{21,6,11,13}	{}	2018-09-29 13:05:00.005252
23787	{11,5,2,17}	{}	2018-09-29 13:20:00.004602
23788	{5,7,6,9}	{}	2018-09-29 13:35:00.004708
23789	{14,19,4,9}	{}	2018-09-29 13:50:00.004627
23790	{6,13,5,17}	{}	2018-09-29 14:05:00.004341
23791	{19,4,6,8}	{}	2018-09-29 14:20:00.004641
23792	{19,5,10,8}	{}	2018-09-29 14:35:00.004623
23793	{13,10,20,7}	{}	2018-09-29 14:50:00.004612
23794	{12,7,19,6}	{}	2018-09-29 15:05:00.004491
23795	{18,14,21,16}	{}	2018-09-29 15:20:00.004729
23796	{8,17,11,2}	{}	2018-09-29 15:35:00.004631
23797	{9,3,11,12}	{}	2018-09-29 15:50:00.00471
23798	{8,10,1,20}	{}	2018-09-29 16:05:00.004644
23799	{10,16,4,12}	{}	2018-09-29 16:20:00.004647
23800	{13,20,15,5}	{}	2018-09-29 16:35:00.00463
23801	{15,18,5,13}	{}	2018-09-29 16:50:00.004602
23814	{20,18,14,8}	{}	2018-09-29 20:05:00.00524
23815	{5,19,10,12}	{}	2018-09-29 20:20:00.004674
23816	{19,5,10,15}	{}	2018-09-29 20:35:00.004646
23817	{20,10,18,9}	{}	2018-09-29 20:50:00.004557
23818	{16,17,18,10}	{}	2018-09-29 21:05:00.004447
23819	{7,21,20,2}	{}	2018-09-29 21:20:00.004679
23820	{11,12,7,5}	{}	2018-09-29 21:35:00.004686
22092	{4,12,14,3}	{}	2018-09-11 21:20:00.004757
22096	{11,3,20,2}	{}	2018-09-11 22:20:00.004704
22099	{21,1,5,15}	{}	2018-09-11 23:05:00.005433
22108	{19,8,20,13}	{}	2018-09-12 01:20:00.004762
22112	{7,6,4,5}	{}	2018-09-12 02:20:00.004242
22116	{15,17,2,8}	{}	2018-09-12 03:20:00.004714
22120	{7,2,10,1}	{}	2018-09-12 04:20:00.004706
22123	{5,12,6,21}	{}	2018-09-12 05:05:00.005356
22127	{14,7,4,9}	{}	2018-09-12 06:05:00.00456
23738	{9,14,19,10}	{}	2018-09-29 01:05:00.005291
23739	{2,5,1,16}	{}	2018-09-29 01:20:00.004662
23740	{12,8,21,19}	{}	2018-09-29 01:35:00.004655
23741	{8,20,14,15}	{}	2018-09-29 01:50:00.004685
23742	{14,6,5,9}	{}	2018-09-29 02:05:00.004483
23743	{2,3,1,9}	{}	2018-09-29 02:20:00.004597
23744	{6,10,11,5}	{}	2018-09-29 02:35:00.00468
23745	{20,2,21,9}	{}	2018-09-29 02:50:00.004573
23746	{21,11,13,10}	{}	2018-09-29 03:05:00.004413
23747	{2,12,14,9}	{}	2018-09-29 03:20:00.004669
23748	{2,4,8,3}	{}	2018-09-29 03:35:00.004728
23749	{8,15,12,13}	{}	2018-09-29 03:50:00.004669
23750	{1,7,20,17}	{}	2018-09-29 04:05:00.004408
23751	{5,11,14,10}	{}	2018-09-29 04:20:00.005155
23752	{21,2,7,14}	{}	2018-09-29 04:35:00.004706
23753	{7,19,16,8}	{}	2018-09-29 04:50:00.004647
23766	{14,7,19,12}	{}	2018-09-29 08:05:00.005228
23767	{17,10,16,6}	{}	2018-09-29 08:20:00.004674
23768	{18,3,14,10}	{}	2018-09-29 08:35:00.004578
23769	{21,8,16,10}	{}	2018-09-29 08:50:00.004716
23770	{14,3,15,6}	{}	2018-09-29 09:05:00.004507
23771	{11,7,10,16}	{}	2018-09-29 09:20:00.004645
23772	{6,9,5,1}	{}	2018-09-29 09:35:00.004617
23773	{12,18,11,19}	{}	2018-09-29 09:50:00.004661
23774	{20,7,4,21}	{}	2018-09-29 10:05:00.004441
23775	{4,14,21,20}	{}	2018-09-29 10:20:00.004687
23776	{14,2,13,4}	{}	2018-09-29 10:35:00.004555
23777	{1,8,11,6}	{}	2018-09-29 10:50:00.004538
23802	{9,14,15,8}	{}	2018-09-29 17:05:00.005303
23803	{20,8,14,11}	{}	2018-09-29 17:20:00.004633
23804	{14,12,1,15}	{}	2018-09-29 17:35:00.004628
23805	{14,17,13,11}	{}	2018-09-29 17:50:00.004153
23806	{1,12,8,6}	{}	2018-09-29 18:05:00.004554
23807	{2,4,11,17}	{}	2018-09-29 18:20:00.004595
23808	{3,15,5,14}	{}	2018-09-29 18:35:00.004575
23809	{1,13,8,5}	{}	2018-09-29 18:50:00.00458
22093	{12,20,15,16}	{}	2018-09-11 21:35:00.004768
22097	{10,20,14,9}	{}	2018-09-11 22:35:00.004694
22102	{16,4,11,18}	{}	2018-09-11 23:50:00.00479
22105	{12,3,10,7}	{}	2018-09-12 00:35:00.00466
22110	{4,13,20,14}	{}	2018-09-12 01:50:00.004706
22114	{8,18,14,11}	{}	2018-09-12 02:50:00.004638
22118	{8,4,6,7}	{}	2018-09-12 03:50:00.004689
22122	{10,16,14,8}	{}	2018-09-12 04:50:00.004715
22125	{1,13,8,14}	{}	2018-09-12 05:35:00.004713
22129	{11,4,1,19}	{}	2018-09-12 06:35:00.004616
23821	{12,2,8,19}	{}	2018-09-29 21:50:00.004654
23822	{9,8,11,20}	{}	2018-09-29 22:05:00.004502
23823	{6,5,12,3}	{}	2018-09-29 22:20:00.004596
23824	{12,13,8,6}	{}	2018-09-29 22:35:00.004631
23825	{3,18,21,10}	{}	2018-09-29 22:50:00.00463
23850	{18,20,2,4}	{}	2018-09-30 05:05:00.005309
23851	{20,6,2,13}	{}	2018-09-30 05:20:00.004653
23852	{16,8,9,5}	{}	2018-09-30 05:35:00.004657
23853	{18,6,10,17}	{}	2018-09-30 05:50:00.004648
23854	{9,11,3,8}	{}	2018-09-30 06:05:00.004459
23855	{7,14,16,20}	{}	2018-09-30 06:20:00.004634
23856	{15,10,18,6}	{}	2018-09-30 06:35:00.004668
23857	{9,1,8,14}	{}	2018-09-30 06:50:00.004645
23882	{2,12,10,13}	{}	2018-09-30 13:05:00.005381
23883	{12,10,6,1}	{}	2018-09-30 13:20:00.004639
23884	{15,8,17,21}	{}	2018-09-30 13:35:00.004611
23885	{11,5,15,16}	{}	2018-09-30 13:50:00.004697
23886	{8,5,19,10}	{}	2018-09-30 14:05:00.004527
23887	{6,20,8,15}	{}	2018-09-30 14:20:00.004646
23888	{14,12,10,7}	{}	2018-09-30 14:35:00.004697
23889	{11,19,21,13}	{}	2018-09-30 14:50:00.004625
23890	{9,20,19,12}	{}	2018-09-30 15:05:00.004428
23891	{1,6,12,11}	{}	2018-09-30 15:20:00.00463
23892	{1,3,19,2}	{}	2018-09-30 15:35:00.004614
23893	{12,1,2,21}	{}	2018-09-30 15:50:00.004626
23894	{9,2,3,10}	{}	2018-09-30 16:05:00.004421
23895	{18,12,5,14}	{}	2018-09-30 16:20:00.004628
23896	{14,8,2,7}	{}	2018-09-30 16:35:00.004658
23897	{21,3,20,15}	{}	2018-09-30 16:50:00.004558
23910	{3,4,8,2}	{}	2018-09-30 20:05:00.005336
23911	{21,6,18,8}	{}	2018-09-30 20:20:00.004687
23912	{18,7,10,15}	{}	2018-09-30 20:35:00.00458
23913	{3,12,6,21}	{}	2018-09-30 20:50:00.004656
23914	{4,17,7,6}	{}	2018-09-30 21:05:00.004455
23915	{9,13,17,20}	{}	2018-09-30 21:20:00.004629
23916	{4,15,18,8}	{}	2018-09-30 21:35:00.004637
23917	{14,8,19,20}	{}	2018-09-30 21:50:00.004652
23918	{4,9,11,3}	{}	2018-09-30 22:05:00.004473
23919	{5,8,16,7}	{}	2018-09-30 22:20:00.004666
23920	{13,3,21,16}	{}	2018-09-30 22:35:00.004679
23921	{18,13,14,8}	{}	2018-09-30 22:50:00.004659
23946	{6,20,2,3}	{}	2018-10-01 05:05:00.005316
23947	{18,5,12,14}	{}	2018-10-01 05:20:00.00451
23948	{3,18,11,13}	{}	2018-10-01 05:35:00.004685
23949	{13,19,14,21}	{}	2018-10-01 05:50:00.004659
23950	{14,18,20,5}	{}	2018-10-01 06:05:00.004486
23951	{6,15,7,16}	{}	2018-10-01 06:20:00.004647
23952	{1,20,9,12}	{}	2018-10-01 06:35:00.004647
23953	{10,15,9,17}	{}	2018-10-01 06:50:00.004672
23978	{1,20,5,10}	{}	2018-10-01 13:05:00.005245
23979	{5,15,14,11}	{}	2018-10-01 13:20:00.00468
23980	{8,3,11,13}	{}	2018-10-01 13:35:00.004687
23981	{16,20,19,7}	{}	2018-10-01 13:50:00.004622
23982	{14,4,2,19}	{}	2018-10-01 14:05:00.004545
23983	{21,6,15,20}	{}	2018-10-01 14:20:00.004564
23984	{15,21,12,5}	{}	2018-10-01 14:35:00.004663
23985	{20,9,16,19}	{}	2018-10-01 14:50:00.004712
23986	{2,10,21,19}	{}	2018-10-01 15:05:00.004469
23987	{7,18,19,15}	{}	2018-10-01 15:20:00.004651
23988	{7,3,14,6}	{}	2018-10-01 15:35:00.004585
23989	{12,17,6,7}	{}	2018-10-01 15:50:00.004538
23990	{8,14,5,1}	{}	2018-10-01 16:05:00.004528
23991	{4,19,8,7}	{}	2018-10-01 16:20:00.004667
23992	{4,19,5,11}	{}	2018-10-01 16:35:00.004663
23993	{18,9,19,16}	{}	2018-10-01 16:50:00.004604
24006	{20,18,21,14}	{}	2018-10-01 20:05:00.005481
24019	{21,18,9,7}	{}	2018-10-01 23:20:00.004795
22094	{1,6,15,18}	{}	2018-09-11 21:50:00.004691
22098	{17,8,11,14}	{}	2018-09-11 22:50:00.004687
22101	{4,1,16,13}	{}	2018-09-11 23:35:00.00485
22106	{17,2,6,19}	{}	2018-09-12 00:50:00.004728
22109	{12,18,20,7}	{}	2018-09-12 01:35:00.004713
22113	{5,3,2,6}	{}	2018-09-12 02:35:00.004744
22117	{17,1,8,2}	{}	2018-09-12 03:35:00.004698
22121	{4,12,8,20}	{}	2018-09-12 04:35:00.004642
22126	{5,14,1,16}	{}	2018-09-12 05:50:00.004662
22130	{17,4,8,13}	{}	2018-09-12 06:50:00.004656
23826	{11,16,2,1}	{}	2018-09-29 23:05:00.005237
23827	{7,10,17,20}	{}	2018-09-29 23:20:00.004741
23828	{19,7,11,4}	{}	2018-09-29 23:35:00.004836
23829	{13,14,12,4}	{}	2018-09-29 23:50:00.004848
23830	{11,19,17,3}	{}	2018-09-30 00:05:00.005153
23858	{15,16,14,13}	{}	2018-09-30 07:05:00.005331
23859	{14,3,17,4}	{}	2018-09-30 07:20:00.004644
23860	{1,3,19,15}	{}	2018-09-30 07:35:00.004699
23861	{6,4,9,3}	{}	2018-09-30 07:50:00.004679
23874	{7,14,15,11}	{}	2018-09-30 11:05:00.005334
23875	{5,17,1,13}	{}	2018-09-30 11:20:00.004676
23876	{11,17,6,19}	{}	2018-09-30 11:35:00.004727
23877	{14,8,18,12}	{}	2018-09-30 11:50:00.004621
23926	{1,14,9,16}	{}	2018-10-01 00:05:00.005166
23927	{12,11,19,7}	{}	2018-10-01 00:20:00.004626
23928	{3,19,12,16}	{}	2018-10-01 00:35:00.004624
23929	{4,8,12,2}	{}	2018-10-01 00:50:00.004664
23954	{17,21,2,5}	{}	2018-10-01 07:05:00.00534
23955	{14,4,11,1}	{}	2018-10-01 07:20:00.004698
23956	{19,12,13,6}	{}	2018-10-01 07:35:00.004639
23957	{18,11,19,10}	{}	2018-10-01 07:50:00.00474
23970	{10,14,12,2}	{}	2018-10-01 11:05:00.00513
23971	{9,15,12,10}	{}	2018-10-01 11:20:00.004609
23972	{3,6,12,10}	{}	2018-10-01 11:35:00.004662
23973	{18,9,14,1}	{}	2018-10-01 11:50:00.004687
24021	{4,10,21,13}	{}	2018-10-01 23:50:00.004819
22103	{3,6,9,5}	{}	2018-09-12 00:05:00.005246
22124	{16,17,5,12}	{}	2018-09-12 05:20:00.00476
22128	{15,11,20,9}	{}	2018-09-12 06:20:00.004747
22131	{13,14,15,2}	{}	2018-09-12 07:05:00.005377
22133	{14,17,6,15}	{}	2018-09-12 07:35:00.004559
22134	{6,15,19,12}	{}	2018-09-12 07:50:00.004678
22135	{21,17,12,20}	{}	2018-09-12 08:05:00.005313
22136	{7,14,3,13}	{}	2018-09-12 08:20:00.004694
22137	{6,4,18,16}	{}	2018-09-12 08:35:00.004706
22138	{9,14,13,15}	{}	2018-09-12 08:50:00.004714
22139	{11,8,19,4}	{}	2018-09-12 09:05:00.004491
22140	{7,13,1,14}	{}	2018-09-12 09:20:00.004682
22141	{8,12,18,15}	{}	2018-09-12 09:35:00.003885
22142	{18,9,6,8}	{}	2018-09-12 09:50:00.004654
22143	{14,16,3,6}	{}	2018-09-12 10:05:00.004503
22144	{14,1,19,15}	{}	2018-09-12 10:20:00.004656
22145	{21,12,8,5}	{}	2018-09-12 10:35:00.00471
22146	{15,2,4,16}	{}	2018-09-12 10:50:00.004729
22147	{18,5,6,7}	{}	2018-09-12 11:05:00.005322
22148	{18,12,1,7}	{}	2018-09-12 11:20:00.004712
22149	{8,17,15,13}	{}	2018-09-12 11:35:00.00474
22150	{15,18,19,5}	{}	2018-09-12 11:50:00.004637
22151	{12,14,10,16}	{}	2018-09-12 12:05:00.005378
22152	{15,4,21,16}	{}	2018-09-12 12:20:00.004757
22153	{17,16,14,12}	{}	2018-09-12 12:35:00.004718
22154	{3,1,14,13}	{}	2018-09-12 12:50:00.004722
22155	{17,9,3,18}	{}	2018-09-12 13:05:00.005354
22156	{14,18,10,2}	{}	2018-09-12 13:20:00.004714
22157	{20,13,8,3}	{}	2018-09-12 13:35:00.004708
22158	{3,5,12,4}	{}	2018-09-12 13:50:00.004684
22159	{14,17,11,6}	{}	2018-09-12 14:05:00.00451
22160	{14,21,2,5}	{}	2018-09-12 14:20:00.004687
22161	{6,8,5,1}	{}	2018-09-12 14:35:00.004686
22162	{9,13,2,12}	{}	2018-09-12 14:50:00.004401
22163	{11,10,13,2}	{}	2018-09-12 15:05:00.00448
22164	{5,2,14,6}	{}	2018-09-12 15:20:00.004677
22165	{13,2,14,21}	{}	2018-09-12 15:35:00.004732
22166	{9,7,16,18}	{}	2018-09-12 15:50:00.00464
22167	{8,7,2,19}	{}	2018-09-12 16:05:00.004444
22168	{3,7,1,8}	{}	2018-09-12 16:20:00.004696
22169	{10,4,16,14}	{}	2018-09-12 16:35:00.004656
22170	{19,20,1,13}	{}	2018-09-12 16:50:00.004745
22171	{11,16,4,10}	{}	2018-09-12 17:05:00.005329
22172	{17,3,21,6}	{}	2018-09-12 17:20:00.004656
22173	{15,18,13,9}	{}	2018-09-12 17:35:00.004715
22174	{6,10,5,16}	{}	2018-09-12 17:50:00.004623
22175	{4,18,17,2}	{}	2018-09-12 18:05:00.004524
22176	{11,10,2,9}	{}	2018-09-12 18:20:00.004759
22177	{4,10,2,7}	{}	2018-09-12 18:35:00.004749
22178	{16,3,11,13}	{}	2018-09-12 18:50:00.004723
22179	{3,19,21,1}	{}	2018-09-12 19:05:00.005325
22180	{9,18,8,7}	{}	2018-09-12 19:20:00.004688
22181	{11,2,7,3}	{}	2018-09-12 19:35:00.004783
22182	{5,13,19,4}	{}	2018-09-12 19:50:00.004775
22183	{10,14,7,2}	{}	2018-09-12 20:05:00.005326
22184	{17,10,7,4}	{}	2018-09-12 20:20:00.004711
22185	{2,19,16,12}	{}	2018-09-12 20:35:00.004677
22186	{6,11,10,9}	{}	2018-09-12 20:50:00.004676
22187	{9,19,2,18}	{}	2018-09-12 21:05:00.004557
22188	{18,7,1,16}	{}	2018-09-12 21:20:00.004761
22189	{19,4,20,9}	{}	2018-09-12 21:35:00.004723
22190	{1,3,12,19}	{}	2018-09-12 21:50:00.004682
22191	{3,13,7,20}	{}	2018-09-12 22:05:00.00455
22192	{1,20,14,3}	{}	2018-09-12 22:20:00.004704
22193	{21,14,18,19}	{}	2018-09-12 22:35:00.004695
22194	{5,2,17,4}	{}	2018-09-12 22:50:00.004673
22195	{4,11,13,1}	{}	2018-09-12 23:05:00.004655
22196	{3,5,16,20}	{}	2018-09-12 23:20:00.004838
22197	{19,14,9,2}	{}	2018-09-12 23:35:00.004826
22198	{9,8,18,14}	{}	2018-09-12 23:50:00.004876
22199	{2,11,19,21}	{}	2018-09-13 00:05:00.005186
22200	{2,17,6,10}	{}	2018-09-13 00:20:00.004658
22201	{16,11,12,17}	{}	2018-09-13 00:35:00.004726
22202	{19,12,21,10}	{}	2018-09-13 00:50:00.00474
22203	{10,5,8,1}	{}	2018-09-13 01:05:00.005422
22204	{2,6,8,20}	{}	2018-09-13 01:20:00.004669
22205	{20,8,3,14}	{}	2018-09-13 01:35:00.004737
22206	{8,17,4,19}	{}	2018-09-13 01:50:00.004681
22210	{8,15,13,9}	{}	2018-09-13 02:50:00.004692
22214	{10,3,7,8}	{}	2018-09-13 03:50:00.004542
22218	{7,18,1,3}	{}	2018-09-13 04:50:00.004653
22221	{4,11,15,21}	{}	2018-09-13 05:35:00.004673
22225	{6,16,17,20}	{}	2018-09-13 06:35:00.004711
22230	{20,19,6,9}	{}	2018-09-13 07:50:00.004607
22233	{2,6,11,15}	{}	2018-09-13 08:35:00.00472
22237	{19,14,21,11}	{}	2018-09-13 09:35:00.004734
22241	{20,17,16,8}	{}	2018-09-13 10:35:00.004744
22246	{4,1,10,13}	{}	2018-09-13 11:50:00.004681
22249	{4,15,9,1}	{}	2018-09-13 12:35:00.004703
23831	{5,14,21,17}	{}	2018-09-30 00:20:00.004664
23832	{19,11,9,16}	{}	2018-09-30 00:35:00.00473
23833	{18,8,21,13}	{}	2018-09-30 00:50:00.004731
23878	{14,5,15,1}	{}	2018-09-30 12:05:00.005295
23879	{17,8,18,16}	{}	2018-09-30 12:20:00.004705
23880	{5,14,18,15}	{}	2018-09-30 12:35:00.004578
23881	{3,13,11,18}	{}	2018-09-30 12:50:00.00461
23906	{15,14,18,17}	{}	2018-09-30 19:05:00.005358
23907	{11,15,7,18}	{}	2018-09-30 19:20:00.004732
23908	{3,18,7,12}	{}	2018-09-30 19:35:00.004686
23909	{10,5,21,4}	{}	2018-09-30 19:50:00.004533
23922	{1,19,20,13}	{}	2018-09-30 23:05:00.005344
23923	{8,5,16,17}	{}	2018-09-30 23:20:00.004811
23924	{19,3,7,5}	{}	2018-09-30 23:35:00.004922
23925	{8,10,3,20}	{}	2018-09-30 23:50:00.004839
23974	{13,10,21,7}	{}	2018-10-01 12:05:00.005284
23975	{6,14,16,20}	{}	2018-10-01 12:20:00.004629
23976	{10,18,3,8}	{}	2018-10-01 12:35:00.004572
23977	{13,7,12,5}	{}	2018-10-01 12:50:00.00466
24002	{21,7,18,17}	{}	2018-10-01 19:05:00.00532
24003	{2,21,8,9}	{}	2018-10-01 19:20:00.00466
24004	{11,9,16,1}	{}	2018-10-01 19:35:00.004559
24005	{2,10,12,15}	{}	2018-10-01 19:50:00.004644
24007	{20,1,2,10}	{}	2018-10-01 20:20:00.00479
24008	{19,18,14,3}	{}	2018-10-01 20:35:00.004633
24009	{3,18,10,14}	{}	2018-10-01 20:50:00.004746
24010	{9,20,7,2}	{}	2018-10-01 21:05:00.004557
24011	{13,15,16,17}	{}	2018-10-01 21:20:00.004801
24012	{21,5,17,8}	{}	2018-10-01 21:35:00.004715
24013	{2,6,9,4}	{}	2018-10-01 21:50:00.004697
24014	{8,12,1,4}	{}	2018-10-01 22:05:00.004307
24015	{13,14,21,8}	{}	2018-10-01 22:20:00.004657
24016	{20,11,3,1}	{}	2018-10-01 22:35:00.00465
24017	{17,15,13,10}	{}	2018-10-01 22:50:00.004606
24020	{9,20,11,16}	{}	2018-10-01 23:35:00.004847
22207	{18,2,1,7}	{}	2018-09-13 02:05:00.0045
22211	{18,5,14,20}	{}	2018-09-13 03:05:00.004558
22215	{20,16,6,14}	{}	2018-09-13 04:05:00.004512
22228	{13,18,20,7}	{}	2018-09-13 07:20:00.004601
22231	{9,15,5,10}	{}	2018-09-13 08:05:00.005324
22235	{4,19,2,21}	{}	2018-09-13 09:05:00.004552
22239	{8,11,6,1}	{}	2018-09-13 10:05:00.004485
22248	{4,18,5,7}	{}	2018-09-13 12:20:00.004707
23834	{3,18,21,5}	{}	2018-09-30 01:05:00.005246
23835	{16,3,20,21}	{}	2018-09-30 01:20:00.004663
23836	{21,11,15,6}	{}	2018-09-30 01:35:00.004672
23837	{4,11,20,6}	{}	2018-09-30 01:50:00.00464
23838	{1,20,8,21}	{}	2018-09-30 02:05:00.004477
23839	{13,16,8,19}	{}	2018-09-30 02:20:00.004652
23840	{10,5,21,4}	{}	2018-09-30 02:35:00.004677
23841	{4,16,8,1}	{}	2018-09-30 02:50:00.00462
23842	{17,6,9,21}	{}	2018-09-30 03:05:00.004511
23843	{1,17,16,11}	{}	2018-09-30 03:20:00.004676
23844	{2,12,15,19}	{}	2018-09-30 03:35:00.004656
23845	{12,20,4,7}	{}	2018-09-30 03:50:00.004694
23846	{17,21,12,3}	{}	2018-09-30 04:05:00.004471
23847	{13,20,1,9}	{}	2018-09-30 04:20:00.004639
23848	{12,10,4,9}	{}	2018-09-30 04:35:00.004623
23849	{9,10,13,14}	{}	2018-09-30 04:50:00.004623
23862	{20,11,21,13}	{}	2018-09-30 08:05:00.00535
23863	{14,15,1,5}	{}	2018-09-30 08:20:00.004212
23864	{13,19,9,15}	{}	2018-09-30 08:35:00.004652
23865	{5,19,14,3}	{}	2018-09-30 08:50:00.004662
23866	{4,9,2,21}	{}	2018-09-30 09:05:00.004496
23867	{17,21,14,7}	{}	2018-09-30 09:20:00.004699
23868	{6,14,17,1}	{}	2018-09-30 09:35:00.004615
23869	{18,14,16,19}	{}	2018-09-30 09:50:00.004588
23870	{15,13,14,17}	{}	2018-09-30 10:05:00.004417
23871	{10,1,15,20}	{}	2018-09-30 10:20:00.004662
23872	{7,21,14,8}	{}	2018-09-30 10:35:00.00467
23873	{20,5,14,4}	{}	2018-09-30 10:50:00.004626
23898	{13,12,3,15}	{}	2018-09-30 17:05:00.005305
23899	{4,19,14,15}	{}	2018-09-30 17:20:00.004747
23900	{16,7,15,20}	{}	2018-09-30 17:35:00.00472
23901	{1,5,2,10}	{}	2018-09-30 17:50:00.004469
23902	{18,20,3,14}	{}	2018-09-30 18:05:00.00445
23903	{17,5,12,21}	{}	2018-09-30 18:20:00.004687
23904	{18,17,1,16}	{}	2018-09-30 18:35:00.004583
23905	{13,18,19,5}	{}	2018-09-30 18:50:00.004402
23930	{19,12,1,20}	{}	2018-10-01 01:05:00.004667
23931	{5,15,2,19}	{}	2018-10-01 01:20:00.004655
23932	{14,17,7,11}	{}	2018-10-01 01:35:00.004629
23933	{16,6,4,7}	{}	2018-10-01 01:50:00.004712
23934	{7,11,16,15}	{}	2018-10-01 02:05:00.004412
23935	{2,9,5,6}	{}	2018-10-01 02:20:00.004642
23936	{14,19,4,5}	{}	2018-10-01 02:35:00.00455
23937	{5,2,9,10}	{}	2018-10-01 02:50:00.004679
23938	{5,4,19,13}	{}	2018-10-01 03:05:00.004517
23939	{3,8,21,16}	{}	2018-10-01 03:20:00.004695
23940	{9,16,7,12}	{}	2018-10-01 03:35:00.004597
23941	{13,11,6,1}	{}	2018-10-01 03:50:00.004681
23942	{7,3,5,12}	{}	2018-10-01 04:05:00.004517
23943	{12,20,3,21}	{}	2018-10-01 04:20:00.004656
23944	{17,13,18,2}	{}	2018-10-01 04:35:00.004522
23945	{1,5,6,18}	{}	2018-10-01 04:50:00.004642
23958	{19,6,12,18}	{}	2018-10-01 08:05:00.005379
23959	{1,19,17,11}	{}	2018-10-01 08:20:00.004671
23960	{15,19,9,5}	{}	2018-10-01 08:35:00.004618
23961	{7,10,12,20}	{}	2018-10-01 08:50:00.004649
23962	{14,21,19,4}	{}	2018-10-01 09:05:00.004374
23963	{3,18,12,19}	{}	2018-10-01 09:20:00.004645
23964	{6,7,3,16}	{}	2018-10-01 09:35:00.004661
23965	{15,9,21,7}	{}	2018-10-01 09:50:00.004658
23966	{19,1,8,15}	{}	2018-10-01 10:05:00.004432
23967	{18,14,15,4}	{}	2018-10-01 10:20:00.004767
23968	{12,18,15,3}	{}	2018-10-01 10:35:00.004691
23969	{3,16,10,17}	{}	2018-10-01 10:50:00.004539
23994	{13,3,15,1}	{}	2018-10-01 17:05:00.005238
23995	{12,9,4,5}	{}	2018-10-01 17:20:00.004671
23996	{4,13,18,3}	{}	2018-10-01 17:35:00.004704
23997	{1,2,20,5}	{}	2018-10-01 17:50:00.004642
23998	{3,10,16,21}	{}	2018-10-01 18:05:00.00437
22208	{2,16,3,21}	{}	2018-09-13 02:20:00.004699
22212	{14,2,10,1}	{}	2018-09-13 03:20:00.004698
22216	{13,18,16,3}	{}	2018-09-13 04:20:00.004687
22219	{1,19,4,17}	{}	2018-09-13 05:05:00.005272
22223	{21,13,11,5}	{}	2018-09-13 06:05:00.004541
22232	{14,10,4,8}	{}	2018-09-13 08:20:00.004713
22236	{16,18,5,12}	{}	2018-09-13 09:20:00.004758
22240	{21,11,8,17}	{}	2018-09-13 10:20:00.004686
22243	{6,9,10,19}	{}	2018-09-13 11:05:00.005342
23999	{20,4,18,21}	{}	2018-10-01 18:20:00.004695
24000	{5,15,1,18}	{}	2018-10-01 18:35:00.0047
24001	{11,16,7,8}	{}	2018-10-01 18:50:00.004624
24023	{13,6,20,8}	{}	2018-10-02 00:20:00.004632
22209	{6,8,3,21}	{}	2018-09-13 02:35:00.004734
22213	{4,18,7,10}	{}	2018-09-13 03:35:00.004616
22217	{1,5,21,6}	{}	2018-09-13 04:35:00.004696
22222	{13,1,9,20}	{}	2018-09-13 05:50:00.004742
22226	{20,15,3,1}	{}	2018-09-13 06:50:00.004729
22229	{8,18,13,11}	{}	2018-09-13 07:35:00.004722
22234	{19,12,18,14}	{}	2018-09-13 08:50:00.004695
22238	{19,9,5,12}	{}	2018-09-13 09:50:00.004727
22242	{7,10,13,20}	{}	2018-09-13 10:50:00.004692
22245	{14,12,17,6}	{}	2018-09-13 11:35:00.004719
22250	{10,7,16,6}	{}	2018-09-13 12:50:00.004693
24018	{17,20,18,21}	{}	2018-10-01 23:05:00.005356
24022	{20,5,19,15}	{}	2018-10-02 00:05:00.005154
22220	{14,19,9,13}	{}	2018-09-13 05:20:00.004661
22224	{10,3,1,8}	{}	2018-09-13 06:20:00.004741
22227	{8,17,3,10}	{}	2018-09-13 07:05:00.005317
22244	{2,5,11,4}	{}	2018-09-13 11:20:00.004719
22247	{6,20,4,12}	{}	2018-09-13 12:05:00.005254
22251	{20,3,1,15}	{}	2018-09-13 13:05:00.005275
22252	{17,2,4,5}	{}	2018-09-13 13:20:00.004762
22253	{5,19,8,18}	{}	2018-09-13 13:35:00.004703
22254	{14,2,1,18}	{}	2018-09-13 13:50:00.004788
22255	{5,21,10,11}	{}	2018-09-13 14:05:00.004488
22256	{11,10,3,8}	{}	2018-09-13 14:20:00.004646
22257	{13,5,15,10}	{}	2018-09-13 14:35:00.004707
22258	{13,16,17,8}	{}	2018-09-13 14:50:00.004664
22259	{10,9,21,13}	{}	2018-09-13 15:05:00.004557
22260	{12,4,15,13}	{}	2018-09-13 15:20:00.004787
22261	{10,21,4,11}	{}	2018-09-13 15:35:00.00477
22262	{16,21,7,11}	{}	2018-09-13 15:50:00.004716
22263	{4,11,13,12}	{}	2018-09-13 16:05:00.00456
22264	{12,21,10,19}	{}	2018-09-13 16:20:00.004724
22265	{14,9,7,12}	{}	2018-09-13 16:35:00.004246
22266	{4,13,17,15}	{}	2018-09-13 16:50:00.004715
22267	{9,16,4,6}	{}	2018-09-13 17:05:00.005344
22268	{20,17,7,12}	{}	2018-09-13 17:20:00.004736
22269	{1,7,21,15}	{}	2018-09-13 17:35:00.00468
22270	{10,9,14,7}	{}	2018-09-13 17:50:00.004673
22271	{1,9,13,15}	{}	2018-09-13 18:05:00.004547
22272	{16,15,7,1}	{}	2018-09-13 18:20:00.00466
22273	{4,8,12,6}	{}	2018-09-13 18:35:00.004705
22274	{2,16,18,8}	{}	2018-09-13 18:50:00.00469
22275	{15,6,3,21}	{}	2018-09-13 19:05:00.005384
22276	{16,17,9,10}	{}	2018-09-13 19:20:00.004698
22277	{15,3,6,16}	{}	2018-09-13 19:35:00.004612
22278	{2,3,8,19}	{}	2018-09-13 19:50:00.004709
22279	{1,2,21,18}	{}	2018-09-13 20:05:00.005242
22280	{16,6,10,2}	{}	2018-09-13 20:20:00.004671
22281	{4,13,5,21}	{}	2018-09-13 20:35:00.004652
22282	{5,15,18,10}	{}	2018-09-13 20:50:00.00469
22283	{19,10,4,12}	{}	2018-09-13 21:05:00.004423
22284	{2,3,8,9}	{}	2018-09-13 21:20:00.004748
22285	{9,14,19,10}	{}	2018-09-13 21:35:00.004745
22286	{13,12,9,6}	{}	2018-09-13 21:50:00.004666
22287	{15,18,20,8}	{}	2018-09-13 22:05:00.004523
22288	{1,13,5,7}	{}	2018-09-13 22:20:00.004711
22289	{7,15,2,5}	{}	2018-09-13 22:35:00.004705
22290	{2,12,10,20}	{}	2018-09-13 22:50:00.004638
22291	{1,7,21,8}	{}	2018-09-13 23:05:00.0054
22292	{13,7,17,4}	{}	2018-09-13 23:20:00.004828
22293	{8,7,9,15}	{}	2018-09-13 23:35:00.004786
22294	{5,10,16,7}	{}	2018-09-13 23:50:00.00396
22295	{6,8,7,15}	{}	2018-09-14 00:05:00.005151
22296	{5,10,8,6}	{}	2018-09-14 00:20:00.004712
22297	{8,7,17,6}	{}	2018-09-14 00:35:00.004735
22298	{3,12,18,6}	{}	2018-09-14 00:50:00.004799
22299	{19,8,17,4}	{}	2018-09-14 01:05:00.005352
22300	{16,9,17,11}	{}	2018-09-14 01:20:00.004719
22301	{8,11,1,17}	{}	2018-09-14 01:35:00.004739
22302	{15,19,20,10}	{}	2018-09-14 01:50:00.004792
22303	{6,18,8,15}	{}	2018-09-14 02:05:00.004432
22304	{5,10,9,8}	{}	2018-09-14 02:20:00.004825
22305	{19,13,4,3}	{}	2018-09-14 02:35:00.004753
22306	{5,14,15,3}	{}	2018-09-14 02:50:00.004721
22307	{4,18,16,10}	{}	2018-09-14 03:05:00.004512
22308	{10,7,21,19}	{}	2018-09-14 03:20:00.00468
22309	{4,10,20,2}	{}	2018-09-14 03:35:00.004726
22310	{20,17,11,10}	{}	2018-09-14 03:50:00.004755
22311	{12,13,16,20}	{}	2018-09-14 04:05:00.004056
22312	{8,21,12,9}	{}	2018-09-14 04:20:00.004689
22313	{8,1,11,21}	{}	2018-09-14 04:35:00.004712
22314	{8,17,6,18}	{}	2018-09-14 04:50:00.004651
22315	{10,14,20,4}	{}	2018-09-14 05:05:00.005368
22316	{6,13,19,17}	{}	2018-09-14 05:20:00.004829
22317	{1,19,7,3}	{}	2018-09-14 05:35:00.00473
22318	{13,6,10,2}	{}	2018-09-14 05:50:00.004661
22319	{20,19,10,9}	{}	2018-09-14 06:05:00.004523
22320	{15,17,6,20}	{}	2018-09-14 06:20:00.00471
22321	{5,1,19,8}	{}	2018-09-14 06:35:00.004756
22322	{14,2,9,4}	{}	2018-09-14 06:50:00.004716
22323	{7,8,18,19}	{}	2018-09-14 07:05:00.005275
22340	{17,20,18,9}	{}	2018-09-14 11:20:00.004717
22343	{3,7,15,16}	{}	2018-09-14 12:05:00.005408
22364	{20,21,9,1}	{}	2018-09-14 17:20:00.004726
22368	{21,10,9,12}	{}	2018-09-14 18:20:00.004712
22371	{17,13,1,5}	{}	2018-09-14 19:05:00.005319
24024	{12,10,15,13}	{}	2018-10-02 00:35:00.004678
24029	{2,11,17,14}	{}	2018-10-02 01:50:00.004649
24033	{14,17,1,20}	{}	2018-10-02 02:50:00.004703
24037	{11,7,6,21}	{}	2018-10-02 03:50:00.004693
24041	{12,1,20,16}	{}	2018-10-02 04:50:00.004675
24043	{14,21,3,6}	{}	2018-10-02 05:20:00.004704
24047	{20,11,4,10}	{}	2018-10-02 06:20:00.004649
24050	{5,1,3,18}	{}	2018-10-02 07:05:00.005229
24066	{2,5,14,17}	{}	2018-10-02 11:05:00.00526
24075	{8,15,4,14}	{}	2018-10-02 13:20:00.004696
24079	{16,12,5,15}	{}	2018-10-02 14:20:00.004584
24083	{11,6,19,20}	{}	2018-10-02 15:20:00.004667
24087	{5,4,17,13}	{}	2018-10-02 16:20:00.004659
24090	{21,2,19,5}	{}	2018-10-02 17:05:00.005328
24094	{4,18,15,7}	{}	2018-10-02 18:05:00.004536
24103	{14,21,6,5}	{}	2018-10-02 20:20:00.004687
24107	{4,10,5,13}	{}	2018-10-02 21:20:00.004601
24111	{19,3,14,1}	{}	2018-10-02 22:20:00.004696
24114	{9,13,11,21}	{}	2018-10-02 23:05:00.005336
24123	{10,11,16,18}	{}	2018-10-03 01:20:00.004732
24127	{16,3,13,14}	{}	2018-10-03 02:20:00.00461
24131	{1,6,4,7}	{}	2018-10-03 03:20:00.00466
24135	{3,7,2,9}	{}	2018-10-03 04:20:00.004556
24138	{7,2,6,17}	{}	2018-10-03 05:05:00.00526
24142	{3,19,2,20}	{}	2018-10-03 06:05:00.004453
24151	{5,4,17,13}	{}	2018-10-03 08:20:00.004708
24155	{4,5,18,3}	{}	2018-10-03 09:20:00.004737
24159	{8,12,11,18}	{}	2018-10-03 10:20:00.004711
24162	{6,15,2,4}	{}	2018-10-03 11:05:00.005328
24171	{2,10,7,19}	{}	2018-10-03 13:20:00.004654
24175	{16,3,20,14}	{}	2018-10-03 14:20:00.004703
24179	{10,18,3,13}	{}	2018-10-03 15:20:00.004581
24183	{19,16,20,9}	{}	2018-10-03 16:20:00.004654
24186	{11,12,10,17}	{}	2018-10-03 17:05:00.005331
24190	{17,12,2,18}	{}	2018-10-03 18:05:00.004578
24199	{21,8,20,9}	{}	2018-10-03 20:20:00.004697
24203	{7,19,18,11}	{}	2018-10-03 21:20:00.004614
24207	{2,8,15,14}	{}	2018-10-03 22:20:00.00465
24210	{17,21,19,2}	{}	2018-10-03 23:05:00.005359
24219	{16,21,12,14}	{}	2018-10-04 01:20:00.00459
24223	{18,10,5,2}	{}	2018-10-04 02:20:00.004475
24227	{20,12,17,13}	{}	2018-10-04 03:20:00.004744
24231	{18,16,11,13}	{}	2018-10-04 04:20:00.004709
24234	{19,4,17,3}	{}	2018-10-04 05:05:00.005147
22324	{20,14,6,13}	{}	2018-09-14 07:20:00.004649
22327	{5,15,17,16}	{}	2018-09-14 08:05:00.005387
22331	{10,2,13,21}	{}	2018-09-14 09:05:00.004526
22335	{16,10,19,11}	{}	2018-09-14 10:05:00.004522
22344	{6,5,2,19}	{}	2018-09-14 12:20:00.004733
22347	{4,21,16,19}	{}	2018-09-14 13:05:00.005312
22351	{4,2,8,15}	{}	2018-09-14 14:05:00.004347
22355	{8,3,5,14}	{}	2018-09-14 15:05:00.004435
22359	{3,13,11,14}	{}	2018-09-14 16:05:00.004344
22372	{10,11,21,17}	{}	2018-09-14 19:20:00.00461
24025	{7,16,1,20}	{}	2018-10-02 00:50:00.004655
24028	{9,1,20,7}	{}	2018-10-02 01:35:00.004551
24032	{3,21,2,7}	{}	2018-10-02 02:35:00.004709
24036	{9,16,3,15}	{}	2018-10-02 03:35:00.004704
24040	{10,7,2,3}	{}	2018-10-02 04:35:00.00462
24044	{16,17,9,15}	{}	2018-10-02 05:35:00.004625
24048	{21,20,13,10}	{}	2018-10-02 06:35:00.004566
24053	{16,9,17,3}	{}	2018-10-02 07:50:00.00466
24055	{4,8,3,19}	{}	2018-10-02 08:20:00.004654
24059	{8,5,21,3}	{}	2018-10-02 09:20:00.004622
24063	{7,5,8,12}	{}	2018-10-02 10:20:00.004625
24069	{8,1,21,17}	{}	2018-10-02 11:50:00.004655
24072	{3,7,20,2}	{}	2018-10-02 12:35:00.004495
24077	{18,17,2,4}	{}	2018-10-02 13:50:00.004608
24081	{20,14,8,15}	{}	2018-10-02 14:50:00.004423
24085	{1,9,5,18}	{}	2018-10-02 15:50:00.004686
24089	{19,16,15,20}	{}	2018-10-02 16:50:00.004692
24092	{17,8,5,7}	{}	2018-10-02 17:35:00.004691
24096	{18,15,4,7}	{}	2018-10-02 18:35:00.004677
24101	{15,5,12,14}	{}	2018-10-02 19:50:00.004587
24104	{10,9,11,14}	{}	2018-10-02 20:35:00.004635
24108	{5,9,2,3}	{}	2018-10-02 21:35:00.00465
24112	{16,15,7,3}	{}	2018-10-02 22:35:00.004643
24117	{14,2,15,4}	{}	2018-10-02 23:50:00.004692
24120	{1,20,6,19}	{}	2018-10-03 00:35:00.004667
24125	{11,6,3,8}	{}	2018-10-03 01:50:00.004616
24129	{10,4,17,1}	{}	2018-10-03 02:50:00.004623
24133	{7,2,16,4}	{}	2018-10-03 03:50:00.004734
24137	{15,7,19,12}	{}	2018-10-03 04:50:00.004732
24140	{13,12,10,7}	{}	2018-10-03 05:35:00.004715
24144	{14,4,6,11}	{}	2018-10-03 06:35:00.004731
24149	{2,21,18,19}	{}	2018-10-03 07:50:00.004663
24152	{7,15,16,4}	{}	2018-10-03 08:35:00.004077
24156	{7,16,1,17}	{}	2018-10-03 09:35:00.004717
24160	{3,18,4,2}	{}	2018-10-03 10:35:00.004673
24165	{6,1,12,8}	{}	2018-10-03 11:50:00.004707
24168	{19,14,15,18}	{}	2018-10-03 12:35:00.004688
24173	{13,8,18,6}	{}	2018-10-03 13:50:00.004489
24177	{17,21,8,19}	{}	2018-10-03 14:50:00.004714
24181	{21,7,1,12}	{}	2018-10-03 15:50:00.00436
24185	{9,20,12,7}	{}	2018-10-03 16:50:00.004651
24188	{7,16,20,5}	{}	2018-10-03 17:35:00.004635
24192	{20,6,5,16}	{}	2018-10-03 18:35:00.004669
24197	{9,12,16,14}	{}	2018-10-03 19:50:00.004687
24200	{14,21,4,12}	{}	2018-10-03 20:35:00.0047
24204	{8,13,2,17}	{}	2018-10-03 21:35:00.004674
24208	{17,19,13,12}	{}	2018-10-03 22:35:00.004709
24213	{8,6,11,7}	{}	2018-10-03 23:50:00.004773
24216	{13,19,17,15}	{}	2018-10-04 00:35:00.004663
24221	{3,12,18,21}	{}	2018-10-04 01:50:00.004683
24225	{17,14,2,9}	{}	2018-10-04 02:50:00.004573
24229	{4,1,18,17}	{}	2018-10-04 03:50:00.00463
24233	{16,6,5,1}	{}	2018-10-04 04:50:00.004698
24236	{13,10,18,8}	{}	2018-10-04 05:35:00.004565
22325	{7,17,19,2}	{}	2018-09-14 07:35:00.004759
22330	{4,9,12,10}	{}	2018-09-14 08:50:00.00473
22334	{2,19,8,3}	{}	2018-09-14 09:50:00.004692
22338	{3,18,14,13}	{}	2018-09-14 10:50:00.004722
22341	{13,10,17,6}	{}	2018-09-14 11:35:00.004612
22346	{3,13,21,2}	{}	2018-09-14 12:50:00.004719
22349	{11,2,17,10}	{}	2018-09-14 13:35:00.004697
22353	{3,19,5,12}	{}	2018-09-14 14:35:00.00468
22357	{12,21,2,15}	{}	2018-09-14 15:35:00.004696
22361	{16,10,2,7}	{}	2018-09-14 16:35:00.004639
22366	{19,6,8,7}	{}	2018-09-14 17:50:00.004663
22370	{10,2,15,19}	{}	2018-09-14 18:50:00.004724
22373	{5,15,2,9}	{}	2018-09-14 19:35:00.0047
24026	{11,1,5,13}	{}	2018-10-02 01:05:00.005308
24030	{15,13,16,9}	{}	2018-10-02 02:05:00.004491
24034	{2,8,20,3}	{}	2018-10-02 03:05:00.004512
24038	{10,18,14,8}	{}	2018-10-02 04:05:00.004518
24042	{18,20,5,9}	{}	2018-10-02 05:05:00.005413
24051	{17,15,5,8}	{}	2018-10-02 07:20:00.0046
24057	{11,9,6,2}	{}	2018-10-02 08:50:00.004738
24061	{5,12,20,4}	{}	2018-10-02 09:50:00.004706
24065	{21,2,1,3}	{}	2018-10-02 10:50:00.00465
24067	{16,11,5,18}	{}	2018-10-02 11:20:00.00476
24070	{2,6,18,19}	{}	2018-10-02 12:05:00.005366
24091	{5,3,10,11}	{}	2018-10-02 17:20:00.004637
24095	{9,6,17,7}	{}	2018-10-02 18:20:00.004647
24098	{6,17,19,12}	{}	2018-10-02 19:05:00.005316
24115	{11,18,19,5}	{}	2018-10-02 23:20:00.004761
24118	{15,2,3,17}	{}	2018-10-03 00:05:00.005119
24139	{2,11,19,3}	{}	2018-10-03 05:20:00.004582
24143	{4,21,13,18}	{}	2018-10-03 06:20:00.004675
24146	{6,12,19,1}	{}	2018-10-03 07:05:00.005256
24163	{12,10,21,18}	{}	2018-10-03 11:20:00.004708
24166	{8,19,2,4}	{}	2018-10-03 12:05:00.005307
24187	{7,11,3,12}	{}	2018-10-03 17:20:00.004669
24191	{2,8,19,10}	{}	2018-10-03 18:20:00.004725
24194	{7,14,17,9}	{}	2018-10-03 19:05:00.005291
24211	{5,19,16,6}	{}	2018-10-03 23:20:00.004727
24214	{4,19,9,17}	{}	2018-10-04 00:05:00.005021
24235	{6,5,21,14}	{}	2018-10-04 05:20:00.004666
22326	{9,3,15,16}	{}	2018-09-14 07:50:00.004623
22329	{8,6,11,15}	{}	2018-09-14 08:35:00.004672
22333	{11,21,12,19}	{}	2018-09-14 09:35:00.004748
22337	{15,16,1,19}	{}	2018-09-14 10:35:00.004688
22342	{17,8,6,18}	{}	2018-09-14 11:50:00.004679
22345	{10,19,4,20}	{}	2018-09-14 12:35:00.0047
22350	{17,18,8,12}	{}	2018-09-14 13:50:00.004728
22354	{7,17,18,10}	{}	2018-09-14 14:50:00.004688
22358	{19,2,7,17}	{}	2018-09-14 15:50:00.004679
22362	{3,17,10,21}	{}	2018-09-14 16:50:00.004642
22365	{21,10,2,1}	{}	2018-09-14 17:35:00.004695
22369	{17,3,7,11}	{}	2018-09-14 18:35:00.004671
22374	{15,7,1,13}	{}	2018-09-14 19:50:00.004685
24027	{4,16,3,20}	{}	2018-10-02 01:20:00.004718
24031	{15,19,17,20}	{}	2018-10-02 02:20:00.004626
24035	{9,6,11,10}	{}	2018-10-02 03:20:00.004556
24039	{4,18,9,1}	{}	2018-10-02 04:20:00.004727
24045	{19,14,11,9}	{}	2018-10-02 05:50:00.0046
24049	{20,2,9,18}	{}	2018-10-02 06:50:00.004634
24052	{17,20,21,5}	{}	2018-10-02 07:35:00.004632
24056	{17,13,21,7}	{}	2018-10-02 08:35:00.004666
24060	{20,15,7,8}	{}	2018-10-02 09:35:00.004708
24064	{3,2,4,6}	{}	2018-10-02 10:35:00.004704
24068	{1,21,2,13}	{}	2018-10-02 11:35:00.004716
24073	{15,18,1,2}	{}	2018-10-02 12:50:00.004668
24076	{8,11,12,9}	{}	2018-10-02 13:35:00.004631
24080	{11,6,21,20}	{}	2018-10-02 14:35:00.004654
24084	{6,3,7,17}	{}	2018-10-02 15:35:00.004601
24088	{11,6,18,2}	{}	2018-10-02 16:35:00.004748
24093	{19,13,8,17}	{}	2018-10-02 17:50:00.004716
24097	{10,14,3,13}	{}	2018-10-02 18:50:00.004669
24100	{12,2,16,15}	{}	2018-10-02 19:35:00.004683
24105	{7,18,3,15}	{}	2018-10-02 20:50:00.004599
24109	{2,17,13,9}	{}	2018-10-02 21:50:00.004729
24113	{15,18,10,16}	{}	2018-10-02 22:50:00.004663
24116	{17,1,19,12}	{}	2018-10-02 23:35:00.004826
24121	{1,7,11,2}	{}	2018-10-03 00:50:00.004627
24124	{17,4,13,10}	{}	2018-10-03 01:35:00.00454
24128	{5,21,14,4}	{}	2018-10-03 02:35:00.004721
24132	{7,11,13,9}	{}	2018-10-03 03:35:00.004669
24136	{16,20,18,3}	{}	2018-10-03 04:35:00.004683
24141	{15,19,7,6}	{}	2018-10-03 05:50:00.004614
24145	{10,2,8,4}	{}	2018-10-03 06:50:00.004694
24148	{2,11,7,8}	{}	2018-10-03 07:35:00.004734
24153	{3,1,11,4}	{}	2018-10-03 08:50:00.004624
24157	{2,12,7,18}	{}	2018-10-03 09:50:00.0047
24161	{16,12,15,17}	{}	2018-10-03 10:50:00.004639
24164	{21,6,1,5}	{}	2018-10-03 11:35:00.004667
24169	{4,21,9,16}	{}	2018-10-03 12:50:00.004651
24172	{5,2,3,17}	{}	2018-10-03 13:35:00.004698
24176	{7,9,14,8}	{}	2018-10-03 14:35:00.004729
24180	{20,9,5,8}	{}	2018-10-03 15:35:00.00466
24184	{13,14,17,3}	{}	2018-10-03 16:35:00.004763
24189	{4,3,1,15}	{}	2018-10-03 17:50:00.004672
24193	{14,11,17,1}	{}	2018-10-03 18:50:00.004701
24196	{19,14,5,13}	{}	2018-10-03 19:35:00.004665
24201	{14,8,10,20}	{}	2018-10-03 20:50:00.004662
24205	{12,11,7,1}	{}	2018-10-03 21:50:00.004694
24209	{11,3,8,7}	{}	2018-10-03 22:50:00.004673
24212	{20,10,14,2}	{}	2018-10-03 23:35:00.00484
24217	{12,16,5,7}	{}	2018-10-04 00:50:00.00468
24220	{16,13,1,3}	{}	2018-10-04 01:35:00.004653
24224	{10,11,4,2}	{}	2018-10-04 02:35:00.004684
24228	{21,1,7,11}	{}	2018-10-04 03:35:00.004669
24232	{8,10,20,18}	{}	2018-10-04 04:35:00.004656
22328	{18,21,2,4}	{}	2018-09-14 08:20:00.004645
22332	{19,20,21,10}	{}	2018-09-14 09:20:00.00469
22336	{4,7,2,13}	{}	2018-09-14 10:20:00.00466
22339	{18,3,12,7}	{}	2018-09-14 11:05:00.005332
22348	{10,1,15,16}	{}	2018-09-14 13:20:00.00469
22352	{20,6,5,3}	{}	2018-09-14 14:20:00.004666
22356	{19,21,3,18}	{}	2018-09-14 15:20:00.004721
22360	{17,20,11,2}	{}	2018-09-14 16:20:00.004675
22363	{17,4,20,8}	{}	2018-09-14 17:05:00.005417
22367	{2,10,19,21}	{}	2018-09-14 18:05:00.004535
22375	{15,2,5,1}	{}	2018-09-14 20:05:00.005198
22376	{18,16,6,4}	{}	2018-09-14 20:20:00.004713
22377	{18,13,11,12}	{}	2018-09-14 20:35:00.004652
22378	{11,4,16,7}	{}	2018-09-14 20:50:00.004685
22379	{19,9,10,20}	{}	2018-09-14 21:05:00.004434
22380	{11,12,20,16}	{}	2018-09-14 21:20:00.004726
22381	{6,7,21,18}	{}	2018-09-14 21:35:00.004734
22382	{14,15,7,11}	{}	2018-09-14 21:50:00.004637
22383	{3,5,4,13}	{}	2018-09-14 22:05:00.004494
22384	{18,10,9,7}	{}	2018-09-14 22:20:00.00471
22385	{18,6,11,1}	{}	2018-09-14 22:35:00.0047
22386	{20,12,13,4}	{}	2018-09-14 22:50:00.004693
22387	{20,4,9,2}	{}	2018-09-14 23:05:00.005458
22388	{1,15,20,4}	{}	2018-09-14 23:20:00.004772
22389	{16,8,1,6}	{}	2018-09-14 23:35:00.004826
22390	{9,11,4,17}	{}	2018-09-14 23:50:00.004856
22391	{16,4,15,12}	{}	2018-09-15 00:05:00.005206
22392	{15,12,10,6}	{}	2018-09-15 00:20:00.004685
22393	{5,8,16,6}	{}	2018-09-15 00:35:00.004702
22394	{15,10,8,16}	{}	2018-09-15 00:50:00.004751
22395	{14,15,3,5}	{}	2018-09-15 01:05:00.005322
22396	{2,9,17,10}	{}	2018-09-15 01:20:00.00471
22397	{10,4,17,18}	{}	2018-09-15 01:35:00.004715
22398	{15,10,21,6}	{}	2018-09-15 01:50:00.004706
22399	{19,17,4,9}	{}	2018-09-15 02:05:00.004511
22400	{8,5,13,4}	{}	2018-09-15 02:20:00.00467
22401	{10,6,14,21}	{}	2018-09-15 02:35:00.004716
22402	{2,13,19,15}	{}	2018-09-15 02:50:00.004722
22403	{9,2,11,15}	{}	2018-09-15 03:05:00.004501
22404	{9,5,11,1}	{}	2018-09-15 03:20:00.004742
22405	{2,16,4,13}	{}	2018-09-15 03:35:00.004601
22406	{11,8,19,1}	{}	2018-09-15 03:50:00.004735
22407	{11,7,21,20}	{}	2018-09-15 04:05:00.004536
22408	{16,6,3,11}	{}	2018-09-15 04:20:00.004702
22409	{14,18,1,6}	{}	2018-09-15 04:35:00.004721
22410	{4,7,17,16}	{}	2018-09-15 04:50:00.004712
22411	{12,3,19,8}	{}	2018-09-15 05:05:00.005429
22412	{15,19,6,16}	{}	2018-09-15 05:20:00.004722
22413	{12,16,3,21}	{}	2018-09-15 05:35:00.004715
22414	{9,4,2,18}	{}	2018-09-15 05:50:00.004758
22415	{1,15,11,8}	{}	2018-09-15 06:05:00.004523
22416	{3,6,21,4}	{}	2018-09-15 06:20:00.004742
22417	{3,14,15,18}	{}	2018-09-15 06:35:00.004757
22418	{8,1,13,11}	{}	2018-09-15 06:50:00.004729
22419	{14,19,3,1}	{}	2018-09-15 07:05:00.005349
22420	{8,2,17,21}	{}	2018-09-15 07:20:00.004714
22421	{11,15,7,12}	{}	2018-09-15 07:35:00.004736
22422	{17,10,6,4}	{}	2018-09-15 07:50:00.00471
22423	{2,10,12,18}	{}	2018-09-15 08:05:00.005358
22424	{11,20,10,21}	{}	2018-09-15 08:20:00.004752
22425	{20,9,15,10}	{}	2018-09-15 08:35:00.004718
22426	{2,19,18,6}	{}	2018-09-15 08:50:00.004729
22427	{19,12,1,17}	{}	2018-09-15 09:05:00.004516
22428	{2,10,5,9}	{}	2018-09-15 09:20:00.004688
22429	{12,6,10,19}	{}	2018-09-15 09:35:00.00473
22430	{16,12,5,8}	{}	2018-09-15 09:50:00.004759
22431	{14,1,2,16}	{}	2018-09-15 10:05:00.004524
22432	{20,10,11,3}	{}	2018-09-15 10:20:00.004694
22433	{12,10,20,18}	{}	2018-09-15 10:35:00.004678
22434	{14,8,18,12}	{}	2018-09-15 10:50:00.004725
22435	{19,5,2,12}	{}	2018-09-15 11:05:00.005375
22436	{2,12,17,7}	{}	2018-09-15 11:20:00.004716
22437	{13,1,5,6}	{}	2018-09-15 11:35:00.0047
22438	{20,13,16,11}	{}	2018-09-15 11:50:00.004749
22439	{8,3,16,4}	{}	2018-09-15 12:05:00.005326
22440	{18,13,21,4}	{}	2018-09-15 12:20:00.004673
22441	{9,13,1,4}	{}	2018-09-15 12:35:00.00473
22442	{20,2,18,11}	{}	2018-09-15 12:50:00.004663
22445	{10,4,13,9}	{}	2018-09-15 13:35:00.004795
22449	{5,11,7,14}	{}	2018-09-15 14:35:00.004651
22453	{21,1,11,13}	{}	2018-09-15 15:35:00.004653
22457	{21,5,16,4}	{}	2018-09-15 16:35:00.0047
22462	{10,7,11,5}	{}	2018-09-15 17:50:00.004548
22466	{17,4,5,9}	{}	2018-09-15 18:50:00.004674
22469	{7,20,16,12}	{}	2018-09-15 19:35:00.004702
22474	{5,15,16,7}	{}	2018-09-15 20:50:00.00469
22478	{2,15,4,5}	{}	2018-09-15 21:50:00.004702
22482	{20,19,7,3}	{}	2018-09-15 22:50:00.004717
22485	{21,18,16,19}	{}	2018-09-15 23:35:00.004852
22490	{17,7,14,6}	{}	2018-09-16 00:50:00.004704
22493	{13,6,20,2}	{}	2018-09-16 01:35:00.004646
22497	{20,6,18,8}	{}	2018-09-16 02:35:00.004693
22501	{11,3,9,14}	{}	2018-09-16 03:35:00.004686
22505	{18,7,9,11}	{}	2018-09-16 04:35:00.004683
24046	{11,17,20,8}	{}	2018-10-02 06:05:00.004481
24054	{20,10,16,11}	{}	2018-10-02 08:05:00.005326
24058	{11,15,14,6}	{}	2018-10-02 09:05:00.00442
24062	{6,2,17,1}	{}	2018-10-02 10:05:00.00452
24071	{7,2,10,18}	{}	2018-10-02 12:20:00.00469
24074	{19,12,14,3}	{}	2018-10-02 13:05:00.005182
24078	{14,9,16,3}	{}	2018-10-02 14:05:00.004438
24082	{16,12,14,7}	{}	2018-10-02 15:05:00.004449
24086	{16,5,21,11}	{}	2018-10-02 16:05:00.004502
24099	{19,13,10,11}	{}	2018-10-02 19:20:00.00473
24102	{8,3,2,19}	{}	2018-10-02 20:05:00.005313
24106	{3,8,2,16}	{}	2018-10-02 21:05:00.004102
24110	{19,16,1,6}	{}	2018-10-02 22:05:00.00453
24119	{13,16,20,1}	{}	2018-10-03 00:20:00.004616
24122	{7,15,4,2}	{}	2018-10-03 01:05:00.005327
24126	{10,1,13,9}	{}	2018-10-03 02:05:00.004456
24130	{15,3,7,11}	{}	2018-10-03 03:05:00.004487
24134	{20,6,18,7}	{}	2018-10-03 04:05:00.004512
24147	{12,19,2,1}	{}	2018-10-03 07:20:00.004678
24150	{8,19,13,10}	{}	2018-10-03 08:05:00.005269
24154	{2,11,9,1}	{}	2018-10-03 09:05:00.004511
24158	{3,19,18,7}	{}	2018-10-03 10:05:00.004475
24167	{3,16,18,7}	{}	2018-10-03 12:20:00.004708
24170	{5,1,20,4}	{}	2018-10-03 13:05:00.005286
24174	{20,17,8,3}	{}	2018-10-03 14:05:00.004515
24178	{18,13,21,7}	{}	2018-10-03 15:05:00.004491
24182	{19,9,4,13}	{}	2018-10-03 16:05:00.004454
24195	{4,8,14,20}	{}	2018-10-03 19:20:00.004665
24198	{14,6,1,20}	{}	2018-10-03 20:05:00.005076
24202	{7,1,21,4}	{}	2018-10-03 21:05:00.00449
24206	{16,14,21,6}	{}	2018-10-03 22:05:00.004436
24215	{12,16,3,21}	{}	2018-10-04 00:20:00.004638
24218	{21,17,19,3}	{}	2018-10-04 01:05:00.005328
24222	{19,8,5,16}	{}	2018-10-04 02:05:00.00451
24226	{17,13,21,10}	{}	2018-10-04 03:05:00.004427
24230	{12,14,6,7}	{}	2018-10-04 04:05:00.004467
22443	{11,8,14,7}	{}	2018-09-15 13:05:00.005358
22447	{12,21,16,14}	{}	2018-09-15 14:05:00.004543
22451	{10,5,12,16}	{}	2018-09-15 15:05:00.004477
22455	{1,17,19,10}	{}	2018-09-15 16:05:00.004473
22468	{1,20,5,7}	{}	2018-09-15 19:20:00.004725
22471	{17,11,3,19}	{}	2018-09-15 20:05:00.005322
22475	{6,7,10,13}	{}	2018-09-15 21:05:00.004502
22479	{15,12,21,20}	{}	2018-09-15 22:05:00.00449
22488	{15,5,13,12}	{}	2018-09-16 00:20:00.00472
22491	{19,10,18,4}	{}	2018-09-16 01:05:00.005351
22495	{8,19,6,16}	{}	2018-09-16 02:05:00.004504
22499	{4,15,13,9}	{}	2018-09-16 03:05:00.00448
22503	{8,4,2,18}	{}	2018-09-16 04:05:00.004556
24237	{11,2,12,19}	{}	2018-10-04 05:50:00.004688
24241	{17,6,13,9}	{}	2018-10-04 06:50:00.004669
24244	{19,12,13,6}	{}	2018-10-04 07:35:00.004561
24249	{11,5,17,16}	{}	2018-10-04 08:50:00.004672
24253	{21,14,10,12}	{}	2018-10-04 09:50:00.00468
24257	{18,10,9,20}	{}	2018-10-04 10:50:00.004601
24260	{7,6,9,8}	{}	2018-10-04 11:35:00.00421
24265	{17,13,16,11}	{}	2018-10-04 12:50:00.004721
24268	{18,9,20,13}	{}	2018-10-04 13:35:00.004694
24272	{15,18,16,21}	{}	2018-10-04 14:35:00.004684
22444	{6,19,21,3}	{}	2018-09-15 13:20:00.004747
22448	{16,21,10,2}	{}	2018-09-15 14:20:00.004688
22452	{7,20,12,2}	{}	2018-09-15 15:20:00.004733
22456	{11,3,18,6}	{}	2018-09-15 16:20:00.004711
22459	{16,5,2,21}	{}	2018-09-15 17:05:00.005391
22463	{12,10,8,17}	{}	2018-09-15 18:05:00.004389
22472	{12,9,10,20}	{}	2018-09-15 20:20:00.004691
22476	{12,15,10,19}	{}	2018-09-15 21:20:00.00474
22480	{2,11,15,1}	{}	2018-09-15 22:20:00.004688
22483	{10,19,20,7}	{}	2018-09-15 23:05:00.005407
22492	{20,11,6,19}	{}	2018-09-16 01:20:00.004749
22496	{18,12,11,7}	{}	2018-09-16 02:20:00.004651
22500	{2,20,19,6}	{}	2018-09-16 03:20:00.004731
22504	{13,5,21,2}	{}	2018-09-16 04:20:00.004692
24238	{14,6,9,4}	{}	2018-10-04 06:05:00.004513
24247	{14,2,6,4}	{}	2018-10-04 08:20:00.004676
24251	{7,15,10,18}	{}	2018-10-04 09:20:00.004771
24255	{20,15,8,16}	{}	2018-10-04 10:20:00.004544
24258	{6,11,13,21}	{}	2018-10-04 11:05:00.0053
24267	{12,11,7,2}	{}	2018-10-04 13:20:00.004687
24271	{6,13,17,21}	{}	2018-10-04 14:20:00.004678
22446	{16,5,18,10}	{}	2018-09-15 13:50:00.004759
22450	{1,15,6,14}	{}	2018-09-15 14:50:00.004609
22454	{18,15,19,17}	{}	2018-09-15 15:50:00.004711
22458	{4,1,2,6}	{}	2018-09-15 16:50:00.004704
22461	{17,14,15,9}	{}	2018-09-15 17:35:00.004507
22465	{15,10,8,4}	{}	2018-09-15 18:35:00.004677
22470	{20,17,1,14}	{}	2018-09-15 19:50:00.004743
22473	{17,5,2,12}	{}	2018-09-15 20:35:00.004732
22477	{7,15,20,11}	{}	2018-09-15 21:35:00.004732
22481	{9,11,21,2}	{}	2018-09-15 22:35:00.004731
22486	{16,19,10,6}	{}	2018-09-15 23:50:00.004844
22489	{7,20,8,14}	{}	2018-09-16 00:35:00.004725
22494	{4,13,15,12}	{}	2018-09-16 01:50:00.004758
22498	{2,18,15,19}	{}	2018-09-16 02:50:00.004637
22502	{6,16,1,8}	{}	2018-09-16 03:50:00.004698
24239	{18,10,20,8}	{}	2018-10-04 06:20:00.004665
24242	{13,5,17,10}	{}	2018-10-04 07:05:00.005343
24259	{15,2,4,14}	{}	2018-10-04 11:20:00.004676
24262	{5,13,21,4}	{}	2018-10-04 12:05:00.0053
22460	{2,7,20,9}	{}	2018-09-15 17:20:00.004763
22464	{1,6,17,10}	{}	2018-09-15 18:20:00.004716
22467	{5,3,21,9}	{}	2018-09-15 19:05:00.005039
22484	{20,17,7,12}	{}	2018-09-15 23:20:00.004808
22487	{6,11,19,20}	{}	2018-09-16 00:05:00.00514
22506	{8,2,15,16}	{}	2018-09-16 04:50:00.004736
22507	{10,13,3,11}	{}	2018-09-16 05:05:00.005322
22508	{3,9,21,18}	{}	2018-09-16 05:20:00.004641
22509	{7,11,9,14}	{}	2018-09-16 05:35:00.004465
22510	{4,14,11,8}	{}	2018-09-16 05:50:00.004685
22511	{3,13,5,4}	{}	2018-09-16 06:05:00.004554
22512	{20,18,8,4}	{}	2018-09-16 06:20:00.004733
22513	{20,19,16,13}	{}	2018-09-16 06:35:00.004615
22514	{7,12,19,5}	{}	2018-09-16 06:50:00.004593
22515	{5,1,18,8}	{}	2018-09-16 07:05:00.005443
22516	{5,15,21,3}	{}	2018-09-16 07:20:00.004733
22517	{3,17,8,19}	{}	2018-09-16 07:35:00.00468
22518	{16,3,8,6}	{}	2018-09-16 07:50:00.004687
22519	{17,21,5,14}	{}	2018-09-16 08:05:00.005277
22520	{19,18,21,13}	{}	2018-09-16 08:20:00.004723
22521	{11,7,21,17}	{}	2018-09-16 08:35:00.0047
22522	{11,4,3,21}	{}	2018-09-16 08:50:00.004684
22523	{18,19,21,16}	{}	2018-09-16 09:05:00.004552
22524	{11,19,15,16}	{}	2018-09-16 09:20:00.004715
22525	{15,5,21,16}	{}	2018-09-16 09:35:00.00481
22526	{12,7,2,1}	{}	2018-09-16 09:50:00.00468
22527	{14,2,12,21}	{}	2018-09-16 10:05:00.004558
22528	{6,2,21,7}	{}	2018-09-16 10:20:00.004728
22529	{18,16,20,7}	{}	2018-09-16 10:35:00.00476
22530	{16,5,6,9}	{}	2018-09-16 10:50:00.004736
22531	{4,5,10,18}	{}	2018-09-16 11:05:00.005374
22532	{12,11,3,9}	{}	2018-09-16 11:20:00.004661
22533	{15,21,1,19}	{}	2018-09-16 11:35:00.00475
22534	{12,1,16,14}	{}	2018-09-16 11:50:00.004695
22535	{2,11,14,12}	{}	2018-09-16 12:05:00.005331
22536	{13,20,21,14}	{}	2018-09-16 12:20:00.004685
22537	{15,17,18,9}	{}	2018-09-16 12:35:00.004695
22538	{18,17,15,10}	{}	2018-09-16 12:50:00.004676
22539	{10,4,2,5}	{}	2018-09-16 13:05:00.005346
22540	{19,6,21,3}	{}	2018-09-16 13:20:00.004725
22541	{8,7,5,14}	{}	2018-09-16 13:35:00.004663
22542	{13,9,6,20}	{}	2018-09-16 13:50:00.004484
22543	{17,15,12,1}	{}	2018-09-16 14:05:00.004535
22544	{4,19,20,3}	{}	2018-09-16 14:20:00.004782
22545	{3,7,2,4}	{}	2018-09-16 14:35:00.004732
22546	{10,4,1,19}	{}	2018-09-16 14:50:00.00471
22547	{4,9,18,6}	{}	2018-09-16 15:05:00.004588
22548	{5,21,4,18}	{}	2018-09-16 15:20:00.004735
22549	{11,18,3,4}	{}	2018-09-16 15:35:00.004684
22550	{17,10,4,6}	{}	2018-09-16 15:50:00.00476
22551	{19,8,7,12}	{}	2018-09-16 16:05:00.004559
22552	{12,13,20,21}	{}	2018-09-16 16:20:00.004742
22553	{17,13,12,1}	{}	2018-09-16 16:35:00.004766
22554	{5,21,8,18}	{}	2018-09-16 16:50:00.00464
22555	{7,8,11,15}	{}	2018-09-16 17:05:00.005373
22556	{21,6,18,8}	{}	2018-09-16 17:20:00.004772
22557	{14,2,7,1}	{}	2018-09-16 17:35:00.004672
22558	{10,9,5,17}	{}	2018-09-16 17:50:00.004753
22559	{2,13,7,17}	{}	2018-09-16 18:05:00.004571
22560	{21,2,13,11}	{}	2018-09-16 18:20:00.004721
22561	{2,19,16,10}	{}	2018-09-16 18:35:00.004716
22562	{6,2,4,19}	{}	2018-09-16 18:50:00.004744
22563	{16,18,10,20}	{}	2018-09-16 19:05:00.004949
22564	{2,13,14,6}	{}	2018-09-16 19:20:00.004592
22565	{10,6,7,15}	{}	2018-09-16 19:35:00.004706
22566	{18,19,7,14}	{}	2018-09-16 19:50:00.00475
22567	{2,3,14,21}	{}	2018-09-16 20:05:00.00537
22568	{5,2,11,3}	{}	2018-09-16 20:20:00.004696
22569	{18,21,4,19}	{}	2018-09-16 20:35:00.004726
22570	{1,18,9,4}	{}	2018-09-16 20:50:00.00474
22571	{3,20,10,16}	{}	2018-09-16 21:05:00.003929
22572	{19,17,11,8}	{}	2018-09-16 21:20:00.004779
22573	{13,3,6,19}	{}	2018-09-16 21:35:00.004692
22574	{3,7,21,13}	{}	2018-09-16 21:50:00.004705
22575	{2,13,7,3}	{}	2018-09-16 22:05:00.004544
22576	{15,9,10,18}	{}	2018-09-16 22:20:00.004754
22577	{17,4,1,11}	{}	2018-09-16 22:35:00.004684
22578	{3,5,2,4}	{}	2018-09-16 22:50:00.004798
22581	{17,4,7,1}	{}	2018-09-16 23:35:00.004853
22586	{10,9,1,18}	{}	2018-09-17 00:50:00.004695
22589	{21,11,8,7}	{}	2018-09-17 01:35:00.004697
22593	{18,13,20,4}	{}	2018-09-17 02:35:00.004666
22597	{21,19,13,7}	{}	2018-09-17 03:35:00.004688
22601	{6,19,13,3}	{}	2018-09-17 04:35:00.004681
22606	{11,8,5,2}	{}	2018-09-17 05:50:00.004746
22610	{20,21,8,7}	{}	2018-09-17 06:50:00.004741
22613	{11,13,7,6}	{}	2018-09-17 07:35:00.004674
22618	{4,21,12,6}	{}	2018-09-17 08:50:00.004687
22622	{17,20,2,12}	{}	2018-09-17 09:50:00.004713
22626	{21,11,8,19}	{}	2018-09-17 10:50:00.004698
24240	{2,7,10,1}	{}	2018-10-04 06:35:00.00471
24243	{17,3,9,16}	{}	2018-10-04 07:20:00.004591
24246	{8,12,21,19}	{}	2018-10-04 08:05:00.005339
24250	{14,7,15,5}	{}	2018-10-04 09:05:00.004503
24254	{17,20,18,9}	{}	2018-10-04 10:05:00.004476
24263	{1,2,20,21}	{}	2018-10-04 12:20:00.004699
24266	{2,19,7,16}	{}	2018-10-04 13:05:00.005317
24270	{6,17,19,21}	{}	2018-10-04 14:05:00.004497
22579	{5,19,12,6}	{}	2018-09-16 23:05:00.00553
22584	{19,16,8,15}	{}	2018-09-17 00:20:00.004666
22587	{14,10,13,6}	{}	2018-09-17 01:05:00.005374
22591	{4,7,5,19}	{}	2018-09-17 02:05:00.004507
22595	{18,2,12,3}	{}	2018-09-17 03:05:00.004544
22599	{3,20,4,10}	{}	2018-09-17 04:05:00.004544
22612	{10,20,17,5}	{}	2018-09-17 07:20:00.004703
22615	{5,9,12,8}	{}	2018-09-17 08:05:00.0054
22619	{21,5,17,10}	{}	2018-09-17 09:05:00.004547
22623	{6,10,18,17}	{}	2018-09-17 10:05:00.004497
24245	{11,8,14,13}	{}	2018-10-04 07:50:00.004666
24248	{19,10,17,20}	{}	2018-10-04 08:35:00.004718
24252	{18,16,14,15}	{}	2018-10-04 09:35:00.004657
24256	{21,1,6,8}	{}	2018-10-04 10:35:00.004718
24261	{7,17,16,12}	{}	2018-10-04 11:50:00.004652
24264	{20,21,19,17}	{}	2018-10-04 12:35:00.004634
24269	{5,19,16,14}	{}	2018-10-04 13:50:00.004661
24273	{8,3,2,18}	{}	2018-10-04 14:50:00.00464
22580	{5,8,16,13}	{}	2018-09-16 23:20:00.004837
22583	{16,14,4,9}	{}	2018-09-17 00:05:00.005176
22604	{7,21,8,6}	{}	2018-09-17 05:20:00.004704
22608	{20,8,2,6}	{}	2018-09-17 06:20:00.004721
22611	{9,11,19,17}	{}	2018-09-17 07:05:00.00538
22628	{12,21,5,7}	{}	2018-09-17 11:20:00.004675
22582	{13,14,9,3}	{}	2018-09-16 23:50:00.004872
22585	{4,11,14,19}	{}	2018-09-17 00:35:00.004645
22590	{8,14,6,12}	{}	2018-09-17 01:50:00.004662
22594	{10,17,11,16}	{}	2018-09-17 02:50:00.004709
22598	{1,3,7,2}	{}	2018-09-17 03:50:00.004735
22602	{19,4,12,8}	{}	2018-09-17 04:50:00.00455
22605	{13,10,16,17}	{}	2018-09-17 05:35:00.004716
22609	{16,3,6,12}	{}	2018-09-17 06:35:00.004731
22614	{10,1,3,2}	{}	2018-09-17 07:50:00.004691
22617	{7,2,5,9}	{}	2018-09-17 08:35:00.00468
22621	{14,5,3,9}	{}	2018-09-17 09:35:00.004683
22625	{6,11,13,16}	{}	2018-09-17 10:35:00.004693
22588	{2,11,12,1}	{}	2018-09-17 01:20:00.004713
22592	{11,13,12,15}	{}	2018-09-17 02:20:00.004688
22596	{3,21,11,4}	{}	2018-09-17 03:20:00.004675
22600	{12,10,5,21}	{}	2018-09-17 04:20:00.004482
22603	{18,6,20,8}	{}	2018-09-17 05:05:00.005378
22607	{16,13,18,15}	{}	2018-09-17 06:05:00.004467
22616	{17,9,11,3}	{}	2018-09-17 08:20:00.00471
22620	{13,16,14,9}	{}	2018-09-17 09:20:00.004651
22624	{6,21,2,10}	{}	2018-09-17 10:20:00.004694
22627	{16,7,12,10}	{}	2018-09-17 11:05:00.005332
\.


--
-- Name: two_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.two_numbers_id_seq', 24273, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password, registered_on, admin) FROM stdin;
1	vadim.e@lateco.net	$2b$04$F718aa3lhav18PZKvi/vde.0ixQAzlPhhS9JFCdUHjkjC7OdKTSMi	2018-03-21 18:50:21.115273	f
5	player@lateco.net	$2b$04$Az.S0CxBYzwLvY8Jg.DaFOzaEixcqXl9kVedQTHZbm1Pf96AlsQoa	2018-04-03 18:05:34.613352	f
6	vugyr9@gmail.com	$2b$04$8TBhvN6eK8xGFheURwo9Be0SUP6RAi58V4phCUpkHiTsT4VM2A2Za	2018-04-16 17:38:45.912461	f
7	yuriy@xentaurs.com	$2b$04$PozSpQatqcW62msSJ79IFe.tzmhzqbGUKjwNQ8cLR7q0vSlfS5H3i	2018-05-09 09:18:24.733674	f
8	vugyr9@gmail	$2b$04$zR0jKhPqxMtPCQyDATQ95OTLfRnZlTpXXA.koCQ9PoBaQ4HS0j6Xu	2018-05-15 19:42:52.930056	f
9	[[]	$2b$04$yk1MmqxW1ha8d2d30ysnHuOygwZ8FCtQvQB60M3NP3ZHsCQjUeMjK	2018-05-15 20:08:09.453802	f
10	fsfvv	$2b$04$OVyMepgO8aeFr7iAlFpPSuRmlfBoIBBKDZupwHxdJR51aozXnrxLC	2018-05-16 22:14:30.587885	f
11	vugyr9@gmai	$2b$04$TgajooOINSOoM.7BVk78i.LLOtUMg//9QHW2FXgEgjNP0fNZDbpSO	2018-05-17 17:59:26.246811	f
12	vugyr9@gmail.	$2b$04$ZqZ3h9SLOUgt7D2ooWSO/.sA4xIsKxyGzXFSs9cypdN.Q3m7xfeZm	2018-05-17 18:01:34.413001	f
13		$2b$04$kQWcs6ubhlIrZhTKLWh4NONT4Rm2AZSK.Z//NbXWq65eGEnkuYGD6	2018-05-17 18:01:59.075012	f
14	galeewood@mail.ru	$2b$04$5eAx.COXZ6H3CTFa4SZ.hu9Mb.ZeAMayKt99XLCHs5WTui7kQ.DQm	2018-06-05 13:16:59.055285	f
15	cfff	$2b$04$6y3cZAkfaKYb.9rT233d.OIdU/SKZNfsroLDazieGPUZrivpBj34i	2018-07-19 19:17:59.755768	f
16	test@local	$2b$04$mpiUuag4i1YVPB4JkWdulO37A6ZpInnVr0U6Vd4RC77yr84Bx5y.u	2018-07-28 13:34:55.502548	f
17	Ivan.k@lateco.net	$2b$04$2feA4kxP673f.obTEVmgvujiywzFSQE0FR4WS/YjvqYToGA/I0XVq	2018-07-28 13:39:36.061601	f
18	ivan.k@lateco.net	$2b$04$0/fjpT92JE8lESBUl8SsHex2MwA2nq4cJdkgtesFX5E0CnJRPKoDq	2018-07-28 14:00:47.625886	f
19	krylov.ivan86@gmail.com	$2b$04$ePvvL2Q42keNoS8VwM6H8e3ir4ha8faQDMYO0vH9mGgFjJlLbxLqW	2018-07-28 15:20:09.476382	f
20	chase	$2b$04$wpyL/cqzvqUGiTcWmInfUO.ZgWgUC4sNahTyHCYxEpTHWnOPmky5C	2018-08-21 17:16:26.682955	f
37	v.emelyanov@lateco.net	$2b$04$XRZlS60cRdgXoWtUq9B6wezWqLT5ZRk/4ZBj/KW5.k7r6LIwJ9FAy	2018-09-01 00:01:53.153882	f
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 37, true);


--
-- Data for Name: waiting_tickets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.waiting_tickets (id, email, lottery_type, combination, raffles, win_combination, is_win) FROM stdin;
8	v.emelyanov@lateco.net	jackpot_4x21	{12,10,7,21}	2	\N	f
9	v.emelyanov@lateco.net	jackpot_4x21	{14,1,6,16}	1	\N	f
10	v.emelyanov@lateco.net	100CASH	{7,4,6,2,0,9,1,5,3}	1	{5,7,6,2,3,0,4,1,9}	t
11	v.emelyanov@lateco.net	100CASH	{4,7,0,2,1,5,9,3,8}	1	{5,7,6,2,3,0,4,1,9}	f
12	anatoly@zhirikov.com	jackpot_4x21	{8,9,10,11}	1	\N	f
13	anatoly@zhirikov.com	jackpot_4x21	{11,12,13,14}	1	\N	f
\.


--
-- Name: waiting_tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.waiting_tickets_id_seq', 13, true);


--
-- Data for Name: wallets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wallets (id, user_id, amount) FROM stdin;
4	6	0
5	7	0
6	8	0
7	9	0
8	10	0
9	11	0
10	12	0
11	13	0
12	14	0
1	1	3.75
13	15	0
14	16	0
15	17	0
16	18	0
17	19	0
18	20	0
20	37	0
3	5	509.5
\.


--
-- Name: wallets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wallets_id_seq', 20, true);


--
-- Name: bank bank_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank
    ADD CONSTRAINT bank_pkey PRIMARY KEY (id);


--
-- Name: bets_100_cash bets_100_cash_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_100_cash
    ADD CONSTRAINT bets_100_cash_pkey PRIMARY KEY (id);


--
-- Name: bets_777 bets_777_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_777
    ADD CONSTRAINT bets_777_pkey PRIMARY KEY (id);


--
-- Name: bets_fruity bets_fruity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_fruity
    ADD CONSTRAINT bets_fruity_pkey PRIMARY KEY (id);


--
-- Name: bets_jackpot_4_21 bets_jackpot_4_21_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_jackpot_4_21
    ADD CONSTRAINT bets_jackpot_4_21_pkey PRIMARY KEY (id);


--
-- Name: bets_jackpot_5_36 bets_jackpot_5_36_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_jackpot_5_36
    ADD CONSTRAINT bets_jackpot_5_36_pkey PRIMARY KEY (id);


--
-- Name: bets_jackpot_6_45 bets_jackpot_6_45_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_jackpot_6_45
    ADD CONSTRAINT bets_jackpot_6_45_pkey PRIMARY KEY (id);


--
-- Name: bets_prize_jackpot bets_prize_jackpot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_prize_jackpot
    ADD CONSTRAINT bets_prize_jackpot_pkey PRIMARY KEY (id);


--
-- Name: bets_rapidos bets_rapidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_rapidos
    ADD CONSTRAINT bets_rapidos_pkey PRIMARY KEY (id);


--
-- Name: bets_two_numbers bets_two_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_two_numbers
    ADD CONSTRAINT bets_two_numbers_pkey PRIMARY KEY (id);


--
-- Name: blacklist_tokens blacklist_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blacklist_tokens
    ADD CONSTRAINT blacklist_tokens_pkey PRIMARY KEY (id);


--
-- Name: blacklist_tokens blacklist_tokens_token_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blacklist_tokens
    ADD CONSTRAINT blacklist_tokens_token_key UNIQUE (token);


--
-- Name: jackpot_4_21 jackpot_4_21_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jackpot_4_21
    ADD CONSTRAINT jackpot_4_21_pkey1 PRIMARY KEY (id);


--
-- Name: jackpot_5_36 jackpot_5_36_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jackpot_5_36
    ADD CONSTRAINT jackpot_5_36_pkey1 PRIMARY KEY (id);


--
-- Name: jackpot_6_45 jackpot_6_45_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jackpot_6_45
    ADD CONSTRAINT jackpot_6_45_pkey1 PRIMARY KEY (id);


--
-- Name: lottery_tokens lottery_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lottery_tokens
    ADD CONSTRAINT lottery_tokens_pkey PRIMARY KEY (id);


--
-- Name: prize_jackpot prize_jackpot_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prize_jackpot
    ADD CONSTRAINT prize_jackpot_pkey1 PRIMARY KEY (id);


--
-- Name: raffles_jackpot_4_21 raffles_jackpot_4_21_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_4_21
    ADD CONSTRAINT raffles_jackpot_4_21_pkey PRIMARY KEY (id);


--
-- Name: raffles_jackpot_5_36 raffles_jackpot_5_36_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_5_36
    ADD CONSTRAINT raffles_jackpot_5_36_pkey PRIMARY KEY (id);


--
-- Name: raffles_jackpot_6_45 raffles_jackpot_6_45_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_6_45
    ADD CONSTRAINT raffles_jackpot_6_45_pkey PRIMARY KEY (id);


--
-- Name: raffles_prize_jackpot raffles_prize_jackpot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_prize_jackpot
    ADD CONSTRAINT raffles_prize_jackpot_pkey PRIMARY KEY (id);


--
-- Name: raffles_rapidos raffles_rapidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_rapidos
    ADD CONSTRAINT raffles_rapidos_pkey PRIMARY KEY (id);


--
-- Name: raffles_two_numbers raffles_two_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_two_numbers
    ADD CONSTRAINT raffles_two_numbers_pkey PRIMARY KEY (id);


--
-- Name: rapidos rapidos_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rapidos
    ADD CONSTRAINT rapidos_pkey1 PRIMARY KEY (id);


--
-- Name: two_numbers two_numbers_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.two_numbers
    ADD CONSTRAINT two_numbers_pkey1 PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: waiting_tickets waiting_tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.waiting_tickets
    ADD CONSTRAINT waiting_tickets_pkey PRIMARY KEY (id);


--
-- Name: wallets wallets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallets_pkey PRIMARY KEY (id);


--
-- Name: fki_100_cash_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_100_cash_user_id_fk ON public.bets_100_cash USING btree (user_id);


--
-- Name: fki_777_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_777_user_id_fk ON public.bets_777 USING btree (user_id);


--
-- Name: fki_fruity_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fruity_user_id_fk ON public.bets_fruity USING btree (user_id);


--
-- Name: fki_lottery_tokens_user_id_foreign_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lottery_tokens_user_id_foreign_key ON public.lottery_tokens USING btree (user_id);


--
-- Name: fki_wallets_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_wallets_user_id_fk ON public.wallets USING btree (user_id);


--
-- Name: bets_100_cash bets_100_cash_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_100_cash
    ADD CONSTRAINT bets_100_cash_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_777 bets_777_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_777
    ADD CONSTRAINT bets_777_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_fruity bets_fruity_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_fruity
    ADD CONSTRAINT bets_fruity_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_jackpot_4_21 bets_jackpot_4_21_user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_jackpot_4_21
    ADD CONSTRAINT bets_jackpot_4_21_user_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_jackpot_5_36 bets_jackpot_4_21_user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_jackpot_5_36
    ADD CONSTRAINT bets_jackpot_4_21_user_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_jackpot_6_45 bets_jackpot_4_21_user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_jackpot_6_45
    ADD CONSTRAINT bets_jackpot_4_21_user_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_rapidos bets_jackpot_4_21_user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_rapidos
    ADD CONSTRAINT bets_jackpot_4_21_user_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_prize_jackpot bets_jackpot_4_21_user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_prize_jackpot
    ADD CONSTRAINT bets_jackpot_4_21_user_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_two_numbers bets_jackpot_4_21_user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bets_two_numbers
    ADD CONSTRAINT bets_jackpot_4_21_user_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lottery_tokens lottery_tokens_user_id_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lottery_tokens
    ADD CONSTRAINT lottery_tokens_user_id_foreign_key FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_jackpot_4_21 raffles_jackpot_4_21_lottery_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_4_21
    ADD CONSTRAINT raffles_jackpot_4_21_lottery_id_fk FOREIGN KEY (lottery_id) REFERENCES public.jackpot_4_21(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_jackpot_4_21 raffles_jackpot_4_21_ticket_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_4_21
    ADD CONSTRAINT raffles_jackpot_4_21_ticket_id_fk FOREIGN KEY (ticket_id) REFERENCES public.bets_jackpot_4_21(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_jackpot_4_21 raffles_jackpot_4_21_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_4_21
    ADD CONSTRAINT raffles_jackpot_4_21_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_jackpot_5_36 raffles_jackpot_5_36_lottery_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_5_36
    ADD CONSTRAINT raffles_jackpot_5_36_lottery_id_fk FOREIGN KEY (lottery_id) REFERENCES public.jackpot_5_36(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_jackpot_5_36 raffles_jackpot_5_36_ticket_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_5_36
    ADD CONSTRAINT raffles_jackpot_5_36_ticket_id_fk FOREIGN KEY (ticket_id) REFERENCES public.bets_jackpot_5_36(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_jackpot_5_36 raffles_jackpot_5_36_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_5_36
    ADD CONSTRAINT raffles_jackpot_5_36_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_jackpot_6_45 raffles_jackpot_6_45_lottery_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_6_45
    ADD CONSTRAINT raffles_jackpot_6_45_lottery_id_fk FOREIGN KEY (lottery_id) REFERENCES public.jackpot_6_45(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_jackpot_6_45 raffles_jackpot_6_45_ticket_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_6_45
    ADD CONSTRAINT raffles_jackpot_6_45_ticket_id_fk FOREIGN KEY (ticket_id) REFERENCES public.bets_jackpot_6_45(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_jackpot_6_45 raffles_jackpot_6_45_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_jackpot_6_45
    ADD CONSTRAINT raffles_jackpot_6_45_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_prize_jackpot raffles_prize_jackpot_lottery_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_prize_jackpot
    ADD CONSTRAINT raffles_prize_jackpot_lottery_id_fk FOREIGN KEY (lottery_id) REFERENCES public.prize_jackpot(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_prize_jackpot raffles_prize_jackpot_ticket_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_prize_jackpot
    ADD CONSTRAINT raffles_prize_jackpot_ticket_id_fk FOREIGN KEY (ticket_id) REFERENCES public.bets_prize_jackpot(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_prize_jackpot raffles_prize_jackpot_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_prize_jackpot
    ADD CONSTRAINT raffles_prize_jackpot_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_rapidos raffles_rapidos_lottery_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_rapidos
    ADD CONSTRAINT raffles_rapidos_lottery_id_fk FOREIGN KEY (lottery_id) REFERENCES public.rapidos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_rapidos raffles_rapidos_ticket_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_rapidos
    ADD CONSTRAINT raffles_rapidos_ticket_id_fk FOREIGN KEY (ticket_id) REFERENCES public.bets_rapidos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_rapidos raffles_rapidos_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_rapidos
    ADD CONSTRAINT raffles_rapidos_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_two_numbers raffles_two_numbers_lottery_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_two_numbers
    ADD CONSTRAINT raffles_two_numbers_lottery_id_fk FOREIGN KEY (lottery_id) REFERENCES public.two_numbers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_two_numbers raffles_two_numbers_ticket_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_two_numbers
    ADD CONSTRAINT raffles_two_numbers_ticket_id_fk FOREIGN KEY (ticket_id) REFERENCES public.bets_two_numbers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: raffles_two_numbers raffles_two_numbers_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raffles_two_numbers
    ADD CONSTRAINT raffles_two_numbers_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wallets wallets_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallets_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

