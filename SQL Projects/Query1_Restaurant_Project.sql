--Q1: How many profit does staff with 'Excellent' performance make in January 2024?

WITH Staff_Excellent AS
  (SELECT 
      staffid,
      firstname,
      performance
  FROM staffs 
  WHERE performance = 'Excellent'),

  Order_Profit AS
  (SELECT
    o.orderid,
    o.staffid,
    p.profit
  FROM profit AS p
  JOIN orders AS o
  ON p.orderid = o.orderid)

SELECT 
  Staff_Excellent.firstname,
  SUM(Order_Profit.profit)
FROM Staff_Excellent
JOIN Order_Profit
ON Staff_Excellent.staffid = Order_Profit.staffid
GROUP BY staff_Excellent.firstname;
