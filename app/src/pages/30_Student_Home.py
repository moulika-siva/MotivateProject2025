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

if st.button('CALENDAR', 
             type='primary',
             use_container_width=True):
  st.switch_page('pages/33_Student_Cal.py')

if st.button('TASKS', 
             type='primary', 
             use_container_width=True):
  st.switch_page('pages/31_Student_Tasks.py')

if st.button('MCAT', 
             type='primary', 
             use_container_width=True):
  st.switch_page('pages/32_MCAT.py')

