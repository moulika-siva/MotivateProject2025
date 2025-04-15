import logging
logger = logging.getLogger(__name__)

import streamlit as st
from streamlit_extras.app_logo import add_logo
import pandas as pd
import pydeck as pdk
from urllib.error import URLError
from modules.nav import SideBarLinks

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

# Page Title
st.markdown("# Parent Task Manager")
st.write("Select an action below to manage your tasks, sleep logs, and more.")

# buttons on home page
if st.button("Grocery List"):
    st.switch_page("02_Grocery_List.py")  

if st.button("Tasks"):
    st.switch_page("03_Tasks.py")

# Sleep log section
st.markdown("## Sleep Logs")

if st.button("Get Sleep Logs"):
    st.switch_page("04_Sleep_Logs.py")
