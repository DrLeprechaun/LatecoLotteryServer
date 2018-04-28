# project/server/logic/views.py


from flask import Blueprint, request, make_response, jsonify
from flask.views import MethodView

from project.server import bcrypt, db
from project.server.models import *
import codecs, json
import numpy as np
from random import randint

logic_blueprint = Blueprint('logic', __name__)

def GetRandomArray(min, max, size):
	arr = []
	while len(arr) < size:
		item = randint(min, max)
		if item not in arr:
			arr.append(item)
	return arr

def CompareArrays(arr1, arr2):
	return sorted(arr1) == sorted(arr2)


class GetCominationTest(MethodView):
	def get(self):
		arr1 = GetRandomArray(20, 30, 10)
		arr2 = GetRandomArray(20, 30, 10)
		responseObject = {
			'c1': arr1,
			'c2': arr2,
			'r': CompareArrays(arr1, arr2)
		}
		return make_response(jsonify(responseObject)), 200

class GetSuperjackpot(MethodView):
    def get(self):
        bank = Bank.query.one()
        responseObject = {
            'status': 'success',
            'data': bank.superjackpot
            }
        return make_response(jsonify(responseObject)), 200
        responseObject = {
            'status': 'fail',
            'message': resp
        }
        return make_response(jsonify(responseObject)), 401

class GetBank(MethodView):
    def get(self):
        bank = Bank.query.one()
        responseObject = {
            'status': 'success',
            'data': {
                    'lottery_5x36': bank.lottery_5_36,
                    'lottery_6x45': bank.lottery_6_45,
                    'lottery_4x20': bank.lottery_4_20,
                    'lottery_7x49': bank.lottery_7_49,
                    'jackpot_5x36': bank.jackpot_5_36,
                    'jackpot_6x45': bank.jackpot_6_45,
                    'jackpot_4x20': bank.jackpot_4_20,
                    'jackpot_7x49': bank.jackpot_4_20,
                    'superjackpot': bank.superjackpot
                }
            }
        return make_response(jsonify(responseObject)), 200
        responseObject = {
            'status': 'fail',
            'message': resp
        }
        return make_response(jsonify(responseObject)), 401


class TokensAmount(MethodView):
    def get(self):
        # get the auth token
        auth_header = request.headers.get('Authorization')
        if auth_header:
            try:
                auth_token = auth_header.split(" ")[1]
            except IndexError:
                responseObject = {
                    'status': 'fail',
                    'message': 'Bearer token malformed.'
                }
                return make_response(jsonify(responseObject)), 401
        else:
            auth_token = ''
        if auth_token:
            resp = User.decode_auth_token(auth_token)
            if not isinstance(resp, str):
                user = User.query.filter_by(id=resp).first()
                lottery_tokens = LotteryTokens.query.filter_by(user_id=user.id).first()
                responseObject = {
                    'status': 'success',
                    'data': {
                        'amount': lottery_tokens.amount
                    }
                }
                return make_response(jsonify(responseObject)), 200
            responseObject = {
                'status': 'fail',
                'message': resp
            }
            return make_response(jsonify(responseObject)), 401
        else:
            responseObject = {
                'status': 'fail',
                'message': 'Provide a valid auth token.'
            }
            return make_response(jsonify(responseObject)), 401


class WalletAmount(MethodView):
    def get(self):
        # get the auth token
        auth_header = request.headers.get('Authorization')
        if auth_header:
            try:
                auth_token = auth_header.split(" ")[1]
            except IndexError:
                responseObject = {
                    'status': 'fail',
                    'message': 'Bearer token malformed.'
                }
                return make_response(jsonify(responseObject)), 401
        else:
            auth_token = ''
        if auth_token:
            resp = User.decode_auth_token(auth_token)
            if not isinstance(resp, str):
                user = User.query.filter_by(id=resp).first()
                wallet = Wallets.query.filter_by(user_id=user.id).first()
                responseObject = {
                    'status': 'success',
                    'data': {
                        'amount': wallet.amount,
                    }
                }
                return make_response(jsonify(responseObject)), 200
            responseObject = {
                'status': 'fail',
                'message': resp
            }
            return make_response(jsonify(responseObject)), 401
        else:
            responseObject = {
                'status': 'fail',
                'message': 'Provide a valid auth token.'
            }
            return make_response(jsonify(responseObject)), 401


