import streamlit as st
import pandas as pd

#Set page title
st.title("Student Tasks")

#Hardcoded task data
tasks_data = [
    {"student_id": 1, "first_name": "Lana", "last_name": "Martin", "course": "GenChem", "task": "Lab Report 1", "status": "Incomplete"},
    {"student_id": 1, "first_name": "Lana", "last_name": "Martin", "course": "Bio", "task": "Animals HW", "status": "Complete"},
    {"student_id": 1, "first_name": "Lana", "last_name": "Martin", "course": "Chem", "task": "Chapter 3 Notes", "status": "Incomplete"},
    {"student_id": 1, "first_name": "Lana", "last_name": "Martin", "course": "Orgo", "task": "Molecules Quiz", "status": "Incomplete"},
]

df = pd.DataFrame(tasks_data)

#Incomplete task filtr
incomplete_tasks = df[df["status"] == "Incomplete"]

#Course filter
st.header("Filter by course")
courses = ["All Courses"] + sorted(incomplete_tasks["course"].unique().tolist())
selected_course = st.selectbox("Select a course to view tasks:", courses)

if selected_course != "All Courses":
    filtered_df = incomplete_tasks[incomplete_tasks["course"] == selected_course]
else:
    filtered_df = incomplete_tasks

#The remaining tasks
st.header("Remaining Tasks for the Semester")
st.dataframe(filtered_df[["course", "task"]])

#Summary
st.write(f"Total Remaining Tasks: {len(filtered_df)}")
