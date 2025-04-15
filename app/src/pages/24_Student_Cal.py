import streamlit as st

st.title("📅 Student Calendar")

#Non-functional Event Date Inputs
event_name = st.text_input("Event Name")
event_name = st.text_input("Date")

if st.button("Add Event"):
    st.success(f"✅ Event added!")


#Static Calendar Image
st.header("📆 April 2025")
st.image("assets/Blank-April-2025-Calendar.jpg", use_container_width=True)


# Accounts for the following user story:
# "As a student, I need to be able to add new Mock Doctor club events to my calendar 
# so that I can easily keep track of all meetings."