class MakeBets(MethodView):
    def post(self):
        auth_header = request.headers.get('Authorization')
        post_data = request.get_json()
        if auth_header:
            try:
                auth_token = auth_header.split(" ")[1]
            except IndexError:
                responseObject = {
                    'status': 'fail',
                    'message': 'Bearer token malformed.'
                }
                return make_response(jsonify(responseObject)), 401
        else:
            auth_token = ''
        if auth_token:
            resp = User.decode_auth_token(auth_token)
            if not isinstance(resp, str):
                user = User.query.filter_by(id=resp).first()
                lotteryTokens = LotteryTokens.query.filter_by(user_id=user.id).first()
                #count amount
                am = 0;
                for i in range(0, post_data.get('l_5x36')):
                    am = am + 1
                for i in range(0, post_data.get('l_6x45')):
                    am = am + 1
                for i in range(0, post_data.get('l_4x20')):
                    am = am + 1
                for i in range(0, post_data.get('l_7x49')):
                    am = am + 1
                for i in range(0, post_data.get('j_5x36')):
                    am = am + 5
                for i in range(0, post_data.get('j_6x45')):
                    am = am + 5
                for i in range(0, post_data.get('j_4x20')):
                    am = am + 5
                for i in range(0, post_data.get('j_7x49')):
                    am = am + 5
                if (am <= lotteryTokens.amount):
                    for i in range(0, post_data.get('l_5x36')):
                        lottery_5_36 = BetsLottery_5_36(user.id, None, True, False)
                        db.session.add(lottery_5_36)
                    for i in range(0, post_data.get('l_6x45')):
                        lottery_6_45 = BetsLottery_6_45(user.id, None, True, False)
                        db.session.add(lottery_6_45)
                    for i in range(0, post_data.get('l_4x20')):
                        lottery_4_20 = BetsLottery_4_20(user.id, None, True, False)
                        db.session.add(lottery_4_20)
                    for i in range(0, post_data.get('l_7x49')):
                        lottery_7_49 = BetsLottery_7_49(user.id, None, True, False)
                        db.session.add(lottery_7_49)
                    for i in range(0, post_data.get('j_5x36')):
                        jackpot_5_36 = BetsJackpot_5_36(user.id, None, True, False)
                        db.session.add(jackpot_5_36)
                    for i in range(0, post_data.get('j_6x45')):
                        jackpot_6_45 = BetsJackpot_6_45(user.id, None, True, False)
                        db.session.add(jackpot_6_45)
                    for i in range(0, post_data.get('j_4x20')):
                        jackpot_4_20 = BetsJackpot_4_20(user.id, None, True, False)
                        db.session.add(jackpot_4_20)
                    for i in range(0, post_data.get('j_7x49')):
                        jackpot_7_49 = BetsJackpot_7_49(user.id, None, True, False)
                        db.session.add(jackpot_7_49)
                    lotteryTokens.amount = lotteryTokens.amount - am
                    db.session.commit()
                    #db.flush()
                    responseObject = {
                        'status': 'success'
                    }
                else:
                    responseObject = {
                        'status': 'fail',
                        'message': 'Not enough tokens!'
                    }
                return make_response(jsonify(responseObject)), 200
            responseObject = {
                'status': 'fail',
                'message': resp
            }
            return make_response(jsonify(responseObject)), 401
        else:
            responseObject = {
                'status': 'fail',
                'message': 'Provide a valid auth token.'
            }
            return make_response(jsonify(responseObject)), 401


