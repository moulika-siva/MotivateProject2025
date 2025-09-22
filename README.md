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