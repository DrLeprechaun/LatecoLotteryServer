# project/server/jobs.py

import os
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
    database_name = os.environ.get('LOTTERY_DB_NAME')
    database_user = os.environ.get('LOTTERY_DB_USER')
    database_password = os.environ.get('LOTTERY_DB_PASSWORD')
    database_server = os.environ.get('LOTTERY_DB_SERVER')
    url = 'postgresql://' + database_user + ':' + database_password + '@' + database_server + '/'

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

def DetailCompareArrays(arr1, arr2):
    arr1_sorted = sorted(arr1)
    arr2_sorted = sorted(arr2)
    m = 0
    for i in range(len(arr1_sorted)):
        for j in range(len(arr2_sorted)):
            if (arr1_sorted[i] == arr2_sorted[j]):
                m = m + 1
    return m

def CheckWinnersExist(arr):
	if (len(arr) > 0):
		return 1
	else:
		return 0


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

def jackpot_5x36_old():
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


def jackpot_6x45_old():
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


def jackpot_4x21_old():
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


def rapidos_old():
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


def two_numbers_old():
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


def prize_jackpot_old():
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

def jackpot_4x21():
	#bank
	bank = con.execute("SELECT * FROM bank").fetchone()
	#win combination
	win_combination = GetRandomArray(1, 21, 4)
	jackpot_4_21 = meta.tables['jackpot_4_21']
	bets = meta.tables['bets_jackpot_4_21']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("amount_bets > 0")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_jackpot_4_21 SET combination=" + FormatArray(GetRandomArray(1, 21, 4)) + "WHERE id = " + str(row['id']))
	#Insert Lottery
	#con.execute("INSERT INTO jackpot_4_21(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	con.execute("INSERT INTO jackpot_4_21(combination, date) VALUES (" + FormatArray(win_combination) + ", current_timestamp);")
	cv = con.execute("SELECT last_value FROM jackpot_4_21_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	#Check combinations, write raffles
	winners_2 = []
	winners_3 = []
	winners_4 = []
	for row in con.execute(clause):
		#Win
		if (DetailCompareArrays(row['combination'], win_combination)) == 2:
			winners.append(row['id'])
			winners_2.append(row['id'])
			con.execute("INSERT INTO raffles_jackpot_4_21(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		elif (DetailCompareArrays(row['combination'], win_combination)) == 3:
			winners.append(row['id'])
			winners_3.append(row['id'])
			con.execute("INSERT INTO raffles_jackpot_4_21(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		elif (DetailCompareArrays(row['combination'], win_combination)) == 4:
			winners.append(row['id'])
			winners_4.append(row['id'])
			con.execute("INSERT INTO raffles_jackpot_4_21(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		#if (CompareArrays(row['combination'], win_combination)):
			#con.execute("INSERT INTO raffles_jackpot_4_21(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
			#winners.append(row['id'])
		else:
			con.execute("INSERT INTO raffles_jackpot_4_21(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", FALSE)")
	#Update lottery (win tickets)
	con.execute("UPDATE jackpot_4_21 SET win_tickets =" + FormatArray(winners) + " WHERE id = " + lottery_id)
	#Close tickets
	con.execute("UPDATE bets_jackpot_4_21 SET amount_bets = amount_bets-1 WHERE amount_bets > 0")
	#Pay
	for w in winners_2:
		con.execute("UPDATE wallet SET amount=amount+" + str(0.9 * 0.32 * bank['jackpot_4_21'] / len(winners_2)) + " WHERE user_id=" + str(w))
	for w in winners_3:
		con.execute("UPDATE wallet SET amount=amount+" + str(0.9 * 0.33 * bank['jackpot_4_21'] / len(winners_3)) + " WHERE user_id=" + str(w))
	for w in winners_4:
		con.execute("UPDATE wallet SET amount=amount+" + str(0.9 * 0.35 * bank['jackpot_4_21'] / len(winners_4)) + " WHERE user_id=" + str(w))
	con.execute("UPDATE bank SET jackpot_4_21 = jackpot_4_21 - " + str( 0.9 * (0.32 * CheckWinnersExist(winners_2) + 0.33 * CheckWinnersExist(winners_3) + 0.35 * CheckWinnersExist(winners_4)) ))

def jackpot_5x36():
	#bank
	bank = con.execute("SELECT * FROM bank").fetchone()
	#win combination
	win_combination = GetRandomArray(1, 21, 4)
	jackpot_5_36 = meta.tables['jackpot_5_36']
	bets = meta.tables['bets_jackpot_5_36']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("amount_bets > 0")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_jackpot_5_36 SET combination=" + FormatArray(GetRandomArray(1, 21, 4)) + "WHERE id = " + str(row['id']))
	#Insert Lottery
	#con.execute("INSERT INTO jackpot_5_36(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	con.execute("INSERT INTO jackpot_5_36(combination, date) VALUES (" + FormatArray(win_combination) + ", current_timestamp);")
	cv = con.execute("SELECT last_value FROM jackpot_5_36_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	#Check combinations, write raffles
	winners_2 = []
	winners_3 = []
	winners_4 = []
	winners_5 = []
	for row in con.execute(clause):
		#Win
		if (DetailCompareArrays(row['combination'], win_combination)) == 2:
			winners.append(row['id'])
			winners_2.append(row['id'])
			con.execute("INSERT INTO raffles_jackpot_5_36(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		elif (DetailCompareArrays(row['combination'], win_combination)) == 3:
			winners.append(row['id'])
			winners_3.append(row['id'])
			con.execute("INSERT INTO raffles_jackpot_5_36(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		elif (DetailCompareArrays(row['combination'], win_combination)) == 4:
			winners.append(row['id'])
			winners_4.append(row['id'])
			con.execute("INSERT INTO raffles_jackpot_5_36(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		elif (DetailCompareArrays(row['combination'], win_combination)) == 5:
			winners.append(row['id'])
			winners_5.append(row['id'])
			con.execute("INSERT INTO raffles_jackpot_5_36(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		#if (CompareArrays(row['combination'], win_combination)):
			#con.execute("INSERT INTO raffles_jackpot_5_36(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
			#winners.append(row['id'])
		else:
			con.execute("INSERT INTO raffles_jackpot_5_36(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", FALSE)")
	#Update lottery (win tickets)
	con.execute("UPDATE jackpot_5_36 SET win_tickets =" + FormatArray(winners) + " WHERE id = " + lottery_id)
	#Close tickets
	con.execute("UPDATE bets_jackpot_5_36 SET amount_bets = amount_bets-1 WHERE amount_bets > 0")
	#Pay
	for w in winners_2:
		con.execute("UPDATE wallet SET amount=amount+" + str(2 / len(winners_2)) + " WHERE user_id=" + str(w))
	for w in winners_3:
		con.execute("UPDATE wallet SET amount=amount+" + str(20 / len(winners_3)) + " WHERE user_id=" + str(w))
	for w in winners_4:
		con.execute("UPDATE wallet SET amount=amount+" + str(50 / len(winners_4)) + " WHERE user_id=" + str(w))
	for w in winners_5:
		con.execute("UPDATE wallet SET amount=amount+" + str(0.5 * bank['jackpot_5_36'] / len(winners_5)) + " WHERE user_id=" + str(w))
	con.execute("UPDATE bank SET jackpot_5_36 = jackpot_5_36 - " + str( 2 * len(winners_2) + 20 * len(winners_3) + 50 * len(winners_4) + CheckWinnersExist(winners_5) * bank['jackpot_5_36'] ))

def jackpot_6x45():
	#bank
	bank = con.execute("SELECT * FROM bank").fetchone()
	#win combination
	win_combination = GetRandomArray(1, 21, 4)
	jackpot_6_45 = meta.tables['jackpot_6_45']
	bets = meta.tables['bets_jackpot_6_45']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("amount_bets > 0")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_jackpot_6_45 SET combination=" + FormatArray(GetRandomArray(1, 21, 4)) + "WHERE id = " + str(row['id']))
	#Insert Lottery
	#con.execute("INSERT INTO jackpot_6_45(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	con.execute("INSERT INTO jackpot_6_45(combination, date) VALUES (" + FormatArray(win_combination) + ", current_timestamp);")
	cv = con.execute("SELECT last_value FROM jackpot_6_45_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	#Check combinations, write raffles
	winners_3 = []
	winners_4 = []
	winners_5 = []
	winners_6 = []
	for row in con.execute(clause):
		#Win
		if (DetailCompareArrays(row['combination'], win_combination)) == 3:
			winners.append(row['id'])
			winners_3.append(row['id'])
			on.execute("INSERT INTO raffles_jackpot_6_45(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		elif (DetailCompareArrays(row['combination'], win_combination)) == 4:
			winners.append(row['id'])
			winners_4.append(row['id'])
			on.execute("INSERT INTO raffles_jackpot_6_45(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		elif (DetailCompareArrays(row['combination'], win_combination)) == 5:
			winners.append(row['id'])
			winners_5.append(row['id'])
			on.execute("INSERT INTO raffles_jackpot_6_45(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		elif (DetailCompareArrays(row['combination'], win_combination)) == 6:
			winners.append(row['id'])
			winners_6.append(row['id'])
			on.execute("INSERT INTO raffles_jackpot_6_45(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		#if (CompareArrays(row['combination'], win_combination)):
			#con.execute("INSERT INTO raffles_jackpot_6_45(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
			#winners.append(row['id'])
		else:
			con.execute("INSERT INTO raffles_jackpot_6_45(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", FALSE)")
	#Update lottery (win tickets)
	con.execute("UPDATE jackpot_6_45 SET win_tickets =" + FormatArray(winners) + " WHERE id = " + lottery_id)
	#Close tickets
	con.execute("UPDATE bets_jackpot_6_45 SET amount_bets = amount_bets-1 WHERE amount_bets > 0")
	#Pay
	for w in winners_3:
		con.execute("UPDATE wallet SET amount=amount+" + str(0.24 * bank['jackpot_6_45'] / len(winners_3)) + " WHERE user_id=" + str(w))
	for w in winners_4:
		con.execute("UPDATE wallet SET amount=amount+" + str(0.14 * bank['jackpot_6_45'] / len(winners_4)) + " WHERE user_id=" + str(w))
	for w in winners_5:
		con.execute("UPDATE wallet SET amount=amount+" + str(0.26 * bank['jackpot_6_45'] / len(winners_5)) + " WHERE user_id=" + str(w))
	for w in winners_6:
		con.execute("UPDATE wallet SET amount=amount+" + str(0.36 * bank['jackpot_6_45'] / len(winners_6)) + " WHERE user_id=" + str(w))
	con.execute("UPDATE bank SET jackpot_6_45 = jackpot_6_45 - " + str(0.24 * CheckWinnersExist(winners_3) + 0.14 * CheckWinnersExist(winners_4) + 0.26 * CheckWinnersExist(winners_5) + 0.36 * CheckWinnersExist(winners_6)) )

def rapidos():
	#win combination
	win_combination = GetRandomArray(1, 21, 4)
	rapidos = meta.tables['rapidos']
	bets = meta.tables['bets_rapidos']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("amount_bets > 0")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_rapidos SET combination=" + FormatArray(GetRandomArray(1, 21, 4)) + "WHERE id = " + str(row['id']))
	#Insert Lottery
	#con.execute("INSERT INTO rapidos(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	con.execute("INSERT INTO rapidos(combination, date) VALUES (" + FormatArray(win_combination) + ", current_timestamp);")
	cv = con.execute("SELECT last_value FROM rapidos_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	#Check combinations, write raffles
	for row in con.execute(clause):
		#Win
		if (CompareArrays(row['combination'], win_combination)):
			con.execute("INSERT INTO raffles_rapidos(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
			winners.append(row['id'])
		else:
			con.execute("INSERT INTO raffles_rapidos(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", FALSE)")
	#Update lottery (win tickets)
	con.execute("UPDATE rapidos SET win_tickets =" + FormatArray(winners) + " WHERE id = " + lottery_id)
	#Close tickets
	con.execute("UPDATE bets_rapidos SET amount_bets = amount_bets-1 WHERE amount_bets > 0")

def two_numbers():
	#win combination
	win_combination = GetRandomArray(1, 21, 4)
	two_numbers = meta.tables['two_numbers']
	bets = meta.tables['bets_two_numbers']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("amount_bets > 0")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_two_numbers SET combination=" + FormatArray(GetRandomArray(1, 21, 4)) + "WHERE id = " + str(row['id']))
	#Insert Lottery
	#con.execute("INSERT INTO two_numbers(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	con.execute("INSERT INTO two_numbers(combination, date) VALUES (" + FormatArray(win_combination) + ", current_timestamp);")
	cv = con.execute("SELECT last_value FROM two_numbers_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	#Check combinations, write raffles
	for row in con.execute(clause):
		#Win
		if (CompareArrays(row['combination'], win_combination)):
			con.execute("INSERT INTO raffles_two_numbers(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
			winners.append(row['id'])
		else:
			con.execute("INSERT INTO raffles_two_numbers(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", FALSE)")
	#Update lottery (win tickets)
	con.execute("UPDATE two_numbers SET win_tickets =" + FormatArray(winners) + " WHERE id = " + lottery_id)
	#Close tickets
	con.execute("UPDATE bets_two_numbers SET amount_bets = amount_bets-1 WHERE amount_bets > 0")

def prize_jackpot():
	#bank
	bank = con.execute("SELECT * FROM bank").fetchone()
	#win combination
	win_combination = GetRandomArray(1, 21, 4)
	prize_jackpot = meta.tables['prize_jackpot']
	bets = meta.tables['bets_prize_jackpot']
	winners = []
	#Fill "Random tickets"
	clause = bets.select("amount_bets > 0")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_prize_jackpot SET combination=" + FormatArray(GetRandomArray(1, 21, 4)) + "WHERE id = " + str(row['id']))
	#Insert Lottery
	#con.execute("INSERT INTO prize_jackpot(combination, win_tickets, date) VALUES (" + FormatArray(win_combination) + ", " + FormatArray(winners) + ", current_timestamp);")
	con.execute("INSERT INTO prize_jackpot(combination, date) VALUES (" + FormatArray(win_combination) + ", current_timestamp);")
	cv = con.execute("SELECT last_value FROM prize_jackpot_id_seq AS cv;")
	lottery_id = str(cv.fetchone()['last_value'])
	#Check combinations, write raffles
	winners_0_12 = []
	winners_1_11 = []
	winners_2_10 = []
	winners_3_9 = []
	winners_4_8 = []
	for row in con.execute(clause):
		#Win
		if (DetailCompareArrays(row['combination'], win_combination) == 0 | DetailCompareArrays(row['combination'], win_combination) == 12):
			winners.append(row['id'])
			winners_0_12.append(row['id'])
			con.execute("INSERT INTO raffles_prize_jackpot(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		elif (DetailCompareArrays(row['combination'], win_combination) == 1 | DetailCompareArrays(row['combination'], win_combination) == 11):
			winners.append(row['id'])
			winners_1_11.append(row['id'])
			con.execute("INSERT INTO raffles_prize_jackpot(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		elif (DetailCompareArrays(row['combination'], win_combination) == 2 | DetailCompareArrays(row['combination'], win_combination) == 10):
			winners.append(row['id'])
			winners_2_10.append(row['id'])
			con.execute("INSERT INTO raffles_prize_jackpot(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		elif (DetailCompareArrays(row['combination'], win_combination) == 3 | DetailCompareArrays(row['combination'], win_combination) == 9):
			winners.append(row['id'])
			winners_3_9.append(row['id'])
			con.execute("INSERT INTO raffles_prize_jackpot(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		elif (DetailCompareArrays(row['combination'], win_combination) == 4 | DetailCompareArrays(row['combination'], win_combination) == 8):
			winners.append(row['id'])
			winners_4_8.append(row['id'])
			con.execute("INSERT INTO raffles_prize_jackpot(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
		#if (CompareArrays(row['combination'], win_combination)):
			#con.execute("INSERT INTO raffles_prize_jackpot(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", TRUE)")
			#winners.append(row['id'])
		else:
			con.execute("INSERT INTO raffles_prize_jackpot(ticket_id, lottery_id, combination, win_combination, date, user_id, is_win) VALUES("+str(row['id'])+", "+lottery_id+", "+FormatArray(row['combination'])+", "+FormatArray(win_combination)+", current_timestamp, "+str(row['user_id'])+", FALSE)")
	#Update lottery (win tickets)
	con.execute("UPDATE prize_jackpot SET win_tickets =" + FormatArray(winners) + " WHERE id = " + lottery_id)
	#Close tickets
	con.execute("UPDATE bets_prize_jackpot SET amount_bets = amount_bets-1 WHERE amount_bets > 0")
	#Pay
	for w in winners_2_10:
		con.execute("UPDATE wallet SET amount=amount+" + str(25) + " WHERE user_id=" + str(w))
	for w in winners_3_9:
		con.execute("UPDATE wallet SET amount=amount+" + str(5) + " WHERE user_id=" + str(w))
	for w in winners_4_8:
		con.execute("UPDATE wallet SET amount=amount+" + str(2) + " WHERE user_id=" + str(w))
	con.execute("UPDATE bank SET prize_jackpot = prize_jackpot - " + str(25 * len(winners_2_10) + 5 * len(winners_3_9) + 2 * len(winners_4_8) ) )
	for w in winners_0_12:
		con.execute("UPDATE wallet SET amount=amount+" + str(0.5 * bank['prize_jackpot'] / len(winners_0_12)) + " WHERE user_id=" + str(w))
	for w in winners_1_11:
		con.execute("UPDATE wallet SET amount=amount+" + str(0.5 * bank['prize_jackpot'] / len(winners_1_11)) + " WHERE user_id=" + str(w))
	con.execute("UPDATE bank SET prize_jackpot= prize_jackpot - " + str(0.5 * CheckWinnersExist(winners_0_12) * bank['prize_jackpot'] + 0.5 * CheckWinnersExist(winners_1_11) * bank['prize_jackpot'] ) )


def print_date_time():
	print ("Server " + time.strftime("%A, %d. %B %Y %I:%M:%S %p"))

def print_hello():
	print("Hello")
