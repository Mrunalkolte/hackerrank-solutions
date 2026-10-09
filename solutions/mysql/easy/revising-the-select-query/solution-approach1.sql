-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-- Problem     Revising the Select Query I
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-09, 07:02 a.m.
-- Technique   select-where-clause-filtering
-- Time        O(N)
-- Space       O(1)
-- Insight     The query retrieves all columns for rows in the CITY table that satisfy both the population threshold and the country code equality constraint.
-- Interview   Before: "How would you filter rows based on multiple criteria?" After: "I use the WHERE clause with AND to enforce both conditions, resulting in O(N) time complexity where N is the number of rows in the table."
-- Pitfalls    (1) Failing to use the correct case-sensitive string literal 'USA' for the CountryCode column.  (2) Using an incorrect comparison operator instead of the strictly greater than operator required for the population threshold.
-- ──────────────────────────────────────────────────

select * from city where population >100000 and countrycode='USA';
