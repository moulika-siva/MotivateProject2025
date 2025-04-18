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
    due_date = task_info['duedate']  # match DB column name
    frequency = task_info['frequency']
    task_id = task_info['task_id']

    try:
        query = '''
            INSERT INTO tasks (list_id, description, due_date, frequency, task_id)
            VALUES (%s, %s, %s, %s, %s)
        '''
        data = (list_id, description, due_date, frequency, task_id)
        cursor = db.get_db().cursor()
        cursor.execute(query, data)
        db.get_db().commit()
        return jsonify({"message": "new task added!"}), 201
    except Exception as e:
        current_app.logger.error(f"Error inserting task: {e}")
        return jsonify({"error": str(e)}), 500


#------------------------------------------------------------
# Gets the sleep logs 
@parents.route('/sleep_logs', methods=['GET'])
def get_sleep_logs():
    current_app.logger.info('GET /sleep_logs route')
    cursor = db.get_db().cursor()
    cursor.execute('''
    SELECT sleep_id, user_id, baby_name, start_time, end_time
    FROM sleep_logs
    ORDER BY baby_name ASC
    ''')
 
    theData = cursor.fetchall()
    
    the_response = make_response(jsonify(theData))
    the_response.status_code = 200
    return the_response

#------------------------------------------------------------
# Gets grocery list items
@parents.route('/grocery-lists', methods=['GET'])
def get_grocery_list_items():
    current_app.logger.info('GET /grocery-lists route')
    cursor = db.get_db().cursor()
    cursor.execute('''
    SELECT user_id, title, created_at, updated_at, list_id
    FROM grocery_lists
    ORDER BY title ASC
    ''')
 
    theData = cursor.fetchall()
    
    the_response = make_response(jsonify(theData))
    the_response.status_code = 200
    return the_response

#------------------------------------------------------------
# creates a to do list for the parent
@parents.route('/parent-todo-lists', methods=['POST'])
def create_parent_todo_list():
    todo_info = request.json
    user_id = todo_info['user_id']
    title = todo_info['title']
    created_at = todo_info['created_at']
    updated_at = todo_info['updated_at']
    list_id = todo_info['list_id']
    
    query = 'INSERT INTO todo_lists (user_id, title, created_at, updated_at, list_id) VALUES (%s, %s, %s, %s, %s)'
    data = (user_id, title, created_at, updated_at, list_id)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return 'To-do list created!', 201

#------------------------------------------------------------
# Update task frequency

@parents.route('/tasks',methods=['PUT'])
def update_task_frequency():
    current_app.logger.info('PUT /tasks route')
    task_info = request.json
    task_id = task_info['id']
    new_frequency = task_info['frequency']

    if new_frequency not in ['Pending', 'Completed']:
        return 'Invalid frequency value'
    
    query = 'UPDATE asks SET frequency = %s WHERE task_id = %s'
    data = (new_frequency, task_id)

    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()

    return 'task frequency updated'

#------------------------------------------------------------
# Delete completed tasks
@parents.route('/tasks/completed',methods=['DELETE'])
def delete_completed_tasks():
    current_app.logger.info('DELETE /students/tasks route')
    student_id = request.args.get('student_id')

    cursor = db.get_db().cursor()
    cursor.execute('''
        DELETE FROM tasks
        WHERE list_id IN (
            SELECT list_id FROM todo_list
            WHERE user_id = %s
        ) AND frequency = 'Completed'
    ''', (student_id,))
    db.get_db().commit

    the_response = make_response(jsonify({'message': 'Completed tasks deleted'}))
    the_response.status_code = 200
    return the_response

#------------------------------------------------------------
# creates a to do list for the parent
@parents.route('/todo-lists', methods=['POST'])
def create_todo_list():
    todo_info = request.json
    user_id = todo_info['user_id']
    title = todo_info['title']
    created_at = todo_info['created_at']
    updated_at = todo_info['updated_at']
    list_id = todo_info['list_id']
    
    query = 'INSERT INTO todo_lists (user_id, title, created_at, updated_at, list_id) VALUES (%s, %s, %s, %s, %s)'
    data = (user_id, title, created_at, updated_at, list_id)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return 'To-do list created!', 201


#------------------------------------------------------------
# gets all tasks
@parents.route('/tasks', methods=['GET'])
def get_tasks():
    current_app.logger.info('GET /tasks route')
    cursor = db.get_db().cursor()

    # Select relevant fields
    cursor.execute('''
        SELECT task_id, list_id, description, due_date, frequency
        FROM tasks
        ORDER BY due_date ASC;
    ''')

    rows = cursor.fetchall()
    
    the_response = make_response(jsonify(rows))
    the_response.status_code = 200
    return the_response

