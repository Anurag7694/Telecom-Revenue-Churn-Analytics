CREATE TABLE telecom_customer_revenue (
    customer_id VARCHAR(20),
    city VARCHAR(50),
    plan VARCHAR(20),
    tenure_months INT,
    monthly_charge NUMERIC(10,2),
    discount NUMERIC(10,2),
    expected_revenue NUMERIC(10,2),
    actual_revenue NUMERIC(10,2),
    revenue_gap NUMERIC(10,2),
    data_usage_gb NUMERIC(10,2),
    call_minutes INT,
    complaints INT,
    network_issues INT,
    late_payment INT,
    status VARCHAR(20)
); 


SELECT *
FROM telecom_customer_revenue
Limit 10; 

-- 1.Total Records Check 
SELECT COUNT(*) AS total_records
FROM telecom_customer_revenue; 

SELECT COUNT(*) AS null_rows
FROM telecom_customer_revenue
WHERE customer_id IS NULL;

-- 16 NULL rows delete 
DELETE FROM telecom_customer_revenue
WHERE customer_id IS NULL; 

--2.check unique customer 
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM telecom_customer_revenue; 
--Q3. Find the number of active customers.
SELECT COUNT(*) AS active_customers
FROM telecom_customer_revenue
WHERE status = 'Active';  - 2154
-- Q4. Find the number of churned customers.
SELECT COUNT(*) AS active_customers
FROM telecom_customer_revenue
WHERE status = 'Churned'; -346  
-- Q5. Find the total expected revenue.
SELECT SUM(expected_revenue) AS total_expected_revenue
FROM telecom_customer_revenue; -1,310,925 
-- Q6. Find the total actual revenue.
SELECT SUM(actual_revenue) AS total_actual_revenue
FROM telecom_customer_revenue; -1280263.01
-- Q7. Find the total revenue leakage.
SELECT SUM(revenue_gap) AS total_revenue_leakage
FROM telecom_customer_revenue; -30661.99 

-- Q8. Find the number of customers in each city.
SELECT
    city,
    COUNT(*) AS customer_count
FROM telecom_customer_revenue
GROUP BY city
ORDER BY customer_count DESC; 
-- Q9. Find the number of customers in each plan.
SELECT
    plan,
    COUNT(*) AS customer_count
FROM telecom_customer_revenue
GROUP BY plan; 

--Q10. Find the number of active and churned customers in each plan.
SELECT
    plan,
    status,
    COUNT(*) AS customer_count
FROM telecom_customer_revenue
GROUP BY plan, status
ORDER BY plan, status; 

--Q11. Find the total expected revenue for each plan.
SELECT
    plan,
    SUM(expected_revenue) AS total_expected_revenue
FROM telecom_customer_revenue
GROUP BY plan
ORDER BY total_expected_revenue DESC; 

-- Q12. Find the total actual revenue for each plan.
SELECT
    plan,
    SUM(actual_revenue) AS total_actual_revenue
FROM telecom_customer_revenue
GROUP BY plan
ORDER BY total_actual_revenue DESC; 

-- Q13. Find the total revenue leakage for each plan.
SELECT
    plan,
    SUM(revenue_gap) AS total_revenue_leakage
FROM telecom_customer_revenue
GROUP BY plan
ORDER BY total_revenue_leakage DESC; 

-- Q14. Find the average monthly charge for each plan.
SELECT
    plan,
    ROUND(AVG(monthly_charge), 2) AS avg_monthly_charge
FROM telecom_customer_revenue
GROUP BY plan
ORDER BY avg_monthly_charge DESC; 

-- Q15. Find the customer with the highest revenue leakage.
SELECT
    customer_id,
    expected_revenue,
    actual_revenue,
    revenue_gap
FROM telecom_customer_revenue
ORDER BY revenue_gap DESC
LIMIT 1; 

-- Q16. Find the total expected revenue for each city.
SELECT
    city,
    SUM(expected_revenue) AS total_expected_revenue
FROM telecom_customer_revenue
GROUP BY city
ORDER BY total_expected_revenue DESC; 

-- Q17. Find the total actual revenue for each city.
SELECT
    city,
    SUM(actual_revenue) AS total_actual_revenue
FROM telecom_customer_revenue
GROUP BY city
ORDER BY total_actual_revenue DESC;

-- Q18. Find the total revenue leakage for each city.
SELECT
    city,
    SUM(revenue_gap) AS total_revenue_leakage
FROM telecom_customer_revenue
GROUP BY city
ORDER BY total_revenue_leakage DESC; 

-- Q19. Find the city with the highest revenue leakage.
SELECT
    city,
    SUM(revenue_gap) AS total_revenue_leakage
FROM telecom_customer_revenue
GROUP BY city
ORDER BY total_revenue_leakage DESC
LIMIT 1; 

-- Q20. Find the top 10 customers with the highest revenue leakage.
SELECT
    customer_id,
    expected_revenue,
    actual_revenue,
    revenue_gap
FROM telecom_customer_revenue
ORDER BY revenue_gap DESC
LIMIT 10;

--Q21. Find the churn rate for each plan.
SELECT
    plan,
    ROUND(
        COUNT(*) FILTER (WHERE status = 'Churned') * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM telecom_customer_revenue
GROUP BY plan
ORDER BY churn_rate DESC; 

--Q22. Find the churn rate based on the number of complaints.
SELECT
    complaints,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (WHERE status = 'Churned') AS churned_customers,
    ROUND(
        COUNT(*) FILTER (WHERE status = 'Churned') * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM telecom_customer_revenue
GROUP BY complaints
ORDER BY complaints;