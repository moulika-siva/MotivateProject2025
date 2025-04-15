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
        data = {
            "list_id": int(list_id),
            "task_id": int(task_id),
            "description": description,
            "duedate": duedate.isoformat(),
            "frequency": frequency,
            "completionstatus": completionstatus
        }

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

# -----------------------------
# Update Task Frequency 
# -----------------------------
st.markdown("## Update Task Frequency")

with st.form("update_task_form"):
    task_id_update = st.text_input("Task ID to Update")
    new_frequency = st.selectbox("New Frequency", ["One-time", "Daily", "Weekly"])

    submit_update = st.form_submit_button("Update Frequency")
    
    if submit_update:
        response = requests.put(
            f"http://api:4000/a/tasks/{task_id_update}",
            json={"frequency": new_frequency}
        )
        if response.status_code == 200:
            st.success("Task frequency updated.")
        else:
            st.error(f"Update failed: {response.text}")

# -----------------------------
# Delete Completed Tasks 
# -----------------------------
st.markdown("## Delete Completed Tasks")

if st.button("Delete All Completed Tasks"):
    response = requests.delete("http://api:4000/a/tasks/completed")
    if response.status_code == 200:
        st.success("All completed tasks deleted.")
    else:
        st.error(f"Failed to delete completed tasks: {response.text}")
