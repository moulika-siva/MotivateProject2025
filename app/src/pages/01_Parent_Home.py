import logging
logger = logging.getLogger(__name__)

import streamlit as st
from streamlit_extras.app_logo import add_logo
import pandas as pd
import pydeck as pdk
from urllib.error import URLError
from modules.nav import SideBarLinks

# Sidebar and logo
SideBarLinks()
add_logo("assets/logo.png", height=120)

# Page Title
st.markdown("# Parent Task Manager")
st.write("Select an action below to manage your tasks, sleep logs, and more.")

# Task management section
st.markdown("## Task Actions")

if st.button("Create To-Do List"):
    st.switch_page("pages/create_todo.py")  # Replace with your actual file

if st.button("Add a Task"):
    st.switch_page("pages/add_task.py")

if st.button("Update Task Frequency"):
    st.switch_page("pages/update_task_frequency.py")

if st.button("Delete Completed Tasks"):
    st.switch_page("pages/delete_completed_tasks.py")

# Sleep log section
st.markdown("## Sleep Logs")

if st.button("Get Sleep Logs"):
    st.switch_page("pages/view_sleep_logs.py")
