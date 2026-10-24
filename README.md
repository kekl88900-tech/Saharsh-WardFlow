# WardFlow — Emergency Ward Triage & Resource Dispatcher

**OOP Laboratory Project**  
**Developer:** Saharsh W.  
**Project Domain:** Hospital Ward Management and Emergency Resource Allocation

---

## 1. Project Overview

WardFlow is a web-based hospital ward management and emergency resource-dispatching system developed as an **Object-Oriented Programming (OOP) Laboratory project**.

The system simulates essential hospital ward operations, including patient registration, severity-based prioritization, resource management, patient-resource assignments, emergency resource pre-emption, and activity logging.

The project demonstrates how object-oriented design principles can be applied to represent real-world entities and organize their behavior into manageable modules. It also integrates a web-based interface with Supabase, a cloud database service, to store and share application data.

WardFlow provides an academic demonstration of software design, data management, and emergency resource-allocation workflows.

## 2. Objectives

- Apply object-oriented programming concepts to a real-world-inspired problem.
- Model entities such as patients, ward resources, assignments, and emergency events.
- Organize application functionality into independent modules.
- Simulate severity-based patient prioritization.
- Demonstrate resource allocation and emergency pre-emption.
- Maintain records of supported operations and allocation changes.
- Integrate a web application with a centralized cloud database.
- Understand the relationship between application logic, data persistence, and user interfaces.

## 3. Problem Statement

Hospital ward management involves maintaining patient records, monitoring available resources, and allocating resources according to operational priorities. During emergencies, resource availability may become a critical constraint.

Managing these operations manually can make information difficult to organize and allocation changes harder to track.

WardFlow addresses this problem through an educational software prototype that centralizes patient and resource records, simulates priority-based allocation, and maintains records of relevant operations.

## 4. OOP Concepts Demonstrated

### 4.1 Classes and Objects

The system can be modeled using classes representing real-world entities, such as:

- `Patient` — represents a patient and associated details.
- `Resource` — represents a ward resource and its status.
- `Assignment` — represents a resource assigned to a patient.
- `Preemption` — represents a simulated emergency pre-emption event.
- `AuditLog` — represents a recorded application activity.

Objects of these classes represent individual patients, resources, assignments, and events.

### 4.2 Encapsulation

Encapsulation groups data and the methods that operate on it into classes. For example, patient information and related operations can be grouped within a `Patient` class.

Access modifiers can be used in a Java implementation to control access to class fields and methods.

### 4.3 Abstraction

Abstraction exposes essential operations while hiding unnecessary implementation details. For example, a resource-allocation operation can provide a simple method for assigning a resource without exposing every internal processing step.

### 4.4 Inheritance

Inheritance can be used to organize related classes under a common parent class. For example, specialized resource types or different categories of hospital personnel could extend a common base class.

*Inheritance should be considered implemented only if the corresponding class hierarchy exists in the submitted source code.*

### 4.5 Polymorphism

Polymorphism allows related objects to respond differently to the same operation. For example, different resource types could implement their own allocation or status-handling behavior through overridden methods.

*The current HTML/CSS/JavaScript and Supabase implementation should not be described as a Java inheritance or polymorphism implementation unless a Java class hierarchy is included.*

### 4.6 Data Organization

The project also demonstrates how related entities and their records can be organized into structured data models and stored in a database.

## 5. Main Features

### Patient Management
- Register fictional patient records.
- View registered patients.
- Update and remove records through supported application operations.
- Maintain patient-related information in the database.

### Severity-Based Prioritization
- Organize patients according to recorded severity or priority.
- Simulate prioritization for emergency scenarios.
- Demonstrate priority-aware resource allocation.

### Ward Resource Management
- Maintain ward resource records.
- Track resource status.
- View resources involved in assignments.
- Support resource allocation simulations.

### Patient–Resource Assignment
- Associate patients with relevant resources.
- Maintain assignment records.
- Demonstrate the management of limited resources.

### Emergency Pre-emption
- Simulate a situation where a higher-priority case requires a resource currently assigned elsewhere.
- Record supported pre-emption events.
- Demonstrate how allocation changes can be tracked.

### Activity Logging
- Maintain records of supported application activities.
- Store relevant audit information.
- Review recorded emergency pre-emption events.

### Cloud Data Persistence
- Integrate with Supabase and PostgreSQL.
- Store application records centrally.
- Allow users of the same deployed application to retrieve shared data when database access and connectivity are configured correctly.

## 6. Technology Stack

