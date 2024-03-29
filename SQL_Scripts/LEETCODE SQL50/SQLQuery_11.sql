/* Write your T-SQL query statement below */

SELECT E.name, B.bonus
FROM Employee AS E
LEFT OUTER JOIN Bonus AS B
ON E.empId = B.empId
WHERE B.bonus < 1000 OR B.bonus IS NULL;