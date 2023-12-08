WITH QUALIFIED_UNICORN_COMPANY_INFO AS( 
--In this table, We are merging all four tables to make it neat for our analysis but only interested in limited attributes required for our analysis, 
--taking into account coding optimisation principles.

	SELECT *

	FROM (
		SELECT COMPANY_ID
		FROM COMPANIES
		 ) AS ALL_COMPANY_ID_INFO
	
	INNER JOIN INDUSTRIES USING(COMPANY_ID)

	INNER JOIN  (
		SELECT COMPANY_ID, VALUATION 
		FROM FUNDING
		) AS VALUATION_INFO USING(COMPANY_ID)

	INNER JOIN (
		SELECT COMPANY_ID, EXTRACT(YEAR FROM DATE_JOINED) AS YEAR
		FROM DATES
		WHERE EXTRACT(YEAR FROM DATE_JOINED) IN (2019, 2020, 2021) --We are filtering our entire dataset, based on these three years.
		) AS DATES_ADJUSTED USING(COMPANY_ID)
		
), 

FILTER_FOR_TOP_PERFORMING_INDUSTRIES AS( 
--This is our custom-made filter as we only require the top 3 industry names without impacting our major table.

	SELECT INDUSTRY, COUNT(COMPANY_ID)
	FROM QUALIFIED_UNICORN_COMPANY_INFO
	GROUP BY 1 
	ORDER BY 2 DESC
	LIMIT 3 --We're only interested in the top 3 industries per # of Unicorns that they possess to date
)
	

SELECT DISTINCT INDUSTRY, 
		YEAR,
		COUNT(COMPANY_ID) AS NUM_UNICORNS,
		ROUND(AVG(VALUATION) / 1000000000, 2) AS AVERAGE_VALUATION_IN_BILLIONS 
				
FROM QUALIFIED_UNICORN_COMPANY_INFO --That's where I compiled all the required information, including only the years 2019, 2020 and 2021 data required by the case study

WHERE INDUSTRY IN( --Execution of our magical filter
	SELECT INDUSTRY
	FROM FILTER_FOR_TOP_PERFORMING_INDUSTRIES --Calling in our table-shaped filter
	)

GROUP BY INDUSTRY, YEAR
ORDER BY YEAR DESC, 3 DESC


--Coded by Ozzy Goylusun (OG)
