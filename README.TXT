Group 3 : Name checking system

Member   :  65160033 Mr. Piriya Racham
            65160048 Mr. Nathawat Suwannarin
            65160049 Miss Narissara Lam-on
            65160139 Mr. Prapinvit Sanamontree
            65160286 Mr. Suwat Punkhiew
            65160401 Mr. Phuwanet Koetnet

B.Project detailed
        This project trying to implement the name checking system in faculty of Informatics Burapha University, by using relation database management system.
    We using Sqlite3 as our database management system. This project has two main section, first is the name checking system of class attendance to check student and 
    professor who attend the class. Second is the work attendance system to check the employee and professor who attend the daily work.
        The first section revolves around the tracking of class attendance, ensuring a seamless and accurate record of students and professors present in each session. 
    This system serves as a cornerstone for fostering a transparent and accountable academic environment.
    In the second section, the focus shifts to the Work Attendance System, a mechanism designed to monitor the daily engagements of both employees and professors. 
    This holistic approach ensures that commitment and dedication are not only acknowledged but also systematically recorded. By leveraging the power of a relational database, 
        On the positive side, the name checking system excels in enhancing the accuracy and reliability of attendance records. 
    Its meticulous tracking of class attendance and daily work commitments not only streamlines administrative processes but also cultivates a culture of accountability among students, 
    professors, and employees.However, with these advantages Therefore, there are some considerations as well. the complexity of the system while providing detailed insights.
    This can pose challenges in terms of user acceptance and accurate data entry.
#4
what if question
    1.What if there's a need to meticulously track class attendance?
    The SQLite3 database schema addresses this by providing a structured framework for creating tables like ClassAttendance and StudentAttendance.
    These tables meticulously record attendance details, ensuring an accurate and accessible record of who attended each class session.

    2.What if personalized insights are required for early intervention with students facing attendance challenges?
    The system incorporates triggers and virtual columns, allowing for the automatic generation of student email addresses and facilitating personalized communication. 
    This not only streamlines administrative processes but also enables timely interventions for students in need.

    3.What if there's a requirement for a transparent and verifiable account of daily work commitments for employees and professors?
    The project addresses this need through the WorkAttendance table, which records daily work engagements, including check-in and check-out times for both employees and professors.

    4.What if changes in academic or professional processes occur?
    The relational database design ensures flexibility, allowing for updates and adaptations to accommodate changes in processes. 
    This mitigates potential disruptions and ensures the system remains aligned with evolving requirements.

C.HOW TO USE THIS CODE
    - After unzip file or clone this project to your computer.
    - You should install sqlite3.exe to your computer, you can download it from https://www.sqlite.org/download.html (required SQLite version 3.43.2 or higher)
    - Run terminal,cmd or third party program and change directory to ./Database-Project
    - Run './sqlite3.exe [your database or ./mydatabase.db]'.
    - Use '.read setup.txt' for insert example data.
    #WARNING#
    If you .read setup.txt again it will error so if you want to .read setup.txt again you should create a new file to .read it.
    Or you can delete old files. Then create a new file with the same name and .read setup.txt to get the Schema table to view.
    ###################
    Try using the query command from query1.txt  query2.txt query3.txt query4.txt query5.txt in the ./Database-Project/What_if_query directory.
    By .read ./What_if_query/['query....txt']

D.Attribute detail
    1.[WorkAttendance.WorkAttendance_Check_In,WorkAttendance.WorkAttendance_Check_Out,StudentAttendance.Student_Check,ClassAttendance.Professor_Check] 
    => Attendance is to verify that the Student,Professor,Employee has been attendance.If attendance, it will have a value of 1,if it will dont Attendance a value of 0.

    2.[Professor.Professor_Salary,Employee.Employee_Salary] 
    => The currency of all entities from the Salary is baht only.

    3.[StudentEmail.Student_Email,ProfessorEmail.Professor_Email,EmployeeEmail.Employee_Email]
    =>the trigger ProfessorEmail.Professor_Email,EmployeeEmail.Employee_Email automatically generates
    Except the trigger StudentEmail_AutoGenerate automatically generates two email addresses for each student using a predefined format.
    This is a non-obvious attribute as it demonstrates the use of triggers for automated data generation.ฺgo.buu.ac.th,buu.ac.th,informatics.buu.ac.th belonging to the university
    (Some people have emails that are not from the university.)

    These attributes enhance the usability and readability of the database while offering automation and convenience in certain scenarios.
    They contribute to a more user-friendly and efficient system for managing attendance and related information.

git hub respository link : https://github.com/FreshGo01/Database-Project.git