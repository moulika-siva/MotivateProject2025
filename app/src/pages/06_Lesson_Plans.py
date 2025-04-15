import streamlit as st
import pandas as pd
from datetime import date

st.set_page_config(page_title="Lesson Plan Manager", layout="wide")

st.title("📚 Lesson Plan Manager")

# Sample lesson plans
lesson_plans_data = [
    {"plan_id": 1, "course_id": 46, "professor_id": 187, "date": "2023-10-25", "content": "Lesson content 1 for Course 46"},
    {"plan_id": 2, "course_id": 17, "professor_id": 93, "date": "2025-11-20", "content": "Lesson content 2 for Course 17"},
    {"plan_id": 3, "course_id": 28, "professor_id": 105, "date": "2025-06-22", "content": "Lesson content 3 for Course 28"},
]

# Convert to DataFrame
df = pd.DataFrame(lesson_plans_data)
df["date"] = pd.to_datetime(df["date"])

# Use session state
if "lesson_plans_df" not in st.session_state:
    st.session_state.lesson_plans_df = df.copy()

# === Editable Table ===
st.subheader("✏️ Edit Existing Lesson Plans")
edited_df = st.data_editor(
    st.session_state.lesson_plans_df,
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
st.session_state.lesson_plans_df = edited_df

# === Add New Plan ===
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
            new_id = st.session_state.lesson_plans_df["plan_id"].max() + 1
            new_entry = {
                "plan_id": new_id,
                "course_id": new_course_id,
                "professor_id": new_professor_id,
                "date": pd.to_datetime(new_date),
                "content": new_content,
            }
            st.session_state.lesson_plans_df = pd.concat(
                [st.session_state.lesson_plans_df, pd.DataFrame([new_entry])],
                ignore_index=True,
            )
            st.success("✅ New lesson plan added!")
            st.rerun()

# === Display Plans in Card Format ===
st.subheader("📖 All Lesson Plans")
for idx, row in st.session_state.lesson_plans_df.sort_values("date", ascending=False).iterrows():
    with st.container():
        st.markdown(f"""
        <div style="background-color:#f0f2f6; padding:15px; border-radius:10px; margin-bottom:10px;">
            <strong>📌 Course ID:</strong> {row['course_id']} &nbsp; | &nbsp;
            <strong>🧑‍🏫 Professor ID:</strong> {row['professor_id']} &nbsp; | &nbsp;
            <strong>🗓 Date:</strong> {row['date'].date()}<br><br>
            <em>{row['content']}</em>
        </div>
        """, unsafe_allow_html=True)

# decision_maker = requests.put('http://api:4000/d/decision_maker/lesson-plans').json()