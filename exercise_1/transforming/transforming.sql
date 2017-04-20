DROP TABLE hospitals_x;
CREATE TABLE hospitals_x
AS SELECT *
FROM hospitals;


DROP TABLE effective_care_x;
CREATE TABLE effective_care_x 
AS SELECT provider_id, 
	hospital_name, 
	score 
FROM effective_care;

ALTER TABLE effective_care_x CHANGE score score INT;


DROP TABLE readmissions_x;
CREATE TABLE readmissions_x 
AS SELECT * 
FROM readmissions;

ALTER TABLE readmissions_x CHANGE score score decimal(10,1);
ALTER TABLE readmissions_x CHANGE lower_estimate lower_estimate decimal(10,1);
ALTER TABLE readmissions_x CHANGE higher_estimate higher_estimate decimal(10,1);


DROP TABLE measures_x;
CREATE TABLE measures_x 
AS SELECT * 
FROM measures;

DROP TABLE surveys_responses_x;
CREATE TABLE surveys_responses_x 
AS SELECT * 
FROM surveys_responses;

ALTER TABLE surveys_responses_x CHANGE hcahps_base_score hcahps_base_score INT;
ALTER TABLE surveys_responses_x CHANGE hcahps_consistency_score hcahps_consistency_score INT;

