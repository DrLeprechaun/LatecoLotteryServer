--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.7
-- Dumped by pg_dump version 9.6.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE alembic_version OWNER TO postgres;

--
-- Name: bank; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bank (
    id integer NOT NULL,
    lottery_5_36 real,
    lottery_6_45 real,
    lottery_4_20 real,
    lottery_7_49 real,
    jackpot_5_36 real,
    jackpot_6_45 real,
    jackpot_4_20 real,
    jackpot_7_49 real,
    superjackpot real
);


ALTER TABLE bank OWNER TO postgres;

--
-- Name: bank_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bank_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bank_id_seq OWNER TO postgres;

--
-- Name: bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bank_id_seq OWNED BY bank.id;


--
-- Name: bets_jackpot_4_20; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bets_jackpot_4_20 (
    id bigint NOT NULL,
    user_id integer,
    combination integer[],
    is_active boolean,
    is_win boolean,
    lottery bigint
);


ALTER TABLE bets_jackpot_4_20 OWNER TO postgres;

--
-- Name: bets_jackpot_4_20_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_jackpot_4_20_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_jackpot_4_20_id_seq OWNER TO postgres;

--
-- Name: bets_jackpot_4_20_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bets_jackpot_4_20_id_seq OWNED BY bets_jackpot_4_20.id;


--
-- Name: bets_jackpot_4_21_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_jackpot_4_21_id_seq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_jackpot_4_21_id_seq OWNER TO postgres;

--
-- Name: bets_jackpot_4_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bets_jackpot_4_21 (
    id bigint DEFAULT nextval('bets_jackpot_4_21_id_seq'::regclass) NOT NULL,
    user_id integer,
    combination integer[],
    is_active boolean,
    is_win boolean,
    lottery bigint
);


ALTER TABLE bets_jackpot_4_21 OWNER TO postgres;

--
-- Name: bets_jackpot_5_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bets_jackpot_5_36 (
    id bigint NOT NULL,
    user_id integer,
    combination integer[],
    is_active boolean,
    is_win boolean,
    lottery bigint
);


ALTER TABLE bets_jackpot_5_36 OWNER TO postgres;

--
-- Name: bets_jackpot_5_36_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_jackpot_5_36_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_jackpot_5_36_id_seq OWNER TO postgres;

--
-- Name: bets_jackpot_5_36_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bets_jackpot_5_36_id_seq OWNED BY bets_jackpot_5_36.id;


--
-- Name: bets_jackpot_6_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bets_jackpot_6_45 (
    id bigint NOT NULL,
    user_id integer,
    combination integer[],
    is_active boolean,
    is_win boolean,
    lottery bigint
);


ALTER TABLE bets_jackpot_6_45 OWNER TO postgres;

--
-- Name: bets_jackpot_6_45_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_jackpot_6_45_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_jackpot_6_45_id_seq OWNER TO postgres;

--
-- Name: bets_jackpot_6_45_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bets_jackpot_6_45_id_seq OWNED BY bets_jackpot_6_45.id;


--
-- Name: bets_jackpot_7_49; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bets_jackpot_7_49 (
    id bigint NOT NULL,
    user_id integer,
    combination integer[],
    is_active boolean,
    is_win boolean,
    lottery bigint
);


ALTER TABLE bets_jackpot_7_49 OWNER TO postgres;

--
-- Name: bets_jackpot_7_49_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_jackpot_7_49_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_jackpot_7_49_id_seq OWNER TO postgres;

--
-- Name: bets_jackpot_7_49_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bets_jackpot_7_49_id_seq OWNED BY bets_jackpot_7_49.id;


--
-- Name: bets_lottery_4_20; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bets_lottery_4_20 (
    id bigint NOT NULL,
    user_id integer,
    combination integer[],
    is_active boolean,
    is_win boolean,
    lottery bigint
);


ALTER TABLE bets_lottery_4_20 OWNER TO postgres;

--
-- Name: bets_lottery_4_20_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_lottery_4_20_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_lottery_4_20_id_seq OWNER TO postgres;

--
-- Name: bets_lottery_4_20_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bets_lottery_4_20_id_seq OWNED BY bets_lottery_4_20.id;


--
-- Name: bets_lottery_4_21_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_lottery_4_21_id_seq
    START WITH 11
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_lottery_4_21_id_seq OWNER TO postgres;

--
-- Name: bets_lottery_5_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bets_lottery_5_36 (
    id bigint NOT NULL,
    user_id integer,
    combination integer[],
    is_active boolean,
    is_win boolean,
    lottery bigint
);


ALTER TABLE bets_lottery_5_36 OWNER TO postgres;

--
-- Name: bets_lottery_5_36_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_lottery_5_36_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_lottery_5_36_id_seq OWNER TO postgres;

--
-- Name: bets_lottery_5_36_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bets_lottery_5_36_id_seq OWNED BY bets_lottery_5_36.id;


--
-- Name: bets_lottery_6_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bets_lottery_6_45 (
    id bigint NOT NULL,
    user_id integer,
    combination integer[],
    is_active boolean,
    is_win boolean,
    lottery bigint
);


ALTER TABLE bets_lottery_6_45 OWNER TO postgres;

--
-- Name: bets_lottery_6_45_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_lottery_6_45_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_lottery_6_45_id_seq OWNER TO postgres;

--
-- Name: bets_lottery_6_45_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bets_lottery_6_45_id_seq OWNED BY bets_lottery_6_45.id;


--
-- Name: bets_lottery_7_49; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bets_lottery_7_49 (
    id bigint NOT NULL,
    user_id integer,
    combination integer[],
    is_active boolean,
    is_win boolean,
    lottery bigint
);


ALTER TABLE bets_lottery_7_49 OWNER TO postgres;

--
-- Name: bets_lottery_7_49_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_lottery_7_49_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_lottery_7_49_id_seq OWNER TO postgres;

--
-- Name: bets_lottery_7_49_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bets_lottery_7_49_id_seq OWNED BY bets_lottery_7_49.id;


--
-- Name: lottery_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE lottery_tokens (
    id integer NOT NULL,
    user_id integer,
    amount bigint
);


ALTER TABLE lottery_tokens OWNER TO postgres;

--
-- Name: bets_lottery_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_lottery_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_lottery_tokens_id_seq OWNER TO postgres;

--
-- Name: bets_lottery_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bets_lottery_tokens_id_seq OWNED BY lottery_tokens.id;


--
-- Name: bets_rapidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_rapidos_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_rapidos_id_seq OWNER TO postgres;

--
-- Name: bets_rapidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bets_rapidos (
    id bigint DEFAULT nextval('bets_rapidos_id_seq'::regclass) NOT NULL,
    user_id integer,
    combination integer[],
    is_active boolean,
    is_win boolean,
    lottery bigint
);


ALTER TABLE bets_rapidos OWNER TO postgres;

--
-- Name: bets_supers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_supers_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_supers_id_seq OWNER TO postgres;

--
-- Name: bets_supers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bets_supers (
    id bigint DEFAULT nextval('bets_supers_id_seq'::regclass) NOT NULL,
    user_id integer,
    combination integer[],
    is_active boolean,
    is_win boolean,
    lottery bigint
);


ALTER TABLE bets_supers OWNER TO postgres;

--
-- Name: bets_top3_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bets_top3_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bets_top3_id_seq OWNER TO postgres;

--
-- Name: bets_top3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bets_top3 (
    id bigint DEFAULT nextval('bets_top3_id_seq'::regclass) NOT NULL,
    user_id integer,
    combination integer[],
    is_active boolean,
    is_win boolean,
    lottery bigint
);


ALTER TABLE bets_top3 OWNER TO postgres;

--
-- Name: blacklist_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE blacklist_tokens (
    id integer NOT NULL,
    token character varying(500) NOT NULL,
    blacklisted_on timestamp without time zone NOT NULL
);


