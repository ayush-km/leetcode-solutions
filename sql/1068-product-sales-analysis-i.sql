/*
Problem: 1068. Product Sales Analysis I
Link: https://leetcode.com/problems/product-sales-analysis-i/
Difficulty: Easy
Features Used:
- Engine-Agnostic
- Basic Filtering
- Simple SELECT + JOIN

Approach:
      1. Use a SELECT statement to retrieve product_name, year, and price.
      2. Perform an INNER JOIN between the Sales and Product tables on product_id.
*/

select product_name, year, price
from Sales
join Product
on Sales.product_id = Product.product_id