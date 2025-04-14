import logging
logger = logging.getLogger(__name__)
import pandas as pd
import streamlit as st
from streamlit_extras.app_logo import add_logo
import world_bank_data as wb
import matplotlib.pyplot as plt
import numpy as np
import plotly.express as px
from modules.nav import SideBarLinks

# Call the SideBarLinks from the nav module in the modules directory
SideBarLinks()

# set the header of the page
st.header('GROCERY LIST')

# adding bob's profile picture
add_logo('assets/bob_profile.png', height=100)

# welcome message personalized for bob
st.write(f"### Hi, {st.session_state['first_name']}.")

# display section for bob's grocery lists of the week
with st.echo(code_location='above'):
    grocery_list = pd.DataFrame({
        'Item': ['Milk', 'Bread', 'Eggs', 'Flour', 'Yogurt'],
        'Quantity': [2 ,4 ,5 ,1 ,3],
        'PurchaseStatus': ['No', 'Yes', 'No', 'Yes', 'No']
    })
    st.dataframe(grocery_list)

# visualizing purchased vs nonpurchased items
with st.echo(code_location='above'):
   status_counts = grocery_list['PurchaseStatus'].value_counts() 
   fig = px.pie(values=status_counts.values,
   names=status_counts.index,
   title='Purchased vs NonPurchased Items')
   st.plotly_chart(fig)


with st.echo(code_location='above'):
    purchasestatus_summary=pd.DataFrame({
        'Purchased': status_counts.index,
        'Count': status_counts.values
    })

    st.table(purchasestatus_summary)
