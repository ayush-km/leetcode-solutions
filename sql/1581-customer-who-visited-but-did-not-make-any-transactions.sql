/*
Problem: 1581. Customer Who Visited but Did Not Make Any Transactions
Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
Difficulty: Easy
Features Used:
- Engine-Agnostic
- Basic Filtering
- Simple SELECT + LEFT JOIN

Approach:
      1. Use a SELECT statement to retrieve customer_id and the count of visits without transactions.
      2. Perform a LEFT JOIN between the Visits and Transactions tables on visit_id.
      3. Filter the results to include only those visits that did not have a corresponding transaction.
      4. Group the results by customer_id.
*/


select v.customer_id, COUNT(v.visit_id) as count_no_trans
from Visits v
left join Transactions t
on v.visit_id = t.visit_id
where t.visit_id IS NULL
group by v.customer_id