# Staff-Management-System
Introduction to Software Development Assignment (UTS)

Group Project: IoTBay website (sells IoT gadgets online)
Each group member are to develop one component/part of the project. I was assigned the Staff Management System to work on for 2 weeks.

- Implemented OOP Concepts
- Implemented MVC Model 
- Used JSP to create the user interface
- Used Java to code the Model and Controller
- Used Java Servlets for the Controller
- Oracle SQL used to create and interact with the database
- Database designed to obey Third Normal Form (3NF)
- Glassfish server used. 
- System developed on NetBeans. 
- Validator class to validate input entered adopts a valid pattern. 
- Bootstrap 5.1 is used to decorate the site and enable responsiveness (UI isn't exactly beautifully decorated but it's minimalistic)

To see the Behind-The-Scenes for my Staff Management System:
- build/web/StaffInfo/... (for the UI design)
- src/java/controller/staffinfo/... (for the Java Servlets)
- src/java/controller/Validator.java (for the validator class)
- src/java/dao/StaffInfoManager.java (for the DB SQL operations)
- src/java/model/Staff.java (for the Staff application logic)

Also, do checkout the:
- src/java/dao/DBConnector.java (to see how we enabled the interaction with the database)
- build/web/WEB-INF/web.xml (for how I enabled access to the Servlets using servlet mappings)

--------------------------------------------------------

Before running the project, please run the following sql files: 03-G25/web/db/createTables.sql, 03-G25/web/db/insertTables.sql

At the main menu, click on Staff Login to access the Staff Management System. 

Credentials: 
    Email: jarettthelegend@gmail.com
    Password: FortniteGamer$1233 (I didn't choose this email & password...)

Features:
- Admin Login
- Staff Login
- Individual Staff Record Operations (Add, Delete, Update, View)
- View List of Staff Records
- Search for Staff Records
- No Multiple Login to the Same Account at Once
- Includes a Validator to validate input 

--------------------------------------------------------
