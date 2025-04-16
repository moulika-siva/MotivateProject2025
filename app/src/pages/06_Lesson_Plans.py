import streamlit as st
import pandas as pd
import requests
from datetime import date

st.set_page_config(page_title="Lesson Plan Manager", layout="wide")
st.title("📚 Lesson Plan Manager")

BASE_URL = "http://web-api:4000"
API_URL_GET = f"{BASE_URL}/d/decision_maker/lesson-plans"
API_URL_POST = f"{BASE_URL}/d/decision_maker/lesson-plans"

# -----------------------------
# Fetch Existing Lesson Plans
# -----------------------------
try:
    response = requests.get(API_URL_GET)
    response.raise_for_status()
    lesson_plans_data = response.json()
except requests.exceptions.RequestException as e:
    st.error(f"❌ Failed to fetch lesson plan data: {e}")
    st.stop()

df = pd.DataFrame(lesson_plans_data)
df["date"] = pd.to_datetime(df["date"])

# -----------------------------
# Editable Table
# -----------------------------
st.subheader("✏️ Edit Existing Lesson Plans")
edited_df = st.data_editor(
    df,
    num_rows="dynamic",
    use_container_width=True,
    hide_index=True,
    column_config={
        "plan_id": st.column_config.NumberColumn("Plan ID", disabled=True),
        "course_id": st.column_config.NumberColumn("Course ID"),
        "professor_id": st.column_config.NumberColumn("Professor ID"),
        "date": st.column_config.DateColumn("Date"),
        "content": st.column_config.TextColumn("Content"),
    },
    key="lesson_plans_editor"
)

# -----------------------------
# Add a New Plan
# -----------------------------
st.subheader("➕ Add a New Lesson Plan")
with st.form("add_lesson_plan_form", clear_on_submit=True):
    new_course_id = st.number_input("Course ID", min_value=1, step=1)
    new_professor_id = st.number_input("Professor ID", min_value=1, step=1)
    new_date = st.date_input("Lesson Date", value=date.today())
    new_content = st.text_area("Lesson Content", height=100)

    submitted = st.form_submit_button("Add Lesson Plan")
    if submitted:
        if new_content.strip() == "":
            st.warning("Please enter some lesson content.")
        else:
            new_plan = {
                "course_id": new_course_id,
                "professor_id": new_professor_id,
                "date": str(new_date),
                "content": new_content
            }
            try:
                post_resp = requests.post(API_URL_POST, json=new_plan)
                post_resp.raise_for_status()
                st.success("✅ New lesson plan added!")
                st.rerun()
            except requests.exceptions.RequestException as e:
                st.error(f"❌ Failed to add lesson plan: {e}")

# -----------------------------
# Display All Lesson Plans
# -----------------------------
st.subheader("📖 All Lesson Plans")
for _, row in df.sort_values("date", ascending=False).iterrows():
    with st.container():
        st.markdown(f"""
        <div style="background-color:#f0f2f6; padding:15px; border-radius:10px; margin-bottom:10px;">
            <strong>📌 Course ID:</strong> {row['course_id']} &nbsp; | &nbsp;
            <strong>🧑‍🏫 Professor ID:</strong> {row['professor_id']} &nbsp; | &nbsp;
            <strong>🗓 Date:</strong> {row['date'].date()}<br><br>
            <em>{row['content']}</em>
        </div>
        """, unsafe_allow_html=True)
