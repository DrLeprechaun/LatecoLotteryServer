# project/server/config.py

import os
from flask_apscheduler import APScheduler

basedir = os.path.abspath(os.path.dirname(__file__))
#postgres_local_base = 'postgresql://postgres:@localhost:5432/'
postgres_local_base = 'postgresql://postgres:latecO20112017@localhost/'
database_name = 'lottery'


class BaseConfig:
    """Base configuration."""
    SECRET_KEY = os.getenv('SECRET_KEY', '_Q[6\xdc\xa2\x8a\x0c\xa1<\xf0\x1b\x93\xd9\xf9J%\xa6\xf8\x82 v4\xbe')
    DEBUG = False
    BCRYPT_LOG_ROUNDS = 13
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    JOBS = [
        #{
            #'id': 'job1',
            #'func': 'project.server.jobs:job1',
            #'args': (1, 2),
            #'trigger': 'cron',
            #'year': '*',
            #'month': '*',
            #'day': '*',
            #'hour': '14',
            #'minute': '5',
            #'second': '0',
            #'trigger': 'interval',
            #'seconds': 10
            #'hours': 24
        #}        
        {
            'id': 'jackpot_5x36_4_00',
            'func': 'project.server.jobs:jackpot_5x36',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '7',
            'minute': '0',
            'second': '0',
        },
        {
            'id': 'jackpot_5x36_10_00',
            'func': 'project.server.jobs:jackpot_5x36',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '13',
            'minute': '0',
            'second': '0',
        },
        {
            'id': 'jackpot_5x36_16_00',
            'func': 'project.server.jobs:jackpot_5x36',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '19',
            'minute': '0',
            'second': '0',
        },
        {
            'id': 'jackpot_5x36_22_00',
            'func': 'project.server.jobs:jackpot_5x36',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '1',
            'minute': '0',
            'second': '0',
        },
        {
            'id': 'jackpot_6x45_9_00',
            'func': 'project.server.jobs:jackpot_6x45',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '12',
            'minute': '0',
            'second': '0',
        },
        {
            'id': 'jackpot_6x45_21_00',
            'func': 'project.server.jobs:jackpot_6x45',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '0',
            'minute': '0',
            'second': '0',
        },         
        {
            'id': 'jackpot_4x21_2_00',
            'func': 'project.server.jobs:jackpot_4x21',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '5',
            'minute': '0',
            'second': '0',
        },
        {
            'id': 'jackpot_4x21_5_00',
            'func': 'project.server.jobs:jackpot_4x21',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '8',
            'minute': '0',
            'second': '0',
        },
        {
            'id': 'jackpot_4x21_8_00',
            'func': 'project.server.jobs:jackpot_4x21',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '11',
            'minute': '0',
            'second': '0',
        },
        {
            'id': 'jackpot_4x21_14_00',
            'func': 'project.server.jobs:jackpot_4x21',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '17',
            'minute': '0',
            'second': '0',
        },
        {
            'id': 'jackpot_4x21_17_00',
            'func': 'project.server.jobs:jackpot_4x21',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '20',
            'minute': '0',
            'second': '0',
        },
        {
            'id': 'jackpot_4x21_20_00',
            'func': 'project.server.jobs:jackpot_4x21',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '23',
            'minute': '0',
            'second': '0',
        },
        {
            'id': 'rapidos_0',
            'func': 'project.server.jobs:rapidos',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '*',
            'minute': '0',
            'second': '0',
        },
        {
            'id': 'rapidos_15',
            'func': 'project.server.jobs:rapidos',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '*',
            'minute': '15',
            'second': '0',
        },
        {
            'id': 'rapidos_30',
            'func': 'project.server.jobs:rapidos',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '*',
            'minute': '30',
            'second': '0',
        },
        {
            'id': 'rapidos_45',
            'func': 'project.server.jobs:rapidos',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '*',
            'minute': '45',
            'second': '0',
        },
        {
            'id': 'two_numbers_5',
            'func': 'project.server.jobs:two_numbers',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '*',
            'minute': '5',
            'second': '0',
        },
        {
            'id': 'two_numbers_20',
            'func': 'project.server.jobs:two_numbers',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '*',
            'minute': '20',
            'second': '0',
        },
        {
            'id': 'two_numbers_35',
            'func': 'project.server.jobs:two_numbers',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '*',
            'minute': '35',
            'second': '0',
        },
        {
            'id': 'two_numbers_50',
            'func': 'project.server.jobs:two_numbers',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '*',
            'minute': '50',
            'second': '0',
        },
        {
            'id': 'prize_jackpot_10',
            'func': 'project.server.jobs:prize_jackpot',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '*',
            'minute': '10',
            'second': '0',
        },
        {
            'id': 'prize_jackpot_25',
            'func': 'project.server.jobs:prize_jackpot',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '*',
            'minute': '25',
            'second': '0',
        },
        {
            'id': 'prize_jackpot_40',
            'func': 'project.server.jobs:prize_jackpot',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '*',
            'minute': '40',
            'second': '0',
        },
        {
            'id': 'prize_jackpot_55',
            'func': 'project.server.jobs:prize_jackpot',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '*',
            'minute': '55',
            'second': '0',
        }
    ]

SCHEDULER_API_ENABLED = True
MAIL_SERVER='smtp.mail.ru'
MAIL_PORT = 465
MAIL_USERNAME = 'vadim.e@lateco.net'
MAIL_PASSWORD = '1S13x111041992'
#MAIL_USE_TLS = False
#MAIL_USE_SSL = True


class DevelopmentConfig(BaseConfig):
    """Development configuration."""
    DEBUG = False
    BCRYPT_LOG_ROUNDS = 4
    SQLALCHEMY_DATABASE_URI = postgres_local_base + database_name


class TestingConfig(BaseConfig):
    """Testing configuration."""
    DEBUG = True
    TESTING = True
    BCRYPT_LOG_ROUNDS = 4
    SQLALCHEMY_DATABASE_URI = postgres_local_base + database_name + '_test'
    PRESERVE_CONTEXT_ON_EXCEPTION = False


class ProductionConfig(BaseConfig):
    """Production configuration."""
    SECRET_KEY = '_Q[6\xdc\xa2\x8a\x0c\xa1<\xf0\x1b\x93\xd9\xf9J%\xa6\xf8\x82 v4\xbe'
    DEBUG = False
    SQLALCHEMY_DATABASE_URI = 'postgresql:///example'


#def job1(a, b):
    #print(str(a) + ' ' + str(b))