class GetBets(MethodView):
    def get(self):
        # get the auth token
        auth_header = request.headers.get('Authorization')
        if auth_header:
            try:
                auth_token = auth_header.split(" ")[1]
            except IndexError:
                responseObject = {
                    'status': 'fail',
                    'message': 'Bearer token malformed.'
                }
                return make_response(jsonify(responseObject)), 401
        else:
            auth_token = ''
        if auth_token:
            resp = User.decode_auth_token(auth_token)
            if not isinstance(resp, str):
                user = User.query.filter_by(id=resp).first()
                #lottery_5x36
                lottery_5x36 = db.engine.execute('SELECT * FROM bets_lottery_5_36 WHERE user_id =' + str(user.id) + ' AND is_active = TRUE')
                lottery_5x36_arr = []
                for row in lottery_5x36:
                    obj = {
                        'id': row.id,
                        'combination': row.combination,
                        'is_win': row.is_win
                    }
                    lottery_5x36_arr.append(obj)
                #lottery_6x45
                lottery_6x45 = db.engine.execute('SELECT * FROM bets_lottery_6_45 WHERE user_id =' + str(user.id) + ' AND is_active = TRUE')
                lottery_6x45_arr = []
                for row in lottery_6x45:
                    obj = {
                        'id': row.id,
                        'combination': row.combination,
                        'is_win': row.is_win
                    }
                    lottery_6x45_arr.append(obj)
                #lottery_4x20
                lottery_4x20 = db.engine.execute('SELECT * FROM bets_lottery_4_20 WHERE user_id =' + str(user.id) + ' AND is_active = TRUE')
                lottery_4x20_arr = []
                for row in lottery_4x20:
                    obj = {
                        'id': row.id,
                        'combination': row.combination,
                        'is_win': row.is_win
                    }
                    lottery_4x20_arr.append(obj)
                #lottery_7x49
                lottery_7x49 = db.engine.execute('SELECT * FROM bets_lottery_7_49 WHERE user_id =' + str(user.id) + ' AND is_active = TRUE')
                lottery_7x49_arr = []
                for row in lottery_7x49:
                    obj = {
                        'id': row.id,
                        'combination': row.combination,
                        'is_win': row.is_win
                    }
                    lottery_7x49_arr.append(obj)
                #jackpot_5x36
                jackpot_5x36 = db.engine.execute('SELECT * FROM bets_jackpot_5_36 WHERE user_id =' + str(user.id) + ' AND is_active = TRUE')
                jackpot_5x36_arr = []
                for row in jackpot_5x36:
                    obj = {
                        'id': row.id,
                        'combination': row.combination,
                        'is_win': row.is_win
                    }
                    jackpot_5x36_arr.append(obj)
                #jackpot_6x45
                jackpot_6x45 = db.engine.execute('SELECT * FROM bets_jackpot_6_45 WHERE user_id =' + str(user.id) + ' AND is_active = TRUE')
                jackpot_6x45_arr = []
                for row in jackpot_6x45:
                    obj = {
                        'id': row.id,
                        'combination': row.combination,
                        'is_win': row.is_win
                    }
                    jackpot_6x45_arr.append(obj)
                #jackpot_4x20
                jackpot_4x20 = db.engine.execute('SELECT * FROM bets_jackpot_4_20 WHERE user_id =' + str(user.id) + ' AND is_active = TRUE')
                jackpot_4x20_arr = []
                for row in jackpot_4x20:
                    obj = {
                        'id': row.id,
                        'combination': row.combination,
                        'is_win': row.is_win
                    }
                    jackpot_4x20_arr.append(obj)
                #jackpot_7x49
                jackpot_7x49 = db.engine.execute('SELECT * FROM bets_jackpot_7_49 WHERE user_id =' + str(user.id) + ' AND is_active = TRUE')
                jackpot_7x49_arr = []
                for row in jackpot_7x49:
                    obj = {
                        'id': row.id,
                        'combination': row.combination,
                        'is_win': row.is_win
                    }
                    jackpot_7x49_arr.append(obj)
                responseObject = {
                    'status': 'success',
                    'data': {
                        'lottery_5x36': lottery_5x36_arr,
                        'lottery_6x45': lottery_6x45_arr,
                        'lottery_4x20': lottery_4x20_arr,
                        'lottery_7x49': lottery_7x49_arr,
                        'jackpot_5x36': jackpot_5x36_arr,
                        'jackpot_6x45': jackpot_6x45_arr,
                        'jackpot_4x20': jackpot_4x20_arr,
                        'jackpot_7x49': jackpot_7x49_arr
                    }
                }
                return make_response(jsonify(responseObject)), 200
            responseObject = {
                'status': 'fail',
                'message': resp
            }
            return make_response(jsonify(responseObject)), 401
        else:
            responseObject = {
                'status': 'fail',
                'message': 'Provide a valid auth token.'
            }
            return make_response(jsonify(responseObject)), 401

