-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
-- Problem     Average Population of Each Continent
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-12, 07:18 a.m.
-- ──────────────────────────────────────────────────

select c.Continent,floor(avg(c1.Population)) as avg_population from Country c join City c1 on c.Code=c1.CountryCode group by c.Continent;
