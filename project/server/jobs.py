# project/server/jobs.py

import time
import atexit
import sqlalchemy
from sqlalchemy import Table, Column, Integer, Float, String, ForeignKey, Sequence, DateTime
from sqlalchemy.dialects.postgresql import ARRAY
from random import randint
import datetime

#from project.server.models import *

def connect():
    '''Returns a connection and a metadata object'''
    # We connect with the help of the PostgreSQL URL
    # postgresql://federer:grandestslam@localhost:5432/tennis
    url = 'postgresql://postgres:latecO20112017@localhost/lottery'

    # The return value of create_engine() is our connection object
    con = sqlalchemy.create_engine(url, client_encoding='utf8')

    # We then bind the connection to MetaData()
    meta = sqlalchemy.MetaData(bind=con, reflect=True)

    return con, meta

con, meta = connect()

#Tables
#lottery_5x36 = Table('lottery_5_36', meta,
	#Column('id', Integer, Sequence('lottery_5_36_id_seq', metadata=meta), primary_key=True),
	#Column('combination', ARRAY(Integer)),
	#Column('win_tickets', ARRAY(Integer)),
	#Column('date', DateTime)
	#)

#Logic functions
def GetRandomArray(min, max, size):
	arr = []
	while len(arr) < size:
		item = randint(min, max)
		if item not in arr:
			arr.append(item)
	return arr

def CompareArrays(arr1, arr2):
	return sorted(arr1) == sorted(arr2)

def FormatArray(arr):
	return '\'{' + ', '.join([str(x) for x in arr]) + '}\''


#Jobs
#def job1(a, b):
	#bank = meta.tables['bank']
	#clause = bank.select("id = 1")
	#for row in con.execute(clause):
		#print(row['superjackpot'])
'''
def lottery_5x36():
	#win combination
	win_combination = GetRandomArray(1, 36, 5)
	lottery_5x36 = meta.tables['lottery_5_36']
	bets = meta.tables['bets_lottery_5_36']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("is_active = true")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_lottery_5_36 SET combination=" + FormatArray(GetRandomArray(1, 36, 5)) + "WHERE id = " + str(row['id']))
	#Check combinations
	for row in con.execute(clause):
		#con.execute("UPDATE bets_lottery_5_36 SET is_active = false WHERE id = " + str(row['id']))
		if (CompareArrays(row['combination'], win_combination)):
			con.execute("UPDATE bets_lottery_5_36 SET is_win = true WHERE id = " + str(row['id']))
			winners.append(row['id'])
	#Insert Lottery
	con.execute("INSERT INTO lottery_5_36(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	#cv = con.execute("SELECT currval('lottery_5_36_id_seq') AS cv;")
	cv = con.execute("SELECT last_value FROM lottery_5_36_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	print(lottery_id)
	#Close tickets
	for row in con.execute(clause):
		con.execute("UPDATE bets_lottery_5_36 SET is_active = false, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
	#print(cv.fetchone()['cv'])
	#for r in cv:
		#for c in r:
			#print(c)
'''

