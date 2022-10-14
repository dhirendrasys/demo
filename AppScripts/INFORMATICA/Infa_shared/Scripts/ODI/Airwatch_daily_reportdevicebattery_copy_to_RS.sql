truncate table stg.airwatchRugged_reportdevicebattery;

COPY stg.airwatchRugged_reportdevicebattery
FROM '${S3_DEV_BUCKET_NAME}/Airwatch_Daily/batterydata'
IAM_ROLE '${DEV_IAM_ROLE}'
DELIMITER '|'
ACCEPTINVCHARS AS '?'
dateformat 'auto'
timeformat 'auto'
IGNOREHEADER AS 1
REMOVEQUOTES
GZIP
;
