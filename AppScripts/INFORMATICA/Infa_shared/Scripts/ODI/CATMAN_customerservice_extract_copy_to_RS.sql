Truncate table stg.catman_customerservicelevelextract;

COPY stg.catman_customerservicelevelextract
FROM 'S3_DEV_BUCKET_NAME/CATMAN_Weekly_Extracts/s_Extract_Catman_CustomerService'
IAM_ROLE '{DEV_IAM_ROLE}'
DELIMITER '|'
ACCEPTINVCHARS AS '?'
dateformat 'auto'
timeformat 'auto'
GZIP
;