class GetBetsArchive(MethodView):
    def get(self):
        # get the auth token
        auth_header = request.headers.get('Authorization')
        if auth_header:
            try:
                auth_token = auth_header.split(" ")[1]
            except IndexError:
                responseObject = {
                    'status': 'fail',
                    'message': 'Bearer token malformed.'
                }
                return make_response(jsonify(responseObject)), 401
        else:
            auth_token = ''
        if auth_token:
            resp = User.decode_auth_token(auth_token)
            if not isinstance(resp, str):
                user = User.query.filter_by(id=resp).first()
                #lottery_5x36
                lottery_5x36 = db.engine.execute('SELECT bets_lottery_5_36.id AS id, bets_lottery_5_36.combination AS my_combination, bets_lottery_5_36.is_win AS is_win, lottery_5_36.combination AS win_combination,  lottery_5_36.date AS date FROM bets_lottery_5_36  INNER JOIN lottery_5_36 ON lottery_5_36.id = bets_lottery_5_36.lottery WHERE bets_lottery_5_36.user_id = ' + str(user.id) + ' AND bets_lottery_5_36.is_active = false')
                lottery_5x36_arr = []
                for row in lottery_5x36:
                    obj = {
                        'id': row.id,
                        'my_combination': row.my_combination,
                        'is_win': row.is_win,
                        'win_combination': row.win_combination,
                        'date': row.date
                    }
                    lottery_5x36_arr.append(obj)
                #lottery_6x45
                lottery_6x45 = db.engine.execute('SELECT bets_lottery_6_45.id AS id, bets_lottery_6_45.combination AS my_combination, bets_lottery_6_45.is_win AS is_win, lottery_6_45.combination AS win_combination,  lottery_6_45.date AS date FROM bets_lottery_6_45  INNER JOIN lottery_6_45 ON lottery_6_45.id = bets_lottery_6_45.lottery WHERE bets_lottery_6_45.user_id = ' + str(user.id) + ' AND bets_lottery_6_45.is_active = false')
                lottery_6x45_arr = []
                for row in lottery_6x45:
                    obj = {
                        'id': row.id,
                        'my_combination': row.my_combination,
                        'is_win': row.is_win,
                        'win_combination': row.win_combination,
                        'date': row.date
                    }
                    lottery_6x45_arr.append(obj)
                #lottery_4x20
                lottery_4x20 = db.engine.execute('SELECT bets_lottery_4_20.id AS id, bets_lottery_4_20.combination AS my_combination, bets_lottery_4_20.is_win AS is_win, lottery_4_20.combination AS win_combination,  lottery_4_20.date AS date FROM bets_lottery_4_20  INNER JOIN lottery_4_20 ON lottery_4_20.id = bets_lottery_4_20.lottery WHERE bets_lottery_4_20.user_id = ' + str(user.id) + ' AND bets_lottery_4_20.is_active = false')
                lottery_4x20_arr = []
                for row in lottery_4x20:
                    obj = {
                        'id': row.id,
                        'my_combination': row.my_combination,
                        'is_win': row.is_win,
                        'win_combination': row.win_combination,
                        'date': row.date
                    }
                    lottery_4x20_arr.append(obj)
                #lottery_7x49
                lottery_7x49 = db.engine.execute('SELECT bets_lottery_7_49.id AS id, bets_lottery_7_49.combination AS my_combination, bets_lottery_7_49.is_win AS is_win, lottery_7_49.combination AS win_combination,  lottery_7_49.date AS date FROM bets_lottery_7_49  INNER JOIN lottery_7_49 ON lottery_7_49.id = bets_lottery_7_49.lottery WHERE bets_lottery_7_49.user_id = ' + str(user.id) + ' AND bets_lottery_7_49.is_active = false')
                lottery_7x49_arr = []
                for row in lottery_7x49:
                    obj = {
                        'id': row.id,
                        'my_combination': row.my_combination,
                        'is_win': row.is_win,
                        'win_combination': row.win_combination,
                        'date': row.date
                    }
                    lottery_7x49_arr.append(obj)
                #jackpot_5x36
                jackpot_5x36 = db.engine.execute('SELECT bets_jackpot_5_36.id AS id, bets_jackpot_5_36.combination AS my_combination, bets_jackpot_5_36.is_win AS is_win, jackpot_5_36.combination AS win_combination,  jackpot_5_36.date AS date FROM bets_jackpot_5_36  INNER JOIN jackpot_5_36 ON jackpot_5_36.id = bets_jackpot_5_36.lottery WHERE bets_jackpot_5_36.user_id = ' + str(user.id) + ' AND bets_jackpot_5_36.is_active = false')
                jackpot_5x36_arr = []
                for row in jackpot_5x36:
                    obj = {
                        'id': row.id,
                        'my_combination': row.my_combination,
                        'is_win': row.is_win,
                        'win_combination': row.win_combination,
                        'date': row.date
                    }
                    jackpot_5x36_arr.append(obj)
                #jackpot_6x45
                jackpot_6x45 = db.engine.execute('SELECT bets_jackpot_6_45.id AS id, bets_jackpot_6_45.combination AS my_combination, bets_jackpot_6_45.is_win AS is_win, jackpot_6_45.combination AS win_combination,  jackpot_6_45.date AS date FROM bets_jackpot_6_45  INNER JOIN jackpot_6_45 ON jackpot_6_45.id = bets_jackpot_6_45.lottery WHERE bets_jackpot_6_45.user_id = ' + str(user.id) + ' AND bets_jackpot_6_45.is_active = false')
                jackpot_6x45_arr = []
                for row in jackpot_6x45:
                    obj = {
                        'id': row.id,
                        'my_combination': row.my_combination,
                        'is_win': row.is_win,
                        'win_combination': row.win_combination,
                        'date': row.date
                    }
                    jackpot_6x45_arr.append(obj)
                #jackpot_4x20
                jackpot_4x20 = db.engine.execute('SELECT bets_jackpot_4_20.id AS id, bets_jackpot_4_20.combination AS my_combination, bets_jackpot_4_20.is_win AS is_win, jackpot_4_20.combination AS win_combination,  jackpot_4_20.date AS date FROM bets_jackpot_4_20  INNER JOIN jackpot_4_20 ON jackpot_4_20.id = bets_jackpot_4_20.lottery WHERE bets_jackpot_4_20.user_id = ' + str(user.id) + ' AND bets_jackpot_4_20.is_active = false')
                jackpot_4x20_arr = []
                for row in jackpot_4x20:
                    obj = {
                        'id': row.id,
                        'my_combination': row.my_combination,
                        'is_win': row.is_win,
                        'win_combination': row.win_combination,
                        'date': row.date
                    }
                    jackpot_4x20_arr.append(obj)
                #jackpot_7x49
                jackpot_7x49 = db.engine.execute('SELECT bets_jackpot_7_49.id AS id, bets_jackpot_7_49.combination AS my_combination, bets_jackpot_7_49.is_win AS is_win, jackpot_7_49.combination AS win_combination,  jackpot_7_49.date AS date FROM bets_jackpot_7_49  INNER JOIN jackpot_7_49 ON jackpot_7_49.id = bets_jackpot_7_49.lottery WHERE bets_jackpot_7_49.user_id = ' + str(user.id) + ' AND bets_jackpot_7_49.is_active = false')
                jackpot_7x49_arr = []
                for row in jackpot_7x49:
                    obj = {
                        'id': row.id,
                        'my_combination': row.my_combination,
                        'is_win': row.is_win,
                        'win_combination': row.win_combination,
                        'date': row.date
                    }
                    jackpot_7x49_arr.append(obj)
                responseObject = {
                    'status': 'success',
                    'data': {
                        'lottery_5x36': lottery_5x36_arr,
                        'lottery_6x45': lottery_6x45_arr,
                        'lottery_4x20': lottery_4x20_arr,
                        'lottery_7x49': lottery_7x49_arr,
                        'jackpot_5x36': jackpot_5x36_arr,
                        'jackpot_6x45': jackpot_6x45_arr,
                        'jackpot_4x20': jackpot_4x20_arr,
                        'jackpot_7x49': jackpot_7x49_arr
                    }
                }
                return make_response(jsonify(responseObject)), 200
            responseObject = {
                'status': 'fail',
                'message': resp
            }
            return make_response(jsonify(responseObject)), 401
        else:
            responseObject = {
                'status': 'fail',
                'message': 'Provide a valid auth token.'
            }
            return make_response(jsonify(responseObject)), 401

