truncate table stg.bpc_temphcextract;

COPY stg.bpc_temphcextract
FROM '${S3_DEV_BUCKET_NAME}/BPCHC/BPCTempHCExtract.txt.gz'
IAM_ROLE '${DEV_IAM_ROLE}'
DELIMITER '\t'
ACCEPTINVCHARS AS '?'
dateformat 'auto'
timeformat 'auto'
IGNOREHEADER AS 1
REMOVEQUOTES
GZIP
;