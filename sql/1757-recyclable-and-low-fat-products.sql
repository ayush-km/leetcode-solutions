/*
Problem: 1757. Recyclable and Low Fat Products
Link: https://leetcode.com/problems/recyclable-and-low-fat-products/
Difficulty: Easy
Features Used:
- Engine-Agnostic
- Basic Filtering
- Simple SELECT + WHERE + AND

Approach:
      1. Use a SELECT statement to retrieve product_id from the products table.
      2. Apply a WHERE clause to filter products that are both low fat (low_fats = 'Y') and recyclable (recyclable = 'Y').
*/

select product_id from products where low_fats = 'Y' and recyclable = 'Y'