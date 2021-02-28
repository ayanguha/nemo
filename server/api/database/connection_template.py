import uuid
from datetime import datetime

from flask_sqlalchemy import SQLAlchemy
from ..utils.marshalling import *

db = SQLAlchemy()

class connection_type(db.Model):
    connection_type_id = db.Column(db.String(255), primary_key=True)
    name = db.Column(db.String(255))
    created_at = db.Column(db.DateTime(), unique=False, nullable=False)
    updated_at = db.Column(db.DateTime(), unique=False, nullable=False)


    def __init__(self,payload):

        self.name = payload['name']
        idl = [self.name]
        self.connection_type_id = create_id(idl)
        self.created_at = datetime.now()
        self.updated_at = datetime.now()

    @property
    def serialize(self):
       response_payload = {}
       response_payload['connection_type_id'] = self.connection_type_id
       response_payload['name'] = self.name
       return response_payload

class connection_template(db.Model):
    connection_template_id = db.Column(db.String(255), primary_key=True)
    connection_type_id = db.Column(db.String(255))
    created_at = db.Column(db.DateTime(), unique=False, nullable=False)
    updated_at = db.Column(db.DateTime(), unique=False, nullable=False)

    def __init__(self,payload):
        self.connection_type_id = payload['connection_type_id']
        idl = [self.connection_type_id, self.name]
        self.connection_template_id = create_id(idl)
        self.created_at = datetime.now()
        self.updated_at = datetime.now()

    @property
    def serialize(self):
       response_payload = {}
       response_payload['connection_template_id'] = self.connection_template_id
       response_payload['connection_type_id'] = self.connection_type_id
       return response_payload

class connection_template_property(db.Model):
    connection_template_property_id = db.Column(db.String(255), primary_key=True)
    connection_template_id = db.Column(db.String(255))
    name = db.Column(db.String(255))
    value = db.Column(db.String(255))
    is_mandatory = db.Column(db.Boolean, default=False, nullable=False)
    created_at = db.Column(db.DateTime(), unique=False, nullable=False)
    updated_at = db.Column(db.DateTime(), unique=False, nullable=False)


    def __init__(self,payload):

        self.connection_template_id = payload['connection_template_id']
        self.name = payload['name']
        self.value = payload['value']
        self.is_mandatory = payload['is_mandatory']

        idl = [self.connection_template_id, self.name]
        self.connection_template_property_id = create_id(idl)


        self.created_at = datetime.now()
        self.updated_at = datetime.now()

    @property
    def serialize(self):
       response_payload = {}
       response_payload['connection_template_property_id'] = self.connection_template_property_id
       response_payload['connection_template_id'] = self.connection_template_id
       response_payload['name'] = self.name
       response_payload['value'] = self.value
       response_payload['is_mandatory'] = self.is_mandatory

       return response_payload
