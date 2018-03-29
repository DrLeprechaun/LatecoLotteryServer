# project/server/logic/views.py


from flask import Blueprint, request, make_response, jsonify
from flask.views import MethodView

from project.server import bcrypt, db
from project.server.models import *

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
                for i in range(0, post_data.get('l_5x36')):
                    jackpot_5_36 = BetsJackpot_5_36(user.id, None, True, False)
                    db.session.add(lottery_5_36)
                for i in range(0, post_data.get('l_6x45')):
                    jackpot_6_45 = BetsJackpot_6_45(user.id, None, True, False)
                    db.session.add(lottery_6_45)
                for i in range(0, post_data.get('l_4x20')):
                    jackpot_4_20 = BetsJackpot_4_20(user.id, None, True, False)
                    db.session.add(lottery_4_20)
                for i in range(0, post_data.get('l_7x49')):
                    jackpot_7_49 = BetsJackpot_7_49(user.id, None, True, False)
                    db.session.add(lottery_7_49)
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


# define the API resources
tokens_amount_view = TokensAmount.as_view('tokens_amount')
make_bets_view = MakeBets.as_view('make_bets')

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
