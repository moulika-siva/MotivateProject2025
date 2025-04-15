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
user_id = st.text_input("Enter your User ID")

if user_id:
    try:
        response = requests.get(f"{API_BASE_URL}/sleep_logs", params={"user_id": user_id})
        # ... rest of your code ...
    except Exception as e:
        st.error(f"Error connecting to API: {str(e)}")

  