SELECT CLIENTS.CLIENT_ZIPCODE_TRUNC client_zip,INTERACTIONS.SITE_ID, SITEADDRESSUS_SITEADDRESSUS_LATITUDE SITE_LATITUDE,SITEADDRESSUS_SITEADDRESSUS_LONGITUDE SITE_LONGITUDE,SITEADDRESSUS_SITEADDRESSUS_ZIP SITE_ZIP, count(distinct interaction_id) distinct_interaction_id_cnt
FROM INTERACTIONS
LEFT JOIN CLIENTS
ON INTERACTIONS.CLIENT_ID = CLIENTS.CLIENT_ID
LEFT JOIN SITES
ON SITES.SITE_ID = NULLIF(INTERACTIONS.SITE_ID,'None')
group by 1,2,3,4,5
