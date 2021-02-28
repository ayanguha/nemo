from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()



def safeCommit():
    try:
        db.session.commit()
    except:

        db.session.rollback()
        raise

def safeFlush():
    try:
        db.session.flush()
    except:

        db.session.rollback()
        raise

def modelExists(db,model):
    try:
        r = db.session.query(model).one()
        return True
    except:
        return False

def createAllModels(db):
    db.create_all()
