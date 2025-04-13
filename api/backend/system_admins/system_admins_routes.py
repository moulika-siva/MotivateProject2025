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
# This is a POST route to add a new product.
# Remember, we are using POST routes to create new entries
# in the database. 
@system_admins.route('/system_updates', methods=['POST'])
def add_new_product():
    
    # In a POST request, there is a 
    # collecting data from the request object 
    the_data = request.json
    current_app.logger.info(the_data)

    #extracting the variable
    update_id = the_data['update_id']
    data_type = the_data['update_type']
    release_date = the_data['update_release_date']
    
    query = f'''
        INSERT INTO system_updates (update_id,
                              update_type,
                              update_release_date) 
         VALUES ({str(update_id)}, '{data_type}', {str(release_date)})
    '''
    # TODO: Make sure the version of the query above works properly
    # Constructing the query
    # query = 'insert into system_updates (update_id, update_type, update_release_date) values ("'
    # query += str(update_id) + '", "'
    # query += data_type + '", "'
    # query += str(release_date) + ')'
    current_app.logger.info(query)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()
    
    response = make_response("Successfully added product")
    response.status_code = 200
    return response
