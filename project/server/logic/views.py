# project/server/logic/views.py


from flask import Blueprint, request, make_response, jsonify
from flask.views import MethodView

from project.server import bcrypt, db
from project.server.models import *
import json

logic_blueprint = Blueprint('logic', __name__)


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
                        'amount': lottery_tokens.amount,
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
                db.session.commit()
                #db.flush()
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


# define the API resources
tokens_amount_view = TokensAmount.as_view('tokens_amount')
make_bets_view = MakeBets.as_view('make_bets')
get_bets_view = GetBets.as_view('get_bets')
update_combination_view = UpdateCombination.as_view('update_combination')

# add Rules for API Endpoints
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
    '/logic/update_combination',
    view_func=update_combination_view,
    methods=['POST']
)
