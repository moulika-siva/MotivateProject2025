import streamlit as st
import pandas as pd
import matplotlib.pyplot as plt

# Set page title
st.title("Student GradeBook")

# Sample data
grades_data = [
    {"id": 1, "first_name": "John", "last_name": "Smith", "course_name": "Math", "average_grade": 85},
    {"id": 1, "first_name": "John", "last_name": "Smith", "course_name": "Science", "average_grade": 78},
    {"id": 2, "first_name": "Emma", "last_name": "Johnson", "course_name": "Math", "average_grade": 92},
    {"id": 2, "first_name": "Emma", "last_name": "Johnson", "course_name": "History", "average_grade": 88},
    {"id": 3, "first_name": "Michael", "last_name": "Brown", "course_name": "Science", "average_grade": 76},
    {"id": 3, "first_name": "Michael", "last_name": "Brown", "course_name": "Math", "average_grade": 81},
    {"id": 4, "first_name": "Sarah", "last_name": "Davis", "course_name": "History", "average_grade": 95},
]

df = pd.DataFrame(grades_data)

# Display the grades table
st.header("All Grades")
st.dataframe(df)

# Simple filter for courses
st.header("Filter by Course")
courses = ["All Courses"] + sorted(df["course_name"].unique().tolist())
selected_course = st.selectbox("Select a course:", courses)

if selected_course != "All Courses":
    filtered_df = df[df["course_name"] == selected_course]
    st.dataframe(filtered_df)

# Show average grade per course
st.header("Average Grade by Course")
course_avg = df.groupby("course_name")["average_grade"].mean().reset_index()

# Display as a bar chart
fig, ax = plt.subplots()
ax.bar(course_avg["course_name"], course_avg["average_grade"], color="skyblue")
ax.set_xlabel("Course")
ax.set_ylabel("Average Grade")
ax.set_ylim(0, 100)  # Set y-axis from 0 to 100 for grades
plt.xticks(rotation=45)
st.pyplot(fig)

# Simple student selector
st.header("View Individual Student")

# Get unique students
unique_students = df.drop_duplicates(subset=["id", "first_name", "last_name"])
student_options = [f"{row['first_name']} {row['last_name']}" for _, row in unique_students.iterrows()]

selected_student = st.selectbox("Select a student:", student_options)
first_name, last_name = selected_student.split(" ", 1)

# Filter for selected student
student_df = df[(df["first_name"] == first_name) & (df["last_name"] == last_name)]

st.subheader(f"Grades for {selected_student}")
st.dataframe(student_df[["course_name", "average_grade"]])

# Create a bar chart for the student's grades
fig, ax = plt.subplots()
ax.bar(student_df["course_name"], student_df["average_grade"], color="lightgreen")
ax.set_xlabel("Course")
ax.set_ylabel("Grade")
ax.set_ylim(0, 100)
plt.xticks(rotation=45)
st.pyplot(fig)

# Add a simple section showing overall statistics
st.header("Overall Statistics")
st.write(f"Total Students: {len(df['id'].unique())}")
st.write(f"Total Courses: {len(df['course_name'].unique())}")
st.write(f"Average Grade (all courses): {df['average_grade'].mean():.2f}")
st.write(f"Highest Grade: {df['average_grade'].max()}")
st.write(f"Lowest Grade: {df['average_grade'].min()}")