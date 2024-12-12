
# ReadMe: Project Setup Instructions

## Step 1: Download the SQL File

1. Navigate to the GitHub repository for this project.
2. Locate the SQL file named `table.sql`.
3. [Click here to download the `table.sql` file directly.](https://github.com/roth-roza/school-management-project/tree/Source-Code)

## Step 2: Create the Database and Tables

1. Open your preferred database management tool (e.g., MySQL Workbench, pgAdmin, or SQL Server Management Studio).
2. Import the downloaded `table.sql` file to create the necessary database and tables for the project.
3. Verify that the database and tables have been created successfully.

## Step 3: Configure the Connection String

1. Open the project configuration file (e.g., `appsettings.json`, `.env`, or another relevant configuration file).

2. Update the connection string with your database details. Below is an example format:

   ```json
   "ConnectionStrings": {
       "DefaultConnection": "Server=your_server;Database=your_database;User Id=your_username;Password=your_password;"
   }
   ```

   Replace the placeholders:

   - `your_server` with your database server address.
   - `your_database` with the name of the database you created.
   - `your_username` with your database username.
   - `your_password` with your database password.

3. Save the changes to the configuration file.

## Step 4: Test the Setup

1. Run the project to ensure it connects to the database correctly.
2. If any errors occur, review the connection string and database setup to resolve issues.

## Additional Notes

- Make sure your database server is running before attempting to connect.
- If you encounter permission issues, verify that the database user has sufficient privileges to access and modify the database.

For further assistance, refer to the documentation or contact the project support team.

---

## License

This project is licensed to the RUPP-M3-Group 12 under the subject Object-Oriented Analysis and Design (OOAD). Unauthorized use, modification, or distribution without permission is prohibited.
