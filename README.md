# ProjectDb# ProjectDb

## Overview
ProjectDb is a SQL database designed to manage and store data for [Your Project Name]. This database is structured to efficiently handle various types of data and relationships between them, ensuring data integrity and performance.

## Database Structure
The database consists of several tables, each serving a specific purpose. Below is a brief description of the key tables and their relationships:

### Tables

1. **Users**
   - **Columns**: `UserId` (Primary Key), `Username`, `Email`, `PasswordHash`, `CreatedDate`
   - **Description**: Stores user information including login credentials and account creation date.

2. **Projects**
   - **Columns**: `ProjectId` (Primary Key), `ProjectName`, `Description`, `StartDate`, `EndDate`, `OwnerId` (Foreign Key referencing Users)
   - **Description**: Contains details about projects, including their timeline and the user who owns the project.

3. **Tasks**
   - **Columns**: `TaskId` (Primary Key), `TaskName`, `Description`, `Status`, `DueDate`, `ProjectId` (Foreign Key referencing Projects)
   - **Description**: Manages tasks associated with projects, tracking their status and deadlines.

4. **Comments**
   - **Columns**: `CommentId` (Primary Key), `Content`, `CreatedDate`, `UserId` (Foreign Key referencing Users), `TaskId` (Foreign Key referencing Tasks)
   - **Description**: Stores comments made by users on specific tasks, including the date and the user who made the comment.

### Relationships
- **Users to Projects**: One-to-Many (One user can own multiple projects)
- **Projects to Tasks**: One-to-Many (One project can have multiple tasks)
- **Tasks to Comments**: One-to-Many (One task can have multiple comments)
- **Users to Comments**: One-to-Many (One user can make multiple comments)

## Getting Started
To get started with ProjectDb, follow these steps:

1. **Clone the repository**:
