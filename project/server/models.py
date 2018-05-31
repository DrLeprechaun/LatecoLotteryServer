# project/server/models.py


import jwt
import datetime
import json

from project.server import app, db, bcrypt
from sqlalchemy.dialects.postgresql import ARRAY
from sqlalchemy.dialects.postgresql import REAL
from sqlalchemy.ext.declarative import DeclarativeMeta
from sqlalchemy.types import Numeric

class DecimalEncoder(json.JSONEncoder):
    def _iterencode(self, o, markers=None):
        if isinstance(o, decimal.Decimal):
            # wanted a simple yield str(o) in the next line,
            # but that would mean a yield on the line with super(...),
            # which wouldn't work (see my comment below), so...
            return (str(o) for o in [o])
        return super(DecimalEncoder, self)._iterencode(o, markers)


class AlchemyEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj.__class__, DeclarativeMeta):
            # an SQLAlchemy class
            fields = {}
            for field in [x for x in dir(obj) if not x.startswith('_') and x != 'metadata']:
                data = obj.__getattribute__(field)
                try:
                    json.dumps(data) # this will fail on non-encodable values, like other classes
                    fields[field] = data
                except TypeError:
                    fields[field] = None
            # a json-encodable dict
            return fields

        return json.JSONEncoder.default(self, obj)
#json.dumps(lottery_5x36, cls=AlchemyEncoder)


class User(db.Model):
    """ User Model for storing user related details """
    __tablename__ = "users"

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    email = db.Column(db.String(255), unique=True, nullable=False)
    password = db.Column(db.String(255), nullable=False)
    registered_on = db.Column(db.DateTime, nullable=False)
    admin = db.Column(db.Boolean, nullable=False, default=False)

    def __init__(self, email, password, admin=False):
        self.email = email
        self.password = bcrypt.generate_password_hash(
            password, app.config.get('BCRYPT_LOG_ROUNDS')
        ).decode()
        self.registered_on = datetime.datetime.now()
        self.admin = admin

    def encode_auth_token(self, user_id):
        """
        Generates the Auth Token
        :return: string
        """
        try:
            payload = {
                'exp': datetime.datetime.utcnow() + datetime.timedelta(days=0, hours=1),
                'iat': datetime.datetime.utcnow(),
                'sub': user_id
            }
            return jwt.encode(
                payload,
                app.config.get('SECRET_KEY'),
                algorithm='HS256'
            )
        except Exception as e:
            return e

    @staticmethod
    def decode_auth_token(auth_token):
        """
        Validates the auth token
        :param auth_token:
        :return: integer|string
        """
        try:
            payload = jwt.decode(auth_token, app.config.get('SECRET_KEY'))
            is_blacklisted_token = BlacklistToken.check_blacklist(auth_token)
            if is_blacklisted_token:
                return 'Token blacklisted. Please log in again.'
            else:
                return payload['sub']
        except jwt.ExpiredSignatureError:
            return 'Signature expired. Please log in again.'
        except jwt.InvalidTokenError:
            return 'Invalid token. Please log in again.'


class BlacklistToken(db.Model):
    """
    Token Model for storing JWT tokens
    """
    __tablename__ = 'blacklist_tokens'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    token = db.Column(db.String(500), unique=True, nullable=False)
    blacklisted_on = db.Column(db.DateTime, nullable=False)

    def __init__(self, token):
        self.token = token
        self.blacklisted_on = datetime.datetime.now()

    def __repr__(self):
        return '<id: token: {}'.format(self.token)

    @staticmethod
    def check_blacklist(auth_token):
        # check whether auth token has been blacklisted
        res = BlacklistToken.query.filter_by(token=str(auth_token)).first()
        if res:
            return True
        else:
            return False

class LotteryTokens(db.Model):

    __tablename__ = 'lottery_tokens'
    
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    amount = db.Column(db.BigInteger, nullable=True)

    def __init__(self, user_id, amount):
        self.user_id = user_id
        self.amount = amount

class BetsLottery_5_36(db.Model):

    __tablename__ = 'bets_lottery_5_36'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    is_active = db.Column(db.Boolean)
    is_win = db.Column(db.Boolean)

    def __init__(self, user_id, combination, is_active, is_win):
        self.user_id = user_id
        self.combination = combination
        self.is_active = is_active
        self.is_win = is_win

class BetsLottery_4_20(db.Model):

    __tablename__ = 'bets_lottery_4_20'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    is_active = db.Column(db.Boolean)
    is_win = db.Column(db.Boolean)

    def __init__(self, user_id, combination, is_active, is_win):
        self.user_id = user_id
        self.combination = combination
        self.is_active = is_active
        self.is_win = is_win

class BetsLottery_6_45(db.Model):

    __tablename__ = 'bets_lottery_6_45'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    is_active = db.Column(db.Boolean)
    is_win = db.Column(db.Boolean)

    def __init__(self, user_id, combination, is_active, is_win):
        self.user_id = user_id
        self.combination = combination
        self.is_active = is_active
        self.is_win = is_win

