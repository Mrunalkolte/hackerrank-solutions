-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
-- Problem     Average Population of Each Continent
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-12, 07:18 a.m.
-- Technique   inner-join-group-by-aggregation
-- Time        O(N + M)
-- Space       O(K)
-- Insight     The query performs an inner join between the Country and City tables on matching country codes, then groups the resulting rows by continent to calculate the floor of the average population.
-- Interview   Before: "How would you aggregate data across two related tables?" After: "I join the tables on the foreign key, group by the target attribute, and apply the floor function to the average. This runs in O(N + M) time, where N and M are the sizes of the tables."
-- Pitfalls    (1) Using round() instead of floor() violates the requirement to round down to the nearest integer.  (2) Grouping by the wrong column or failing to join on the correct matching key columns will produce incorrect results.  (3) Omitting the group by clause will cause an aggregation error in standard SQL modes.
-- ──────────────────────────────────────────────────

select c.Continent,floor(avg(c1.Population)) as avg_population from Country c join City c1 on c.Code=c1.CountryCode group by c.Continent;
