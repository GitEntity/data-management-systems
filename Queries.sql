-- Query 1 
/*SELECT AVG(Salary) AS Average_Salary
FROM Employees E, Departments D
WHERE E.Department = D.DepartmentID;*/

-- Query 2
/*SELECT *
FROM Employees
WHERE Salary >
(
	SELECT AVG(Salary)
	FROM Employees
);*/

-- Query 3
/*SELECT *
FROM Employees AS E
WHERE Salary >
(
	SELECT AVG(Salary)
	FROM Employees E1
	WHERE E.Department = E1.Department
);*/

-- Query 4
/*SELECT EmployeeName
FROM Employees AS E
WHERE E.Department IN
(
	SELECT E1.Department
	FROM Employees E1, Departments D1
	WHERE E1.Department = D1.DepartmentID
	AND E1.EmployeeName LIKE '%Dave McCain%'
)
OR E.Salary >=
(
	SELECT E2.Salary
	FROM Employees AS E2
	WHERE EmployeeName LIKE '%Mary West%'
);*/

-- Query 5
/*SELECT *
FROM Employees E
WHERE EXISTS
(
	SELECT DepartmentName
	FROM Departments D
	WHERE D.DepartmentName LIKE '%Software Development%'
	AND E.Department = D.DepartmentID
);*/

-- Query 6
/*SELECT EmployeeName, Telephone
FROM Employees E
INNER JOIN Departments D
ON E.Department = D.DepartmentID;*/


-- Query 7
/*SELECT D.DepartmentName, E.*
FROM Employees E
RIGHT JOIN Departments D
ON E.Department = D.DepartmentID;*/

-- Query 8
/*SELECT E.EmployeeName, E.Salary
FROM Employees E
WHERE E.Department = 1
UNION
SELECT E1.EmployeeName, E1.Salary
FROM Employees E1
WHERE E1.Department = 2;*/
