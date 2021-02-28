from ..database import db
from ..database.connection_template import *
from ..utils.db_operations import *
from sqlalchemy.orm.exc import NoResultFound
from flask_restplus import reqparse
from datetime import datetime
from flask import request,url_for,render_template,make_response,jsonify,redirect,url_for


def connection_type_response(connection_type_lst, params = {'expand': {'account': True}}):
    resp = []
    for a in connection_type_lst:
        ser = a.serialize
        ser['resource_url'] = url_for('api.v1/foundation/connection_type_single_account_request',connection_type_id=ser['connection_type_id'], _external=True)
        resp.append(ser)
    return resp


def create_connection_type(request):
    payload = {}
    payload['name'] = request.json.get('name')
    
    r = connection_type(payload)
    db.session.add(r)
    db.session.commit()
    return connection_type_response([r])


def get_all_connection_type():
    qryRes = connection_type.query.all()
    if qryRes:
        return connection_type_response(qryRes)
    else:
        pass

def get_single_connection_type(connection_type_id):
    qryRes = connection_type.query.filter_by(connection_type_id = connection_type_id).all()

    if qryRes:
        return connection_type_response(qryRes)
    else:
        pass
