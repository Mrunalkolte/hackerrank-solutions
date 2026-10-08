-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
-- Problem     Weather Observation Station 5
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-08, 07:11 a.m.
-- Technique   union-all-ordered-subqueries
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query retrieves the lexicographically first city among those with the minimum length and the lexicographically first city among those with the maximum length using two separate ordered subqueries combined via UNION ALL.
-- Interview   Before: I would use two separate queries to find the min and max lengths. After: I can combine them using UNION ALL, which runs in O(N log N) time due to sorting, ensuring the lexicographical requirement is met for ties in length.
-- Pitfalls    (1) Failing to include the city name in the ORDER BY clause causes incorrect results when multiple cities share the same minimum or maximum length.  (2) Using UNION instead of UNION ALL might remove duplicate rows if the shortest and longest city names happen to be identical.
-- ──────────────────────────────────────────────────

/*
Enter your query here.

with t AS (select min(length(city)) as min_city,max(length(city)) as max_city from station )
select min_city,length(min_city),max_city,length(max_city) from t order by min_city,max_city asc;
*/
select city,length(city) from (select city from station order by length(city),city limit 1) as shortest
UNION ALL
select city,length(city) from (select city from station order by length(city) desc,city limit 1
)as longest;
