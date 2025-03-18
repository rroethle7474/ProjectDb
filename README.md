# ProjectDb# ProjectDb

## Overview
ProjectDb is a SQL database designed to manage and store data for the following projects (combined to save money since they are hosted within Azure SQL

1. GiftDb: https://github.com/rroethle7474/ProjectDb/tree/main/Tables
	Database tables for (https://github.com/rroethle7474/gift-web) & https://github.com/rroethle7474/gift-api ).
	Run Initial Script to pre-popluate status tables: https://github.com/rroethle7474/ProjectDb/blob/main/Scripts/GiftDb-InitialMigration.sql
2. Social Media Detox: https://github.com/rroethle7474/ProjectDb/tree/main/dbo/Tables
	Database tables for (https://github.com/rroethle7474/DopamineDetoxAPI) & https://github.com/rroethle7474/DopamineDetoxFunction)
	Run Initial Script to pre-popluate tables: https://github.com/rroethle7474/ProjectDb/blob/main/Scripts/SMD-InitialMigration.sql

## Overview
This project is designed to manage and automate various database operations, including the initial setup and migration of database schemas and data. The project includes SQL scripts for creating necessary tables, inserting initial data, and setting up email templates.

## Prerequisites
- Visual Studio 2022
- SQL Server Management Studio (SSMS) or any other SQL client
- Access to a SQL Server database

## Getting Started

### Setting Up the Project
1. Clone the repository to your local machine.
2. Open the solution in Visual Studio 2022.

### Running Initial Migration Scripts
To set up the initial database schema and data, you need to run the provided SQL scripts.

#### Steps to Run SQL Scripts in Visual Studio
1. Open Visual Studio 2022.
2. In the Solution Explorer, navigate to the `Scripts` folder.
3. Right-click on `SMD-InitialMigration.sql` and select `Open With...` > `SQL Server Object Explorer`.
4. Connect to your SQL Server instance.
5. Right-click on the connected database and select `New Query`.
6. Copy the contents of `SMD-InitialMigration.sql` into the new query window.
7. Execute the script by clicking the `Execute` button or pressing `F5`.

Repeat the above steps for `GiftDb-InitialMigration.sql`.

### Important Scripts
- **SMD-InitialMigration.sql**: This script sets up the initial database schema and inserts initial data, including content types, learn more details, and email templates.
- **GiftDb-InitialMigration.sql**: This script sets up additional database schema and data specific to the GiftDb.

### Additional Information
- Ensure that the database connection string in your application configuration file points to the correct SQL Server instance.
- Review the inserted data in the tables to ensure everything is set up correctly.

## Contributing
If you are a new developer joining the project, please follow the steps above to set up your local environment. For any issues or questions, feel free to reach out to the project maintainer.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.
   - **Description**: Stores comments made by users on specific tasks, including the date and the user who made the comment.

### Relationships
- **Users to Projects**: One-to-Many (One user can own multiple projects)
- **Projects to Tasks**: One-to-Many (One project can have multiple tasks)
- **Tasks to Comments**: One-to-Many (One task can have multiple comments)
- **Users to Comments**: One-to-Many (One user can make multiple comments)

## Getting Started
To get started with ProjectDb, follow these steps:

1. **Clone the repository**:
