truncate table stg.adp_accrrualextract;

COPY stg.adp_accrrualextract
DELIMITER ','
ACCEPTINVCHARS AS '?'
dateformat 'auto'
timeformat 'auto'
IGNOREHEADER AS 1
REMOVEQUOTES
GZIP
;
line 1
