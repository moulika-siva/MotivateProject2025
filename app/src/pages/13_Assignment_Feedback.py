import streamlit as st
import pandas as pd
import requests

st.set_page_config(page_title="Assignment Feedback Editor", layout="wide")
st.title("📝 Assignment Feedback Editor")

# API endpoints
BASE_URL = "http://web-api:4000"
API_URL_GET = f"{BASE_URL}/d/decision_maker/assignments"
API_URL_PUT = f"{BASE_URL}/d/decision_maker/assignments"

# -----------------------------
# Fetch assignment data from API
# -----------------------------
try:
    response = requests.get(API_URL_GET)
    response.raise_for_status()
    assignments_data = response.json()
except requests.exceptions.RequestException as e:
    st.error(f"❌ Failed to fetch assignment data: {e}")
    st.stop()

# -----------------------------
# Convert to DataFrame
# -----------------------------
df = pd.DataFrame(assignments_data)
df["due_date"] = pd.to_datetime(df["due_date"])

# Rename 'description' to 'feedback' and remove original column
df["feedback"] = df["description"]
df.drop(columns=["description"], inplace=True)

# -----------------------------
# Feedback Editor
# -----------------------------
st.subheader("✏️ Edit Assignment Feedback")
edited_df = st.data_editor(
    df,
    num_rows="dynamic",
    use_container_width=True,
    hide_index=True,
    column_config={
        "assign_id": st.column_config.NumberColumn("Assignment ID", disabled=True),
        "course_id": st.column_config.NumberColumn("Course ID", disabled=True),
        "due_date": st.column_config.DateColumn("Due Date", disabled=True),
        "feedback": st.column_config.TextColumn("Feedback"),
    },
    key="assignments_editor"
)

# -----------------------------
# Save Changes
# -----------------------------
if st.button("💾 Save All Changes"):
    success = True
    for _, row in edited_df.iterrows():
        payload = {
            "assign_id": row["assign_id"],
            "description": row["feedback"]  # Send feedback as 'description'
        }
        try:
            r = requests.put(API_URL_PUT, json=payload)
            r.raise_for_status()
        except requests.exceptions.RequestException as e:
            st.error(f"❌ Failed to update assignment {row['assign_id']}: {e}")
            success = False
    if success:
        st.success("✅ All assignments updated successfully!")
        st.rerun()

# -----------------------------
# Display Assignments as Cards
# -----------------------------
st.subheader("📋 Current Assignments")
for _, row in edited_df.sort_values("due_date").iterrows():
    st.markdown(f"""
    <div style="background-color:#f6f8fa; border-left: 4px solid #4b8bbe; padding:15px; border-radius:10px; margin-bottom:10px;">
        <strong>📌 Assignment ID:</strong> {row['assign_id']} &nbsp; | &nbsp;
        <strong>📘 Course ID:</strong> {row['course_id']} &nbsp; | &nbsp;
        <strong>🗓 Due Date:</strong> {row['due_date'].date()}<br><br>
        <strong>💬 Feedback:</strong><br>
        <em>{row['feedback'] if row['feedback'].strip() else 'No feedback yet.'}</em>
    </div>
    """, unsafe_allow_html=True)
