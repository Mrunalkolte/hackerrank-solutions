-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/select-by-id/problem?isFullScreen=true
-- Problem     Select By ID
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-14, 07:07 a.m.
-- Technique   sql-select-where-clause
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the CITY table by applying an equality constraint on the ID column to retrieve all associated attributes.
-- Interview   Before: "How do I fetch a specific record by its primary key?" After: "Use the SELECT * FROM table WHERE ID = value syntax. This performs an O(N) linear scan unless the ID column is indexed, which would reduce the complexity to O(log N) or O(1)."
-- Pitfalls    (1) Failing to use the correct table name CITY as specified in the schema.  (2) Incorrectly assuming the ID column is a string rather than an integer, which may cause implicit type conversion issues.
-- ──────────────────────────────────────────────────

select * from City where ID=1661;
