import streamlit as st
import pandas as pd
import requests

# Simulated student and course data (from your SQL inserts)
students_data = [
    {"student_id": 2, "course_id": 46, "student_name": "Skyler Davis"},
    {"student_id": 3, "course_id": 26, "student_name": "Peyton Moore"},
    {"student_id": 4, "course_id": 47, "student_name": "Jordan Davis"},
    {"student_id": 5, "course_id": 35, "student_name": "Peyton Jones"},
    {"student_id": 6, "course_id": 34, "student_name": "Skyler Davis"},
    {"student_id": 7, "course_id": 8, "student_name": "Avery Wilson"},
    {"student_id": 8, "course_id": 35, "student_name": "Alex Williams"},
    {"student_id": 9, "course_id": 40, "student_name": "Morgan Williams"},
    {"student_id": 10, "course_id": 14, "student_name": "Alex Miller"},
]

courses_data = [
    {"course_id": 8, "course_name": "Course8"},
    {"course_id": 14, "course_name": "Course14"},
    {"course_id": 26, "course_name": "Course26"},
    {"course_id": 34, "course_name": "Course34"},
    {"course_id": 35, "course_name": "Course35"},
    {"course_id": 40, "course_name": "Course40"},
    {"course_id": 46, "course_name": "Course46"},
    {"course_id": 47, "course_name": "Course47"},
]

# Convert to DataFrames
students_df = pd.DataFrame(students_data)
courses_df = pd.DataFrame(courses_data)

# Merge students with course names
merged_df = students_df.merge(courses_df, on="course_id")

# App title
st.title("Course Enrollment Viewer")

# Sidebar filter
st.sidebar.header("Filter by Course")
course_options = ["All Courses"] + sorted(merged_df["course_name"].unique().tolist())
selected_course = st.sidebar.selectbox("Select a course:", course_options)

# Filtered data
if selected_course != "All Courses":
    filtered_df = merged_df[merged_df["course_name"] == selected_course]
else:
    filtered_df = merged_df

# Display table
st.header(f"Enrolled Students{' in ' + selected_course if selected_course != 'All Courses' else ''}")
st.dataframe(filtered_df[["student_name", "student_id", "course_name"]].rename(columns={
    "student_name": "Student Name",
    "student_id": "Student ID",
    "course_name": "Course"
}))

# decision_maker = requests.get('http://api:4000/d/decision_maker/courselist').json()