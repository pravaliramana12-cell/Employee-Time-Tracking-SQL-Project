-- Display all employees
SELECT *
FROM Employees;

-- Display employees with their departments
SELECT
    E.EmployeeID,
    E.EmployeeName,
    D.DepartmentName,
    E.Salary
FROM Employees E
INNER JOIN Departments D
    ON E.DepartmentID = D.DepartmentID;

-- Count employees in each department
SELECT
    D.DepartmentName,
    COUNT(E.EmployeeID) AS EmployeeCount
FROM Departments D
LEFT JOIN Employees E
    ON D.DepartmentID = E.DepartmentID
GROUP BY D.DepartmentName;
