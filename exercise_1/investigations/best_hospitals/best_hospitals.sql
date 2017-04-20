SELECT  AVG(score) OVER (PARTITION BY provider_id) AS avg_score, provider_id, hospital_name 
FROM effective_care_parquet 
WHERE score > 0 AND score <= 100 
GROUP BY provider_id, hospital_name, score 
ORDER BY avg_score DESC 
LIMIT 10;

