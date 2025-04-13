import logging
logger = logging.getLogger(__name__)
import streamlit as st
from modules.nav import SideBarLinks
import requests

st.set_page_config(layout = 'wide')

SideBarLinks()

st.title('System Update Page')

st.write('\n\n')
st.write('## Model 1 Maintenance')

st.button("Add ID", 
            type = 'primary', 
            use_container_width=True)

st.button('Add Datatype', 
            type = 'primary', 
            use_container_width=True)

st.button('Add Release Date', 
            type = 'primary', 
            use_container_width=True)
