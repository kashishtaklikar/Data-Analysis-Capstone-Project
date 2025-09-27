SELECT * FROM bank_loan_data

SELECT
    (COUNT(CASE WHEN loan_status = 'charged off' THEN id END) * 100.0)/
    COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan_data


SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Charged Off'

SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Charged Off'


SELECT SUM(total_payment) AS Bad_Loan_Amount_Received FROM bank_loan_data
WHERE loan_status = 'Charged Off'