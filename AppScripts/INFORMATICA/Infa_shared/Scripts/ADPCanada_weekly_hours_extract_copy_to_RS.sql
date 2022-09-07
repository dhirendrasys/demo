truncate table stg.adp_canadahoursdataextract;

COPY stg.adp_canadahoursdataextract
DELIMITER ','
ACCEPTINVCHARS AS '?'
dateformat 'auto'
timeformat 'auto'
IGNOREHEADER AS 1
GZIP
;