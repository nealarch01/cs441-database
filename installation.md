# Instructions to setup a PostgresSQL database
1. Download PostgresSQL
2. After installing, launch the application
    - In the application, click on the "+" button to create a new server instance
    - Create a new server with a port number > 1024. (I used 2001)
3. Then, create a database called "development" in the server instance.
    - Access your terminal and type ```psql -p{port_number}``` to access your server. In my case, I used ```psql -p2001```
    - Then, create the database by using: ```CREATE DATABASE development;```
    - Exit using ```quit;```
3. Finally, we will run our SQL script to insert our database.
    - Go to your terminal and use the command: ```psql -p{port_number} -d {database_name} -f {script_name}```
    - Example: ```psql -p2001 -d development -f db-init.sql```


# Resources:
https://stackoverflow.com/questions/9736085/run-a-postgresql-sql-file-using-command-line-arguments
