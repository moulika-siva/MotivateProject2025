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
        SELECT s.StudentID, u.Name, u.Email, u.Role, c.Name AS CourseName
        FROM Student s
        JOIN User u ON s.UserID = u.UserID
        LEFT JOIN Course c ON s.CourseID = c.CourseID
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
    student_id = student_info['StudentID']
    name = student_info.get('Name')
    course_id = student_info.get('CourseID')

    
    cursor = db.get_db().cursor()
    update_data.append(student_id)
    query = f'''
        UPDATE Student
        SET {', '.join(update_fields)}
        WHERE StudentID = %s
        '''
    cursor.execute(query, data)
    db.get_db().commit()
    return 'student updated!'

#------------------------------------------------------------
# Get student detail for student with particular userID
#   Notice the manner of constructing the query. 
@students.route('/students/<student_id>', methods=['GET'])
def get_student(student_id):
    current_app.logger.info('GET /students/<student_id> route')
    cursor = db.get_db().cursor()
    
    cursor.execute('SELECT student_id, Name, Email FROM students WHERE id = {0}'.format(student_id))
    
    theData = cursor.fetchall()
    
    the_response = make_response(jsonify(theData))
    the_response.status_code = 200
    return the_response

#------------------------------------------------------------
# Makes use of the very simple ML model in to predict a value
# and returns it to the user
@students.route('/prediction/<var01>/<var02>', methods=['GET'])
def predict_value(var01, var02):
    current_app.logger.info(f'var01 = {var01}')
    current_app.logger.info(f'var02 = {var02}')

    returnVal = predict(var01, var02)
    return_dict = {'result': returnVal}

    the_response = make_response(jsonify(return_dict))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response