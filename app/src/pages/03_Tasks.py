import logging
import streamlit as st
import requests
from modules.nav import SideBarLinks

logger = logging.getLogger(__name__)

# Set wide layout and sidebar
st.set_page_config(layout='wide')
SideBarLinks()

# Base URL of your Flask API container
BASE_URL = "http://web-api:4000"

st.title('Task Management Page')
st.write('\n\n')
st.write('## Adding a New Task')

# -----------------------------
# Add a New Task Form
# -----------------------------
with st.form("Add a Task"):
    list_id = st.number_input("Enter List ID", min_value=0, step=1)
    task_id = st.number_input("Enter Task ID", min_value=0, step=1)
    description = st.text_input("Task Description")
    due_date = st.date_input("Due Date")
    frequency = st.selectbox("Task Status", ["Pending", "Completed"])  

    submitted = st.form_submit_button("Submit")

    if submitted:
        data = {
            "list_id": int(list_id),
            "task_id": int(task_id),
            "description": description,
            "duedate": due_date.isoformat(), 
            "frequency": frequency
        }

        st.write("Sending data...")

        try:
            response = requests.post(f"{BASE_URL}/p/tasks", json=data)
            if response.status_code == 201:
                st.success("Task added successfully.")
            else:
                st.error(f"Failed to add task. Status code: {response.status_code}")
                try:
                    st.error(response.json().get('error', 'No additional error message provided.'))
                except:
                    st.error("No JSON response available.")
        except requests.exceptions.RequestException as e:
            st.error(f"Request failed: {e}")

# -----------------------------
# Update Task Frequency 
# -----------------------------
st.markdown("## Update Task Frequency")

with st.form("update_task_form"):
    task_id_update = st.text_input("Task ID to Update")
    new_frequency = st.selectbox("New Frequency", ["Pending", "Completed"])

    submit_update = st.form_submit_button("Update Frequency")

    if submit_update:
        try:
            response = requests.put(
                f"{BASE_URL}/a/tasks/{task_id_update}",
                json={"frequency": new_frequency}
            )
            if response.status_code == 200:
                st.success("Task frequency updated.")
            else:
                st.error(f"Update failed. Status code: {response.status_code}")
                st.error(response.text)
        except requests.exceptions.RequestException as e:
            st.error(f"Update request failed: {e}")

# -----------------------------
# Delete Completed Tasks 
# -----------------------------
st.markdown("## Delete Completed Tasks")

if st.button("Delete All Completed Tasks"):
    try:
        response = requests.delete(f"{BASE_URL}/a/tasks/completed")
        if response.status_code == 200:
            st.success("All completed tasks deleted.")
        else:
            st.error(f"Failed to delete completed tasks. Status code: {response.status_code}")
            st.error(response.text)
    except requests.exceptions.RequestException as e:
        st.error(f"Delete request failed: {e}")
