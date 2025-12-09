/*
Problem: 584. Find Customer Referee
Link: https://leetcode.com/problems/find-customer-referee/
Difficulty: Easy
Features Used:
- Engine-Agnostic
- Basic Filtering
- Simple SELECT + WHERE + OR

Approach:
      1. Use a SELECT statement to retrieve name from the Customer table.
      2. Apply a WHERE clause to filter customers whose referee_id is not 2 or is NULL.
*/

select name from Customer where (referee_id != 2) OR (referee_id IS NULL)