| Technology | Purpose |
|---|---|
| HTML5 | Webpage structure |
| CSS3 | User interface styling |
| JavaScript | Frontend application logic |
| Supabase | Cloud database integration and API |
| PostgreSQL | Persistent data storage |
| Git | Version control |
| GitHub | Source-code repository |
| Netlify | Frontend hosting and deployment |
| Java / OOP | Applicable to a separate Java implementation of the project's domain logic |

**Implementation note:** The current Supabase website uses HTML, CSS, and JavaScript. If the laboratory evaluation requires an actual Java OOP implementation, the relevant classes and OOP behavior must be present in the Java source code and demonstrated during the lab.

## 7. System Architecture

```text
             User / Browser
                   |
                   v
            WardFlow Frontend
              HTML / CSS
             JavaScript Logic
                   |
                   v
              Supabase API
                   |
                   v
           PostgreSQL Database
                   |
       +-----------+-----------+
       |           |           |
    Patients   Resources   Assignments
                               |
                     +---------+---------+
                     |                   |
                 Preemptions          Audit Logs
```

The frontend provides the user interface and application interactions. Supabase handles cloud database operations, while PostgreSQL stores the records.

In a separate Java-based OOP implementation, domain classes could encapsulate patient, resource, assignment, and pre-emption logic.

## 8. Database Design

The current Supabase setup uses the following tables:

| Table | Description |
|---|---|
| `patients` | Stores patient records |
| `resources` | Stores ward resource records |
| `assignments` | Stores patient-resource assignments |
| `preemptions` | Stores simulated emergency pre-emption records |
| `audit_logs` | Stores supported activity records |

The current setup uses an `id` field and a `data` JSONB field to store individual records.

## 9. Working Procedure

1. Open the WardFlow application.
2. Register a fictional patient.
3. Review the registered patient records.
4. Add or review ward resources.
5. Create or inspect patient-resource assignments.
6. Simulate an emergency involving a higher-priority patient.
7. Review the resulting pre-emption records, if generated.
8. Inspect activity logs where supported.
9. Verify that saved records appear in the Supabase database.

## 10. Installation and Execution

### Requirements

- A modern web browser.
- WardFlow project files.
- A Supabase project.
- The supplied database schema SQL file.
- Visual Studio Code or another code editor (recommended).

### Setup Steps

1. Download or clone the WardFlow repository.
2. Open the project folder.
3. Execute the supplied SQL schema in the Supabase SQL Editor.
4. Configure the Supabase project URL and publishable or `anon` key in the frontend configuration file.
5. Open `index.html` or run the frontend using a local development server.
6. Test patient registration and other supported operations.
7. Verify the saved records in the Supabase dashboard.

For additional details, refer to `README_STEP_BY_STEP.txt` if that file is included in the repository.

## 11. Learning Outcomes

Through this project, students can explore:

- Modeling real-world entities as classes and objects.
- Applying encapsulation and abstraction to domain logic.
- Understanding where inheritance and polymorphism can be used in an extended Java implementation.
- Organizing a multi-module software application.
- Designing data structures for related entities.
- Connecting a web application to a cloud database.
- Managing source code using Git and GitHub.
- Deploying a web application using Netlify.
- Understanding the importance of data integrity and database access control.

## 12. Future Enhancements

- Implement a complete Java backend using classes and interfaces.
- Apply inheritance and runtime polymorphism to resource and personnel models.
- Introduce authentication and role-based access control.
- Improve the database schema with relational columns and foreign keys.
- Update individual records instead of replacing entire tables.
- Add real-time data synchronization.
- Improve input validation and error handling.
- Add search, filtering, and dashboard analytics.
- Expand audit logging and reporting.
- Add automated tests for allocation and pre-emption logic.

## 13. Limitations

- WardFlow is an academic prototype, not a production-ready hospital system.
- The current frontend implementation is JavaScript-based rather than a Java backend.
- Database operations depend on successful connectivity and configured permissions.
- Concurrent changes may overwrite one another if the current synchronization process replaces entire datasets.
- The application has not been validated for real-world clinical use or healthcare regulatory compliance.

## 14. Conclusion

WardFlow demonstrates how a hospital ward management problem can be represented through software modules for patient management, resource allocation, prioritization, emergency pre-emption, and activity tracking.

As an OOP Laboratory project, it provides a practical domain for studying classes, objects, encapsulation, abstraction, inheritance, and polymorphism. The cloud-integrated implementation additionally demonstrates how web technologies and a centralized database can support a shared application.

## Disclaimer

This project is developed for educational and laboratory demonstration purposes only. It is not a certified medical device or a production hospital management system. Use fictional patient information only, and do not use the application for actual patient care, clinical triage, or emergency decisions.

---

**Developed by Saharsh W.**  
*Object-Oriented Programming Laboratory Project*
