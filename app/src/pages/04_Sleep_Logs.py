import logging
logger = logging.getLogger(__name__)

import streamlit as st
import pandas as pd
import requests
from streamlit_extras.app_logo import add_logo
from modules.nav import SideBarLinks

# Sidebar and logo
SideBarLinks()
add_logo("motivate-logo.png", height=120)

# Page Title
st.title("Sleep Logs")
st.write("This page shows your baby's sleep log history.")

API_BASE_URL = "http://localhost:4000"


# Make the GET request to fetch logs
try:
    response = requests.get(f"{API_BASE_URL}/sleep_logs", params={"user_id": user_id})

    if response.status_code == 200:
        sleep_data = response.json()

        if sleep_data:
            sleep_df = pd.DataFrame(sleep_data)
            sleep_df.columns = ["User ID", "Start Time", "End Time", "Baby Name", "Sleep ID"]
            st.dataframe(sleep_df)
        else:
            st.info("No sleep logs found for this user.")
    else:
        st.error(f"Failed to fetch sleep logs: {response.status_code}")
except Exception as e:
    st.error(f"Error connecting to API: {str(e)}")

  