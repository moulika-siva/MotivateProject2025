# Idea borrowed from https://github.com/fsmosca/sample-streamlit-authenticator

# This file has function to add certain functionality to the left side bar of the app

import streamlit as st


#### ------------------------ General ------------------------
def HomeNav():
    st.sidebar.page_link("Home.py", label="Home", icon="🏠")


def AboutPageNav():
    st.sidebar.page_link("pages/30_About.py", label="About", icon="🧠")


#### ------------------------ Examples for Role of student ------------------------
def StudentHomeNav():
    st.sidebar.page_link(
        "pages/05_Student_Home.py", label="Student", icon="🧑‍🎓"
    )


def StudentCalNav():
    st.sidebar.page_link(
        "pages/24_Student_Cal.py", label="Student Calendar View", icon="🗓️"
    )


def TasksNav():
    st.sidebar.page_link("pages/22_Student_Tasks.py", label="Student Tasks", icon="📋")

def MCATNav():
    st.sidebar.page_link("pages/23_MCAT.py", label="MCAT Requirements", icon="🩺")


<<<<<<< Updated upstream
## ------------------------ Examples for Role of decision_maker ------------------------
def DecisionMakerHomeNav():
    st.sidebar.page_link("pages/00_Dec_Maker_Home.py", label="Decision Maker", icon="🧑‍🏫")


=======



## ------------------------ Examples for Role of decision_maker ------------------------
def DecisionMakerHomeNav():
    st.sidebar.page_link("pages/00_Dec_Maker_Home.py", label="Decision Maker", icon="🧑‍🏫")


>>>>>>> Stashed changes
def ViewCourseNav():
    st.sidebar.page_link(
        "pages/05_View_Courses.py", label="View Courses", icon="📚"
    )


def UpdateLessonPlanNav():
    st.sidebar.page_link(
        "pages/06_Lesson_Plans.py", label="Update Lesson Plans", icon="🗒️"
    )

def FeedbackNav():
    st.sidebar.page_link(
        "pages/07_Assignment_Feedback.py", label="Update Assignment Feedback", icon="📝"
    )


#### ------------------------ System Admin Role ------------------------
def AdminPageNav():
    st.sidebar.page_link("pages/20_Admin_Home.py", label="System Admin", icon="🖥️")
<<<<<<< Updated upstream
    
def UpdateSystemNav():
    st.sidebar.page_link("pages/21_System_Update.py", label="Add System Update", icon="➕")

=======

def UpdateSystemNav():
    st.sidebar.page_link("pages/21_System_Update.py", label="Add System Update", icon="➕")

>>>>>>> Stashed changes
def ChangeUserRole():
    st.sidebar.page_link("pages/25_Change_Role.py", label="Change to System Admin", icon="🔄")

def DeleteCacheData():
    st.sidebar.page_link("pages/26_Delete_Cache_Data.py", label="Delete Cache Data", icon="🗑️")


#### ------------------------ Parent Role ------------------------
def ParentHomeNav():
    st.sidebar.page_link("pages/01_Parent_Home.py", label="Parent", icon="👨‍👩‍👧‍👦")
    
def GroceryNav():
    st.sidebar.page_link("pages/02_Grocery_List.py", label="Grocery Lists", icon="📋")

def TasksNav():
    st.sidebar.page_link("pages/03_Tasks.py", label="Add a Task", icon="➕")

def SleepLogsNav():
    st.sidebar.page_link("pages/04_Sleep_Logs.py", label="View Sleep Logs", icon="💤")

# --------------------------------Links Function -----------------------------------------------
def SideBarLinks(show_home=False):
    """
    This function handles adding links to the sidebar of the app based upon the logged-in user's role, which was put in the streamlit session_state object when logging in.
    """

    # add a logo to the sidebar always
    st.sidebar.image("assets/motivate-logo.png", width=300)

    # If there is no logged in user, redirect to the Home (Landing) page
    if "authenticated" not in st.session_state:
        st.session_state.authenticated = False
        st.switch_page("Home.py")

    if show_home:
        # Show the Home page link (the landing page)
        HomeNav()

    # Show the other page navigators depending on the users' role.
    if st.session_state["authenticated"]:

        # Show student pages if the user is a student role.
        if st.session_state["role"] == "student":
            StudentHomeNav()
            StudentCalNav()
            TasksNav()
            MCATNav()

        # If the user role is decision maker, show their pages
        if st.session_state["role"] == "decision_maker":
            DecisionMakerHomeNav()
            ViewCourseNav()
            UpdateLessonPlanNav()
            FeedbackNav()

        # If the user is an administrator, give them access to the administrator pages
        if st.session_state["role"] == "system_adminis":
            AdminPageNav()
            UpdateSystemNav()
            ChangeUserRole()
            DeleteCacheData()
        
         # If the user is a parent, give them access to the parent pages
        if st.session_state["role"] == "parent":
            ParentHomeNav()
            GroceryNav()
            TasksNav()
            SleepLogsNav()

    # Always show the About page at the bottom of the list of links
    AboutPageNav()

    if st.session_state["authenticated"]:
        # Always show a logout button if there is a logged in user
        if st.sidebar.button("Logout"):
            del st.session_state["role"]
            del st.session_state["authenticated"]
            st.switch_page("Home.py")