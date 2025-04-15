import streamlit as st
import pandas as pd
from datetime import datetime

# Simulated sleep log data with start and end times
sleep_logs_data = [
    {
        "child_id": 1,
        "child_name": "Aiden Smith",
        "start_sleep": "2024-04-01 21:00",
        "end_sleep": "2024-04-02 06:00"
    },
    {
        "child_id": 2,
        "child_name": "Lily Johnson",
        "start_sleep": "2024-04-01 22:00",
        "end_sleep": "2024-04-02 05:30"
    },
    {
        "child_id": 3,
        "child_name": "Ethan Lee",
        "start_sleep": "2024-04-01 20:45",
        "end_sleep": "2024-04-02 05:00"
    },
    {
        "child_id": 1,
        "child_name": "Aiden Smith",
        "start_sleep": "2024-04-02 21:15",
        "end_sleep": "2024-04-03 06:30"
    },
    {
        "child_id": 2,
        "child_name": "Lily Johnson",
        "start_sleep": "2024-04-02 21:45",
        "end_sleep": "2024-04-03 05:45"
    },
    {
        "child_id": 3,
        "child_name": "Ethan Lee",
        "start_sleep": "2024-04-02 21:00",
        "end_sleep": "2024-04-03 06:00"
    }
]

# Convert to DataFrame
sleep_df = pd.DataFrame(sleep_logs_data)

# Convert strings to datetime
sleep_df["start_sleep"] = pd.to_datetime(sleep_df["start_sleep"])
sleep_df["end_sleep"] = pd.to_datetime(sleep_df["end_sleep"])

# Calculate sleep length in hours
sleep_df["sleep_length"] = (sleep_df["end_sleep"] - sleep_df["start_sleep"]).dt.total_seconds() / 3600

# App title
st.title("Sleep Log Viewer")

# Sidebar filter
st.sidebar.header("Filter by Child")
child_options = ["All Children"] + sorted(sleep_df["child_name"].unique().tolist())
selected_child = st.sidebar.selectbox("Select a child:", child_options)

# Filtered data
if selected_child != "All Children":
    filtered_df = sleep_df[sleep_df["child_name"] == selected_child]
else:
    filtered_df = sleep_df

# Display table
st.header(f"Sleep Logs{' for ' + selected_child if selected_child != 'All Children' else ''}")
st.dataframe(filtered_df[["child_name", "start_sleep", "end_sleep", "sleep_length"]].rename(columns={
    "child_name": "Child Name",
    "start_sleep": "Start Time",
    "end_sleep": "End Time",
    "sleep_length": "Sleep Length (hrs)"
}))
