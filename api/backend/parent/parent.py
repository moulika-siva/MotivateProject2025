########################################################
# Sample parent blueprint of endpoints
# Remove this file if you are not using it in your project
########################################################
from flask import Blueprint
from flask import request
from flask import jsonify
from flask import make_response
from flask import current_app
from backend.db_connection import db
from backend.ml_models.model01 import predict

#------------------------------------------------------------
# Create a new Blueprint object, which is a collection of 
# routes.
parents = Blueprint('parents', __name__)


#------------------------------------------------------------
# Get all parents from the system
@parents.route('/parents', methods=['GET'])
def get_all_parents():

    cursor = db.get_db().cursor()
    cursor.execute('''SELECT id, name, occupation,
                    age FROM parents
    ''')
    
    theData = cursor.fetchall()
    
    the_response = make_response(jsonify(theData))
    the_response.status_code = 200
    return the_response

#------------------------------------------------------------
# Update parent info for parents with particular userID
#   Notice the manner of constructing the query.
@parents.route('/parents', methods=['PUT'])
def update_parent():
    current_app.logger.info('PUT /parents route')
    parent_info = request.json
    parent_id = parent_info['id']
    name = parent_info['name']
    occupation = parent_info['occupation']
    age = parent_info['age']

    query = 'UPDATE parents SET name = %s, occupation = %s, age = %s where id = %s'
    data = (name, occupation, age, parent_id)
    cursor = db.get_db().cursor()
    r = cursor.execute(query, data)
    db.get_db().commit()
    return 'parent updated!'

#------------------------------------------------------------
# Get parent detail for parents with particular userID
#   Notice the manner of constructing the query. 
@parents.route('/parents/<userID>', methods=['GET'])
def get_one_parent(userID):
    current_app.logger.info('GET /parents/<userID> route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT id, name, occupation, age FROM parents WHERE id = {0}'.format(userID))
    
    theData = cursor.fetchall()
    
    the_response = make_response(jsonify(theData))
    the_response.status_code = 200
    return the_response

#------------------------------------------------------------
# Makes use of the very simple ML model in to predict a value
# and returns it to the user
@parents.route('/prediction/<var01>/<var02>', methods=['GET'])
def predict_value(var01, var02):
    current_app.logger.info(f'var01 = {var01}')
    current_app.logger.info(f'var02 = {var02}')

    returnVal = predict(var01, var02)
    return_dict = {'result': returnVal}

    the_response = make_response(jsonify(return_dict))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response