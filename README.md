📘 SQL Internship – Task 8: Stored Procedures & Functions

📌 Objective

This task focuses on learning reusable SQL blocks by implementing Stored Procedures and Functions in a School Management System database.

🛠️ Tools & Technologies

MySQL 8.x – Database Management System

MySQL Workbench – Database design & query execution

SQL – DDL, DML, Stored Procedures, Functions

📁 Database Structure

Tables & Fields

students

StudentID (INT, PK, AUTO_INCREMENT)

Name (VARCHAR)

DateOfBirth (DATE)

teachers

TeacherID (INT, PK, AUTO_INCREMENT)

Name (VARCHAR)

SubjectSpecialization (VARCHAR)

classes

ClassID (INT, PK, AUTO_INCREMENT)

ClassName (VARCHAR)

TeacherID (INT, FK → teachers.TeacherID)

enrollments

EnrollmentID (INT, PK, AUTO_INCREMENT)

StudentID (INT, FK → students.StudentID)

ClassID (INT, FK → classes.ClassID)

EnrollmentDate (DATE)

🔗 Relationships

teachers → classes: One teacher can teach many classes.

classes → enrollments: One class can have many students.

students → enrollments: One student can enroll in many classes (many-to-many via enrollments).

⚙️ Implementations

Stored Function: Calculates the total number of classes a student is enrolled in.

Stored Procedure: Enrolls a student into a class, with validation to prevent duplicate enrollments.

📊 Deliverables

SQL script containing one Stored Procedure and one Stored Function.

Output screenshots showing:

Function returning total classes per student.

Procedure enrolling a student and handling duplicates.

📌 Summary

Learned how to create Stored Procedures and Functions to make SQL code reusable and modular.
Practiced using parameters, conditional logic, and testing stored routines in a School Management System database.
