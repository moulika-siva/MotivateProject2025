import streamlit as st

#Title and layout
st.set_page_config(page_title="MCAT Study Progress", layout="wide")
st.title("MCAT Progress Tracker")
st.write("Track your MCAT studying with our handy checklist and progress bar.")
st.write("Way to go future doctor!!")

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

# Accounts for the following user story: "As a pre-med student, I need to be able 
# to track and update what chapters I have done in my MCAT studying so I know what to cover next."

#Calculate progress
completed = len(st.session_state.completed_chapters)
total = len(chapters)
progress = completed / total

st.write("")
st.header("Progress Timeline")
st.progress(progress)
