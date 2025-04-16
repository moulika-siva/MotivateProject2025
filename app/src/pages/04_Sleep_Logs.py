import streamlit as st
import pandas as pd
import requests
import os
from datetime import datetime, time

st.title("Sleep Log Viewer")

with st.form("Add a Sleep Log"):
    baby_name = st.text_input("Baby Name")

    start_date = st.date_input("Start Date", value=datetime.today())
    start_time = st.time_input("Start Time", value=datetime.now().time())
    end_date = st.date_input("End Date", value=datetime.today())
    end_time = st.time_input("End Time", value=(datetime.now().time()))

    submitted = st.form_submit_button("Submit")

    if submitted:
        # Combine date and time into full datetime
        start_datetime = datetime.combine(start_date, start_time)
        end_datetime = datetime.combine(end_date, end_time)

        st.success("Sleep log submitted (not yet connected to backend).")
        st.write("Baby Name:", baby_name)
        st.write("Start Time:", start_datetime)
        st.write("End Time:", end_datetime)


# Define Flask backend URL directly (change host if needed)
FLASK_BACKEND_URL = "http://web-api:4000/p/sleep_logs"


# Attempt to fetch sleep log data from Flask API
try:
    response = requests.get(f"{FLASK_BACKEND_URL}")
    response.raise_for_status()
    sleep_logs_data = response.json()
except requests.exceptions.RequestException as e:
    st.error(f"Failed to fetch sleep log data: {e}")
    st.stop()

# Convert response to DataFrame
sleep_df = pd.DataFrame(sleep_logs_data)

# Convert datetime fields
sleep_df["start_time"] = pd.to_datetime(sleep_df["start_time"])
sleep_df["end_time"] = pd.to_datetime(sleep_df["end_time"])
sleep_df["sleep_length"] = (sleep_df["end_time"] - sleep_df["start_time"]).dt.total_seconds() / 3600

# Sidebar filter by baby name
st.sidebar.header("Filter by Baby")
baby_options = ["All Babies"] + sorted(sleep_df["baby_name"].dropna().unique().tolist())
selected_baby = st.sidebar.selectbox("Select a baby:", baby_options)

# Filter data
if selected_baby != "All Babies":
    filtered_df = sleep_df[sleep_df["baby_name"] == selected_baby]
else:
    filtered_df = sleep_df

# Display sleep log table
st.header(f"Sleep Logs{' for ' + selected_baby if selected_baby != 'All Babies' else ''}")
st.dataframe(filtered_df[["baby_name", "start_time", "end_time", "sleep_length"]].rename(columns={
    "baby_name": "Baby Name",
    "start_time": "Start Time",
    "end_time": "End Time",
    "sleep_length": "Sleep Length (hrs)"
}))
