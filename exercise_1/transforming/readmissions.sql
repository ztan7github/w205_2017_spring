--READMISSIONS
DROP TABLE IF EXISTS readmissions_tr;
CREATE TABLE readmissions_tr row format delimited AS SELECT provider_id,
measure_id,
 compared_to_national,
 denominator,
 score,
 lower_estimate,
 higher_estimate,
 footnote,
 measure_start_date,
 measure_end_date FROM readmissions;


