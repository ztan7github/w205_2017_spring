DROP TABLE hospital_scores;
CREATE TABLE hospital_scores AS 
SELECT AVG(score) OVER (PARTITION BY provider_id) AS avg_score, provider_id, hospital_name 
FROM effective_care_parquet 
WHERE score > 0 AND score <= 100 
GROUP BY provider_id, hospital_name, score 
ORDER BY avg_score DESC;

DROP TABLE hospital_patient;
CREATE TABLE hospital_patient AS
SELECT h.provider_id, ROUND(h.avg_score, 1), s.hcahps_base_score 
FROM hospital_scores h, surveys_responses s 
WHERE h.provider_id = s.provider_number AND s.hcahps_base_score > 0;
