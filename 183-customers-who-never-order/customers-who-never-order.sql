# Write your MySQL query statement below
SELECT c.name AS customers
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.id = o.customerId
WHERE o.customerId IS NULL




































-- SELECT c.name as Customers
-- FROM Customers c
-- LEFT JOIN Orders o
-- ON c.id = o.customerId
-- WHERE o.id is null