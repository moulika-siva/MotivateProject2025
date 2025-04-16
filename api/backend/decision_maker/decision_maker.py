########################################################
# Sample customers blueprint of endpoints
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
decision_maker = Blueprint('decision_maker', __name__)

#------------------------------------------------------------
# Get the courselists
@decision_maker.route('/decision_maker/courselist', methods=['GET'])
def get_course_enrollments():
    cursor = db.get_db().cursor()

    # Actual SQL query to get real values
    cursor.execute('''
        SELECT 
            students.student_id,
            students.name AS student_name,
            students.course_id,
            courses.name AS course_name
        FROM students
        JOIN courses ON students.course_id = courses.course_id
        ORDER BY students.name, courses.name;
    ''')

    # Get actual results
    rows = cursor.fetchall()
    column_names = [desc[0] for desc in cursor.description]

    # Convert each row to a dict of {column: value}
    data = [dict(zip(column_names, row)) for row in rows]

    return make_response(jsonify(data), 200)

#------------------------------------------------------------
# Create a new lesson plan and enter into the system
@decision_maker.route('/decision_maker/lesson-plans', methods=['POST'])
def create_lesson_plan():
    current_app.logger.info('POST /decision_maker/lesson-plans route')
    
    # Get the lesson plan data from the request
    lesson_plan_data = request.json
    course_id = lesson_plan_data['course_id']
    professor_id = lesson_plan_data['professor_id']
    date = lesson_plan_data['date']
    content = lesson_plan_data['content']
    
    # Insert the new lesson plan into the database
    query = 'INSERT INTO lesson_plans (course_id, professor_id, date, content) VALUES (%s, %s, %s, %s)'
    data = (course_id, professor_id, date, content)
    
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    
    # Get the ID of the newly created lesson plan
    new_plan_id = cursor.lastrowid
    
    return jsonify({
        'message': 'Lesson plan created successfully!',
        'plan_id': new_plan_id
    }), 201

#------------------------------------------------------------
# Delete old exams from the system 
@decision_maker.route('/decision_maker/exams/<int:exam_id>', methods=['DELETE'])
def delete_exams(exam_id):
    current_app.logger.info('DELETE /decision_maker/exams/{0} route'.format(exam_id))
    
    # Delete the exam with the specified exam_id
    cursor = db.get_db().cursor()
    query = 'DELETE FROM exams WHERE exam_id = %s'
    cursor.execute(query, (exam_id,))
    
    # Check if a row was actually deleted
    rows_affected = cursor.rowcount
    db.get_db().commit()
    
    if rows_affected > 0:
        return jsonify({
            'message': 'Exam deleted successfully',
            'exam_id': exam_id
        }), 200
    else:
        return jsonify({
            'message': 'Exam not found',
            'exam_id': exam_id
        }), 404

#------------------------------------------------------------
# Update assignment description and feedback
@decision_maker.route('/decision_maker/assignments/', methods=['PUT'])
def update_assignment_description():
    current_app.logger.info('PUT /decision_maker/assignments route')
    
    # Get assignment data from request body
    assignment_data = request.json
    assign_id = assignment_data.get('assign_id')
    description = assignment_data.get('description')
    feedback = assignment_data.get('feedback')
    
    # Update the assignment in the database
    query = 'UPDATE assignments SET description = %s, feedback = %s WHERE assign_id = %s'
    data = (description, feedback, assign_id)
    cursor = db.get_db().cursor()
    
    cursor.execute(query, data)
    db.get_db().commit()
    return 'assignments updated!'
  
#------------------------------------------------------------
# Get student's information by course for communication
@decision_maker.route('/decision_maker/students-info/<int:course_id>', methods=['GET'])
def get_student_info(course_id):
    current_app.logger.info(f'GET /decision_maker/students-info/{course_id} route')
    
    # Query to get students enrolled in the specified course
    cursor = db.get_db().cursor()
    query = (
    '''SELECT students.student_id, students.name, students.user_id
       FROM students
       WHERE students.course_id = %s
       ORDER BY students.name'''
    )
    
    
    cursor.execute(query, (course_id,))
    students_data = cursor.fetchall()
    
    if students_data:
        response = make_response(jsonify(students_data))
        response.status_code = 200
        response.mimetype = 'application/json'
        return response
    else:
        return jsonify({
            'message': 'No students found for this course',
            'course_id': course_id
        }), 404