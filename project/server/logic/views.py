# project/server/logic/views.py


from flask import Flask, Blueprint, request, make_response, jsonify, url_for
from flask.views import MethodView
from flask_mail import Mail
from flask_mail import Message

from project.server import bcrypt, db, mail
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
                    'jackpot_5x36': bank.jackpot_5_36,
                    'jackpot_6x45': bank.jackpot_6_45,
                    'jackpot_4x21': bank.jackpot_4_21,
                    'superjackpot': bank.superjackpot,
                    'rapidos': bank.rapidos,
                    'supers': bank.supers,
                    'top3': bank.top3
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
                for i in range(0, post_data.get('j_5x36')):
                    am = am + 1
                for i in range(0, post_data.get('j_6x45')):
                    am = am + 1
                for i in range(0, post_data.get('j_4x21')):
                    am = am + 1
                for i in range(0, post_data.get('rapidos')):
                    am = am + 1
                for i in range(0, post_data.get('supers')):
                    am = am + 1
                for i in range(0, post_data.get('top3')):
                    am = am + 1
                if (am <= lotteryTokens.amount):
                    for i in range(0, post_data.get('j_5x36')):
                        jackpot_5_36 = BetsJackpot_5_36(user.id, None, True, False)
                        db.session.add(jackpot_5_36)
                    for i in range(0, post_data.get('j_6x45')):
                        jackpot_6_45 = BetsJackpot_6_45(user.id, None, True, False)
                        db.session.add(jackpot_6_45)
                    for i in range(0, post_data.get('j_4x21')):
                        jackpot_4_21 = BetsJackpot_4_21(user.id, None, True, False)
                        db.session.add(jackpot_4_21)
                    for i in range(0, post_data.get('rapidos')):
                        rapidos = BetsRapidos(user.id, None, True, False)
                        db.session.add(rapidos)
                    for i in range(0, post_data.get('supers')):
                        supers = BetsSupers(user.id, None, True, False)
                        db.session.add(supers)
                    for i in range(0, post_data.get('top3')):
                        top3 = BetsTop3(user.id, None, True, False)
                        db.session.add(top3)
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
                #jackpot_4x21
                jackpot_4x21 = db.engine.execute('SELECT * FROM bets_jackpot_4_21 WHERE user_id =' + str(user.id) + ' AND is_active = TRUE')
                jackpot_4x21_arr = []
                for row in jackpot_4x21:
                    obj = {
                        'id': row.id,
                        'combination': row.combination,
                        'is_win': row.is_win
                    }
                    jackpot_4x21_arr.append(obj)
                #rapidos
                rapidos = db.engine.execute('SELECT * FROM bets_rapidos WHERE user_id =' + str(user.id) + ' AND is_active = TRUE')
                rapidos_arr = []
                for row in rapidos:
                    obj = {
                        'id': row.id,
                        'combination': row.combination,
                        'is_win': row.is_win
                    }
                    rapidos_arr.append(obj)
                #supers
                supers = db.engine.execute('SELECT * FROM bets_supers WHERE user_id =' + str(user.id) + ' AND is_active = TRUE')
                supers_arr = []
                for row in supers:
                    obj = {
                        'id': row.id,
                        'combination': row.combination,
                        'is_win': row.is_win
                    }
                    supers_arr.append(obj)
                #top3
                top3 = db.engine.execute('SELECT * FROM bets_top3 WHERE user_id =' + str(user.id) + ' AND is_active = TRUE')
                top3_arr = []
                for row in top3:
                    obj = {
                        'id': row.id,
                        'combination': row.combination,
                        'is_win': row.is_win
                    }
                    top3_arr.append(obj)
                responseObject = {
                    'status': 'success',
                    'data': {
                        'jackpot_5x36': jackpot_5x36_arr,
                        'jackpot_6x45': jackpot_6x45_arr,
                        'jackpot_4x21': jackpot_4x21_arr,
                        'rapidos': rapidos_arr,
                        'supers': supers_arr,
                        'top3': top3_arr
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
                jackpot_list = ['jackpot_4_21', 'jackpot_5_36', 'jackpot_6_45', 'supers', 'rapidos', 'top3']
                jackpot_dict = {}
                for jackpot in jackpot_list:
                    jackpot_sql_result = db.engine.execute(
                            'With bets as (Select id, combination, is_win, unnest(lottery) AS lottery from bets_' +
                            jackpot + ' where user_id = ' + str(user.id) + ' AND is_active = false) '
                            'select bets.id as id, bets.combination as my_combination, bets.is_win as is_win, '
                            'jackpot.combination as win_combination,jackpot.date as date from ' + jackpot +
                            ' as jackpot join bets on bets.lottery = jackpot.id;')
                    jackpot_arr = []
                    #print(jackpot)
                    for row in jackpot_sql_result:
                        #print(row)
                        obj = {
                            'id': row.id,
                            'my_combination': row.my_combination,
                            'is_win': row.is_win,
                            'win_combination': row.win_combination,
                            'date': row.date
                        }
                        jackpot_arr.append(obj)
                    #print(jackpot)

                    jackpot_key_list = jackpot.split('jackpot_')
                    #print(jackpot_key_list)
                    #print(len(jackpot_key_list))
                    if len(jackpot_key_list) > 1:
                        jackpot_key = 'jackpot_' + jackpot.split('jackpot_')[1].replace('_', 'x')
                        print(jackpot)
                        print(jackpot.split('jackpot_')[0])
                    else:
                        jackpot_key = jackpot
                    jackpot_dict [jackpot_key] = jackpot_arr
                #jackpot_5x36
                '''
                jackpot_5x36 = db.engine.execute(
                    'SELECT bets_jackpot_5_36.id AS id, bets_jackpot_5_36.combination AS my_combination, '
                    'bets_jackpot_5_36.is_win AS is_win, jackpot_5_36.combination AS win_combination,  '
                    'jackpot_5_36.date AS date FROM bets_jackpot_5_36  INNER JOIN jackpot_5_36 ON '
                    'jackpot_5_36.id = bets_jackpot_5_36.lottery WHERE bets_jackpot_5_36.user_id = ' + str(user.id) + 
                    ' AND bets_jackpot_5_36.is_active = false')
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
                jackpot_6x45 = db.engine.execute('SELECT bets_jackpot_6_45.id AS id, bets_jackpot_6_45.combination '
                                                 'AS my_combination, bets_jackpot_6_45.is_win AS is_win, '
                                                 'jackpot_6_45.combination AS win_combination,  '
                                                 'jackpot_6_45.date AS date FROM bets_jackpot_6_45  '
                                                 'INNER JOIN jackpot_6_45 ON jackpot_6_45.id = bets_jackpot_6_45.lottery '
                                                 'WHERE bets_jackpot_6_45.user_id = ' + str(user.id) +
                                                 ' AND bets_jackpot_6_45.is_active = false')
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
                #jackpot_4x21
                jackpot_4x21 = db.engine.execute('SELECT bets_jackpot_4_21.id AS id, bets_jackpot_4_21.combination AS my_combination, bets_jackpot_4_21.is_win AS is_win, jackpot_4_21.combination AS win_combination,  jackpot_4_21.date AS date FROM bets_jackpot_4_21  INNER JOIN jackpot_4_21 ON jackpot_4_21.id = bets_jackpot_4_21.lottery WHERE bets_jackpot_4_21.user_id = ' + str(user.id) + ' AND bets_jackpot_4_21.is_active = false')
                jackpot_4x21_arr = []
                for row in jackpot_4x21:
                    obj = {
                        'id': row.id,
                        'my_combination': row.my_combination,
                        'is_win': row.is_win,
                        'win_combination': row.win_combination,
                        'date': row.date
                    }
                    jackpot_4x21_arr.append(obj)
                #rapidos
                rapidos = db.engine.execute('SELECT bets_rapidos.id AS id, bets_rapidos.combination AS my_combination, bets_rapidos.is_win AS is_win, rapidos.combination AS win_combination,  rapidos.date AS date FROM bets_rapidos INNER JOIN rapidos ON rapidos.id = bets_rapidos.lottery WHERE bets_rapidos.user_id = ' + str(user.id) + ' AND bets_rapidos.is_active = false')
                rapidos_arr = []
                for row in rapidos:
                    obj = {
                        'id': row.id,
                        'my_combination': row.my_combination,
                        'is_win': row.is_win,
                        'win_combination': row.win_combination,
                        'date': row.date
                    }
                    rapidos_arr.append(obj)
                #supers
                supers = db.engine.execute('SELECT bets_supers.id AS id, bets_supers.combination AS my_combination, bets_supers.is_win AS is_win, supers.combination AS win_combination,  supers.date AS date FROM bets_supers INNER JOIN supers ON supers.id = bets_supers.lottery WHERE bets_supers.user_id = ' + str(user.id) + ' AND bets_supers.is_active = false')
                supers_arr = []
                for row in supers:
                    obj = {
                        'id': row.id,
                        'my_combination': row.my_combination,
                        'is_win': row.is_win,
                        'win_combination': row.win_combination,
                        'date': row.date
                    }
                    supers_arr.append(obj)
                #top3
                top3 = db.engine.execute('SELECT bets_top3.id AS id, bets_top3.combination AS my_combination, bets_top3.is_win AS is_win, top3.combination AS win_combination,  top3.date AS date FROM bets_top3 INNER JOIN top3 ON top3.id = bets_top3.lottery WHERE bets_top3.user_id = ' + str(user.id) + ' AND bets_top3.is_active = false')
                top3_arr = []
                for row in top3:
                    obj = {
                        'id': row.id,
                        'my_combination': row.my_combination,
                        'is_win': row.is_win,
                        'win_combination': row.win_combination,
                        'date': row.date
                    }
                    top3_arr.append(obj)


                responseObject = {
                    'status': 'success',
                    'data': {
                        'jackpot_5x36': jackpot_5x36_arr,
                        'jackpot_6x45': jackpot_6x45_arr,
                        'jackpot_4x21': jackpot_4x21_arr,
                        'rapidos': rapidos_arr,
                        'supers': supers_arr,
                        'top3': top3_arr
                    }
                }
'''
                responseObject = {
                    'status': 'success',
                    'data': jackpot_dict
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

                # get class name of bets
                classbetsname = ("Bets" + (post_data['type']).title()).replace("X", "_")
                print(classbetsname)
                classbets = globals()[classbetsname]

                # Get tickets informaion
                lottery = classbets.query.filter_by(id=post_data['id']).first()
                # Check if ticket was played before
                if not lottery.lottery:
                    lottery.combination = post_data['combination']

                #getattr(project.server.models, BetsJackpot_5_36)
                #lottery = BetsJackpot_5_36.query.filter_by(id=post_data['id']).first()
                '''
                if (post_data['type'] == "jackpot_5x36"):
                    lottery = BetsJackpot_5_36.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                if (post_data['type'] == "jackpot_6x45"):
                    lottery = BetsJackpot_6_45.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                if (post_data['type'] == "jackpot_4x21"):
                    #if BetsJackpot_4_21.query.filter_by(id=post_data['id']).first()
                    lottery = BetsJackpot_4_21.query.filter_by(id=post_data['id']).first()
                    # Check if ticket was played before
                    if lottery.lottery[0][0] == None:
                        lottery.combination = post_data['combination']
                if (post_data['type'] == "rapidos"):
                    lottery = BetsRapidos.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                if (post_data['type'] == "supers"):
                    lottery = BetsSupers.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                if (post_data['type'] == "top3"):
                    lottery = BetsTop3.query.filter_by(id=post_data['id']).first()
                    lottery.combination = post_data['combination']
                '''
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

class BuyTickets(MethodView):
    def post(self):
        auth_header = request.headers.get('Authorization')
        post_data = request.get_json()
        #print(post_data)
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
                bank = Bank.query.first()
                if (post_data['type'] == "jackpot_5x36"):
                	for c in post_data['combinations']:
                		newBet = BetsJackpot_5_36(user.id, c, True, False)
                		db.session.add(newBet)
                		bank.jackpot_5_36 += 1
                    #newBet = BetsJackpot_5_36(user.id, post_data['combination'], True, False)
                    #db.session.add(newBet)
                    #bank.jackpot_5_36 += 1
                if (post_data['type'] == "jackpot_6x45"):
                	for c in post_data['combinations']:
                		newBet = BetsJackpot_6_45(user.id, c, True, False)
                		db.session.add(newBet)
                		bank.jackpot_6_45 += 1
                if (post_data['type'] == "jackpot_4x21"):
                    for c in post_data['combinations']:
                        newBet = BetsJackpot_4_21(user.id, c, True, False,)
                        db.session.add(newBet)
                        bank.jackpot_4_21 += 1
                if (post_data['type'] == "rapidos"):
                	for c in post_data['combinations']:
                		newBet = BetsRapidos(user.id, c, True, False)
                		db.session.add(newBet)
                		bank.rapidos += 1
                if (post_data['type'] == "supers"):
                	for c in post_data['combinations']:
                		newBet = BetsSupers(user.id, c, True, False)
                		db.session.add(newBet)
                		bank.supers += 1
                if (post_data['type'] == "top3"):
                	for c in post_data['combinations']:
                		newBet = BetsTop3(user.id, c, True, False)
                		db.session.add(newBet)
                		bank.top3 += 1
                bank.superjackpot += 1
                #db.flush()
                db.session.commit()
                msg = Message("SuperJackpot Lottery", sender = "vadim.e@lateco.net", recipients=[user.email])
                #msg.html = "<h1>Superjackpot</h1>"

                # create list of combinations
                comb_html = ""
                for c in post_data['combinations']:
                    for i in c:
                        comb_html += "<li><button>" + str(i) + "</button></li>"
                    comb_html += '<br><br><br>'

                # Return combination/combinations based on amount tickets
                if len(post_data['combinations']) > 1:
                    comb_str = 'combinations'
                else:
                    comb_str = 'combination'

                # Purchased tickets in html response
                msg.html = """<html>
                                  <head>
                                    <meta name="viewport" content="width=device-width" />
                                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                                    <title>SuperJackpot Lottery Ticket</title>
                                    <style>
                                      img {
                                        border: none;
                                        -ms-interpolation-mode: bicubic;
                                        max-width: 100%; }

                                      body {
                                        background-color: #f6f6f6;
                                        font-family: sans-serif;
                                        -webkit-font-smoothing: antialiased;
                                        font-size: 14px;
                                        line-height: 1.4;
                                        margin: 0;
                                        padding: 0;
                                        -ms-text-size-adjust: 100%;
                                        -webkit-text-size-adjust: 100%; }

                                      table {
                                        border-collapse: separate;
                                        mso-table-lspace: 0pt;
                                        mso-table-rspace: 0pt;
                                        width: 100%; }
                                        table td {
                                          font-family: sans-serif;
                                          font-size: 18px;
                                          vertical-align: top; }

                                      .body {
                                        background-color: #f6f6f6;
                                        width: 100%; }

                                      .container {
                                        display: block;
                                        Margin: 0 auto !important;
                                        max-width: 580px;
                                        padding: 10px;
                                        width: 580px; }

                                      .content {
                                        box-sizing: border-box;
                                        display: block;
                                        Margin: 0 auto;
                                        max-width: 580px;
                                        padding: 10px; }

                                      .main {
                                        background: #ffffff;
                                        border-radius: 3px;
                                        width: 100%; }

                                      .wrapper {
                                        box-sizing: border-box;
                                        padding: 20px; }

                                      .content-block {
                                        padding-bottom: 10px;
                                        padding-top: 10px;
                                      }

                                      .footer {
                                        clear: both;
                                        Margin-top: 10px;
                                        text-align: center;
                                        width: 100%; }
                                        .footer td,
                                        .footer p,
                                        .footer span,
                                        .footer a {
                                          color: #999999;
                                          font-size: 12px;
                                          text-align: center; }

                                      h1,
                                      h2,
                                      h3,
                                      h4 {
                                        color: #000000;
                                        font-family: sans-serif;
                                        font-weight: 400;
                                        line-height: 1.4;
                                        margin: 0;
                                        Margin-bottom: 30px; }

                                      h1 {
                                        font-size: 35px;
                                        font-weight: 300;
                                        text-align: center;
                                        text-transform: capitalize; }

                                      p,
                                      ul,
                                      ol {
                                        font-family: sans-serif;
                                        font-size: 15px;
                                        font-weight: normal;
                                        margin: 0;
                                        Margin-bottom: 15px; }
                                        p li,
                                        ul li,
                                        ol li {
                                          list-style-position: inside;
                                          margin-left: 5px; }

                                      a {
                                        text-decoration: underline; }

                                      .btn {
                                        box-sizing: border-box;
                                        width: 100%; }
                                        .btn > tbody > tr > td {
                                          padding-bottom: 15px; }
                                        .btn table {
                                          width: auto; }
                                        .btn table td {
                                          text-align: center; }
                                        .btn a {
                                          box-sizing: border-box;
                                          cursor: pointer;
                                          display: inline-block;
                                          font-size: 14px;
                                          font-weight: bold;
                                          margin: 0;
                                          padding: 12px 25px;
                                          text-decoration: none;
                                 }


                                      .buy {
                                          cursor: pointer;
                                          width: 200px;
                                          height: 35px;
                                          border: 1px solid #FFF;
                                          text-align: center;
                                          background-color: #000;
                                          color: #FFF;
                                          text-decoration: none;
                                          display: inline-block;
                                          font-size: 15px;
                                          margin-bottom: 13px;
                                        }

                                      .buy:hover {
                                          background-color: #FFF;
                                          color: #000;
                                          border-color: #000;
                                          transition: 0.3s;
                                        }

                                      .buy p {
                                        margin-top: 5px;
                                      }

                                      ul {
                                        list-style: none;
                                        padding: 0;
                                        margin:0;
                                      }

                                      ul button {
                                        text-decoration: none;
                                        color: #FFF;
                                        border: none;
                                        cursor: pointer;
                                        color: #000;
                                      }

                                      ul li button{
                                        width: 45px;
                                        background: #FFF;
                                        height: 45px;
                                        border-radius: 50%;
                                        border: 1px solid #000;
                                        float: left;
                                        margin: 5px;
                                        margin-left: 4px;
                                        margin-top: -10px;
                                        font-size: 19px;
                                        font-weight: bold;
                                      }


                                      .last {
                                        margin-bottom: 0; }

                                      .first {
                                        margin-top: 0; }

                                      .align-center {
                                        text-align: center; }

                                      .align-right {
                                        text-align: right; }

                                      .align-left {
                                        text-align: left; }

                                      .clear {
                                        clear: both; }

                                      .mt0 {
                                        margin-top: 0; }

                                      .mb0 {
                                        margin-bottom: 0; }

                                      .preheader {
                                        color: transparent;
                                        display: none;
                                        height: 0;
                                        max-height: 0;
                                        max-width: 0;
                                        opacity: 0;
                                        overflow: hidden;
                                        mso-hide: all;
                                        visibility: hidden;
                                        width: 0; }

                                      .powered-by a {
                                        text-decoration: none; }

                                      hr {
                                        border: 0;
                                        border-bottom: 1px solid #f6f6f6;
                                        Margin: 20px 0; }

                                      @media only screen and (max-width: 620px) {
                                        table[class=body] h1 {
                                          font-size: 28px !important;
                                          margin-bottom: 10px !important; }
                                        table[class=body] p,
                                        table[class=body] ul,
                                        table[class=body] ol,
                                        table[class=body] td,
                                        table[class=body] span,
                                        table[class=body] a {
                                          font-size: 16px !important; }
                                        table[class=body] .wrapper,
                                        table[class=body] .article {
                                          padding: 10px !important; }
                                        table[class=body] .content {
                                          padding: 0 !important; }
                                        table[class=body] .container {
                                          padding: 0 !important;
                                          width: 100% !important; }
                                        table[class=body] .main {
                                          border-left-width: 0 !important;
                                          border-radius: 0 !important;
                                          border-right-width: 0 !important; }
                                        table[class=body] .btn table {
                                          width: 100% !important; }
                                        table[class=body] .btn a {
                                          width: 100% !important; }
                                        table[class=body] .img-responsive {
                                          height: auto !important;
                                          max-width: 100% !important;
                                          width: auto !important; }
                                          }

                                      @media all {
                                        .ExternalClass {
                                          width: 100%; }
                                        .ExternalClass,
                                        .ExternalClass p,
                                        .ExternalClass span,
                                        .ExternalClass font,
                                        .ExternalClass td,
                                        .ExternalClass div {
                                          line-height: 100%; }
                                        .apple-link a {
                                          color: inherit !important;
                                          font-family: inherit !important;
                                          font-size: inherit !important;
                                          font-weight: inherit !important;
                                          line-height: inherit !important;
                                          text-decoration: none !important; }
                                        .btn-primary table td:hover {
                                          background-color: #34495e !important; }
                                        .btn-primary a:hover {
                                          background-color: #34495e !important;
                                          border-color: #34495e !important; } }

                                    </style>
                                  </head>
                                  <body class="">
                                    <table border="0" cellpadding="0" cellspacing="0" class="body">
                                      <tr>
                                        <td>&nbsp;</td>
                                        <td class="container">
                                          <div class="content">

                                            <span class="preheader">You've get a SUPERJACKPOT LOTTERY ticket!</span>
                                            <table class="main">

                                              <tr>
                                                <td class="wrapper">
                                                  <table border="0" cellpadding="0" cellspacing="0">
                                                      <h2><b>SUPER</b>JACK<b>POT</b></h2>
                                                      <tr>
                                                      <td>
                                                        <p>Hey!</p>
                                                        <p>Thank you for buying ticket! The next draw will take place tonight! 01:00 (+03:00 GMT)</p>
                                                        <table border="0" cellpadding="0" cellspacing="0" >
                                                          <tbody>
                                                            <tr>
                                                              <td align="left">
                                                                <table border="0" cellpadding="0" cellspacing="0">
                                                                  <tbody>
                                                                    <tr>
                                                                      <td> <a href="http://5.178.87.7:4200" target="_blank" class="buy" style="padding-top: 8px;">Buy Another Ticket!</a> </td>
                                                                    </tr>
                                                                  </tbody>
                                                                </table>
                                                              </td>
                                                            </tr>
                                                          </tbody>
                                                        </table>
                                                        <p>Your choosed """ + comb_str + """ is:</p>
                                                        <ul>""" + comb_html + """</ul>
                                                      </td>
                                                      <td></td>
                                                    </tr>
                                                  </table>
                                                </td>
                                              </tr>

                                            </table>

                                            <div class="footer">
                                              <table border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                  <td class="content-block">
                                                    <span class="apple-link">Powered by Lateco</span>
                                                  </td>
                                                </tr>
                                                <tr>
                                                  <td class="content-block powered-by">
                                                  </td>
                                                </tr>
                                              </table>
                                            </div>

                                          </div>
                                        </td>
                                        <td>&nbsp;</td>
                                      </tr>
                                    </table>
                                  </body>
                                </html>""" 
                try:
                    mail.send(msg)
                except:
                    print("Email hasn't been sent")
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
                'message': 'Provide a valid auth token1.'
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
buy_tickets_view = BuyTickets.as_view('buy_tickets')
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
    '/logic/buy_tickets',
    view_func=buy_tickets_view,
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
