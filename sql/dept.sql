create database dept;
use dept;
CREATE TABLE Departments ( DepartmentID int ,DepartmentName varchar(50),ManagerName varchar(50),Location varchar(50),Budget int,
constraint DepartmentID_pk primary key(DepartmentID));


CREATE TABLE Employees ( EmployeeID int ,EmployeeName varchar(50),DepartmentID INT,Position varchar(50),Salary int, constraint EmployeeID_pk primary key(EmployeeID), 
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID));
drop table Employees;

CREATE TABLE Projects ( ProjectID INT PRIMARY KEY,ProjectName VARCHAR(50),DepartmentID INT,StartDate DATE,Budget int,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID));


CREATE TABLE Tasks ( TaskID INT ,TaskName VARCHAR(50),ProjectID INT,EmployeeID INT,Deadline DATE,constraint TaskID_pk primary key(TaskID), foreign key  (ProjectID) references Projects(ProjectID),
    foreign key (EmployeeID) references Employees(EmployeeID));
    
    
    
    
    INSERT INTO Departments (DepartmentID, DepartmentName, ManagerName, Location, Budget) VALUES
(1, 'HR', 'laxmi', 'belagavi', 50000),
(2, 'IT', 'bhavya', 'bengaluru', 75000),
(3, 'Marketing', 'samarth', 'athani', 60000),
(4, 'Sales', 'swati', 'haveri', 70000),
(5, 'R&D', 'anu', 'goa', 80000),
(6, 'HR', 'lalitha', 'terdal', 20000),
(7, 'IT', 'chanagond', 'gokak', 35000),
(8, 'Marketing', 'khavya', 'mysore', 45000),
(9, 'Sales', 'tafseen', 'ram nagar', 55000),
(10, 'R&D', 'kiran', 'goa', 65000);
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerName, Location, Budget) VALUES
(11, 'HR', 'aly', 'athani', 55000),
(12, 'IT', 'karan', 'haveri', 90000),
(13, 'Marketing', 'divya', 'trdal', 45000),
(14, 'Sales', 'arjun', 'gokak', 66000),
(15, 'R&D', 'rahul', 'mysore', 22000);


INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID, Position, Salary) VALUES
(1, 'payal', 1, 'Recruiter', 55000),
(2, 'dev', 2, 'Developer', 80000),
(3, 'om', 3, 'Marketer', 65000),
(4, 'sunil', 4, 'Sales Rep', 70000),
(5, 'anika', 5, 'Researcher', 72000),
(6, 'vicky', 2, 'Systems Analyst', 85000),
(7, 'teju', 3, 'Analyst', 60000),
(8, 'jasmin', 1, 'HR Specialist', 57000),
(9, 'suprita', 4, 'Sales Manager', 90000),
(10, 'spoorti', 5, 'Engineer', 75000);


INSERT INTO Projects (ProjectID, ProjectName, DepartmentID, StartDate, Budget) VALUES
(1, 'Project Alpha', 2, '2024-01-15', 100000),
(2, 'Project Beta', 3, '2024-02-20', 120000),
(3, 'Project Gamma', 1, '2024-03-10', 60000),
(4, 'Project Delta', 4, '2024-04-05', 80000),
(5, 'Project Epsilon', 5, '2024-05-25', 95000),
(6, 'Project Zeta', 2, '2024-06-30', 110000),
(7, 'Project Eta', 3, '2024-07-15', 65000),
(8, 'Project Theta', 4, '2024-08-20', 75000),
(9, 'Project Iota', 1, '2024-09-05', 70000),
(10, 'Project Kappa', 5, '2024-10-10', 90000);


INSERT INTO Tasks (TaskID, TaskName, ProjectID, EmployeeID, Deadline) VALUES
(1, 'Design Mockups', 1, 2, '2024-02-01'),
(2, 'Develop Backend', 1, 6, '2024-03-01'),
(3, 'Market Research', 2, 3, '2024-03-15'),
(4, 'Sales Strategy', 4, 9, '2024-05-01'),
(5, 'System Upgrade', 6, 6, '2024-07-01'),
(6, 'Ad Campaign', 2, 7, '2024-04-10'),
(7, 'Product Testing', 5, 10, '2024-06-15'),
(8, 'HR Report', 3, 8, '2024-04-01'),
(9, 'Market Analysis', 7, 3, '2024-08-01'),
(10, 'New Client Onboarding', 4, 4, '2024-06-01'),
(11, 'Project Planning', 8, 4, '2024-09-01'),
(12, 'Research Analysis', 10, 5, '2024-11-01'),
(13, 'Software Design', 6, 2, '2024-08-01'),
(14, 'Product Launch', 9, 9, '2024-10-01'),
(15, 'Prototype Development', 5, 10, '2024-09-15');



select * from Departments INNER JOIN Employees on Departments.DepartmentID = Employees.EmployeeID;
select * from Departments left JOIN Employees on Departments.DepartmentID = Employees.EmployeeID;
select * from Departments right JOIN Employees on Departments.DepartmentID = Employees.EmployeeID;

select * from Employees INNER JOIN Projects on Employees.EmployeeID = Projects.ProjectID;
select * from Employees left JOIN Projects on Employees.EmployeeID = Projects.ProjectID;
select * from Employees right join Projects on Employees.EmployeeID = Projects.ProjectID;

select * from Projects INNER JOIN Tasks on Projects.ProjectID = Tasks.TaskID;
select * from Projects left JOIN Tasks on Projects.ProjectID = Tasks.TaskID;
select * from Projects right JOIN Tasks on Projects.ProjectID = Tasks.TaskID;

select * from Employees INNER JOIN Projects on Employees.EmployeeID = Projects.ProjectID left join Departments on Departments.DepartmentID = Employees.EmployeeID ;
select * from Employees INNER JOIN Projects on Employees.EmployeeID = Projects.ProjectID right join Departments on Departments.DepartmentID = Employees.EmployeeID ;
select * from Projects left JOIN Tasks on Projects.ProjectID = Tasks.TaskID right join Employees on Employees.EmployeeID = Tasks.TaskID ;
select * from Tasks right JOIN Departments on Tasks.TaskID = Departments.DepartmentID left join Projects on Projects.ProjectID = Tasks.TaskID ;

