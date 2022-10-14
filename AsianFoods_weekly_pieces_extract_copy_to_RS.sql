truncate table stg.stage_asianfoodspiecesextract;

COPY stg.stage_asianfoodspiecesextract
FROM '${S3_DEV_BUCKET_NAME}/Other/AsianFoodsPieces/Asian'
IAM_ROLE '${DEV_IAM_ROLE}'
DELIMITER ','
ACCEPTINVCHARS AS '?'
dateformat 'auto'
timeformat 'auto'
IGNOREHEADER AS 1
GZIP
;