class UpdateCombination(MethodView):
    def post(self):
        auth_header = request.headers.get('Authorization')
        post_data = request.get_json()
        print(post_data)
        if auth_header:
            try:
                auth_token = auth_header.split(" ")[1]
            except IndexError:
                responseObject = {
                    'status': 'fail',
                    'message': 'Bearer token malformed.'
                }
                return make_response(jsonify(responseObject)), 401
        else:
            auth_token = ''
        if auth_token:
            resp = User.decode_auth_token(auth_token)
            if not isinstance(resp, str):
                user = User.query.filter_by(id=resp).first()
                if (post_data['type'] == "lottery_5x36"):
                    lottery = BetsLottery_5_36.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                if (post_data['type'] == "lottery_6x45"):
                    lottery = BetsLottery_6_45.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                if (post_data['type'] == "lottery_4x20"):
                    lottery = BetsLottery_4_20.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                if (post_data['type'] == "lottery_7x49"):
                    lottery = BetsLottery_7_49.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                if (post_data['type'] == "jackpot_5x36"):
                    lottery = BetsJackpot_5_36.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                if (post_data['type'] == "jackpot_6x45"):
                    lottery = BetsJackpot_6_45.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                if (post_data['type'] == "jackpot_4x20"):
                    lottery = BetsJackpot_4_20.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                if (post_data['type'] == "jackpot_7x49"):
                    lottery = BetsJackpot_7_49.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                #db.flush()
                db.session.commit()
                responseObject = {
                    'status': 'success'
                }
                return make_response(jsonify(responseObject)), 200
            responseObject = {
                'status': 'fail',
                'message': resp
            }
            return make_response(jsonify(responseObject)), 401
        else:
            responseObject = {
                'status': 'fail',
                'message': 'Provide a valid auth token.'
            }
            return make_response(jsonify(responseObject)), 401


