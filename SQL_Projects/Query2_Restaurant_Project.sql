--Q2: What is the profit from Spain customers in January 2024?--
SELECT 
    cus.country,
    SUM(pro.profit)
FROM customers AS cus
JOIN orders AS ord
ON cus.customerid = ord.customerid
JOIN profit As pro 
ON pro.orderid = ord.orderid
WHERE ord.orderdate BETWEEN '2024-01-01' AND '2024-01-31' AND cus.country = 'Spain';
