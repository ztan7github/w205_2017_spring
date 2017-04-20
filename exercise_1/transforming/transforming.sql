DROP TABLE hospitals_parquet;
CREATE TABLE hospitals_parquet
AS SELECT *
FROM hospitals;


DROP TABLE effective_care_parquet;
CREATE TABLE effective_care_parquet 
AS SELECT provider_id, 
	hospital_name, 
	score,
	state 
FROM effective_care;

ALTER TABLE effective_care_parquet CHANGE score score INT;


DROP TABLE readmissions_parquet;
CREATE TABLE readmissions_parquet 
AS SELECT * 
FROM readmissions;

ALTER TABLE readmissions_parquet CHANGE score score decimal(10,1);
ALTER TABLE readmissions_parquet CHANGE lower_estimate lower_estimate decimal(10,1);
ALTER TABLE readmissions_parquet CHANGE higher_estimate higher_estimate decimal(10,1);


DROP TABLE measures_parquet;
CREATE TABLE measures_parquet 
AS SELECT * 
FROM measures;

DROP TABLE surveys_responses_parquet;
CREATE TABLE surveys_responses_parquet 
AS SELECT * 
FROM surveys_responses;

ALTER TABLE surveys_responses_parquet CHANGE hcahps_base_score hcahps_base_score INT;
ALTER TABLE surveys_responses_parquet CHANGE hcahps_consistency_score hcahps_consistency_score INT;
