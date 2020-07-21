INSERT INTO InterCustMonitor_100
	SELECT
	apply.SESSION_ID AS SESSION_ID,
	apply.APP_NO AS APP_NO, 
	apply.CUST_ID AS CUST_ID, 
	apply.BUSINESS_TYPE_CD AS BUSINESS_TYPE_CD, 
	apply.BUSINESS_TYPE_NAME AS BUSINESS_TYPE_NAME, 
	apply.CUST_SOURCE AS CUST_SOURCE,
	apply.CHANNEL_SOURCE AS CHANNEL_SOURCE,
	apply.APPLY_TIME AS APPLY_TIME,
	results.CREDIT_NO AS CREDIT_NO,
	results.STATE_CODE AS STATE_CODE,
	results.CREDIT_CODE AS CREDIT_CODE,
	results.REFUSE_REASON AS REFUSE_REASON,
	results.INTEREST_RATE AS INTEREST_RATE,
	results.CREDIT_LIMIT AS CREDIT_LIMIT,
	results.REPAY_MODE_CD AS REPAY_MODE_CD,
	results.LOAN_TERM AS LOAN_TERM,
	results.CREDIT_SCORE_1 AS CREDIT_SCORE_1,
	results.CREDIT_SCORE_2 AS CREDIT_SCORE_2,
	results.CREDIT_SCORE_3 AS CREDIT_SCORE_3,
	results.ANTI_FRAUD_SCORE_1 AS ANTI_FRAUD_SCORE_1,
	results.ANTI_FRAUD_SCORE_2 AS ANTI_FRAUD_SCORE_2,
	results.CREDIT_TIME AS CREDIT_TIME
	FROM kafka_apply_info_100 apply
	JOIN kafka_result_info_100 results
	ON apply.SESSION_ID=results.SESSION_ID
	;