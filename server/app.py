
from flask import Flask,request,Response,jsonify,Blueprint
from flask_sqlalchemy import SQLAlchemy
from api.endpoints.foundation_connection_template import ns as foundation_connection_template_ns
from api.define import api
import settings
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS
db = SQLAlchemy()

app = Flask(__name__)

def configure_app(flask_app):
    flask_app.config['SQLALCHEMY_DATABASE_URI'] = settings.SQLALCHEMY_DATABASE_URI
    flask_app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

def initialize_app(flask_app):
    configure_app(flask_app)
    blueprint = Blueprint('api', __name__)
    api.init_app(blueprint)
    api.add_namespace(foundation_connection_template_ns)
    flask_app.register_blueprint(blueprint)
    db.app = flask_app
    db.init_app(flask_app)
    # enable CORS
    CORS(app, resources={r'/*': {'origins': '*'}})



initialize_app(app)


def main():

    app.run(debug=True,host='0.0.0.0',port=5010)

if __name__ == "__main__":
    main()
