SELECT MAX(salary) as SecondHighestSalary
FROM (SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) as rn
FROM Employee
ORDER BY salary DESC) X
WHERE rn = 2

-- SELECT salary as SecondHighestSalary
-- FROM (SELECT DISTINCT salary, DENSE_RANK() OVER (ORDER BY salary DESC) as rn
-- FROM Employee
-- ORDER BY salary DESC) X
-- WHERE rn = 2

-- SELECT salary as SecondHighestSalary
-- FROM (SELECT id, salary
-- FROM Employee
-- ORDER BY salary DESC
-- LIMIT 1 OFFSET 1) x

-- # Write your MySQL query statement below
-- SELECT IFNULL(
--     (SELECT DISTINCT salary
-- FROM Employee
-- ORDER BY salary DESC
-- LIMIT 1 OFFSET 1), NULL
-- ) as SecondHighestSalary





