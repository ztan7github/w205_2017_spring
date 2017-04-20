DROP TABLE effective_care_x;
CREATE TABLE effective_care_x 
AS SELECT provider_id, 
	hospital_name, 
	score 
FROM effective_care;

ALTER TABLE effective_care_x CHANGE score score INT;
