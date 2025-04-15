import logging
logger = logging.getLogger(__name__)

import streamlit as st
from modules.nav import SideBarLinks

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

# Page Title
st.markdown("# Parent Task Manager")
st.write("Select an action below to manage your tasks, sleep logs, and more.")

if st.button('Grocery List', 
             type='primary',
             use_container_width=True):
  st.switch_page('pages/02_Grocery_List.py')

if st.button('Tasks', 
             type='primary', 
             use_container_width=True):
  st.switch_page('pages/03_Tasks.py')

if st.button('Sleep Logs', 
             type='primary', 
             use_container_width=True):
  st.switch_page('pages/04_Sleep_Logs.py')
