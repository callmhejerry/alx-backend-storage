-- a SQL script that ranks country origins of bands,
-- ordered by the number of (non-unique) fans
SELECT origin, nb_fans_sum AS total_fans
FROM (
  SELECT origin, SUM(nb_fans) AS nb_fans_sum
  FROM metal_bands
  GROUP BY origin
) AS ranked_countries
ORDER BY total_fans DESC;
