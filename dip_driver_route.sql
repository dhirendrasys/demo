CREATE TABLE IF NOT EXISTS stg.cicd_demo
(
	column1 VARCHAR(225)
	,column2 VARCHAR(225)
)
DISTSTYLE KEY
 DISTKEY (column1)
 SORTKEY (
	column1
	)
;
ALTER TABLE stg.cicd_demo owner to svc_informatica;
