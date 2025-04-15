import streamlit as st
import pandas as pd
from datetime import datetime

# Simulated sleep log data to reflect database schema
sleep_logs_data = [
    {
        "sleep_id": 1,
        "user_id": 101,
        "baby_name": "Aiden Smith",
        "start_time": "2024-04-01 21:00",
        "end_time": "2024-04-02 06:00"
    },
    {
        "sleep_id": 2,
        "user_id": 102,
        "baby_name": "Lily Johnson",
        "start_time": "2024-04-01 22:00",
        "end_time": "2024-04-02 05:30"
    },
    {
        "sleep_id": 3,
        "user_id": 103,
        "baby_name": "Ethan Lee",
        "start_time": "2024-04-01 20:45",
        "end_time": "2024-04-02 05:00"
    },
    {
        "sleep_id": 4,
        "user_id": 101,
        "baby_name": "Aiden Smith",
        "start_time": "2024-04-02 21:15",
        "end_time": "2024-04-03 06:30"
    },
    {
        "sleep_id": 5,
        "user_id": 102,
        "baby_name": "Lily Johnson",
        "start_time": "2024-04-02 21:45",
        "end_time": "2024-04-03 05:45"
    },
    {
        "sleep_id": 6,
        "user_id": 103,
        "baby_name": "Ethan Lee",
        "start_time": "2024-04-02 21:00",
        "end_time": "2024-04-03 06:00"
    }
]

# Convert to DataFrame
sleep_df = pd.DataFrame(sleep_logs_data)

# Convert to datetime
sleep_df["start_time"] = pd.to_datetime(sleep_df["start_time"])
sleep_df["end_time"] = pd.to_datetime(sleep_df["end_time"])

# Calculate sleep length
sleep_df["sleep_length"] = (sleep_df["end_time"] - sleep_df["start_time"]).dt.total_seconds() / 3600

# Streamlit layout
st.title("Sleep Log Viewer")

# Sidebar filter
st.sidebar.header("Filter by Baby")
baby_options = ["All Babies"] + sorted(sleep_df["baby_name"].unique().tolist())
selected_baby = st.sidebar.selectbox("Select a baby:", baby_options)

# Filter data
if selected_baby != "All Babies":
    filtered_df = sleep_df[sleep_df["baby_name"] == selected_baby]
else:
    filtered_df = sleep_df

# Display
st.header(f"Sleep Logs{' for ' + selected_baby if selected_baby != 'All Babies' else ''}")
st.dataframe(filtered_df[["baby_name", "start_time", "end_time", "sleep_length"]].rename(columns={
    "baby_name": "Baby Name",
    "start_time": "Start Time",
    "end_time": "End Time",
    "sleep_length": "Sleep Length (hrs)"
}))
