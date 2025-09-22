# Spring 2025 CS 3200 Project Template Repository

This repo is a template for your semester project. It includes most of the infrastructure setup (containers), sample databases, and example UI pages. Explore it fully and ask questions!

## Prerequisites

- A GitHub Account
- A terminal-based git client or GUI Git client such as GitHub Desktop or the Git plugin for VSCode.
- VSCode with the Python Plugin
- A distribution of Python running on your laptop. The distro supported by the course is Anaconda or Miniconda.

## Current Project Components

Currently, there are three major components that will each run in their own Docker Containers:

- Streamlit App in the `./app` directory
- Flask REST api in the `./api` directory
- MySQL Database that will be initialized with SQL script files from the `./database-files` directory

## Suggestion for Learning the Project Code Base

If you are not familiar with web app development, this code base might be confusing. But don't worry, it's not that bad. Here are some suggestions for learning the code base:

1. Have two versions of the template repo - one for you to individually explore and lear and another for the team's project implementation.
1. Start by exploring the `./app` directory. This is where the Streamlit app is located. The Streamlit app is a Python-based web app that is used to interact with the user. It's a great way to build a simple web app without having to learn a lot of web development.
1. Next, explore the `./api` directory. This is where the Flask REST API is located. The REST API is used to interact with the database and perform other server-side tasks.
1. Finally, explore the `./database-files` directory. This is where the SQL scripts are located that will be used to initialize the MySQL database.

### Setting Up Your Personal Repo

1. In GitHub, click the **fork** button in the upper right corner of the repo screen.
1. When prompted, give the new repo a unique name, perhaps including your last name and the word 'personal'.
1. Once the fork has been created, clone YOUR forked version of the repo to your computer.
1. Set up the `.env` file in the `api` folder based on the `.env.template` file.
1. For running the testing containers (for your personal repo), you will tell `docker compose` to use a different configuration file named `docker-compose-testing.yaml`.
   1. `docker compose -f docker-compose-testing.yaml up -d` to start all the containers in the background
   1. `docker compose -f docker-compose-testing.yaml down` to shutdown and delete the containers
   1. `docker compose -f docker-compose-testing.yaml up db -d` only start the database container (replace db with api or app for the other two services as needed)
   1. `docker compose -f docker-compose-testing.yaml stop` to "turn off" the containers but not delete them.

### Setting Up Your Team's Repo

**Before you start**: As a team, one person needs to assume the role of _Team Project Repo Owner_.

1. The Team Project Repo Owner needs to fork this template repo into their own GitHub account **and give the repo a name consistent with your project's name**. If you're worried that the repo is public, don't. Every team is doing a different project.
1. In the newly forked team repo, the Team Project Repo Owner should go to the **Settings** tab, choose **Collaborators and Teams** on the left-side panel. Add each of your team members to the repository with Write access.

**Remaining Team Members**

