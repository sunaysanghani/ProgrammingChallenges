SELECT date, SUM(impressions) as total_impressions
FROM marketing_data
GROUP BY date
ORDER BY date;

SELECT state, SUM(revenue) AS total_revenue
FROM website_revenue
GROUP BY state
ORDER BY total_revenue DESC
LIMIT 3;


SELECT C.NAME AS C_NAME, SUM(W.REVENUE) AS total_rev, SUM(M.COST) AS total_cost, SUM(M.CLICKS) AS total_clicks, SUM(M.IMPRESSIONS) AS total_impressions
FROM CAMPAIGN_INFO C
INNER JOIN MARKETING_DATA M ON C.ID = M.CAMPAIGN_ID
INNER JOIN WEBSITE_DATA W ON C.ID = W.CAMPAIGN_ID
GROUP BY C.NAME;

SELECT w.state, SUM(m.conversions) AS total_conversions
FROM WEBSITE_REVENUE W
INNER JOIN MARKETING_DATA M ON W.CAMPAIGN_ID = M.CAMPAIGN_ID
WHERE W.CAMPAIGN_ID = 'Campaign5'
GROUP BY W.STATE
ORDER BY total_conversions DESC
LIMIT 1;
