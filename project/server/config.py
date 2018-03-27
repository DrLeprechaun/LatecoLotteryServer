# project/server/config.py

import os
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


class DevelopmentConfig(BaseConfig):
    """Development configuration."""
    DEBUG = True
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
