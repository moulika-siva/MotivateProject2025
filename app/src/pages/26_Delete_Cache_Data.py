import logging
logger = logging.getLogger(__name__)
import streamlit as st
from modules.nav import SideBarLinks
import requests

st.set_page_config(layout='wide')

SideBarLinks()

st.title('Cache Management')

st.write('\n\n')
st.write('## Delete Cache Data Entry')

with st.form("Delete Cache Form"):
    cache_id = st.number_input("Enter the Cache ID to Delete: ", min_value=1, step=1)

    submitted = st.form_submit_button("Delete Cache Entry")

    if submitted:
        url = f'http://api:4000/a/cache_data/{cache_id}'
        response = requests.delete(url)

        if response.status_code == 200:
            st.success("Cache data deleted successfully.")
        elif response.status_code == 404:
            st.error("Cache data not found.")
        else:
            st.error("Failed to delete cache data.")