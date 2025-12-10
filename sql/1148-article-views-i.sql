/*
Problem: 1148. Article Views I
Link: https://leetcode.com/problems/article-views-i/
Difficulty: Easy
Features Used:
- Engine-Agnostic
- Basic Filtering
- Simple SELECT + WHERE + DISTINCT

Approach:
      1. Use a SELECT statement to retrieve distinct author_id values from the Views table.
      2. Apply a WHERE clause to filter records where author_id is equal to viewer_id.
      3. Order the results in ascending order by author_id.
*/

select distinct author_id as id from Views where author_id = viewer_id  order by id asc