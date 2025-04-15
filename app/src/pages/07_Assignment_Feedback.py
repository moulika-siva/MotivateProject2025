import streamlit as st
import pandas as pd

st.set_page_config(page_title="Assignment Feedback Editor", layout="wide")
st.title("📝 Assignment Description & Feedback Editor")

# Sample assignment data (add more if needed)
assignments_data = [
    {"assign_id": 1, "course_id": 17, "description": "Assignment 1 for Course 17", "due_date": "2025-08-09", "feedback": ""},
    {"assign_id": 2, "course_id": 33, "description": "Assignment 2 for Course 33", "due_date": "2024-07-04", "feedback": ""},
    {"assign_id": 3, "course_id": 14, "description": "Assignment 3 for Course 14", "due_date": "2025-03-12", "feedback": ""},
    {"assign_id": 4, "course_id": 5, "description": "Assignment 4 for Course 5", "due_date": "2024-08-14", "feedback": ""},
    {"assign_id": 5, "course_id": 5, "description": "Assignment 5 for Course 5", "due_date": "2025-05-11", "feedback": ""},
]

df = pd.DataFrame(assignments_data)
df["due_date"] = pd.to_datetime(df["due_date"])

# Load into session state
if "assignments_df" not in st.session_state:
    st.session_state.assignments_df = df.copy()

# === Assignment Editor ===
st.subheader("✏️ Edit Descriptions & Add Feedback")
edited_df = st.data_editor(
    st.session_state.assignments_df,
    num_rows="dynamic",
    use_container_width=True,
    hide_index=True,
    column_config={
        "assign_id": st.column_config.NumberColumn("Assignment ID", disabled=True),
        "course_id": st.column_config.NumberColumn("Course ID", disabled=True),
        "description": st.column_config.TextColumn("Description"),
        "due_date": st.column_config.DateColumn("Due Date"),
        "feedback": st.column_config.TextColumn("Feedback (optional)"),
    },
    key="assignments_editor"
)

st.session_state.assignments_df = edited_df

# === Assignment Cards ===
st.subheader("📋 Current Assignments")
for _, row in st.session_state.assignments_df.sort_values("due_date").iterrows():
    st.markdown(f"""
    <div style="background-color:#f6f8fa; border-left: 4px solid #4b8bbe; padding:15px; border-radius:10px; margin-bottom:10px;">
        <strong>📌 Assignment ID:</strong> {row['assign_id']} &nbsp; | &nbsp;
        <strong>📘 Course ID:</strong> {row['course_id']} &nbsp; | &nbsp;
        <strong>🗓 Due Date:</strong> {row['due_date'].date()}<br><br>
        <strong>📝 Description:</strong><br>
        {row['description']}<br><br>
        <strong>💬 Feedback:</strong><br>
        <em>{row['feedback'] if row['feedback'].strip() else 'No feedback yet.'}</em>
    </div>
    """, unsafe_allow_html=True)

# decision_maker = requests.put('http://api:4000/d/decision_maker/assignmentst').json()