import streamlit as st
import pandas as pd
import requests

# Simulated sleep log data (replace with requests.get() if using real API)
sleep_logs_data = [
    {"child_id": 1, "child_name": "Aiden Smith", "log_date": "2024-04-01", "hours_slept": 9.0},
    {"child_id": 2, "child_name": "Lily Johnson", "log_date": "2024-04-01", "hours_slept": 7.5},
    {"child_id": 3, "child_name": "Ethan Lee", "log_date": "2024-04-01", "hours_slept": 8.0},
    {"child_id": 1, "child_name": "Aiden Smith", "log_date": "2024-04-02", "hours_slept": 9.2},
    {"child_id": 2, "child_name": "Lily Johnson", "log_date": "2024-04-02", "hours_slept": 7.0},
    {"child_id": 3, "child_name": "Ethan Lee", "log_date": "2024-04-02", "hours_slept": 8.3},
    {"child_id": 1, "child_name": "Aiden Smith", "log_date": "2024-04-03", "hours_slept": 8.9},
    {"child_id": 2, "child_name": "Lily Johnson", "log_date": "2024-04-03", "hours_slept": 6.5},
    {"child_id": 3, "child_name": "Ethan Lee", "log_date": "2024-04-03", "hours_slept": 8.7},
]

# Convert to DataFrame
sleep_df = pd.DataFrame(sleep_logs_data)

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
st.dataframe(filtered_df[["child_name", "log_date", "hours_slept"]].rename(columns={
    "child_name": "Child Name",
    "log_date": "Date",
    "hours_slept": "Hours Slept"
}))

# Example (commented out) if you want to switch to API:
# sleep_logs_data = requests.get('http://api:3111/sleep-logs').json()
