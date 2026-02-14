# Write your MySQL query statement below

SELECT Max(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
) AS singles

-- Step 1: Use GROUP BY when the problem is about "single", "unique", or counting occurrences.
-- Step 2: Use HAVING COUNT() = 1 to keep only values that appear exactly once (WHERE cannot use COUNT()).
-- Step 3: Use MAX() to get the largest single number (returns NULL automatically if no single numbers exist).
-- Important Rule: Every subquery in the FROM clause MUST have an alias (e.g., AS singles), or SQL will throw an error.

