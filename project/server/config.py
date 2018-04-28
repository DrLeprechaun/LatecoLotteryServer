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
            'id': 'lottery_5x36',
            'func': 'project.server.jobs:lottery_5x36',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '1',
            'minute': '15',
            'second': '0',
        },
        {
            'id': 'lottery_6x45',
            'func': 'project.server.jobs:lottery_6x45',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '1',
            'minute': '16',
            'second': '0',
        },
        {
            'id': 'lottery_4x20',
            'func': 'project.server.jobs:lottery_4x20',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '1',
            'minute': '17',
            'second': '0',
        },
        {
            'id': 'lottery_7x49',
            'func': 'project.server.jobs:lottery_7x49',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '1',
            'minute': '18',
            'second': '0',
        },
        {
            'id': 'jackpot_5x36',
            'func': 'project.server.jobs:jackpot_5x36',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '1',
            'minute': '19',
            'second': '0',
        },
        {
            'id': 'jackpot_6x45',
            'func': 'project.server.jobs:jackpot_6x45',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '1',
            'minute': '20',
            'second': '0',
        },
        {
            'id': 'jackpot_4x20',
            'func': 'project.server.jobs:jackpot_4x20',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '1',
            'minute': '21',
            'second': '0',
        },
        {
            'id': 'jackpot_7x49',
            'func': 'project.server.jobs:jackpot_7x49',
            'trigger': 'cron',
            'year': '*',
            'month': '*',
            'day': '*',
            'hour': '1',
            'minute': '22',
            'second': '0',
        },
    ]

SCHEDULER_API_ENABLED = True


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