class BetsLottery_7_49(db.Model):

    __tablename__ = 'bets_lottery_7_49'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    is_active = db.Column(db.Boolean)
    is_win = db.Column(db.Boolean)

    def __init__(self, user_id, combination, is_active, is_win):
        self.user_id = user_id
        self.combination = combination
        self.is_active = is_active
        self.is_win = is_win

class BetsJackpot_5_36(db.Model):

    __tablename__ = 'bets_jackpot_5_36'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    is_active = db.Column(db.Boolean)
    is_win = db.Column(db.Boolean)

    def __init__(self, user_id, combination, is_active, is_win):
        self.user_id = user_id
        self.combination = combination
        self.is_active = is_active
        self.is_win = is_win

class BetsJackpot_4_20(db.Model):

    __tablename__ = 'bets_jackpot_4_20'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    is_active = db.Column(db.Boolean)
    is_win = db.Column(db.Boolean)

    def __init__(self, user_id, combination, is_active, is_win):
        self.user_id = user_id
        self.combination = combination
        self.is_active = is_active
        self.is_win = is_win

class BetsJackpot_4_21(db.Model):

    __tablename__ = 'bets_jackpot_4_21'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    is_active = db.Column(db.Boolean)
    is_win = db.Column(db.Boolean)

    def __init__(self, user_id, combination, is_active, is_win):
        self.user_id = user_id
        self.combination = combination
        self.is_active = is_active
        self.is_win = is_win

class BetsJackpot_6_45(db.Model):

    __tablename__ = 'bets_jackpot_6_45'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    is_active = db.Column(db.Boolean)
    is_win = db.Column(db.Boolean)

    def __init__(self, user_id, combination, is_active, is_win):
        self.user_id = user_id
        self.combination = combination
        self.is_active = is_active
        self.is_win = is_win

class BetsJackpot_7_49(db.Model):

    __tablename__ = 'bets_jackpot_7_49'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    is_active = db.Column(db.Boolean)
    is_win = db.Column(db.Boolean)

    def __init__(self, user_id, combination, is_active, is_win):
        self.user_id = user_id
        self.combination = combination
        self.is_active = is_active
        self.is_win = is_win

class BetsRapidos(db.Model):

    __tablename__ = 'bets_rapidos'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    is_active = db.Column(db.Boolean)
    is_win = db.Column(db.Boolean)

    def __init__(self, user_id, combination, is_active, is_win):
        self.user_id = user_id
        self.combination = combination
        self.is_active = is_active
        self.is_win = is_win

class BetsSupers(db.Model):

    __tablename__ = 'bets_supers'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    is_active = db.Column(db.Boolean)
    is_win = db.Column(db.Boolean)

    def __init__(self, user_id, combination, is_active, is_win):
        self.user_id = user_id
        self.combination = combination
        self.is_active = is_active
        self.is_win = is_win

class BetsTop3(db.Model):

    __tablename__ = 'bets_top3'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    is_active = db.Column(db.Boolean)
    is_win = db.Column(db.Boolean)

    def __init__(self, user_id, combination, is_active, is_win):
        self.user_id = user_id
        self.combination = combination
        self.is_active = is_active
        self.is_win = is_win

class Wallets(db.Model):

    __tablename__ = 'wallets'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    user_id = db.Column(db.Integer, nullable=True)
    amount = db.Column(REAL, nullable=True)

    def __init__(self, user_id, amount):
        self.user_id = user_id
        self.amount = amount

class Lottery_5_36(db.Model):

    __tablename__ = 'lottery_5_36'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    combination = db.Column(ARRAY(db.Integer), nullable=True)
    win_tikets = db.Column(ARRAY(db.Integer), nullable=True)
    date = db.Column(db.DateTime, nullable=False)

    def __init__(self, combination, win_tikets, date):
        self.combination = combination
        self.win_tikets = win_tikets
        self.date = date

class Bank(db.Model):

    __tablename__ = 'bank'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    lottery_5_36 = db.Column(REAL, nullable=True)
    lottery_6_45 = db.Column(REAL, nullable=True)
    lottery_4_20 = db.Column(REAL, nullable=True)
    lottery_7_49 = db.Column(REAL, nullable=True)
    jackpot_5_36 = db.Column(REAL, nullable=True)
    jackpot_6_45 = db.Column(REAL, nullable=True)
    jackpot_4_20 = db.Column(REAL, nullable=True)
    jackpot_7_49 = db.Column(REAL, nullable=True)
    superjackpot = db.Column(REAL, nullable=True)

    def __init__(self, lottery_5_36, lottery_6_45, lottery_4_20, lottery_7_49, jackpot_5_36, jackpot_6_45, jackpot_4_20, jackpot_7_49, superjackpot):
        self.lottery_5_36 = lottery_5_36
        self.lottery_6_45 = lottery_6_45
        self.lottery_4_20 = lottery_4_20
        self.lottery_7_49 = lottery_7_49
        self.jackpot_5_36 = jackpot_5_36
        self.jackpot_6_45 = jackpot_6_45
        self.jackpot_4_20 = jackpot_4_20
        self.jackpot_7_49 = jackpot_7_49
        self.superjackpot = superjackpot
