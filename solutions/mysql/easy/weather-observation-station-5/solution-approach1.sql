-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
-- Problem     Weather Observation Station 5
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-08, 07:11 a.m.
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
