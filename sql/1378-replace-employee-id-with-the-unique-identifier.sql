/*
Problem: 1378-replace-employee-id-with-the-unique-identifier
Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
Difficulty: Easy
Features Used:
- FULL OUTER JOIN is not supported in MySQL, but we can simulate it using LEFT JOIN and RIGHT JOIN with UNION.
- Basic Filtering
- Simple SELECT + FULL OUTER JOIN

Approach:
      1. Use a SELECT statement to retrieve name from the Customer table.
      2. Apply a WHERE clause to filter customers whose referee_id is not 2 or is NULL.
*/

select unique_id, name
from Employees
full join EmployeeUNI
on Employees.id = EmployeeUNI.id