import logging
logger = logging.getLogger(__name__)

import streamlit as st
import requests
from modules.nav import SideBarLinks

st.set_page_config(layout='wide')

SideBarLinks()

st.title('Task Management Page')
st.write('\n\n')
st.write('## Adding a New Task')


with st.form("Add a Task"):
    list_id = st.number_input("Enter List ID", min_value=0, step=1)
    task_id = st.number_input("Enter Task ID", min_value=0, step=1)
    description = st.text_input("Task Description")
    duedate = st.date_input("Due Date")
    frequency = st.selectbox("Task Frequency", ["One-time", "Daily", "Weekly"])
    completionstatus = st.selectbox("Is it Completed?", ["No", "Yes"])
    
    submitted = st.form_submit_button("Submit")

    if submitted:
        data = {}
        data['update_id'] = update_id
        data['update_type'] = update_type
        data['update_release_date'] = update_date
        st.write("Sending data...")
        
        try:
            response = requests.post("http://api:4000/p/tasks", json=data)
            
            if response.status_code == 201:
                st.success("Task added successfully.")
            else:
                st.error(f"Failed to add task. Status code: {response.status_code}")
                st.error(response.json().get('error', 'No additional error message provided.'))

        except requests.exceptions.RequestException as e:
            st.error(f"Request failed: {e}")
