from flask import Flask

from backend.db_connection import db
from backend.students.student_routes import students
from backend.system_admins.system_admins_routes import system_admins
from backend.decision_maker.decision_maker import decision_maker
from backend.parent.parent import parents
from backend.simple.simple_routes import simple_routes
import os
from dotenv import load_dotenv

def create_app():
    app = Flask(__name__)

    # Load environment variables
    # This function reads all the values from inside
    # the .env file (in the parent folder) so they
    # are available in this file.  See the MySQL setup 
    # commands below to see how they're being used.
    load_dotenv()

    # secret key that will be used for securely signing the session 
    # cookie and can be used for any other security related needs by 
    # extensions or your application
    # app.config['SECRET_KEY'] = 'someCrazyS3cR3T!Key.!'
    app.config['SECRET_KEY'] = os.getenv('SECRET_KEY')

    # # these are for the DB object to be able to connect to MySQL. 
    # app.config['MYSQL_DATABASE_USER'] = 'root'
    app.config['MYSQL_DATABASE_USER'] = os.getenv('DB_USER').strip()
    app.config['MYSQL_DATABASE_PASSWORD'] = os.getenv('MYSQL_ROOT_PASSWORD').strip()
    app.config['MYSQL_DATABASE_HOST'] = os.getenv('DB_HOST').strip()
    app.config['MYSQL_DATABASE_PORT'] = int(os.getenv('DB_PORT').strip())
    app.config['MYSQL_DATABASE_DB'] = os.getenv('DB_NAME').strip()  # Change this to your DB name

    # Initialize the database object with the settings above. 
    app.logger.info('current_app(): starting the database connection')
    db.init_app(app)


    # Register the routes from each Blueprint with the app object
    # and give a url prefix to each
    app.logger.info('current_app(): registering blueprints with Flask app object.')   
    app.register_blueprint(simple_routes)
    app.register_blueprint(students,    url_prefix='/s')
    app.register_blueprint(system_admins,   url_prefix='/a')
    app.register_blueprint(decision_maker,    url_prefix='/d')
    app.register_blueprint(parents,    url_prefix='/p')

    # Don't forget to return the app object
    return app

