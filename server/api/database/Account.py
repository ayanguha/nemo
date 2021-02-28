import uuid
from datetime import datetime

from flask_sqlalchemy import SQLAlchemy
from ..utils.marshalling import *

db = SQLAlchemy()

class Account(db.Model):
    account_id = db.Column(db.String(255), primary_key=True)
    parent_account_id = db.Column(db.String(255))
    name = db.Column(db.String(255))
    is_diabled = db.Column(db.String(255))
    postedOn = db.Column(db.DateTime(), unique=False, nullable=False)
    updatedOn = db.Column(db.DateTime(), unique=False, nullable=False)


    def __init__(self,payload):
        self.account_id = str(uuid.uuid4())
        self.name = payload['name']
        self.parent_account_id = payload['parent_account_id']
        self.is_diabled = False
        self.postedOn = datetime.now()
        self.updatedOn = datetime.now()

    @property
    def serialize(self):
       response_payload = {}
       response_payload['id'] = self.account_id
       response_payload['parent_account_id'] = self.parent_account_id
       response_payload['name'] = self.name
       response_payload['is_diabled'] = self.is_diabled
       return response_payload