ALTER TABLE blacklist_tokens OWNER TO postgres;

--
-- Name: blacklist_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blacklist_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blacklist_tokens_id_seq OWNER TO postgres;

--
-- Name: blacklist_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blacklist_tokens_id_seq OWNED BY blacklist_tokens.id;


--
-- Name: jackpot_4_20; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jackpot_4_20 (
    id bigint NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE jackpot_4_20 OWNER TO postgres;

--
-- Name: jackpot_4_20_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE jackpot_4_20_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE jackpot_4_20_id_seq OWNER TO postgres;

--
-- Name: jackpot_4_20_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE jackpot_4_20_id_seq OWNED BY jackpot_4_20.id;


--
-- Name: jackpot_4_21_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE jackpot_4_21_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE jackpot_4_21_id_seq OWNER TO postgres;

--
-- Name: jackpot_4_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jackpot_4_21 (
    id bigint DEFAULT nextval('jackpot_4_21_id_seq'::regclass) NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE jackpot_4_21 OWNER TO postgres;

--
-- Name: jackpot_5_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jackpot_5_36 (
    id bigint NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE jackpot_5_36 OWNER TO postgres;

--
-- Name: jackpot_5_36_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE jackpot_5_36_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE jackpot_5_36_id_seq OWNER TO postgres;

--
-- Name: jackpot_5_36_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE jackpot_5_36_id_seq OWNED BY jackpot_5_36.id;


--
-- Name: jackpot_6_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jackpot_6_45 (
    id bigint NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE jackpot_6_45 OWNER TO postgres;

--
-- Name: jackpot_6_45_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE jackpot_6_45_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE jackpot_6_45_id_seq OWNER TO postgres;

--
-- Name: jackpot_6_45_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE jackpot_6_45_id_seq OWNED BY jackpot_6_45.id;


--
-- Name: jackpot_7_49; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jackpot_7_49 (
    id bigint NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE jackpot_7_49 OWNER TO postgres;

--
-- Name: jackpot_7_49_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE jackpot_7_49_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE jackpot_7_49_id_seq OWNER TO postgres;

--
-- Name: jackpot_7_49_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE jackpot_7_49_id_seq OWNED BY jackpot_7_49.id;


--
-- Name: lottery_4_20; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE lottery_4_20 (
    id bigint NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE lottery_4_20 OWNER TO postgres;

--
-- Name: lottery_4_20_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lottery_4_20_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lottery_4_20_id_seq OWNER TO postgres;

--
-- Name: lottery_4_20_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lottery_4_20_id_seq OWNED BY lottery_4_20.id;


--
-- Name: lottery_5_36_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lottery_5_36_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lottery_5_36_id_seq OWNER TO postgres;

--
-- Name: lottery_5_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE lottery_5_36 (
    id bigint DEFAULT nextval('lottery_5_36_id_seq'::regclass) NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE lottery_5_36 OWNER TO postgres;

--
-- Name: lottery_6_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE lottery_6_45 (
    id bigint NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE lottery_6_45 OWNER TO postgres;

--
-- Name: lottery_6_45_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lottery_6_45_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lottery_6_45_id_seq OWNER TO postgres;

--
-- Name: lottery_6_45_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lottery_6_45_id_seq OWNED BY lottery_6_45.id;


--
-- Name: lottery_7_49; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE lottery_7_49 (
    id bigint NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE lottery_7_49 OWNER TO postgres;

--
-- Name: lottery_7_49_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lottery_7_49_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lottery_7_49_id_seq OWNER TO postgres;

--
-- Name: lottery_7_49_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lottery_7_49_id_seq OWNED BY lottery_7_49.id;


--
-- Name: lottery_holder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE lottery_holder (
    bank bigint
);


ALTER TABLE lottery_holder OWNER TO postgres;

--
-- Name: players; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE players (
    id bigint NOT NULL,
    player_name text,
    first_name text,
    last_name text,
    amount numeric(255,0)
);


ALTER TABLE players OWNER TO postgres;

--
-- Name: rapidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rapidos_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rapidos_id_seq OWNER TO postgres;

--
-- Name: rapidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE rapidos (
    id bigint DEFAULT nextval('rapidos_id_seq'::regclass) NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE rapidos OWNER TO postgres;

--
-- Name: regular_bets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE regular_bets (
    id bigint NOT NULL,
    lottery_id_fk bigint NOT NULL,
    user_id_fk bigint NOT NULL,
    combination integer[],
    bet_timestamp timestamp without time zone,
    win boolean
);


ALTER TABLE regular_bets OWNER TO postgres;

--
-- Name: regular_bets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE regular_bets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE regular_bets_id_seq OWNER TO postgres;

--
-- Name: regular_bets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE regular_bets_id_seq OWNED BY regular_bets.id;


--
-- Name: regular_lottery; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE regular_lottery (
    id bigint NOT NULL,
    date_planned timestamp without time zone,
    win_combination integer[],
    winners_number integer,
    date_fact timestamp without time zone,
    winners bigint[],
    is_held boolean
);


ALTER TABLE regular_lottery OWNER TO postgres;

--
-- Name: regular_lottery_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE regular_lottery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE regular_lottery_id_seq OWNER TO postgres;

--
-- Name: regular_lottery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE regular_lottery_id_seq OWNED BY regular_lottery.id;


--
-- Name: top3_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE top3_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE top3_id_seq OWNER TO postgres;

--
-- Name: supers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE supers (
    id bigint DEFAULT nextval('top3_id_seq'::regclass) NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE supers OWNER TO postgres;

--
-- Name: supers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE supers_id_seq
    START WITH 30
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE supers_id_seq OWNER TO postgres;

--
-- Name: top3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE top3 (
    id bigint DEFAULT nextval('top3_id_seq'::regclass) NOT NULL,
    combination integer[],
    win_tickets bigint[],
    date timestamp without time zone
);


ALTER TABLE top3 OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    registered_on timestamp without time zone NOT NULL,
    admin boolean NOT NULL
);


ALTER TABLE users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: wallets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wallets (
    id integer NOT NULL,
    user_id integer,
    amount real
);


ALTER TABLE wallets OWNER TO postgres;

--
-- Name: wallets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wallets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wallets_id_seq OWNER TO postgres;

--
-- Name: wallets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wallets_id_seq OWNED BY wallets.id;


--
-- Name: bank id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bank ALTER COLUMN id SET DEFAULT nextval('bank_id_seq'::regclass);


--
-- Name: bets_jackpot_4_20 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_4_20 ALTER COLUMN id SET DEFAULT nextval('bets_jackpot_4_20_id_seq'::regclass);


--
-- Name: bets_jackpot_5_36 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_5_36 ALTER COLUMN id SET DEFAULT nextval('bets_jackpot_5_36_id_seq'::regclass);


--
-- Name: bets_jackpot_6_45 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_6_45 ALTER COLUMN id SET DEFAULT nextval('bets_jackpot_6_45_id_seq'::regclass);


--
-- Name: bets_jackpot_7_49 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_7_49 ALTER COLUMN id SET DEFAULT nextval('bets_jackpot_7_49_id_seq'::regclass);


--
-- Name: bets_lottery_4_20 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_4_20 ALTER COLUMN id SET DEFAULT nextval('bets_lottery_4_20_id_seq'::regclass);


--
-- Name: bets_lottery_5_36 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_5_36 ALTER COLUMN id SET DEFAULT nextval('bets_lottery_5_36_id_seq'::regclass);


--
-- Name: bets_lottery_6_45 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_6_45 ALTER COLUMN id SET DEFAULT nextval('bets_lottery_6_45_id_seq'::regclass);


--
-- Name: bets_lottery_7_49 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_7_49 ALTER COLUMN id SET DEFAULT nextval('bets_lottery_7_49_id_seq'::regclass);


--
-- Name: blacklist_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blacklist_tokens ALTER COLUMN id SET DEFAULT nextval('blacklist_tokens_id_seq'::regclass);


--
-- Name: jackpot_4_20 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jackpot_4_20 ALTER COLUMN id SET DEFAULT nextval('jackpot_4_20_id_seq'::regclass);


--
-- Name: jackpot_5_36 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jackpot_5_36 ALTER COLUMN id SET DEFAULT nextval('jackpot_5_36_id_seq'::regclass);


--
-- Name: jackpot_6_45 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jackpot_6_45 ALTER COLUMN id SET DEFAULT nextval('jackpot_6_45_id_seq'::regclass);


--
-- Name: jackpot_7_49 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jackpot_7_49 ALTER COLUMN id SET DEFAULT nextval('jackpot_7_49_id_seq'::regclass);


--
-- Name: lottery_4_20 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lottery_4_20 ALTER COLUMN id SET DEFAULT nextval('lottery_4_20_id_seq'::regclass);


--
-- Name: lottery_6_45 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lottery_6_45 ALTER COLUMN id SET DEFAULT nextval('lottery_6_45_id_seq'::regclass);


--
-- Name: lottery_7_49 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lottery_7_49 ALTER COLUMN id SET DEFAULT nextval('lottery_7_49_id_seq'::regclass);


--
-- Name: lottery_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lottery_tokens ALTER COLUMN id SET DEFAULT nextval('bets_lottery_tokens_id_seq'::regclass);


--
-- Name: regular_bets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY regular_bets ALTER COLUMN id SET DEFAULT nextval('regular_bets_id_seq'::regclass);


--
-- Name: regular_lottery id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY regular_lottery ALTER COLUMN id SET DEFAULT nextval('regular_lottery_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: wallets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wallets ALTER COLUMN id SET DEFAULT nextval('wallets_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY alembic_version (version_num) FROM stdin;
\.


--
-- Data for Name: bank; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bank (id, lottery_5_36, lottery_6_45, lottery_4_20, lottery_7_49, jackpot_5_36, jackpot_6_45, jackpot_4_20, jackpot_7_49, superjackpot) FROM stdin;
1	0	0	0	0	0	0	0	0	0
\.


--
-- Name: bank_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bank_id_seq', 2, true);


--
-- Data for Name: bets_jackpot_4_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bets_jackpot_4_20 (id, user_id, combination, is_active, is_win, lottery) FROM stdin;
1	1	{1,2,3,4}	f	f	1
2	1	{1,2,3,8}	f	f	12
\.


--
-- Name: bets_jackpot_4_20_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_jackpot_4_20_id_seq', 2, true);


--
-- Data for Name: bets_jackpot_4_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bets_jackpot_4_21 (id, user_id, combination, is_active, is_win, lottery) FROM stdin;
\.


--
-- Name: bets_jackpot_4_21_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_jackpot_4_21_id_seq', 2, false);


--
-- Data for Name: bets_jackpot_5_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bets_jackpot_5_36 (id, user_id, combination, is_active, is_win, lottery) FROM stdin;
1	1	{1,2,3,4,5}	f	f	1
2	1	{1,7,14,21,28}	f	f	12
\.


--
-- Name: bets_jackpot_5_36_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_jackpot_5_36_id_seq', 2, true);


--
-- Data for Name: bets_jackpot_6_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bets_jackpot_6_45 (id, user_id, combination, is_active, is_win, lottery) FROM stdin;
1	5	{8,16,24,23,32,42}	f	f	1
2	1	{1,2,3,4,5,6}	f	f	1
3	1	{1,7,13,19,25,29}	f	f	11
4	1	{28,33,38,37,32,27}	f	f	12
5	1	{28,33,38,37,32,27}	f	f	12
6	1	{28,33,38,37,32,27}	f	f	12
\.


--
-- Name: bets_jackpot_6_45_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_jackpot_6_45_id_seq', 6, true);


--
-- Data for Name: bets_jackpot_7_49; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bets_jackpot_7_49 (id, user_id, combination, is_active, is_win, lottery) FROM stdin;
2	5	{1,2,3,10,9,8,15}	f	f	1
3	1	{1,2,3,4,5,6,7}	f	f	1
4	1	{49,43,37,31,25,19,13}	f	f	9
\.


--
-- Name: bets_jackpot_7_49_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_jackpot_7_49_id_seq', 4, true);


--
-- Data for Name: bets_lottery_4_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bets_lottery_4_20 (id, user_id, combination, is_active, is_win, lottery) FROM stdin;
4	1	{1,2,3,4}	f	f	1
5	1	{7,8,9,10}	f	f	1
3	5	{19,17,6,11}	f	f	1
6	1	{19,20,7,17}	f	f	8
7	1	{2,8,12,18}	f	f	11
8	1	{1,7,13,19}	f	f	11
9	1	{1,7,13,19}	f	f	11
10	5	{2,8,14,20}	f	f	13
11	5	{9,14,19,13}	f	f	18
\.


--
-- Name: bets_lottery_4_20_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_lottery_4_20_id_seq', 11, true);


--
-- Name: bets_lottery_4_21_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_lottery_4_21_id_seq', 11, false);


--
-- Data for Name: bets_lottery_5_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bets_lottery_5_36 (id, user_id, combination, is_active, is_win, lottery) FROM stdin;
7	5	{10,13,4,27,34}	f	f	11
8	5	{12,15,1,26,20}	f	f	12
9	5	{25,14,22,3,31}	f	f	12
3	5	{1,5,6,3,25}	f	f	12
10	5	{11,29,6,9,1}	f	f	12
4	5	{13,27,16,36,7}	f	f	12
6	1	{10,27,15,2,28}	f	f	12
5	5	{24,25,1,29,23}	f	f	12
16	1	{1,2,3,4,5}	f	f	24
17	1	{1,2,3,4,5}	f	f	24
18	1	{1,2,3,4,5}	f	f	24
19	1	{1,2,3,4,5}	f	f	24
20	1	{1,2,3,4,5}	f	f	24
21	1	{1,2,3,4,5}	f	f	24
22	1	{1,2,3,4,5}	f	f	24
23	1	{1,2,3,4,5}	f	f	24
24	1	{1,2,3,4,5}	f	f	24
25	1	{1,2,3,4,5}	f	f	24
26	1	{9,15,21,27,33}	f	f	24
27	5	{1,15,10,23,18}	f	f	26
28	5	{1,20,21,16,29}	f	f	27
29	1	{8,15,22,29,36}	f	f	29
30	5	{16,24,36,7,15}	f	f	35
\.


--
-- Name: bets_lottery_5_36_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_lottery_5_36_id_seq', 30, true);


--
-- Data for Name: bets_lottery_6_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bets_lottery_6_45 (id, user_id, combination, is_active, is_win, lottery) FROM stdin;
3	1	{7,8,9,10,11,12}	f	f	2
4	1	{1,2,6,7,11,12}	f	f	11
5	1	{1,2,6,7,11,12}	f	f	11
6	1	{22,23,24,29,27,28}	f	f	12
\.


--
-- Name: bets_lottery_6_45_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_lottery_6_45_id_seq', 6, true);


--
-- Data for Name: bets_lottery_7_49; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bets_lottery_7_49 (id, user_id, combination, is_active, is_win, lottery) FROM stdin;
3	1	{1,2,3,4,5,6,7}	f	f	1
4	1	{24,25,36,1,28,21,27}	f	f	1
5	1	{1,2,3,4,5,6,7}	f	f	11
6	1	{8,9,10,11,12,13,14}	f	f	12
7	1	{1,9,10,11,4,5,12}	f	f	12
8	5	{19,13,31,41,35,9,3}	f	f	12
9	5	{19,13,31,41,35,9,3}	f	f	12
10	7	{7,13,19,25,31,37,43}	f	f	13
\.


--
-- Name: bets_lottery_7_49_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_lottery_7_49_id_seq', 10, true);


--
-- Name: bets_lottery_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_lottery_tokens_id_seq', 10, true);


--
-- Data for Name: bets_rapidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bets_rapidos (id, user_id, combination, is_active, is_win, lottery) FROM stdin;
\.


--
-- Name: bets_rapidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_rapidos_id_seq', 30, false);


--
-- Data for Name: bets_supers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bets_supers (id, user_id, combination, is_active, is_win, lottery) FROM stdin;
\.


--
-- Name: bets_supers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_supers_id_seq', 30, false);


--
-- Data for Name: bets_top3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bets_top3 (id, user_id, combination, is_active, is_win, lottery) FROM stdin;
\.


--
-- Name: bets_top3_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bets_top3_id_seq', 30, false);


--
-- Data for Name: blacklist_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blacklist_tokens (id, token, blacklisted_on) FROM stdin;
\.


--
-- Name: blacklist_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blacklist_tokens_id_seq', 1, false);


--
-- Data for Name: jackpot_4_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jackpot_4_20 (id, combination, win_tickets, date) FROM stdin;
1	{1,13,19,12}	{}	2018-04-28 19:21:00.01038
2	{2,14,4,15}	{}	2018-04-29 01:21:00.006036
3	{11,3,19,14}	{}	2018-04-30 01:21:00.004232
4	{9,14,6,17}	{}	2018-05-01 01:21:00.006721
5	{15,6,18,3}	{}	2018-05-02 01:21:00.004817
6	{15,20,16,4}	{}	2018-05-03 01:21:00.003976
7	{6,1,5,4}	{}	2018-05-04 01:21:00.004023
8	{11,20,12,8}	{}	2018-05-05 01:21:00.003908
9	{19,8,3,6}	{}	2018-05-06 01:21:00.006127
10	{10,13,2,9}	{}	2018-05-07 01:21:00.004518
11	{16,5,6,10}	{}	2018-05-08 01:21:00.005309
12	{19,8,7,9}	{}	2018-05-09 01:21:00.010441
13	{8,10,20,16}	{}	2018-05-10 01:21:00.007613
14	{18,1,8,6}	{}	2018-05-11 01:21:00.007568
15	{20,9,3,8}	{}	2018-05-15 01:21:00.010452
16	{15,4,2,17}	{}	2018-05-16 01:21:00.01062
17	{10,8,11,12}	{}	2018-05-17 01:21:00.007758
18	{10,20,7,3}	{}	2018-05-18 01:21:00.00771
19	{13,8,2,4}	{}	2018-05-19 01:21:00.007756
20	{2,4,15,20}	{}	2018-05-20 01:21:00.007672
21	{10,7,11,2}	{}	2018-05-21 01:21:00.007643
22	{7,15,3,16}	{}	2018-05-22 01:21:00.007609
23	{7,3,6,10}	{}	2018-05-23 01:21:00.007722
24	{9,7,11,17}	{}	2018-05-24 01:21:00.007679
25	{18,6,9,13}	{}	2018-05-25 01:21:00.007742
26	{3,9,1,19}	{}	2018-05-26 01:21:00.007676
27	{9,19,17,12}	{}	2018-05-27 01:21:00.007719
28	{7,13,8,1}	{}	2018-05-28 01:21:00.007649
29	{12,13,2,20}	{}	2018-05-29 01:21:00.007708
30	{7,3,6,5}	{}	2018-05-30 01:21:00.007742
\.


--
-- Name: jackpot_4_20_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('jackpot_4_20_id_seq', 30, true);


--
-- Data for Name: jackpot_4_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jackpot_4_21 (id, combination, win_tickets, date) FROM stdin;
\.


--
-- Name: jackpot_4_21_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('jackpot_4_21_id_seq', 30, false);


--
-- Data for Name: jackpot_5_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jackpot_5_36 (id, combination, win_tickets, date) FROM stdin;
1	{7,10,31,17,23}	{}	2018-04-28 19:19:00.011453
2	{22,34,31,6,16}	{}	2018-04-29 01:19:00.006275
3	{11,1,35,32,7}	{}	2018-04-30 01:19:00.004172
4	{17,36,9,2,6}	{}	2018-05-01 01:19:00.003969
5	{32,17,33,36,20}	{}	2018-05-02 01:19:00.004551
6	{13,11,27,5,1}	{}	2018-05-03 01:19:00.005117
7	{11,25,4,26,18}	{}	2018-05-04 01:19:00.004315
8	{10,36,14,8,35}	{}	2018-05-05 01:19:00.005988
9	{3,26,28,32,30}	{}	2018-05-06 01:19:00.005647
10	{6,18,34,27,23}	{}	2018-05-07 01:19:00.004437
11	{33,30,26,20,3}	{}	2018-05-08 01:19:00.005944
12	{8,22,25,28,29}	{}	2018-05-09 01:19:00.010373
13	{4,21,34,27,26}	{}	2018-05-10 01:19:00.007657
14	{29,33,10,12,22}	{}	2018-05-11 01:19:00.00767
15	{25,29,27,26,10}	{}	2018-05-15 01:19:00.010245
16	{24,36,29,3,11}	{}	2018-05-16 01:19:00.010429
17	{31,2,17,1,11}	{}	2018-05-17 01:19:00.007682
18	{28,5,23,26,3}	{}	2018-05-18 01:19:00.007675
19	{25,29,15,2,17}	{}	2018-05-19 01:19:00.007673
20	{36,16,28,18,11}	{}	2018-05-20 01:19:00.00772
21	{20,31,11,6,1}	{}	2018-05-21 01:19:00.00776
22	{23,32,25,19,13}	{}	2018-05-22 01:19:00.007715
23	{36,12,24,17,3}	{}	2018-05-23 01:19:00.007653
24	{18,13,28,24,16}	{}	2018-05-24 01:19:00.007726
25	{26,21,34,20,25}	{}	2018-05-25 01:19:00.007575
26	{22,24,10,12,32}	{}	2018-05-26 01:19:00.007776
27	{15,22,31,2,7}	{}	2018-05-27 01:19:00.007691
28	{25,31,36,26,4}	{}	2018-05-28 01:19:00.0077
29	{20,19,7,16,6}	{}	2018-05-29 01:19:00.007702
30	{26,14,18,32,12}	{}	2018-05-30 01:19:00.007721
\.


--
-- Name: jackpot_5_36_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('jackpot_5_36_id_seq', 30, true);


--
-- Data for Name: jackpot_6_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jackpot_6_45 (id, combination, win_tickets, date) FROM stdin;
1	{22,14,28,44,2,45}	{}	2018-04-28 19:20:00.010634
2	{8,43,19,11,16,1}	{}	2018-04-29 01:20:00.006494
3	{38,30,43,7,13,9}	{}	2018-04-30 01:20:00.004341
4	{24,41,8,31,4,28}	{}	2018-05-01 01:20:00.003985
5	{30,9,16,14,38,22}	{}	2018-05-02 01:20:00.005635
6	{38,26,12,45,21,16}	{}	2018-05-03 01:20:00.005043
7	{20,9,28,8,26,45}	{}	2018-05-04 01:20:00.004185
8	{25,8,3,4,26,33}	{}	2018-05-05 01:20:00.004745
9	{24,13,7,26,12,25}	{}	2018-05-06 01:20:00.006553
10	{24,37,20,41,28,6}	{}	2018-05-07 01:20:00.004128
11	{42,38,35,3,16,26}	{}	2018-05-08 01:20:00.0058
12	{22,37,17,12,27,44}	{}	2018-05-09 01:20:00.010307
13	{15,24,28,9,4,22}	{}	2018-05-10 01:20:00.007667
14	{22,40,26,21,38,17}	{}	2018-05-11 01:20:00.007646
15	{29,6,39,23,18,36}	{}	2018-05-15 01:20:00.010474
16	{11,10,7,36,2,29}	{}	2018-05-16 01:20:00.01047
17	{11,45,4,7,34,6}	{}	2018-05-17 01:20:00.008454
18	{14,28,23,17,12,42}	{}	2018-05-18 01:20:00.007787
19	{38,28,32,42,9,40}	{}	2018-05-19 01:20:00.007737
20	{45,7,36,4,3,10}	{}	2018-05-20 01:20:00.007822
21	{43,35,14,37,40,32}	{}	2018-05-21 01:20:00.007709
22	{14,40,7,21,24,39}	{}	2018-05-22 01:20:00.007711
23	{7,25,31,39,9,4}	{}	2018-05-23 01:20:00.007697
24	{10,2,19,20,29,40}	{}	2018-05-24 01:20:00.007692
25	{26,16,25,17,14,9}	{}	2018-05-25 01:20:00.007653
26	{12,35,20,23,33,18}	{}	2018-05-26 01:20:00.007735
27	{24,26,9,32,28,20}	{}	2018-05-27 01:20:00.008492
28	{12,33,23,4,19,14}	{}	2018-05-28 01:20:00.007738
29	{7,37,30,15,28,33}	{}	2018-05-29 01:20:00.00777
30	{21,32,3,2,11,7}	{}	2018-05-30 01:20:00.007683
\.


--
-- Name: jackpot_6_45_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('jackpot_6_45_id_seq', 30, true);


--
-- Data for Name: jackpot_7_49; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jackpot_7_49 (id, combination, win_tickets, date) FROM stdin;
1	{20,48,31,5,24,34,22}	{}	2018-04-28 19:22:00.01035
2	{28,46,3,37,23,19,48}	{}	2018-04-29 01:22:00.005706
3	{44,8,24,22,41,38,3}	{}	2018-04-30 01:22:00.006809
4	{23,8,44,14,9,17,36}	{}	2018-05-01 01:22:00.004988
5	{22,10,4,23,30,49,42}	{}	2018-05-02 01:22:00.004562
6	{24,46,11,8,16,21,47}	{}	2018-05-03 01:22:00.003923
7	{3,42,8,49,40,32,30}	{}	2018-05-04 01:22:00.004587
8	{37,7,27,2,8,28,49}	{}	2018-05-05 01:22:00.004151
9	{47,46,6,11,34,9,20}	{}	2018-05-06 01:22:00.005765
10	{12,8,25,48,38,35,45}	{}	2018-05-07 01:22:00.005476
11	{41,16,37,28,8,33,5}	{}	2018-05-08 01:22:00.007385
12	{40,34,46,8,36,16,49}	{}	2018-05-09 01:22:00.010381
13	{14,46,26,16,27,5,25}	{}	2018-05-10 01:22:00.007633
14	{24,36,45,1,26,30,37}	{}	2018-05-11 01:22:00.007748
15	{16,43,38,14,13,3,5}	{}	2018-05-15 01:22:00.010205
16	{27,46,36,6,30,13,15}	{}	2018-05-16 01:22:00.011759
17	{13,29,33,39,28,21,41}	{}	2018-05-17 01:22:00.007777
18	{3,4,11,43,8,22,46}	{}	2018-05-18 01:22:00.007731
19	{10,21,25,7,36,49,45}	{}	2018-05-19 01:22:00.00769
20	{10,18,12,3,23,7,21}	{}	2018-05-20 01:22:00.007755
21	{14,29,9,45,39,25,11}	{}	2018-05-21 01:22:00.007841
22	{15,31,1,45,25,24,38}	{}	2018-05-22 01:22:00.007819
23	{4,21,41,33,8,39,12}	{}	2018-05-23 01:22:00.007707
24	{2,19,15,7,31,4,13}	{}	2018-05-24 01:22:00.007768
25	{29,14,38,48,8,35,49}	{}	2018-05-25 01:22:00.007761
26	{23,7,28,34,14,27,2}	{}	2018-05-26 01:22:00.007804
27	{36,28,5,23,6,8,17}	{}	2018-05-27 01:22:00.007701
28	{18,42,20,6,25,35,27}	{}	2018-05-28 01:22:00.007772
29	{1,4,31,45,30,15,20}	{}	2018-05-29 01:22:00.007744
30	{4,45,13,21,8,15,20}	{}	2018-05-30 01:22:00.007735
\.


--
-- Name: jackpot_7_49_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('jackpot_7_49_id_seq', 30, true);


--
-- Data for Name: lottery_4_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lottery_4_20 (id, combination, win_tickets, date) FROM stdin;
1	{18,7,20,3}	{}	2018-04-29 01:17:00.006483
2	{9,14,10,17}	{}	2018-04-30 01:17:00.005481
3	{3,8,18,11}	{}	2018-05-01 01:17:00.004064
4	{6,12,3,17}	{}	2018-05-02 01:17:00.005906
5	{12,4,2,9}	{}	2018-05-03 01:17:00.004501
6	{11,15,14,2}	{}	2018-05-04 01:17:00.004237
7	{11,4,19,8}	{}	2018-05-05 01:17:00.004234
8	{17,14,6,8}	{}	2018-05-06 01:17:00.005825
9	{12,16,3,13}	{}	2018-05-07 01:17:00.005024
10	{20,2,8,16}	{}	2018-05-08 01:17:00.006913
11	{11,9,4,7}	{}	2018-05-09 01:17:00.010929
12	{1,10,2,20}	{}	2018-05-10 01:17:00.009315
13	{8,19,13,16}	{}	2018-05-11 01:17:00.007804
14	{8,3,2,11}	{}	2018-05-15 01:17:00.010112
15	{17,5,12,15}	{}	2018-05-16 01:17:00.010346
16	{7,10,14,19}	{}	2018-05-17 01:17:00.009375
17	{6,16,3,5}	{}	2018-05-18 01:17:00.007749
18	{19,4,13,2}	{}	2018-05-19 01:17:00.007834
19	{15,9,1,3}	{}	2018-05-20 01:17:00.007736
20	{10,1,7,2}	{}	2018-05-21 01:17:00.007738
21	{4,17,9,16}	{}	2018-05-22 01:17:00.007633
22	{18,14,11,5}	{}	2018-05-23 01:17:00.007731
23	{9,11,3,7}	{}	2018-05-24 01:17:00.007675
24	{9,6,12,11}	{}	2018-05-25 01:17:00.007695
25	{11,15,6,7}	{}	2018-05-26 01:17:00.007663
26	{4,11,13,17}	{}	2018-05-27 01:17:00.007722
27	{13,8,14,6}	{}	2018-05-28 01:17:00.007741
28	{16,6,2,11}	{}	2018-05-29 01:17:00.007722
29	{19,7,12,18}	{}	2018-05-30 01:17:00.007786
\.


--
-- Name: lottery_4_20_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('lottery_4_20_id_seq', 29, true);


--
-- Data for Name: lottery_5_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lottery_5_36 (id, combination, win_tickets, date) FROM stdin;
11	{20,17,11,8,35}	{}	2018-04-28 15:02:00.008637
12	{2,24,10,9,28}	{}	2018-04-28 15:04:00.008603
13	{14,25,7,1,11}	{}	2018-04-28 18:15:00.007894
14	{2,13,34,20,7}	{}	2018-04-28 19:15:00.007902
15	{9,31,18,4,32}	{}	2018-04-29 01:15:00.006428
16	{32,10,36,31,11}	{}	2018-04-30 01:15:00.006028
17	{7,36,9,34,13}	{}	2018-05-01 01:15:00.005278
18	{11,17,33,35,21}	{}	2018-05-02 01:15:00.004114
19	{1,25,33,35,24}	{}	2018-05-03 01:15:00.005712
20	{28,7,35,20,27}	{}	2018-05-04 01:15:00.004141
21	{2,14,15,25,10}	{}	2018-05-05 01:15:00.007196
22	{2,31,15,27,10}	{}	2018-05-06 01:15:00.00513
23	{27,18,11,7,30}	{}	2018-05-07 01:15:00.005976
24	{19,13,8,4,31}	{}	2018-05-08 01:15:00.004363
25	{35,21,24,1,16}	{}	2018-05-09 01:15:00.007247
26	{22,24,8,27,36}	{}	2018-05-10 01:15:00.009708
27	{26,29,23,21,5}	{}	2018-05-11 01:15:00.00794
28	{5,21,16,28,6}	{}	2018-05-15 01:15:00.007711
29	{5,1,2,4,18}	{}	2018-05-16 01:15:00.007759
30	{36,9,30,31,1}	{}	2018-05-17 01:15:00.010634
31	{8,25,5,23,35}	{}	2018-05-18 01:15:00.007791
32	{29,27,25,16,34}	{}	2018-05-19 01:15:00.007751
33	{28,9,25,36,21}	{}	2018-05-20 01:15:00.007755
34	{25,18,20,27,28}	{}	2018-05-21 01:15:00.007763
35	{33,4,6,3,25}	{}	2018-05-22 01:15:00.007932
36	{13,31,1,22,20}	{}	2018-05-23 01:15:00.007696
37	{25,15,9,20,17}	{}	2018-05-24 01:15:00.007808
38	{28,34,23,27,30}	{}	2018-05-25 01:15:00.007788
39	{25,30,13,33,35}	{}	2018-05-26 01:15:00.007792
40	{27,26,23,4,18}	{}	2018-05-27 01:15:00.007762
41	{34,18,32,14,3}	{}	2018-05-28 01:15:00.007786
42	{34,35,25,21,14}	{}	2018-05-29 01:15:00.007788
43	{19,14,25,11,9}	{}	2018-05-30 01:15:00.007711
\.


--
-- Name: lottery_5_36_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('lottery_5_36_id_seq', 43, true);


--
-- Data for Name: lottery_6_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lottery_6_45 (id, combination, win_tickets, date) FROM stdin;
1	{17,6,43,26,3,5}	{}	2018-04-28 19:16:00.011106
2	{34,10,23,12,36,44}	{}	2018-04-29 01:16:00.008754
3	{44,15,25,5,33,13}	{}	2018-04-30 01:16:00.00538
4	{9,5,16,1,27,15}	{}	2018-05-01 01:16:00.004174
5	{6,14,40,17,24,42}	{}	2018-05-02 01:16:00.006086
6	{13,35,38,33,17,37}	{}	2018-05-03 01:16:00.005046
7	{24,37,39,23,10,44}	{}	2018-05-04 01:16:00.004518
8	{4,16,9,22,38,39}	{}	2018-05-05 01:16:00.004197
9	{20,3,18,45,4,44}	{}	2018-05-06 01:16:00.007156
10	{7,11,41,23,40,8}	{}	2018-05-07 01:16:00.005521
11	{13,22,11,35,32,16}	{}	2018-05-08 01:16:00.007962
12	{38,18,4,40,27,21}	{}	2018-05-09 01:16:00.010775
13	{31,13,14,41,4,7}	{}	2018-05-10 01:16:00.009247
14	{17,2,42,15,21,7}	{}	2018-05-11 01:16:00.007767
15	{35,21,23,15,28,13}	{}	2018-05-15 01:16:00.010946
16	{43,12,25,14,23,30}	{}	2018-05-16 01:16:00.011246
17	{22,36,44,19,12,37}	{}	2018-05-17 01:16:00.00927
18	{31,21,23,36,17,34}	{}	2018-05-18 01:16:00.007771
19	{43,14,42,40,34,15}	{}	2018-05-19 01:16:00.007646
20	{19,34,2,37,20,24}	{}	2018-05-20 01:16:00.007735
21	{2,45,14,18,15,4}	{}	2018-05-21 01:16:00.00776
22	{13,15,30,33,21,23}	{}	2018-05-22 01:16:00.007783
23	{3,6,5,42,26,20}	{}	2018-05-23 01:16:00.007718
24	{16,19,27,26,9,17}	{}	2018-05-24 01:16:00.007823
25	{28,45,24,23,38,29}	{}	2018-05-25 01:16:00.007703
26	{15,21,26,22,11,37}	{}	2018-05-26 01:16:00.007692
27	{9,24,44,41,42,40}	{}	2018-05-27 01:16:00.007699
28	{35,44,8,36,7,32}	{}	2018-05-28 01:16:00.007706
29	{33,14,42,2,25,16}	{}	2018-05-29 01:16:00.007734
30	{38,6,13,33,39,40}	{}	2018-05-30 01:16:00.007747
\.


--
-- Name: lottery_6_45_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('lottery_6_45_id_seq', 30, true);


--
-- Data for Name: lottery_7_49; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lottery_7_49 (id, combination, win_tickets, date) FROM stdin;
1	{40,25,37,9,39,6,38}	{}	2018-04-28 19:18:00.008148
2	{44,16,27,1,20,47,39}	{}	2018-04-29 01:18:00.006199
3	{37,33,16,15,9,48,44}	{}	2018-04-30 01:18:00.004228
4	{6,18,35,16,47,9,21}	{}	2018-05-01 01:18:00.004132
5	{39,30,14,27,42,31,21}	{}	2018-05-02 01:18:00.004801
6	{42,7,32,12,29,16,22}	{}	2018-05-03 01:18:00.004227
7	{19,34,9,27,47,17,46}	{}	2018-05-04 01:18:00.004134
8	{48,32,6,30,10,4,9}	{}	2018-05-05 01:18:00.004266
9	{27,30,38,14,20,29,13}	{}	2018-05-06 01:18:00.0057
10	{42,39,2,32,19,8,16}	{}	2018-05-07 01:18:00.00415
11	{2,19,23,12,32,41,20}	{}	2018-05-08 01:18:00.006002
12	{46,22,29,4,43,47,37}	{}	2018-05-09 01:18:00.010478
13	{36,1,34,32,5,14,30}	{}	2018-05-10 01:18:00.007871
14	{24,21,12,4,18,7,48}	{}	2018-05-11 01:18:00.007624
15	{29,32,36,26,35,1,45}	{}	2018-05-15 01:18:00.010156
16	{13,40,49,26,42,39,8}	{}	2018-05-16 01:18:00.010538
17	{15,38,42,14,27,7,33}	{}	2018-05-17 01:18:00.007854
18	{10,8,36,28,5,7,37}	{}	2018-05-18 01:18:00.007701
19	{35,41,16,14,7,17,31}	{}	2018-05-19 01:18:00.007753
20	{38,22,13,40,1,6,7}	{}	2018-05-20 01:18:00.007705
21	{23,33,10,42,25,28,30}	{}	2018-05-21 01:18:00.00772
22	{46,7,27,44,39,25,40}	{}	2018-05-22 01:18:00.007767
23	{6,18,31,16,49,1,45}	{}	2018-05-23 01:18:00.007689
24	{36,4,41,35,22,1,25}	{}	2018-05-24 01:18:00.007743
25	{31,1,6,28,4,15,18}	{}	2018-05-25 01:18:00.007743
26	{1,8,26,25,23,43,31}	{}	2018-05-26 01:18:00.00775
27	{4,1,41,23,44,10,22}	{}	2018-05-27 01:18:00.007718
28	{29,36,11,21,8,27,35}	{}	2018-05-28 01:18:00.007752
29	{1,10,12,13,38,8,23}	{}	2018-05-29 01:18:00.007681
30	{42,44,9,34,45,3,12}	{}	2018-05-30 01:18:00.007788
\.


--
-- Name: lottery_7_49_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('lottery_7_49_id_seq', 30, true);


--
-- Data for Name: lottery_holder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lottery_holder (bank) FROM stdin;
0
\.


--
-- Data for Name: lottery_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lottery_tokens (id, user_id, amount) FROM stdin;
1	1	1
2	5	10992
3	6	0
4	7	0
5	8	0
6	9	0
7	10	0
8	11	0
9	12	0
10	13	0
\.


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY players (id, player_name, first_name, last_name, amount) FROM stdin;
1	Player1	FirstName	Surname	20
\.


--
-- Data for Name: rapidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY rapidos (id, combination, win_tickets, date) FROM stdin;
\.


--
-- Name: rapidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rapidos_id_seq', 30, false);


--
-- Data for Name: regular_bets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY regular_bets (id, lottery_id_fk, user_id_fk, combination, bet_timestamp, win) FROM stdin;
6	2	1	{}	\N	f
7	2	1	{}	\N	f
8	2	1	{}	\N	f
9	2	1	{1,2,3,4,5,6}	2018-02-19 19:30:19.271	f
10	2	1	{1,2,3,4,5,6}	2018-03-19 18:00:54.861	f
11	2	1	{1,2,3,4,5,6}	2018-03-19 18:17:31.855	f
12	2	1	{1,2,3,4,5,6}	2018-03-19 18:17:46.653	f
13	2	1	{1,2,3,4,5,6}	2018-03-19 18:18:44.533	f
14	2	1	{1,2,3,4,5,6}	2018-03-19 18:24:29.639	f
\.


--
-- Name: regular_bets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('regular_bets_id_seq', 14, true);


--
-- Data for Name: regular_lottery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY regular_lottery (id, date_planned, win_combination, winners_number, date_fact, winners, is_held) FROM stdin;
2	2018-02-15 03:00:00	\N	\N	\N	\N	f
\.


--
-- Name: regular_lottery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('regular_lottery_id_seq', 2, true);


--
-- Data for Name: supers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY supers (id, combination, win_tickets, date) FROM stdin;
\.


--
-- Name: supers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('supers_id_seq', 30, false);


--
-- Data for Name: top3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY top3 (id, combination, win_tickets, date) FROM stdin;
\.


--
-- Name: top3_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('top3_id_seq', 30, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, password, registered_on, admin) FROM stdin;
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
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 13, true);


--
-- Data for Name: wallets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wallets (id, user_id, amount) FROM stdin;
3	5	559.5
1	1	3.9000001
4	6	0
5	7	0
6	8	0
7	9	0
8	10	0
9	11	0
10	12	0
11	13	0
\.


--
-- Name: wallets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wallets_id_seq', 11, true);


--
-- Name: players PLAYERS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY players
    ADD CONSTRAINT "PLAYERS_pkey" PRIMARY KEY (id);


--
-- Name: bank bank_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bank
    ADD CONSTRAINT bank_pkey PRIMARY KEY (id);


--
-- Name: blacklist_tokens blacklist_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blacklist_tokens
    ADD CONSTRAINT blacklist_tokens_pkey PRIMARY KEY (id);


--
-- Name: blacklist_tokens blacklist_tokens_token_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blacklist_tokens
    ADD CONSTRAINT blacklist_tokens_token_key UNIQUE (token);


--
-- Name: bets_jackpot_4_20 jackpot_4_20_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_4_20
    ADD CONSTRAINT jackpot_4_20_pkey PRIMARY KEY (id);


--
-- Name: jackpot_4_20 jackpot_4_20_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jackpot_4_20
    ADD CONSTRAINT jackpot_4_20_pkey1 PRIMARY KEY (id);


--
-- Name: bets_jackpot_4_21 jackpot_4_21_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_4_21
    ADD CONSTRAINT jackpot_4_21_pkey PRIMARY KEY (id);


--
-- Name: jackpot_4_21 jackpot_4_21_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jackpot_4_21
    ADD CONSTRAINT jackpot_4_21_pkey1 PRIMARY KEY (id);


--
-- Name: bets_jackpot_5_36 jackpot_5_36_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_5_36
    ADD CONSTRAINT jackpot_5_36_pkey PRIMARY KEY (id);


--
-- Name: jackpot_5_36 jackpot_5_36_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jackpot_5_36
    ADD CONSTRAINT jackpot_5_36_pkey1 PRIMARY KEY (id);


--
-- Name: bets_jackpot_6_45 jackpot_6_45_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_6_45
    ADD CONSTRAINT jackpot_6_45_pkey PRIMARY KEY (id);


--
-- Name: jackpot_6_45 jackpot_6_45_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jackpot_6_45
    ADD CONSTRAINT jackpot_6_45_pkey1 PRIMARY KEY (id);


--
-- Name: bets_jackpot_7_49 jackpot_7_49_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_7_49
    ADD CONSTRAINT jackpot_7_49_pkey PRIMARY KEY (id);


--
-- Name: jackpot_7_49 jackpot_7_49_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jackpot_7_49
    ADD CONSTRAINT jackpot_7_49_pkey1 PRIMARY KEY (id);


--
-- Name: bets_lottery_4_20 lottery_4_20_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_4_20
    ADD CONSTRAINT lottery_4_20_pkey PRIMARY KEY (id);


--
-- Name: lottery_4_20 lottery_4_20_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lottery_4_20
    ADD CONSTRAINT lottery_4_20_pkey1 PRIMARY KEY (id);


--
-- Name: bets_lottery_5_36 lottery_5_36_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_5_36
    ADD CONSTRAINT lottery_5_36_pkey PRIMARY KEY (id);


--
-- Name: lottery_5_36 lottery_5_36_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lottery_5_36
    ADD CONSTRAINT lottery_5_36_pkey1 PRIMARY KEY (id);


--
-- Name: bets_lottery_6_45 lottery_6_45_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_6_45
    ADD CONSTRAINT lottery_6_45_pkey PRIMARY KEY (id);


--
-- Name: lottery_6_45 lottery_6_45_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lottery_6_45
    ADD CONSTRAINT lottery_6_45_pkey1 PRIMARY KEY (id);


--
-- Name: bets_lottery_7_49 lottery_7_49_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_7_49
    ADD CONSTRAINT lottery_7_49_pkey PRIMARY KEY (id);


--
-- Name: lottery_7_49 lottery_7_49_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lottery_7_49
    ADD CONSTRAINT lottery_7_49_pkey1 PRIMARY KEY (id);


--
-- Name: lottery_tokens lottery_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lottery_tokens
    ADD CONSTRAINT lottery_tokens_pkey PRIMARY KEY (id);


--
-- Name: bets_rapidos rapidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_rapidos
    ADD CONSTRAINT rapidos_pkey PRIMARY KEY (id);


--
-- Name: rapidos rapidos_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rapidos
    ADD CONSTRAINT rapidos_pkey1 PRIMARY KEY (id);


--
-- Name: regular_bets regular_bets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY regular_bets
    ADD CONSTRAINT regular_bets_pkey PRIMARY KEY (id);


--
-- Name: regular_lottery regular_lottery_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY regular_lottery
    ADD CONSTRAINT regular_lottery_pkey PRIMARY KEY (id);


--
-- Name: bets_supers supers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_supers
    ADD CONSTRAINT supers_pkey PRIMARY KEY (id);


--
-- Name: supers supers_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY supers
    ADD CONSTRAINT supers_pkey1 PRIMARY KEY (id);


--
-- Name: bets_top3 top3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_top3
    ADD CONSTRAINT top3_pkey PRIMARY KEY (id);


--
-- Name: top3 top3_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY top3
    ADD CONSTRAINT top3_pkey1 PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: wallets wallets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wallets
    ADD CONSTRAINT wallets_pkey PRIMARY KEY (id);


--
-- Name: fki_jackpot_4_20_lottery_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_jackpot_4_20_lottery_fk ON bets_jackpot_4_20 USING btree (lottery);


--
-- Name: fki_jackpot_4_20_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_jackpot_4_20_user_id_fk ON bets_jackpot_4_20 USING btree (user_id);


--
-- Name: fki_jackpot_4_21_lottery_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_jackpot_4_21_lottery_fk ON bets_jackpot_4_21 USING btree (lottery);


--
-- Name: fki_jackpot_4_21_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_jackpot_4_21_user_id_fk ON bets_jackpot_4_21 USING btree (user_id);


--
-- Name: fki_jackpot_5_36_lottery_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_jackpot_5_36_lottery_fk ON bets_jackpot_5_36 USING btree (lottery);


--
-- Name: fki_jackpot_5_36_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_jackpot_5_36_user_id_fk ON bets_jackpot_5_36 USING btree (user_id);


--
-- Name: fki_jackpot_6_45_lottery_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_jackpot_6_45_lottery_fk ON bets_jackpot_6_45 USING btree (lottery);


--
-- Name: fki_jackpot_6_45_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_jackpot_6_45_user_id_fk ON bets_jackpot_6_45 USING btree (user_id);


--
-- Name: fki_jackpot_7_49_lottery_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_jackpot_7_49_lottery_fk ON bets_jackpot_7_49 USING btree (lottery);


--
-- Name: fki_jackpot_7_49_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_jackpot_7_49_user_id_fk ON bets_jackpot_7_49 USING btree (user_id);


--
-- Name: fki_lottery_4_20_lottery_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lottery_4_20_lottery_fk ON bets_lottery_4_20 USING btree (lottery);


--
-- Name: fki_lottery_4_20_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lottery_4_20_user_id_fk ON bets_lottery_4_20 USING btree (user_id);


--
-- Name: fki_lottery_5_36_lottery_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lottery_5_36_lottery_id_fk ON bets_lottery_5_36 USING btree (lottery);


--
-- Name: fki_lottery_5_36_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lottery_5_36_user_id_fk ON bets_lottery_5_36 USING btree (user_id);


--
-- Name: fki_lottery_6_45_lottery_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lottery_6_45_lottery_fk ON bets_lottery_6_45 USING btree (lottery);


--
-- Name: fki_lottery_6_45_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lottery_6_45_user_id_fk ON bets_lottery_6_45 USING btree (user_id);


--
-- Name: fki_lottery_7_49_lottery_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lottery_7_49_lottery_fk ON bets_lottery_7_49 USING btree (lottery);


--
-- Name: fki_lottery_7_49_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lottery_7_49_user_id_fk ON bets_lottery_7_49 USING btree (user_id);


--
-- Name: fki_lottery_tokens_user_id_foreign_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lottery_tokens_user_id_foreign_key ON lottery_tokens USING btree (user_id);


--
-- Name: fki_pla; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_pla ON regular_bets USING btree (user_id_fk);


--
-- Name: fki_rapidos_lottery_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_rapidos_lottery_fk ON bets_rapidos USING btree (lottery);


--
-- Name: fki_rapidos_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_rapidos_user_id_fk ON bets_rapidos USING btree (user_id);


--
-- Name: fki_regular_bet_lottery_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_regular_bet_lottery_fk ON regular_bets USING btree (lottery_id_fk);


--
-- Name: fki_supers_lottery_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_supers_lottery_fk ON bets_supers USING btree (lottery);


--
-- Name: fki_supers_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_supers_user_id_fk ON bets_supers USING btree (user_id);


--
-- Name: fki_top3_lottery_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_top3_lottery_fk ON bets_top3 USING btree (lottery);


--
-- Name: fki_top3_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_top3_user_id_fk ON bets_top3 USING btree (user_id);


--
-- Name: fki_wallets_user_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_wallets_user_id_fk ON wallets USING btree (user_id);


--
-- Name: bets_jackpot_4_20 jackpot_4_20_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_4_20
    ADD CONSTRAINT jackpot_4_20_lottery_fk FOREIGN KEY (lottery) REFERENCES jackpot_4_20(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_jackpot_4_20 jackpot_4_20_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_4_20
    ADD CONSTRAINT jackpot_4_20_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_jackpot_4_21 jackpot_4_21_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_4_21
    ADD CONSTRAINT jackpot_4_21_lottery_fk FOREIGN KEY (lottery) REFERENCES jackpot_4_21(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_jackpot_4_21 jackpot_4_21_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_4_21
    ADD CONSTRAINT jackpot_4_21_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_jackpot_5_36 jackpot_5_36_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_5_36
    ADD CONSTRAINT jackpot_5_36_lottery_fk FOREIGN KEY (lottery) REFERENCES jackpot_5_36(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_jackpot_5_36 jackpot_5_36_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_5_36
    ADD CONSTRAINT jackpot_5_36_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_jackpot_6_45 jackpot_5_36_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_6_45
    ADD CONSTRAINT jackpot_5_36_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_jackpot_6_45 jackpot_6_45_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_6_45
    ADD CONSTRAINT jackpot_6_45_lottery_fk FOREIGN KEY (lottery) REFERENCES jackpot_6_45(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_jackpot_7_49 jackpot_7_49_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_7_49
    ADD CONSTRAINT jackpot_7_49_lottery_fk FOREIGN KEY (lottery) REFERENCES jackpot_7_49(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_jackpot_7_49 jackpot_7_49_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_jackpot_7_49
    ADD CONSTRAINT jackpot_7_49_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_lottery_4_20 lottery_4_20_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_4_20
    ADD CONSTRAINT lottery_4_20_lottery_fk FOREIGN KEY (lottery) REFERENCES lottery_4_20(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_lottery_4_20 lottery_4_20_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_4_20
    ADD CONSTRAINT lottery_4_20_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_lottery_5_36 lottery_5_36_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_5_36
    ADD CONSTRAINT lottery_5_36_lottery_fk FOREIGN KEY (lottery) REFERENCES lottery_5_36(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_lottery_5_36 lottery_5_36_lottery_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_5_36
    ADD CONSTRAINT lottery_5_36_lottery_id_fk FOREIGN KEY (lottery) REFERENCES lottery_5_36(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_lottery_5_36 lottery_5_36_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_5_36
    ADD CONSTRAINT lottery_5_36_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_lottery_6_45 lottery_6_45_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_6_45
    ADD CONSTRAINT lottery_6_45_lottery_fk FOREIGN KEY (lottery) REFERENCES lottery_6_45(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_lottery_6_45 lottery_6_45_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_6_45
    ADD CONSTRAINT lottery_6_45_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_lottery_7_49 lottery_7_49_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_7_49
    ADD CONSTRAINT lottery_7_49_lottery_fk FOREIGN KEY (lottery) REFERENCES lottery_7_49(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_lottery_7_49 lottery_7_49_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_lottery_7_49
    ADD CONSTRAINT lottery_7_49_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lottery_tokens lottery_tokens_user_id_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lottery_tokens
    ADD CONSTRAINT lottery_tokens_user_id_foreign_key FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_rapidos rapidos_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_rapidos
    ADD CONSTRAINT rapidos_lottery_fk FOREIGN KEY (lottery) REFERENCES rapidos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_rapidos rapidos_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_rapidos
    ADD CONSTRAINT rapidos_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: regular_bets regular_bet_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY regular_bets
    ADD CONSTRAINT regular_bet_lottery_fk FOREIGN KEY (lottery_id_fk) REFERENCES regular_lottery(id);


--
-- Name: regular_bets regular_bet_player_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY regular_bets
    ADD CONSTRAINT regular_bet_player_fk FOREIGN KEY (user_id_fk) REFERENCES players(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_supers supers_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_supers
    ADD CONSTRAINT supers_lottery_fk FOREIGN KEY (lottery) REFERENCES supers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_supers supers_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_supers
    ADD CONSTRAINT supers_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_top3 top3_lottery_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_top3
    ADD CONSTRAINT top3_lottery_fk FOREIGN KEY (lottery) REFERENCES top3(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bets_top3 top3_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bets_top3
    ADD CONSTRAINT top3_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wallets wallets_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wallets
    ADD CONSTRAINT wallets_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

