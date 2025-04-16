import streamlit as st
import pandas as pd
import requests

# -----------------------------
# Logo Helper
# -----------------------------
def add_logo(logo_path, width=100):
    logo = Image.open(logo_path)
    st.image(logo, width=width)


st.set_page_config(page_title="Course Enrollment Viewer", layout="wide")
st.title("📘 Course Enrollment Viewer")

BASE_URL = "http://web-api:4000"  # Adjust if needed
API_URL = f"{BASE_URL}/d/decision_maker/courselist"

# -----------------------------
# Fetch Course Enrollment Data
# -----------------------------
try:
    response = requests.get(API_URL)
    response.raise_for_status()
    enrollment_data = response.json()
except requests.exceptions.RequestException as e:
    st.error(f"❌ Failed to fetch enrollment data: {e}")
    st.stop()

# -----------------------------
# Process and Validate Data
# -----------------------------
df = pd.DataFrame(enrollment_data)

required_columns = {"student_id", "student_name", "course_id", "course_name"}
if not required_columns.issubset(df.columns):
    st.error("API response is missing one or more required fields.")
    st.stop()

# -----------------------------
# Sidebar Filter
# -----------------------------
st.sidebar.header("🔍 Filter by Course")
course_options = ["All Courses"] + sorted(df["course_name"].dropna().unique())
selected_course = st.sidebar.selectbox("Select a course:", course_options)

# Filter Data
filtered_df = df if selected_course == "All Courses" else df[df["course_name"] == selected_course]

# -----------------------------
# Display Data
# -----------------------------
st.subheader(f"👨‍🎓 Students in {selected_course}" if selected_course != "All Courses" else "👨‍🎓 All Enrolled Students")

# Clean display DataFrame
display_df = filtered_df[["student_name", "student_id", "course_name", "course_id"]].rename(columns={
    "student_name": "Student Name",
    "student_id": "Student ID",
    "course_name": "Course Name",
    "course_id": "Course ID"
})

st.dataframe(display_df, use_container_width=True)

# -----------------------------
# Course Distribution Chart
# -----------------------------
course_counts = df["course_name"].value_counts()
fig = px.pie(
    values=course_counts.values,
    names=course_counts.index,
    title="📊 Course Enrollment Distribution"
)
st.plotly_chart(fig)

# -----------------------------
# Summary Table
# -----------------------------
summary_df = pd.DataFrame({
    'Course Name': course_counts.index,
    'Student Count': course_counts.values
})
st.subheader("📋 Course Enrollment Summary")
st.table(summary_df)
