
#SQLALCHEMY_DATABASE_URI = 'sqlite:///dbtst.sqlite'
POSTGRES_USER = 'postgresadmin'
POSTGRES_PW = 'admin123'
POSTGRES_URL = '192.168.64.11:30472'
POSTGRES_DB = 'postgresdb'
SQLALCHEMY_DATABASE_URI = 'postgresql+psycopg2://{user}:{pw}@{url}/{db}'.format(user=POSTGRES_USER,pw=POSTGRES_PW,url=POSTGRES_URL,db=POSTGRES_DB)


FLASK_DEBUG=False
