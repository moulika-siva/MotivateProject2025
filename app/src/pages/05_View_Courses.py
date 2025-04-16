import streamlit as st
import pandas as pd
import requests

st.set_page_config(page_title="Course Enrollment Viewer", layout="wide")
st.title("📘 Course Enrollment Viewer")

# Flask API Endpoint (adjust host if needed)
API_URL = "http://web-api:4000/d/decision_maker/courselist"

# Fetch student-course enrollment data from Flask API
try:
    response = requests.get(API_URL)
    response.raise_for_status()
    enrollment_data = response.json()
except requests.exceptions.RequestException as e:
    st.error(f"❌ Failed to fetch enrollment data: {e}")
    st.stop()

# Convert API response to DataFrame
df = pd.DataFrame(enrollment_data)

# Validate structure
required_columns = {"student_id", "student_name", "course_id", "course_name"}
if not required_columns.issubset(df.columns):
    st.error("API response is missing one or more required fields.")
    st.stop()

# Sidebar filter
st.sidebar.header("🔍 Filter by Course")
course_options = ["All Courses"] + sorted(df["course_name"].dropna().unique())
selected_course = st.sidebar.selectbox("Select a course:", course_options)

# Filter data by course if selected
if selected_course != "All Courses":
    filtered_df = df[df["course_name"] == selected_course]
else:
    filtered_df = df

# Display DataFrame
st.subheader(f"👨‍🎓 Students in {selected_course}" if selected_course != "All Courses" else "👨‍🎓 All Enrolled Students")
st.dataframe(
    filtered_df[["student_name", "student_id", "course_name", "course_id"]].rename(columns={
        "student_name": "Student Name",
        "student_id": "Student ID",
        "course_name": "Course Name",
        "course_id": "Course ID"
    }),
    use_container_width=True
)
