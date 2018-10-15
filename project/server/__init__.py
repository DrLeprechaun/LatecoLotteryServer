# project/server/__init__.py

import os

from flask import Flask
from flask_mail import Mail
from flask_bcrypt import Bcrypt
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS
from flask_apscheduler import APScheduler

from . import jobs
#from .logic import lottery_schedule
#from . import lottery_schedule


app = Flask(__name__, static_url_path = "/static", static_folder = "static")
app.debug = False
CORS(app)

app_settings = os.getenv(
    'APP_SETTINGS',
    'project.server.config.DevelopmentConfig'
)
app.config.from_object(app_settings)

app.config.update(dict(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = 465,
    MAIL_USE_TLS = False,
    MAIL_USE_SSL = True,
    MAIL_USERNAME = 'superjackpot.noreply@gmail.com',
    MAIL_PASSWORD = 'SJPsuperjackpot58731_S',
))

mail = Mail(app)

scheduler = APScheduler()

bcrypt = Bcrypt(app)
db = SQLAlchemy(app)
scheduler.init_app(app)
scheduler.start()

from project.server.auth.views import auth_blueprint
app.register_blueprint(auth_blueprint)
from project.server.logic.views import logic_blueprint
app.register_blueprint(logic_blueprint)
