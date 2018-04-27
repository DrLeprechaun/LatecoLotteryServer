# project/server/jobs.py

import time
import atexit
import sqlalchemy
from sqlalchemy import Table, Column, Integer, Float, String, ForeignKey, Sequence

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


def job1(a, b):
	bank = meta.tables['bank']
	clause = bank.select("id = 1")
	for row in con.execute(clause):
		print(row['superjackpot'])

def print_date_time():
	print ("Server " + time.strftime("%A, %d. %B %Y %I:%M:%S %p"))

def print_hello():
	print("Hello")

