CREATE DATABASE lottery
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

 CREATE SCHEMA public
    AUTHORIZATION postgres;

COMMENT ON SCHEMA public
    IS 'standard public schema';

GRANT ALL ON SCHEMA public TO postgres;

GRANT ALL ON SCHEMA public TO PUBLIC;

CREATE TABLE public.bank
(
    id integer NOT NULL DEFAULT nextval('bank_id_seq'::regclass),
    regular_lottery bigint,
    jackpot bigint,
    mega_jackpot bigint,
    CONSTRAINT bank_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.bank
    OWNER to postgres;

CREATE TABLE public.players
(
    id bigint NOT NULL,
    player_name text COLLATE pg_catalog."default",
    first_name text COLLATE pg_catalog."default",
    last_name text COLLATE pg_catalog."default",
    amount numeric(255,0),
    CONSTRAINT "PLAYERS_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.players
    OWNER to postgres;

CREATE TABLE public.regular_bets
(
    id bigint NOT NULL DEFAULT nextval('regular_bets_id_seq'::regclass),
    lottery_id_fk bigint NOT NULL,
    user_id_fk bigint NOT NULL,
    combination integer[],
    bet_timestamp timestamp without time zone,
    win boolean,
    CONSTRAINT regular_bets_pkey PRIMARY KEY (id),
    CONSTRAINT regular_bet_lottery_fk FOREIGN KEY (lottery_id_fk)
        REFERENCES public.regular_lottery (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT regular_bet_player_fk FOREIGN KEY (user_id_fk)
        REFERENCES public.players (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.regular_bets
    OWNER to postgres;

СREATE TABLE public.regular_lottery
(
    id bigint NOT NULL DEFAULT nextval('regular_lottery_id_seq'::regclass),
    date_planned timestamp without time zone,
    win_combination integer[],
    winners_number integer,
    date_fact timestamp without time zone,
    winners bigint[],
    is_held boolean,
    CONSTRAINT regular_lottery_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.regular_lottery
    OWNER to postgres;


CREATE INDEX fki_pla
    ON public.regular_bets USING btree
    (user_id_fk)
    TABLESPACE pg_default;

CREATE INDEX fki_regular_bet_lottery_fk
    ON public.regular_bets USING btree
    (lottery_id_fk)
    TABLESPACE pg_default;