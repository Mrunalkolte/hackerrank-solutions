-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
-- Problem     Population Census 
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-11, 08:26 a.m.
-- ──────────────────────────────────────────────────

select sum(c.population)as total_pop from City c join Country c1 on C.CountryCode=c1.Code where c1.Continent='Asia';
