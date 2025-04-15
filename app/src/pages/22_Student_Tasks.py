import streamlit as st
import pandas as pd

#Set page title
st.title("Student Tasks")

#Hardcoded task data
if "tasks_data" not in st.session_state:
    st.session_state.tasks_data = [
        {"student_id": 1, "first_name": "Lana", "last_name": "Martin", "course": "GenChem", "task": "Lab Report 1", "status": "Incomplete"},
        {"student_id": 1, "first_name": "Lana", "last_name": "Martin", "course": "Bio", "task": "Animals HW", "status": "Complete"},
        {"student_id": 1, "first_name": "Lana", "last_name": "Martin", "course": "Chem", "task": "Chapter 3 Notes", "status": "Incomplete"},
        {"student_id": 1, "first_name": "Lana", "last_name": "Martin", "course": "Orgo", "task": "Molecules Quiz", "status": "Incomplete"},
    ]


df = pd.DataFrame(st.session_state.tasks_data)

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
for idx, row in filtered_df.iterrows():
    column1, column2, column3 = st.columns([3, 5, 2])
    with column1:
        st.write(f"**{row['course']}**")
    with column2:
        st.write(row["task"])
    with column3:
        if st.button("☐", key=f"complete_{idx}"):
            st.session_state.tasks_data[idx]["status"] = "Complete"
            st.rerun()

#Summary
st.write(f"Total Remaining Tasks: {len(filtered_df)}")

# Accounts for the following user story:
# "As a biology student, I need to be able to keep a list of assignments for my major classes 
# with completed tasks removed so that I can clearly see the remaining work for the semester."

