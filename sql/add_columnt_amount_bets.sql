\connect lottery
ALTER TABLE bets_jackpot_4_20 ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;
ALTER TABLE bets_jackpot_4_21 ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;
ALTER TABLE bets_jackpot_5_36 ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;
ALTER TABLE bets_jackpot_6_45 ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;
ALTER TABLE bets_jackpot_7_49 ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;
ALTER TABLE bets_supers ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;
ALTER TABLE bets_rapidos ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;
ALTER TABLE bets_top3 ADD COLUMN IF NOT EXISTS amount_bets int not null default 1;


# Remove unnecessary columns
ALTER TABLE bets_jackpot_4_20 DROP COLUMN IF EXISTS history;
ALTER TABLE bets_jackpot_4_21 DROP COLUMN IF EXISTS history;
ALTER TABLE bets_jackpot_5_36 DROP COLUMN IF EXISTS history;
ALTER TABLE bets_jackpot_6_45 DROP COLUMN IF EXISTS history;
ALTER TABLE bets_jackpot_7_49 DROP COLUMN IF EXISTS history;

# Remove unnecessary references and indexes
ALTER TABLE bets_jackpot_4_20 DROP CONSTRAINT IF EXISTS jackpot_4_20_lottery_fk;
DROP INDEX IF EXISTS "public"."fki_jackpot_4_20_lottery_fk";
ALTER TABLE bets_jackpot_4_21 DROP CONSTRAINT IF EXISTS jackpot_4_21_lottery_fk;
DROP INDEX IF EXISTS "public"."fki_jackpot_4_21_lottery_fk";
ALTER TABLE bets_jackpot_5_36 DROP CONSTRAINT IF EXISTS jackpot_5_36_lottery_fk;
DROP INDEX IF EXISTS "public"."fki_jackpot_5_36_lottery_fk";
ALTER TABLE bets_jackpot_6_45 DROP CONSTRAINT IF EXISTS jackpot_6_45_lottery_fk;
DROP INDEX IF EXISTS "public"."fki_jackpot_6_45_lottery_fk";
ALTER TABLE bets_jackpot_7_49 DROP CONSTRAINT IF EXISTS jackpot_7_49_lottery_fk;
DROP INDEX IF EXISTS "public"."fki_jackpot_7_49_lottery_fk";
ALTER TABLE bets_supers DROP CONSTRAINT IF EXISTS supers_lottery_fk;
DROP INDEX IF EXISTS "public"."fki_supers_lottery_fk";
ALTER TABLE bets_rapidos DROP CONSTRAINT IF EXISTS rapidos_lottery_fk;
DROP INDEX IF EXISTS "public"."fki_rapidos_lottery_fk";
ALTER TABLE bets_top3 DROP CONSTRAINT IF EXISTS top3_lottery_fk;
DROP INDEX IF EXISTS "public"."fki_top3_lottery_fk";

# Change type of column lottery
ALTER TABLE "bets_jackpot_4_20" ALTER COLUMN "lottery" TYPE bigint[] using array[lottery]::bigint[];
ALTER TABLE "bets_jackpot_4_21" ALTER COLUMN "lottery" TYPE bigint[] using array[lottery]::bigint[];
ALTER TABLE "bets_jackpot_5_36" ALTER COLUMN "lottery" TYPE bigint[] using array[lottery]::bigint[];
ALTER TABLE "bets_jackpot_6_45" ALTER COLUMN "lottery" TYPE bigint[] using array[lottery]::bigint[];
ALTER TABLE "bets_jackpot_7_49" ALTER COLUMN "lottery" TYPE bigint[] using array[lottery]::bigint[];
ALTER TABLE "bets_supers" ALTER COLUMN "lottery" TYPE bigint[] using array[lottery]::bigint[];
ALTER TABLE "bets_rapidos" ALTER COLUMN "lottery" TYPE bigint[] using array[lottery]::bigint[];
ALTER TABLE "bets_top3" ALTER COLUMN "lottery" TYPE bigint[] using array[lottery]::bigint[];