class FillUpWallet(MethodView):
    def post(self):
        auth_header = request.headers.get('Authorization')
        post_data = request.get_json()
        if auth_header:
            try:
                auth_token = auth_header.split(" ")[1]
            except IndexError:
                responseObject = {
                    'status': 'fail',
                    'message': 'Bearer token malformed.'
                }
                return make_response(jsonify(responseObject)), 401
        else:
            auth_token = ''
        if auth_token:
            try:
                resp = User.decode_auth_token(auth_token)
                user = User.query.filter_by(id=resp).first()
                wallet = Wallets.query.filter_by(user_id=user.id).first()
                wallet.amount += post_data.get('amount')
                db.session.commit()
                responseObject = {
                    'status': 'success'
                }
                return make_response(jsonify(responseObject)), 200
            except Exception as e:
                responseObject = {
                    'status': 'fail',
                    'message': resp
                }
            return make_response(jsonify(responseObject)), 401
        else:
            responseObject = {
                'status': 'fail',
                'message': 'Provide a valid auth token.'
            }
            return make_response(jsonify(responseObject)), 401


class WithdrawWallet(MethodView):
    def post(self):
        auth_header = request.headers.get('Authorization')
        post_data = request.get_json()
        if auth_header:
            try:
                auth_token = auth_header.split(" ")[1]
            except IndexError:
                responseObject = {
                    'status': 'fail',
                    'message': 'Bearer token malformed.'
                }
                return make_response(jsonify(responseObject)), 401
        else:
            auth_token = ''
        if auth_token:
            try:
                resp = User.decode_auth_token(auth_token)
                user = User.query.filter_by(id=resp).first()
                wallet = Wallets.query.filter_by(user_id=user.id).first()
                if (wallet.amount > post_data.get('amount')):
                    wallet.amount -= post_data.get('amount')
                    db.session.commit()
                    responseObject = {
                        'status': 'success'
                    }
                else:
                    responseObject = {
                        'status': 'fail',
                        'message': 'Insufficient funds'
                    }
                return make_response(jsonify(responseObject)), 200
            except Exception as e:
                responseObject = {
                    'status': 'fail',
                    'message': resp
                }
            return make_response(jsonify(responseObject)), 401
        else:
            responseObject = {
                'status': 'fail',
                'message': 'Provide a valid auth token.'
            }
            return make_response(jsonify(responseObject)), 401


