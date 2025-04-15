iimport logging
logger = logging.getLogger(__name__)

import streamlit as st
from modules.nav import SideBarLinks
from PIL import Image

def add_logo(logo_path, width=100):  # default width if needed
    logo = Image.open(logo_path)
    st.image(logo, width=width)

# adding bob's profile picture
add_logo('assets/bob.png',100)


# Page Title
st.markdown("# Task Management")
st.write("Use the sections below to manage tasks:")

API_BASE_URL = "http://localhost:4000"

# -----------------------------
#  Add a Task 
# -----------------------------
st.markdown("## Add a Task")

with st.form("add_task_form"):
    list_id = st.text_input("List ID")
    task_id = st.text_input("Task ID")
    description = st.text_input("Task Description")
    duedate = st.date_input("Due Date")
    frequency = st.selectbox("Frequency", ["One-time", "Daily", "Weekly"])
    completionstatus = st.selectbox("Completion Status", ["No", "Yes"])
    
    submit_add = st.form_submit_button("Add Task")
    
    if submit_add:
        response = requests.post(
            f"{API_BASE_URL}/tasks",
            json={
                "list_id": list_id,
                "task_id": task_id,
                "description": description,
                "duedate": duedate.isoformat(),
                "frequency": frequency,
                "completionstatus": completionstatus
            }
        )
        if response.status_code == 201:
            st.success("Task added successfully.")
        else:
            st.error(f"Failed to add task: {response.text}")

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
            f"{API_BASE_URL}/tasks/{task_id_update}",
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
    response = requests.delete(f"{API_BASE_URL}/tasks/completed")
    if response.status_code == 200:
        st.success("All completed tasks deleted.")
    else:
        st.error(f"Failed to delete completed tasks: {response.text}")
