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
system_admins = Blueprint('system_admins', __name__)

#------------------------------------------------------------
# Get all the system_admins from the database, package them up,
# and return them to the client
@system_admins.route('/system_admin', methods=['GET'])
def get_products():
    query = '''
        SELECT * 
        FROM system_admins
    '''
    
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    # use cursor to query the database for a list of products
    cursor.execute(query)

    # fetch all the data from the cursor
    # The cursor will return the data as a 
    # Python Dictionary
    theData = cursor.fetchall()

    # Create a HTTP Response object and add results of the query to it
    # after "jasonify"-ing it.
    response = make_response(jsonify(theData))
    # set the proper HTTP Status code of 200 (meaning all good)
    response.status_code = 200
    # send the response back to the client
    return response

# ------------------------------------------------------------
# This is a POST route to add a new system update.
@system_admins.route('/system_updates', methods=['POST'])
def add_new_system_update():
    try:
        # Get JSON data from the request
        the_data = request.json
        current_app.logger.info(the_data)

        # Extract relevant fields
        update_type = the_data['update_type']
        release_date = the_data['update_release_date']

        # Use a parameterized INSERT query (auto-incrementing update_id)
        query = '''
            INSERT INTO system_update (type, release_date)
            VALUES (%s, %s)
        '''

        # Execute the query safely
        cursor = db.get_db().cursor()
        cursor.execute(query, (update_type, release_date))
        db.get_db().commit()

        response = make_response(jsonify({'message': 'Successfully added system update'}))
        response.status_code = 201  # Created
        return response

    except Exception as e:
        current_app.logger.error(f"Error inserting system update: {str(e)}")
        response = make_response(jsonify({'error': 'Failed to add system update'}))
        response.status_code = 500
        return response
    
# ------------------------------------------------------------
# PUT route to update a user's role to 'SystemAdmin'
@system_admins.route('/make_admin/<int:user_id>', methods=['PUT'])
def promote_user_to_admin(user_id):
    try:
        # Create the SQL UPDATE statement
        query = f'''
            UPDATE users
            SET role = 'SystemAdmin'
            WHERE user_id = {user_id}
        '''

        # Log the query for debugging
        current_app.logger.info(query)

        # Execute the query
        cursor = db.get_db().cursor()
        cursor.execute(query)
        db.get_db().commit()

        # If no rows were affected, the user doesn't exist
        if cursor.rowcount == 0:
            response = make_response(jsonify({'error': 'User not found'}))
            response.status_code = 404
        else:
            response = make_response(jsonify({'message': 'User promoted to SystemAdmin'}))
            response.status_code = 200

    except Exception as e:
        current_app.logger.error(str(e))
        response = make_response(jsonify({'error': 'Internal server error'}))
        response.status_code = 500

    return response

# ------------------------------------------------------------
# DELETE route to remove a row from the cache_data table
@system_admins.route('/cache_data/<int:cache_id>', methods=['DELETE'])
def delete_cache_data(cache_id):
    try:
        # Create the SQL DELETE statement
        query = f'''
            DELETE FROM cache_data
            WHERE cache_id = {cache_id}
        '''

        # Log the query for debugging purposes
        current_app.logger.info(query)

        # Execute the DELETE query
        cursor = db.get_db().cursor()
        cursor.execute(query)
        db.get_db().commit()

        # Check if a row was actually deleted
        if cursor.rowcount == 0:
            response = make_response(jsonify({'error': 'Cache data not found'}))
            response.status_code = 404
        else:
            response = make_response(jsonify({'message': 'Cache data deleted successfully'}))
            response.status_code = 200

    except Exception as e:
        current_app.logger.error(str(e))
        response = make_response(jsonify({'error': 'Internal server error'}))
        response.status_code = 500

    return response