1. Each of the other team members will receive an invitation to join. Obviously accept the invite.
1. Once that process is complete, each team member, including the repo owner, should clone the Team's Repo to their local machines (in a different location your Personal Project Repo).
1. Set up the `.env` file in the `api` folder based on the `.env.template` file.
1. For running the testing containers (for your team's repo):
   1. `docker compose up -d` to start all the containers in the background
   1. `docker compose down` to shutdown and delete the containers
   1. `docker compose up db -d` only start the database container (replace db with api or app for the other two services as needed)
   1. `docker compose stop` to "turn off" the containers but not delete them.

**Note:** You can also use the Docker Desktop GUI to start and stop the containers after the first initial run.

## Handling User Role Access and Control

In most applications, when a user logs in, they assume a particular role. For instance, when one logs in to a stock price prediction app, they may be a single investor, a portfolio manager, or a corporate executive (of a publicly traded company). Each of those _roles_ will likely present some similar features as well as some different features when compared to the other roles. So, how do you accomplish this in Streamlit? This is sometimes called Role-based Access Control, or **RBAC** for short.

The code in this project demonstrates how to implement a simple RBAC system in Streamlit but without actually using user authentication (usernames and passwords). The Streamlit pages from the original template repo are split up among 4 roles - Student, Decision Maker, System Administrator, and Parent role (this is used for any sort of system tasks such as re-training ML model, etc.). It also demonstrates how to deploy an ML model.

Wrapping your head around this will take a little time and exploration of this code base. Some highlights are below.

### Getting Started with the RBAC

1. We need to turn off the standard panel of links on the left side of the Streamlit app. This is done through the `app/src/.streamlit/config.toml` file. So check that out. We are turning it off so we can control directly what links are shown.
1. Then I created a new python module in `app/src/modules/nav.py`. When you look at the file, you will se that there are functions for basically each page of the application. The `st.sidebar.page_link(...)` adds a single link to the sidebar. We have a separate function for each page so that we can organize the links/pages by role.
1. Next, check out the `app/src/Home.py` file. Notice that there are 4 buttons added to the page and when one is clicked, it redirects via `st.switch_page(...)` to that Roles Home page in `app/src/pages`. But before the redirect, I set a few different variables in the Streamlit `session_state` object to track role, first name of the user, and that the user is now authenticated.
1. Notice near the top of `app/src/Home.py` and all other pages, there is a call to `SideBarLinks(...)` from the `app/src/nav.py` module. This is the function that will use the role set in `session_state` to determine what links to show the user in the sidebar.
1. The pages are organized by Role. Pages that start with a `0` are related to the _Parent_ role. Pages that start with a `1` are related to the _Decision Maker_ role. Pages pages that start with a `2` are related to the _System Administrator_ role. And, pages that start with a `3` are related to the _Student_ role.

# Motivate - CS 3200 Spring 2025

> A web application that allows organization of tasks or responsibilities for different types of users, such as educators, parents, students, and administrators.

## 🚀 Quick Start

### Prerequisites

Before you begin, ensure you have the following installed:
- **Git** - [Download Git](https://git-scm.com/downloads)
- **Docker Desktop** - [Download Docker](https://www.docker.com/products/docker-desktop/)
- **Python 3.8+** - We recommend [Anaconda](https://www.anaconda.com/products/distribution) or [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
- **VSCode** (recommended) with Python extension

### Installation & Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/[your-username]/[your-repo-name].git
   cd [your-repo-name]
   ```

2. **Set up environment variables**
   ```bash
   cd api
   cp .env.template .env
   # Edit .env with your specific configuration values
   ```

3. **Start the application**
   ```bash
   # For development
   docker compose -f docker-compose-testing.yaml up -d
   
   # For production
   docker compose up -d
   ```

4. **Access the application**
   - **Web App**: http://localhost:8501
   - **API Documentation**: http://localhost:4000/docs
   - **Database**: localhost:3306

## 🏗️ Architecture

This application consists of three main components:

| Component | Technology | Port | Description |
|-----------|------------|------|-------------|
| **Frontend** | Streamlit | 8501 | User interface and data visualization |
| **Backend API** | Flask | 4000 | REST API for data operations |
| **Database** | MySQL | 3306 | Data storage and management |

## 🎭 User Roles & Features

Our application implements Role-Based Access Control (RBAC) with four distinct user roles:

### 👩‍🎓 Student Role
- A calendar to visualize events
- A page to make and see student tasks
- A progress tracker to see which tasks have been done

### 📊 Decision Maker Role (Professor-like role)
- Viewing courses to teach 
- Updating lesson plans
- Giving feedback on various assignments

### ⚙️ System Administrator Role
- Adding any System Updates
- Updating Users to System Administrators
- Deleting old Cache Data

### 🔧 Parent Role
- Making lists, like for groceries
- Creating and viewing various tasks
- Visualizing Sleep Logs for infants and toddlers

## 🛠️ Development

### Project Structure
```
├── app/                    # Streamlit frontend application
│   ├── src/
│   │   ├── pages/         # Individual app pages organized by role
│   │   ├── modules/       # Shared Python modules
│   │   └── .streamlit/    # Streamlit configuration
├── api/                   # Flask REST API
│   ├── backend/          # API route definitions
│   └── .env.template     # Environment variables template
├── database-files/       # SQL initialization scripts
└── docker-compose*.yaml # Docker container orchestration
```

### Useful Docker Commands

```bash
# Start all services
docker compose up -d

# Start specific service
docker compose up [db|api|app] -d

# View logs
docker compose logs [service-name]

# Stop services (keeps containers)
docker compose stop

# Stop and remove containers
docker compose down

# Rebuild containers after code changes
docker compose up --build
```

### Working with the Database

The database is automatically initialized with sample data from the `database-files/` directory. To reset the database:

```bash
docker compose down
docker volume rm [project-name]_db-data
docker compose up -d
```

## 🤝 Team

- **[Moulika Sivalenka]** - [Worked on creating the database and design for the system administrator]
- **[Anjali Silina]** - [Worked on creating the database and design for the decision maker]
- **[Era Shah]** - [[Worked on creating the database and design for the student]
- **[Saisrinidhi Datla]** - [Worked on creating the database and design for the parent]
- **[Ria Gersappe]** - [Worked on creating the database and design for the parent and organized the UI/UX of the app]

## 📝 API Documentation

Once the application is running, visit http://localhost:4000/docs for interactive API documentation.

## 🐛 Troubleshooting

### Common Issues

**Port already in use error**
```bash
# Find and kill process using the port
lsof -ti:8501 | xargs kill -9
```

**Database connection issues**
- Ensure the `.env` file is properly configured
- Verify Docker containers are running: `docker compose ps`
- Check container logs: `docker compose logs db`

**Container build failures**
- Try rebuilding with: `docker compose build --no-cache`
- Ensure you have sufficient disk space

## 📄 License

This project is developed as part of CS 3200 coursework.

---

## 🔧 For Developers

### Setting Up Personal Development Environment

1. **Fork this repository** to your personal GitHub account
2. **Clone your fork** (not the original template)
3. **Use the testing configuration** for development:
   ```bash
   docker compose -f docker-compose-testing.yaml up -d
   ```

### Contributing

1. Create a feature branch: `git checkout -b feature-name`
2. Make your changes and test thoroughly
3. Commit with descriptive messages: `git commit -m "Add feature: description"`
4. Push to your fork and create a Pull Request

---

*Built with ❤️ for CS 3200 - Database Design*