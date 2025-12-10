/*
Problem: 595. Big Countries
Link: https://leetcode.com/problems/big-countries/
Difficulty: Easy
Features Used:
- Engine-Agnostic
- Basic Filtering
- Simple SELECT + WHERE + OR

Approach:
      1. Use a SELECT statement to retrieve name, population, and area from the World table.
      2. Apply a WHERE clause to filter countries with area greater than or equal to 3,000,000 or population greater than or equal to 25,000,000.
*/

select  name, population, area from World where area>=3000000 OR population>=25000000