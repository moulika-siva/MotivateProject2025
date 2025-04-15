import logging
logger = logging.getLogger(__name__)
import requests
import streamlit as st
from modules.nav import SideBarLinks


from PIL import Image

def add_logo(logo_path, width=100):  # default width if needed
    logo = Image.open(logo_path)
    st.image(logo, width=width)


# adding bob's profile picture
add_logo('assets/bob.png',100)


# Page Title
st.title("Sleep Logs")
st.write("This page shows your baby's sleep log history.")

API_BASE_URL = "http://localhost:4000"


# Make the GET request to fetch logs
user_id = st.session_state.get("user_id")
if not user_id:
    user_id = st.text_input("Enter your User ID")

# Only run API request if user_id is provided
if user_id:
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

    

  