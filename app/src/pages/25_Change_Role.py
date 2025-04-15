import logging
logger = logging.getLogger(__name__)
import streamlit as st
from modules.nav import SideBarLinks
import requests

st.set_page_config(layout = 'wide')

SideBarLinks()

st.title('User Role Management')

st.write('\n\n')
st.write('## Promote User to System Admin')

with st.form("Promote User Form"):
    user_id = st.number_input("Enter the User ID to Promote: ", min_value=1, step=1)

    submitted = st.form_submit_button("Promote to SystemAdmin")

    if submitted:
        url = f'http://api:4000/a/make_admin/{user_id}'
        response = requests.put(url)

        if response.status_code == 200:
            st.success("User successfully promoted to SystemAdmin!")
        elif response.status_code == 404:
            st.error("User not found.")
        else:
<<<<<<< Updated upstream
            st.error("Something went wrong.")
=======
            st.error("Something went wrong.")
>>>>>>> Stashed changes
