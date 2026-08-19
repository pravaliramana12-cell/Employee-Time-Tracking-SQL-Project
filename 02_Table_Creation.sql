USE EmployeeTimeTracking;
GO

CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    DepartmentID INT,
    JoiningDate DATE,
    Salary DECIMAL(10,2),

    FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID)
);

CREATE TABLE Projects
(
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    EmployeeID INT,

    FOREIGN KEY (EmployeeID)
        REFERENCES Employees(EmployeeID)
);

CREATE TABLE Attendance
(
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    AttendanceDate DATE,
    LoginTime TIME,
    LogoutTime TIME,
    Status VARCHAR(20),

    FOREIGN KEY (EmployeeID)
        REFERENCES Employees(EmployeeID)
);
