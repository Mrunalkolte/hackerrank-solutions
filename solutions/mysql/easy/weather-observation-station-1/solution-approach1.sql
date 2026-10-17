-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-1/problem?isFullScreen=true
-- Problem     Weather Observation Station 1
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-17, 07:21 a.m.
-- Technique   basic-select-projection
-- Time        O(N)
-- Space       O(N)
-- Insight     The query performs a standard projection of two specific columns from the entire STATION table without applying any filtering or sorting criteria.
-- Interview   Before: "How would you retrieve specific columns from a database table?" After: "I would use the SELECT statement followed by the column names. This operation has O(N) time complexity, where N is the number of rows in the STATION table, as it must scan every record to return the requested CITY and STATE values."
-- Pitfalls    (1) Failing to include both CITY and STATE columns as explicitly required by the problem statement.  (2) Assuming the output requires specific ordering when the problem statement does not define a sort order.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
select city ,State from Station ;
