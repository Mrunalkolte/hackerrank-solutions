-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true
-- Problem     Revising Aggregations - The Count Function
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-10, 07:18 a.m.
-- Technique   aggregate-count-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the dataset by the population threshold before applying the count aggregate function to the remaining rows.
-- Interview   Before: "How would you count specific records based on a condition?" After: "I use the COUNT function combined with a WHERE clause to filter rows, resulting in O(N) time complexity where N is the number of cities in the table."
-- Pitfalls    (1) Using count(*) instead of count(ID) may include rows with null values if the schema allows them.  (2) Incorrectly using a HAVING clause instead of a WHERE clause for row-level filtering.
-- ──────────────────────────────────────────────────

select count(ID) from City where population>100000;
