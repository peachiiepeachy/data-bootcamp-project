--Q3: Find top 3 staffs who made the most profit in February 2024--
SELECT 
  s.firstname,
  s.lastname,
  SUM(p.profit) as total_profit
FROM staffs AS s
JOIN orders AS o
ON s.staffid = o.staffid
JOIN profit AS p
ON p.orderid = o.orderid
WHERE o.orderdate BETWEEN '2024-02-01' AND '2024-02-29'
GROUP BY s.firstname
ORDER BY total_profit DESC
LIMIT 3;