class FillUpTokens(MethodView):
    def post(self):
        auth_header = request.headers.get('Authorization')
        post_data = request.get_json()
        if auth_header:
            try:
                auth_token = auth_header.split(" ")[1]
            except IndexError:
                responseObject = {
                    'status': 'fail',
                    'message': 'Bearer token malformed.'
                }
                return make_response(jsonify(responseObject)), 401
        else:
            auth_token = ''
        if auth_token:
            try:
                resp = User.decode_auth_token(auth_token)
                user = User.query.filter_by(id=resp).first()
                wallet = Wallets.query.filter_by(user_id=user.id).first()
                lotteryTokens = LotteryTokens.query.filter_by(user_id=user.id).first()
                if (wallet.amount > post_data.get('quantity') * 0.05):
                    wallet.amount -= post_data.get('quantity') * 0.05
                    lotteryTokens.amount += post_data.get('quantity')
                    db.session.commit()
                    responseObject = {
                        'status': 'success'
                    }
                else:
                    responseObject = {
                        'status': 'fail',
                        'message': 'Insufficient funds'
                    }
                return make_response(jsonify(responseObject)), 200
            except Exception as e:
                responseObject = {
                    'status': 'fail',
                    'message': resp
                }
            return make_response(jsonify(responseObject)), 401
        else:
            responseObject = {
                'status': 'fail',
                'message': 'Provide a valid auth token.'
            }
            return make_response(jsonify(responseObject)), 401


# define the API resources
tokens_amount_view = TokensAmount.as_view('tokens_amount')
make_bets_view = MakeBets.as_view('make_bets')
get_bets_view = GetBets.as_view('get_bets')
get_bets_archive_view = GetBetsArchive.as_view('get_bets_archive')
update_combination_view = UpdateCombination.as_view('update_combination')
wallet_amount_view = WalletAmount.as_view('wallet_amount');
fill_up_wallet_view = FillUpWallet.as_view('fill_up_wallet');
withdraw_wallet_view = WithdrawWallet.as_view('withdraw_wallet');
fill_up_tokens_view = FillUpTokens.as_view('fill_up_tokens');
get_superjackpot_view = GetSuperjackpot.as_view('get_superjackpot');
get_bank_view = GetBank.as_view('get_bank');
get_combination_test_view = GetCominationTest.as_view('get_combination_test');

# add Rules for API Endpoints
logic_blueprint.add_url_rule(
    '/logic/get_combination_test',
    view_func=get_combination_test_view,
    methods=['GET']
)
logic_blueprint.add_url_rule(
    '/logic/get_superjackpot',
    view_func=get_superjackpot_view,
    methods=['GET']
)
logic_blueprint.add_url_rule(
    '/logic/get_bank',
    view_func=get_bank_view,
    methods=['GET']
)
logic_blueprint.add_url_rule(
    '/logic/tokens_amount',
    view_func=tokens_amount_view,
    methods=['GET']
)
logic_blueprint.add_url_rule(
    '/logic/make_bets',
    view_func=make_bets_view,
    methods=['POST']
)
logic_blueprint.add_url_rule(
    '/logic/get_bets',
    view_func=get_bets_view,
    methods=['GET']
)
logic_blueprint.add_url_rule(
    '/logic/get_bets_archive',
    view_func=get_bets_archive_view,
    methods=['GET']
)
logic_blueprint.add_url_rule(
    '/logic/update_combination',
    view_func=update_combination_view,
    methods=['POST']
)
logic_blueprint.add_url_rule(
    '/logic/wallet_amount',
    view_func=wallet_amount_view,
    methods=['GET']
)
logic_blueprint.add_url_rule(
    '/logic/fill_up_wallet',
    view_func=fill_up_wallet_view,
    methods=['POST']
)
logic_blueprint.add_url_rule(
    '/logic/withdraw_wallet',
    view_func=withdraw_wallet_view,
    methods=['POST']
)
logic_blueprint.add_url_rule(
    '/logic/fill_up_tokens',
    view_func=fill_up_tokens_view,
    methods=['POST']
)
