/*
Problem: 1683. Invalid Tweets
Link: https://leetcode.com/problems/invalid-tweets/
Difficulty: Easy
Features Used:
- SQL SERVER - LEN() function (Other SQL variants may use LENGTH())
- Basic Filtering
- Simple SELECT + WHERE + LEN()

Approach:
      1. Use a SELECT statement to retrieve tweet_id from the Tweets table.
      2. Apply a WHERE clause to filter tweets where the length of the content is strictly greater than 15.
*/

select tweet_id from Tweets where LEN(content)>15