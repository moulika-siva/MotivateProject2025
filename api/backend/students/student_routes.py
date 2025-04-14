########################################################
# Sample students blueprint of endpoints
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
students = Blueprint('students', __name__)


#------------------------------------------------------------
# Get all students from the system
@students.route('/students', methods=['GET'])
def get_students():

    cursor = db.get_db().cursor()
    cursor.execute('''
        SELECT s.student_id, u.name, u.email_address, u.role, c.name AS CourseName
        FROM students s
        JOIN users u ON s.user_id = u.user_id
        LEFT JOIN courses c ON s.course_id = c.course_id
    ''')
    
    theData = cursor.fetchall()
    
    the_response = make_response(jsonify(theData))
    the_response.status_code = 200
    return the_response

#------------------------------------------------------------
# Update student info 
@students.route('/students', methods=['PUT'])
def update_student():
    current_app.logger.info('PUT /students route')
    student_info = request.json
    student_id = student_info['student_id']
    name = student_info.get('name')
    course_id = student_info.get('course_id')

    
    cursor = db.get_db().cursor()
    update_data.append(student_id)
    query = f'''
        UPDATE students
        SET {', '.join(update_fields)}
        WHERE student_id = %s
        '''
    cursor.execute(query, data)
    db.get_db().commit()
    return 'student updated!'

#------------------------------------------------------------
# Get student detail for student with particular StudentID
@students.route('/students/<student_id>', methods=['GET'])
def get_student(student_id):
    current_app.logger.info('GET /students/<student_id> route')
    cursor = db.get_db().cursor()
    
    cursor.execute('''
        SELECT student_id, name 
        FROM students 
        WHERE student_id = %s
    ''', (student_id,))
    
    theData = cursor.fetchall()
    
    the_response = make_response(jsonify(theData))
    the_response.status_code = 200
    return the_response

#------------------------------------------------------------
# Get pre-med requirements for student
@students.route('/students/pre-med-regs', methods=['GET'])
def get_pre_med_regs():
    student_id = request.args.get('student_id')  
    
    cursor = db.get_db().cursor()
    cursor.execute('''
        SELECT req_id, description, status, target_date
        FROM pre_med_requirements
        WHERE student_id = %s
    ''', (student_id,))
    
    requirements = cursor.fetchall()

    the_response = make_response(jsonify(requirements))
    the_response.status_code = 200
    return the_response
#------------------------------------------------------------
# Get MCAT study progress for student
@students.route('/students/mcat-chapters', methods=['GET'])
def get_mcat_chapters():
    student_id = request.args.get('student_id')  
    
    cursor = db.get_db().cursor()
    cursor.execute('''
        SELECT chapter_id, topic, status, last_reviewed
        FROM mcat_chapters
        WHERE student_id = %s
    ''', (student_id,))
    
    chapters = cursor.fetchall()

    the_response = make_response(jsonify(chapters))
    the_response.status_code = 200
    return the_response
#------------------------------------------------------------
# Get calender events for student
@students.route('/students/calendar-events', methods=['GET'])
def get_calendar_events():
    student_id = request.args.get('user_id')  
    
    cursor = db.get_db().cursor()
    cursor.execute('''
        SELECT e.calendar_event_id, e.description, e.date_time, e.type
        FROM calendar_events e
        JOIN club_events se ON e.calendar_event_id = se.club_event_id
        WHERE e.user_id = %s
    ''', (user_id,))
    
    events = cursor.fetchall()

    the_response = make_response(jsonify(events))
    the_response.status_code = 200
    return the_response
#------------------------------------------------------------
# Creates new to-do list for student
@students.route('/students/to-do-lists', methods=['POST'])
def create_to_do_list():
    data = request.json
    student_id = data.get('student_id')
    title = data.get('title')
    
    cursor = db.get_db().cursor()
    cursor.execute('''
        INSERT INTO todo_list (list_id, title, due_date)
        VALUES (%s, %s, NOW())
    ''', (student_id, title,))
    db.get_db().commit()
    
    the_response = make_response(jsonify())
    the_response.status_code = 201
    return the_response
#------------------------------------------------------------
# Deletes all completed tasks for student
@students.route('/students/tasks', methods=['DELETE'])
def delete_completed_tasks():
    student_id = request.args.get('student_id')  
    
    cursor = db.get_db().cursor()
    cursor.execute('''
        DELETE FROM tasks
        WHERE student_id = %s AND frequency = 'completed'
    ''', (student_id,))
    db.get_db().commit()
    
    the_response = make_response(jsonify())
    the_response.status_code = 200
    return the_response
    