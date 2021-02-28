from flask import request,url_for,render_template,make_response,jsonify,redirect,url_for
from flask_restplus import Resource,fields,reqparse
from ..handlers.connection_template_handlers import *
from ..define import api
import uuid

ns = api.namespace('v1/foundation/connection_type')

connection_type_record = api.model('connection_type Record ', {
    'name': fields.String(required=True)
})



def response_maker(obj_lst):
    baseresponse = {
                     "data": [],
                     "meta": {"limit": 20,"next": None,"offset": 0,"previous": None}
                   }
    if obj_lst:
        for a in obj_lst:
            baseresponse['data'].append(a)
    return baseresponse


@ns.route('/')
class connection_type_record_request(Resource):
    @api.expect(connection_type_record)
    def post(self):
        response = create_connection_type(request)
        return response_maker(response),201

    def get(self):
        response = get_all_connection_type()
        return response_maker(response), 200

@ns.route('/<string:connection_type_id>')
class SingleAccountRequest(Resource):

    def get(self,connection_type_id):
        response = get_single_connection_type(connection_type_id)
        return response_maker(response), 200
