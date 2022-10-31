truncate table stg.bpc_temphoursextract;

COPY stg.bpc_temphoursextract
FROM 'S3_DEV_BUCKET_NAME/BPC/BPCTempHoursExtract.txt.gz'
IAM_ROLE 'DEV_IAM_ROLE'
DELIMITER '\t'
ACCEPTINVCHARS AS '?'
dateformat 'auto'
timeformat 'auto'
IGNOREHEADER AS 1
REMOVEQUOTES
GZIP
;
