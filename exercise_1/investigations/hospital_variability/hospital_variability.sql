SELECT STDDEV_POP(score) OVER (PARTITION BY provider_id) AS stddev_score, provider_id, measure_name 
FROM effective_care_parquet 
WHERE score > 0 AND score <= 100 
GROUP BY provider_id, measure_name, score 
ORDER BY stddev_score DESC 
LIMIT 10;
