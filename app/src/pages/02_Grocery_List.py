import streamlit as st
import pandas as pd
import requests
import plotly.express as px
from PIL import Image

# -----------------------------
# Logo Helper
# -----------------------------
def add_logo(logo_path, width=100):
    logo = Image.open(logo_path)
    st.image(logo, width=width)

# -----------------------------
# Configuration
# -----------------------------
st.set_page_config(layout='wide')
BASE_URL = "http://web-api:4000"  # Flask container

# -----------------------------
# Page Layout
# -----------------------------
st.header('GROCERY LIST')
add_logo('assets/bob.png', width=100)
st.write("### Hi, Bob.")

# -----------------------------
# Fetch Grocery List Data
# -----------------------------
try:
    response = requests.get(f"{BASE_URL}/p/grocery-lists")
    response.raise_for_status()
    grocery_data = response.json()
except requests.exceptions.RequestException as e:
    st.error(f"Failed to fetch grocery list data: {e}")
    st.stop()

# -----------------------------
# Process and Display Data
# -----------------------------
if grocery_data:
    df = pd.DataFrame(grocery_data)

    # Rename for readability
    df = df.rename(columns={
        "title": "Title",
        "created_at": "Created At",
        "update_at": "Updated At",  # spelling matches route
        "list_id": "List ID",
        "user_id": "User ID"
    })

    # Display data table
    st.subheader("Your Grocery Lists")
    st.dataframe(df)

    # Dummy PurchaseStatus column (since it doesn't exist in DB yet)
    # If you later add a purchase_status column to DB, remove this
    df["PurchaseStatus"] = ["Yes" if i % 2 == 0 else "No" for i in range(len(df))]

    # Pie chart
    status_counts = df["PurchaseStatus"].value_counts()
    fig = px.pie(
        values=status_counts.values,
        names=status_counts.index,
        title="Purchased vs NonPurchased Items"
    )
    st.plotly_chart(fig)

    # Summary Table
    purchasestatus_summary = pd.DataFrame({
        'Purchased': status_counts.index,
        'Count': status_counts.values
    })

    st.table(purchasestatus_summary)

else:
    st.info("No grocery list data available.")
