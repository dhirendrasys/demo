truncate table stg.adp_warehousetimecardextract;COPY stg.adp_warehousetimecardextract



FROM 'S3_DEV_BUCKET_NAME/ADPWhsepaycode/PBPWHSE_'
IAM_ROLE '${DEV_IAM_ROLE}''
DELIMITER ','
ACCEPTINVCHARS AS '?'
dateformat 'auto'
timeformat 'auto'
IGNOREHEADER AS 1
REMOVEQUOTES
GZIP
;
line 3
