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
# Adds a new task for the parent
@parents.route('/tasks', methods=['POST'])
def add_task():
    current_app.logger.info('POST /tasks route')
    task_info = request.json
    list_id = task_info['list_id']
    description = task_info['description']
    duedate = task_info['duedate']
    frequency = task_info['frequency']
    completionstatus = task_info['completionstatus']
    task_id = task_info['task_id'] 
    
    query = 'INSERT INTO tasks (list_id, description, duedate, frequency, completionstatus, task_id) VALUES (%s, %s, %s, %s, %s, %s)'
    data = (list_id, description, duedate, frequency, completionstatus, task_id)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return 'new task added!', 201

#------------------------------------------------------------
# Gets the sleep logs 
@parents.route('/sleep_logs', methods=['GET'])
def get_sleep_logs():
    current_app.logger.info('GET /sleep_logs route')
    cursor = db.get_db().cursor()
    cursor.execute('''
    SELECT UserID, StartTime, EndTime, BabyName, SleepID
    FROM sleep_logs
    ORDER BY BabyName DESC
    ''')
 
    theData = cursor.fetchall()
    
    the_response = make_response(jsonify(theData))
    the_response.status_code = 200
    return the_response