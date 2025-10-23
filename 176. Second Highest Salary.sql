# Write your MySQL query statement below
# using Scalar subquery 
    SELECT(
        SELECT DISTINCT salary 
        FROM Employee
        ORDER BY salary DESC
        LIMIT 1 OFFSET 1
    ) AS SecondHighestSalary;

-- Using windows function and MAX
WITH cte AS(SELECT 
salary,
DENSE_RANK() OVER(
    ORDER BY salary DESC
) AS rank_num
FROM Employee)

SELECT 
MAX(CASE WHEN rank_num=2 THEN salary END) AS SecondHighestSalary
FROM cte;
