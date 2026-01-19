# Write your MySQL query statement below
SELECT distinct num as ConsecutiveNums
FROM 
(SELECT id, num, LEAD(num,1) OVER (ORDER BY id) AS next, LEAD(num,2) OVER (ORDER BY id) as nexttonext
FROM Logs) x
WHERE num = next AND num = nexttonext



-- SELECT DISTINCT l1n as ConsecutiveNums
-- FROM (SELECT l1.id, l1.num as l1n, l2.num as l2n, l3.num as l3n
-- FROM Logs l1
-- JOIN Logs l2
-- ON l1.id = l2.id + 1
-- JOIN Logs l3
-- ON L1.id = l3.id + 2) x
-- WHERE l1n = l2n AND l1n = l3n AND l2n = l3n































-- SELECT DISTINCT l1.num as ConsecutiveNums
-- FROM Logs l1
-- JOIN Logs l2
-- ON l1.id = l2.id -1
-- JOIN Logs l3
-- ON l1.id = l3.id -2
-- WHERE l1.num = l2.num AND l1.num = l3.num