import requests
import streamlit as st
import pandas as pd

# Set page title
st.title("Student Tasks Management")

# Backend URLs
FLASK_BACKEND_URL_ALL_TASKS = "http://web-api:4000/s/students/all-tasks"  # GET all tasks
FLASK_BACKEND_URL_DELETE_TASKS = "http://localhost:4000/s/students/delete-completed"  # DELETE completed tasks

# Function to fetch all tasks
def fetch_all_tasks():
    try:
        response = requests.get(FLASK_BACKEND_URL_ALL_TASKS)
        response.raise_for_status()
        tasks = response.json()
        
        # Check if tasks are returned and in the correct format
        if isinstance(tasks, list):
            return tasks
        else:
            st.warning("No tasks returned or invalid data format.")
            return []
    except requests.exceptions.RequestException as e:
        st.error(f"Failed to fetch tasks: {e}")
        return []

# Fetch tasks
tasks = fetch_all_tasks()

# Check if tasks exist
if tasks:
    # Convert tasks into DataFrame for easier manipulation and display
    df = pd.DataFrame(tasks)
    
    # Ensure required columns exist in DataFrame
    required_columns = ["task_id", "description", "due_date", "frequency", "user_id"]
    for col in required_columns:
        if col not in df.columns:
            df[col] = "Unknown"
    
    # Show all tasks
    st.subheader("All Tasks")
    st.write(df)

    # Filter for incomplete tasks
    incomplete_tasks = df[df["frequency"] == "Pending"]

    # Show remaining incomplete tasks
    st.subheader("Remaining Tasks")
    st.write(incomplete_tasks)

    # Provide option to delete completed tasks
    st.subheader("🧹 Clean Up - Delete Completed Tasks")
    user_id_to_delete = st.number_input("Enter User ID to delete completed tasks:", min_value=1)
    
    if st.button("Delete Completed Tasks"):
        if user_id_to_delete:
            response = requests.delete(FLASK_BACKEND_URL_DELETE_TASKS, params={"user_id": user_id_to_delete})

            if response.status_code == 200:
                st.success(f"✅ Completed tasks for user {user_id_to_delete} have been deleted.")
            else:
                st.error(f"Failed to delete completed tasks for user {user_id_to_delete}.")
        else:
            st.error("Please enter a valid User ID.")
else:
    st.error("No tasks to display.")
