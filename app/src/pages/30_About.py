import streamlit as st
from streamlit_extras.app_logo import add_logo
from modules.nav import SideBarLinks

SideBarLinks()

st.write("# About this App")

st.markdown (
    """
    Motivate is the ideal place to organize your daily life!
    
    Imagine Notion, but taken to the next level. Everything 
    you could possibly need in one place, making tasks more 
    convenient and efficient. From assignment trackers, to 
    creative spaces, to scheduling tools, Motivate elevates 
    your productivity and helps you accomplish everyday tasks 
    with ease. This platform holds class assignments, tests,
    extracurricular events, etc. and sorts them based on 
    priority, difficulty, and deadlines. 

    Stay tuned for more information and features to come!
    """
        )
