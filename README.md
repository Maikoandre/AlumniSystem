# Alumni Management System

![Java](https://img.shields.io/badge/Java-17-blue)
![Servlet](https://img.shields.io/badge/Jakarta_Servlet-5.0-orange)
![JSP](https://img.shields.io/badge/JSP-2.3-yellowgreen)
![MySQL](https://img.shields.io/badge/MySQL-8.0-blueviolet)

A web-based application for managing alumni student records using Java Servlets and JSP.

## Features

- 🎓 **Student CRUD Operations**
  - Add new alumni records
  - Edit existing student information
  - Delete alumni entries
  - View all registered alumni
- 🖥 **Web Interface**
  - JSP pages for all operations
  - Form validation and error handling
- 🗃 **Database Integration**
  - MySQL backend storage
  - DAO pattern for data access

## Project Structure
AlumniSystem/ <br>
├── build/ # Compiled classes<br>
│ └── classes/<br>
│ └── com/AlumniSystem/<br>
│ ├── bean/ # Student entity<br>
│ └── dao/ # Data access objects<br>
└── src/<br>
└── main/<br>
├── java/ # Java source code<br>
│ └── com/AlumniSystem/<br>
│ ├── bean/ # Student model<br>
│ └── dao/ # Database operations<br>
└── webapp/ # Web resources<br>
├── *.jsp # All view templates<br>
└── WEB-INF/<br>
└── lib/ # Dependency JARs<br>

## Technical Stack

- **Backend**:
  - Java 17
  - Jakarta Servlet 5.0
  - JSP 2.3
- **Frontend**:
  - JSP with JSTL 1.2
  - Tailwind CSS
- **Database**:
  - MySQL 8.0
  - JDBC connectivity
