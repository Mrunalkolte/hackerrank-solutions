-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true
-- Problem     Japanese Cities' Names
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-16, 07:08 a.m.
-- Technique   simple-select-where-clause
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters the result set by applying a strict equality condition on the COUNTRYCODE column to isolate records matching the specified Japanese country code.
-- Interview   Before: "How would you retrieve specific records from a database table?" After: "I would use a SELECT statement with a WHERE clause to filter rows. This approach has O(N) time complexity, where N is the number of rows in the CITY table, ensuring we only return names where the COUNTRYCODE is 'JPN'."
-- Pitfalls    (1) Failing to use single quotes for the string literal 'JPN' will cause a syntax error in SQL.  (2) Assuming the COUNTRYCODE column is case-insensitive might lead to missing records if the database collation is binary.
-- ──────────────────────────────────────────────────

select name from City where Countrycode='JPN';




























































