import logging
logger = logging.getLogger(__name__)
import streamlit as st
from modules.nav import SideBarLinks
import requests

st.set_page_config(layout = 'wide')

SideBarLinks()

st.title('System Update Page')

st.write('\n\n')
st.write('## Adding A System Update')

with st.form("Add a System Update"):
    update_id = st.number_input("Input New Update's ID: ")
    update_type = st.text_input("What Type of Update? ")
    update_date = st.text_input("The Release Date of the Update: ")

    submitted = st.form_submit_button("Submit")

<<<<<<< Updated upstream
=======


>>>>>>> Stashed changes
    if submitted:
        data = {}
        data['update_id'] = update_id
        data['update_type'] = update_type
        data['update_release_date'] = update_date
<<<<<<< Updated upstream
=======
        
>>>>>>> Stashed changes
        st.write("Sending data...")
        try:
            response = requests.post('http://api:4000/a/system_updates', json=data)

            if response.status_code == 201:
                st.success("System update added successfully.")
            else:
                st.error(f"Failed to add update. Status code: {response.status_code}")
                st.error(response.json().get('error', 'No additional error message provided.'))

        except requests.exceptions.RequestException as e:
<<<<<<< Updated upstream
            st.error(f"Request failed: {e}")
=======
            st.error(f"Request failed: {e}")
>>>>>>> Stashed changes
