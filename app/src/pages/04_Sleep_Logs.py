import streamlit as st
import pandas as pd
import requests
import os

st.title("Sleep Log Viewer")

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
