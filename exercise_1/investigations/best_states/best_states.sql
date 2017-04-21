SELECT AVG(score) OVER (PARTITION BY state) AS avg_score, state
FROM effective_care_parquet 
WHERE score > 0 AND score <= 100 
GROUP BY state, score  
ORDER BY avg_score DESC 
LIMIT 100;
