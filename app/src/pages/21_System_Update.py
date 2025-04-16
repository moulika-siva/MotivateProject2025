import logging
logger = logging.getLogger(__name__)

import streamlit as st
import requests
from modules.nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

st.title('System Update Page')
st.write('\n\n')
st.write('## Adding a System Update')


with st.form("Add an Update"):
    update_id = st.number_input("Enter Update ID", min_value=0, step=1)
    update_type = st.text_input("Update Type")
    update_date = st.date_input("Release Date")
    
    submitted = st.form_submit_button("Submit")

    if submitted:
        data = {}
        data['update_id'] = update_id
        data['update_type'] = update_type
        data['update_release_date'] = update_date.isoformat()
        st.write("Sending data...")
        
        try:
            response = requests.post("http://api:4000/a/system_updates", json=data)
            
            if response.status_code == 201:
                st.success("Update added successfully.")
            else:
                st.error(f"Failed to add update. Status code: {response.status_code}")
                st.error(response.json().get('error', 'No additional error message provided.'))

        except requests.exceptions.RequestException as e:
            st.error(f"Request failed: {e}")
