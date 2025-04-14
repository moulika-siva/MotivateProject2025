import logging
logger = logging.getLogger(__name__)

import streamlit as st
from modules.nav import SideBarLinks

st.set_page_config(layout = 'wide')

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

st.title(f"Welcome student, {st.session_state['first_name']}.")
st.write('')
st.write('')
st.write('### Organize your personal/academic life!')

if st.button('GRADES', 
             type='primary',
             use_container_width=True):
  st.switch_page('pages/05_View_Grades.py')

if st.button('TASKS', 
             type='primary',
             use_container_width=True):
  st.switch_page('pages/22_Student_Tasks.py')
