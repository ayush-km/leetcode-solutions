/*
Problem: 1378-replace-employee-id-with-the-unique-identifier
Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
Difficulty: Easy
Features Used:
- Engine-agnostic
- Basic Filtering
- Simple SELECT + LEFT JOIN

Approach:
      1. Use a LEFT JOIN to combine the Employees table with the EmployeeUNI table based on the matching id.
      2. Select the unique_id from the EmployeeUNI table and the name from the Employees table.
*/

select unique_id, name
from Employees
left join EmployeeUNI
on Employees.id = EmployeeUNI.id