import streamlit as st

#Title and layout
st.set_page_config(page_title="MCAT Study Progress", layout="wide")
st.title("MCAT Progress Tracker")
st.write("As a pre-med student, track your chapter completion and visualize your progress!")

#Chapters
chapters = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
]

#Initialize checklist state
if "completed_chapters" not in st.session_state:
    st.session_state.completed_chapters = []

st.header("Chapter Checklist")

#Checklist UI
for chapter in chapters:
    checked = chapter in st.session_state.completed_chapters
    if st.checkbox(chapter, value=checked, key=chapter):
        if not checked:
            st.session_state.completed_chapters.append(chapter)
    else:
        if checked:
            st.session_state.completed_chapters.remove(chapter)

#Calculate progress
completed = len(st.session_state.completed_chapters)
total = len(chapters)
progress = completed / total

st.write("")
st.write("Progress Timeline")
st.progress(progress)
