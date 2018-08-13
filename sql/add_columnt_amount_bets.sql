\c lottery
ALTER TABLE bets_jackpot_4_20 ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;
ALTER TABLE bets_jackpot_4_20 ADD COLUMN IF NOT EXISTS history VARCHAR;
ALTER TABLE bets_jackpot_4_21 ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;
ALTER TABLE bets_jackpot_4_21 ADD COLUMN IF NOT EXISTS lottery_history VARCHAR;
ALTER TABLE bets_jackpot_5_36 ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;
ALTER TABLE bets_jackpot_5_36 ADD COLUMN IF NOT EXISTS history VARCHAR;
ALTER TABLE bets_jackpot_6_45 ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;
ALTER TABLE bets_jackpot_6_45 ADD COLUMN IF NOT EXISTS history VARCHAR;
ALTER TABLE bets_jackpot_7_49 ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;
ALTER TABLE bets_jackpot_7_49 ADD COLUMN IF NOT EXISTS history VARCHAR;



ALTER TABLE bets_jackpot_4_21 ALTER COLUMN lottery [SET DATA] TYPE VARCHAR;
ALTER TABLE bets_jackpot_5_36 ALTER COLUMN lottery [SET DATA] TYPE VARCHAR;
ALTER TABLE bets_jackpot_6_45 ALTER COLUMN lottery [SET DATA] TYPE VARCHAR;
ALTER TABLE bets_jackpot_7_49 ALTER COLUMN lottery [SET DATA] TYPE VARCHAR;
