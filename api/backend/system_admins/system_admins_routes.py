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

# ------------------------------------------------------------
# This is a POST route to add a new system update.
@system_admins.route('/system_updates', methods=['POST'])
def add_new_system_update():
    try:
        # Get JSON data from the request
        the_data = request.json
        current_app.logger.info(the_data)

        # Extract fields
        update_id = the_data['update_id']
        update_type = the_data['update_type']
        release_date = the_data['update_release_date']

        # Get a database cursor
        cursor = db.get_db().cursor()

        # Step 1: Insert into system_commands if not already exists
        insert_cmd = '''
            INSERT IGNORE INTO system_commands (system_id)
            VALUES (%s)
        '''
        cursor.execute(insert_cmd, (update_id,))

        # Step 2: Insert into system_update
        insert_update = '''
            INSERT INTO system_update (update_id, type, release_date)
            VALUES (%s, %s, %s)
        '''
        cursor.execute(insert_update, (update_id, update_type, release_date))
        db.get_db().commit()

        response = make_response(jsonify({'message': 'Successfully added system update'}))
        response.status_code = 201
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

# ------------------------------------------------------------
# This is a POST route to add a new ticket.
@system_admins.route('/tickets', methods=['POST'])
def add_new_ticket():
    try:
        # Get JSON data from the request
        the_data = request.json
        current_app.logger.info(the_data)

        # Extract relevant fields
        title = the_data['title']
        date = the_data['date']
        status = the_data['status']  # should be 'Open', 'InProgress', or 'Resolved'
        description = the_data['description']

        # Parameterized INSERT query (ticket_id auto-increments)
        query = '''
            INSERT INTO tickets (title, date, status, description)
            VALUES (%s, %s, %s, %s)
        '''

        # Execute the insert
        cursor = db.get_db().cursor()
        cursor.execute(query, (title, date, status, description))
        db.get_db().commit()

        response = make_response(jsonify({'message': 'Ticket successfully created'}))
        response.status_code = 201  # Created
        return response

    except Exception as e:
        current_app.logger.error(f"Error adding ticket: {str(e)}")
        response = make_response(jsonify({'error': 'Failed to create ticket'}))
        response.status_code = 500
        return response

# ------------------------------------------------------------
# This is a PUT route to update the status of a ticket to 'Resolved'
@system_admins.route('/tickets/resolve/<int:ticket_id>', methods=['PUT'])
def resolve_ticket(ticket_id):
    try:
        # Create the UPDATE query to change ticket status to 'Resolved'
        query = '''
            UPDATE tickets
            SET status = 'Resolved'
            WHERE ticket_id = %s
        '''

        # Execute the update
        cursor = db.get_db().cursor()
        cursor.execute(query, (ticket_id,))
        db.get_db().commit()

        if cursor.rowcount == 0:
            response = make_response(jsonify({'error': 'Ticket not found'}))
            response.status_code = 404
        else:
            response = make_response(jsonify({'message': 'Ticket successfully resolved'}))
            response.status_code = 200

        return response

    except Exception as e:
        current_app.logger.error(f"Error resolving ticket: {str(e)}")
        response = make_response(jsonify({'error': 'Failed to resolve ticket'}))
        response.status_code = 500
        return response

# ------------------------------------------------------------
# This is a DELETE route to remove old reports from the database.
@system_admins.route('/reports/delete_old', methods=['DELETE'])
def delete_old_reports():
    try:
        # Get the cutoff date from the request (e.g., delete reports older than this date)
        the_data = request.json
        cutoff_date = the_data['cutoff_date']  # format: 'YYYY-MM-DD'

        # Parameterized DELETE query
        query = '''
            DELETE FROM reports
            WHERE created_at < %s
        '''

        # Log the query for debugging
        current_app.logger.info(f"Deleting reports before: {cutoff_date}")

        # Execute the query
        cursor = db.get_db().cursor()
        cursor.execute(query, (cutoff_date,))
        db.get_db().commit()

        deleted_count = cursor.rowcount
        response = make_response(jsonify({
            'message': f'Successfully deleted {deleted_count} old report(s)'
        }))
        response.status_code = 200
        return response

    except Exception as e:
        current_app.logger.error(f"Error deleting old reports: {str(e)}")
        response = make_response(jsonify({'error': 'Failed to delete old reports'}))
        response.status_code = 500
        return response