def jackpot_5x36():
	#win combination
	win_combination = GetRandomArray(1, 36, 5)
	jackpot_5x36 = meta.tables['jackpot_5_36']
	bets = meta.tables['bets_jackpot_5_36']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("is_active = true")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_jackpot_5_36 SET combination=" + FormatArray(GetRandomArray(1, 36, 5)) + "WHERE id = " + str(row['id']))
	#Check combinations
	for row in con.execute(clause):
		if (CompareArrays(row['combination'], win_combination)):
			con.execute("UPDATE bets_jackpot_5_36 SET is_win = true WHERE id = " + str(row['id']))
			winners.append(row['id'])
	#Insert Lottery
	con.execute("INSERT INTO jackpot_5_36(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	cv = con.execute("SELECT last_value FROM jackpot_5_36_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	#Close tickets
	for row in con.execute(clause):
		if row['amount_bets'] > 1:
			con.execute("UPDATE bets_jackpot_5_36 SET is_active = false, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
			con.execute("INSERT INTO bets_jackpot_5_36(user_id, combination, is_active, is_win, made_on, amount_bets) VALUES(" + str(row['user_id']) + ", '{" + str(row['combination'])[1:-1] + "}', TRUE, FALSE, '" + str(row['made_on']) + "', " + str(row['amount_bets']-1) + ")")
		else:
			con.execute("UPDATE bets_jackpot_5_36 SET is_active = false, lottery=" + lottery_id + ", amount_bets=0 WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_jackpot_5_36 SET is_active = false, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_jackpot_5_36 SET amount_bets=amount_bets-1, lottery=array_cat(lottery, '{" + lottery_id + "}') WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_jackpot_5_36 SET amount_bets=amount_bets-1, lottery=lottery || '{" + lottery_id + "}' WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_jackpot_5_36 SET amount_bets=amount_bets-1, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
		#if row['amount_bets'] > 1:
			#con.execute("INSERT INTO bets_jackpot_5_36(user_id, combination, is_active, is_win, made_on, amount_bets, lottery) VALUES (" + str(row['user_id']) + ", " + str(row['combination']) + ", TRUE, FALSE, " + str(row['made_on']) + ", " + str(row[amount_bets])+ " )")
	#con.execute("UPDATE bets_jackpot_5_36 SET is_active = false WHERE amount_bets = 0")


def jackpot_6x45():
	#win combination
	win_combination = GetRandomArray(1, 45, 6)
	jackpot_5x36 = meta.tables['jackpot_6_45']
	bets = meta.tables['bets_jackpot_6_45']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("is_active = true")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_jackpot_6_45 SET combination=" + FormatArray(GetRandomArray(1, 45, 6)) + "WHERE id = " + str(row['id']))
	#Check combinations
	for row in con.execute(clause):
		if (CompareArrays(row['combination'], win_combination)):
			con.execute("UPDATE bets_jackpot_6_45 SET is_win = true WHERE id = " + str(row['id']))
			winners.append(row['id'])
	#Insert Lottery
	con.execute("INSERT INTO jackpot_6_45(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	cv = con.execute("SELECT last_value FROM jackpot_6_45_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	#Close tickets
	for row in con.execute(clause):
		if row['amount_bets'] > 1:
			con.execute("UPDATE bets_jackpot_6_45 SET is_active = false, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
			con.execute("INSERT INTO bets_jackpot_6_45(user_id, combination, is_active, is_win, made_on, amount_bets) VALUES(" + str(row['user_id']) + ", '{" + str(row['combination'])[1:-1] + "}', TRUE, FALSE, '" + str(row['made_on']) + "', " + str(row['amount_bets']-1) + ")")
		else:
			con.execute("UPDATE bets_jackpot_6_45 SET is_active = false, lottery=" + lottery_id + ", amount_bets=0 WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_jackpot_6_45 SET is_active = false, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_jackpot_6_45 SET amount_bets=amount_bets-1, lottery=array_append(lottery, '" + lottery_id + "') WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_jackpot_6_45 SET amount_bets=amount_bets-1, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
	#con.execute("UPDATE bets_jackpot_6_45 SET is_active = false WHERE amount_bets = 0")


def jackpot_4x21():
	#win combination
	win_combination = GetRandomArray(1, 21, 4)
	jackpot_4x21 = meta.tables['jackpot_4_21']
	bets = meta.tables['bets_jackpot_4_21']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("is_active = true")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_jackpot_4_21 SET combination=" + FormatArray(GetRandomArray(1, 21, 4)) + "WHERE id = " + str(row['id']))
	#Check combinations
	for row in con.execute(clause):
		if (CompareArrays(row['combination'], win_combination)):
			con.execute("UPDATE bets_jackpot_4_21 SET is_win = true WHERE id = " + str(row['id']))
			winners.append(row['id'])
	#Insert Lottery
	con.execute("INSERT INTO jackpot_4_21(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	cv = con.execute("SELECT last_value FROM jackpot_4_21_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	#Close tickets
	for row in con.execute(clause):
		if row['amount_bets'] > 1:
			con.execute("UPDATE bets_jackpot_4_21 SET is_active = false, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
			con.execute("INSERT INTO bets_jackpot_4_21(user_id, combination, is_active, is_win, made_on, amount_bets) VALUES(" + str(row['user_id']) + ", '{" + str(row['combination'])[1:-1] + "}', TRUE, FALSE, '" + str(row['made_on']) + "', " + str(row['amount_bets']-1) + ")")
		else:
			con.execute("UPDATE bets_jackpot_4_21 SET is_active = false, lottery=" + lottery_id + ", amount_bets=0 WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_jackpot_4_21 SET is_active = false, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_jackpot_4_21 SET amount_bets=amount_bets-1, lottery=array_append(lottery, '" + lottery_id + "') WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_jackpot_4_21 SET amount_bets=amount_bets-1, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
	#con.execute("UPDATE bets_jackpot_4_21 SET is_active = false WHERE amount_bets = 0")


def rapidos():
	#win combination
	win_combination = GetRandomArray(1, 21, 4)
	rapidos = meta.tables['rapidos']
	bets = meta.tables['bets_rapidos']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("is_active = true")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_rapidos SET combination=" + FormatArray(GetRandomArray(1, 20, 8)) + "WHERE id = " + str(row['id']))
	#Check combinations
	for row in con.execute(clause):
		if (CompareArrays(row['combination'], win_combination)):
			con.execute("UPDATE bets_rapidos SET is_win = true WHERE id = " + str(row['id']))
			winners.append(row['id'])
	#Insert Lottery
	con.execute("INSERT INTO rapidos(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	cv = con.execute("SELECT last_value FROM rapidos_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	#Close tickets
	for row in con.execute(clause):
		if row['amount_bets'] > 1:
			con.execute("UPDATE bets_rapidos SET is_active = false, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
			#insert_clause = "INSERT INTO bets_rapidos(user_id, combination, is_active, is_win, made_on, amount_bets) VALUES(%s, %s, %s, %s, %s, %s)"
			#vals = (row['user_id'], row['combination'], 'TRUE', 'FALSE', row['amount_bets']-1)
			#con.execute(clause, vals)
			#con.execute("INSERT INTO bets_rapidos(user_id, combination, is_active, is_win, made_on, amount_bets) VALUES(" + str(row['user_id']) + ", '" + str(row['combination']) + "', TRUE, FALSE, " + row['amount_bets']-1 + ")")
			con.execute("INSERT INTO bets_rapidos(user_id, combination, is_active, is_win, made_on, amount_bets) VALUES(" + str(row['user_id']) + ", '{" + str(row['combination'])[1:-1] + "}', TRUE, FALSE, '" + str(row['made_on']) + "', " + str(row['amount_bets']-1) + ")")
		else:
			con.execute("UPDATE bets_rapidos SET is_active = false, lottery=" + lottery_id + ", amount_bets=0 WHERE id = " + str(row['id']))


def two_numbers():
	#win combination
	win_combination = GetRandomArray(1, 100, 2)
	two_numbers = meta.tables['two_numbers']
	bets = meta.tables['bets_two_numbers']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("is_active = true")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_two_numbers SET combination=" + FormatArray(GetRandomArray(1, 36, 5)) + "WHERE id = " + str(row['id']))
	#Check combinations
	for row in con.execute(clause):
		if (CompareArrays(row['combination'], win_combination)):
			con.execute("UPDATE bets_two_numbers SET is_win = true WHERE id = " + str(row['id']))
			winners.append(row['id'])
	#Insert Lottery
	con.execute("INSERT INTO two_numbers(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	cv = con.execute("SELECT last_value FROM two_numbers_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	#Close tickets
	for row in con.execute(clause):
		if row['amount_bets'] > 1:
			con.execute("UPDATE bets_two_numbers SET is_active = false, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
			#insert_clause = "INSERT INTO bets_two_numbers(user_id, combination, is_active, is_win, made_on, amount_bets) VALUES(%s, %s, %s, %s, %s, %s)"
			#vals = (row['user_id'], row['combination'], 'TRUE', 'FALSE', row['amount_bets']-1)
			#con.execute(clause, vals)
			con.execute("INSERT INTO bets_two_numbers(user_id, combination, is_active, is_win, made_on, amount_bets) VALUES(" + str(row['user_id']) + ", '{" + str(row['combination'])[1:-1] + "}', TRUE, FALSE, '" + str(row['made_on']) + "', " + str(row['amount_bets']-1) + ")")
		else:
			con.execute("UPDATE bets_two_numbers SET is_active = false, lottery=" + lottery_id + ", amount_bets=0 WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_two_numbers SET is_active = false, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_two_numbers SET amount_bets=amount_bets-1, lottery=array_append(lottery, '" + lottery_id + "') WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_two_numbers SET amount_bets=amount_bets-1, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
	#con.execute("UPDATE bets_two_numbers SET is_active = false WHERE amount_bets = 0")


def prize_jackpot():
	#win combination
	win_combination = GetRandomArray(1, 24, 12)
	prize_jackpot = meta.tables['prize_jackpot']
	bets = meta.tables['bets_prize_jackpot']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("is_active = true")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_prize_jackpot SET combination=" + FormatArray(GetRandomArray(1, 45, 6)) + "WHERE id = " + str(row['id']))
	#Check combinations
	for row in con.execute(clause):
		if (CompareArrays(row['combination'], win_combination)):
			con.execute("UPDATE bets_prize_jackpot SET is_win = true WHERE id = " + str(row['id']))
			winners.append(row['id'])
	#Insert Lottery
	con.execute("INSERT INTO prize_jackpot(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	cv = con.execute("SELECT last_value FROM prize_jackpot_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	#Close tickets
	for row in con.execute(clause):
		if row['amount_bets'] > 1:
			con.execute("UPDATE bets_two_numbers SET is_active = false, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
			#insert_clause = "INSERT INTO bets_two_numbers(user_id, combination, is_active, is_win, made_on, amount_bets) VALUES(%s, %s, %s, %s, %s, %s)"
			#vals = (row['user_id'], row['combination'], 'TRUE', 'FALSE', row['amount_bets']-1)
			#con.execute(clause, vals)
			con.execute("INSERT INTO bets_prize_jackpot(user_id, combination, is_active, is_win, made_on, amount_bets) VALUES(" + str(row['user_id']) + ", '{" + str(row['combination'])[1:-1] + "}', TRUE, FALSE, '" + str(row['made_on']) + "', " + str(row['amount_bets']-1) + ")")
		else:
			con.execute("UPDATE bets_prize_jackpot SET is_active = false, lottery=" + lottery_id + ", amount_bets=0 WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_prize_jackpot SET is_active = false, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_prize_jackpot SET amount_bets=amount_bets-1, lottery=array_append(lottery, '" + lottery_id + "') WHERE id = " + str(row['id']))
		#con.execute("UPDATE bets_prize_jackpot SET amount_bets=amount_bets-1, lottery=" + lottery_id + " WHERE id = " + str(row['id']))
	#con.execute("UPDATE bets_prize_jackpot SET is_active = false WHERE amount_bets = 0")


def print_date_time():
	print ("Server " + time.strftime("%A, %d. %B %Y %I:%M:%S %p"))

def print_hello():
	print("Hello")

