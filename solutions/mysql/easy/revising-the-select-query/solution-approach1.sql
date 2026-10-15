-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-- Problem     Revising the Select Query I
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-15, 08:35 a.m.
-- Technique   select-where-clause-filtering
-- Time        O(N)
-- Space       O(1)
-- Insight     The query retrieves all columns for rows in the CITY table that satisfy both the population threshold and the country code equality constraint.
-- Interview   Before: "How do I filter rows based on multiple conditions?" After: "Use the WHERE clause with AND to combine conditions. This approach runs in O(N) time, where N is the number of rows, ensuring we only return records where population exceeds 100,000 and the country code is exactly 'USA'."
-- Pitfalls    (1) Failing to use single quotes for the string literal 'USA' causes a syntax error.  (2) Using an incorrect comparison operator like >= instead of > violates the strict population threshold requirement.  (3) Omitting the AND operator results in a syntax error when combining multiple filter conditions.
-- ──────────────────────────────────────────────────

select * from city where population >100000 and countrycode='USA';
