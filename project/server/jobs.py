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

def lottery_5x36():
	#win combination
	win_combination = GetRandomArray(1, 36, 5)
	lottery_5x36 = meta.tables['lottery_5_36']
	bets = meta.tables['bets_lottery_5_36']
	#Fill "Random tickets"
	clause = bets.select("is_active = true")
	for row in con.execute(clause):
		if (row['combination'] is None or len(row['combination']) == 0):
			con.execute("UPDATE bets_lottery_5_36 SET combination=" + FormatArray(GetRandomArray(1, 36, 5)) + "WHERE id = " + str(row['id']))
	#for row in con.execute(clause):
		#print(CompareArrays(row['combination'], win_combination))
	#con.execute("INSERT INTO lottery_5_36(combination, date) VALUES (" + FormatArray(win_combination) + ", current_timestamp);")


def print_date_time():
	print ("Server " + time.strftime("%A, %d. %B %Y %I:%M:%S %p"))

def print_hello():
	print("Hello")

