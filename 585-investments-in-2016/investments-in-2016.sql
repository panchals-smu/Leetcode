-- SELECT ROUND(sum(tiv_2016),2) as tiv_2016
-- FROM  (SELECT pid, tiv_2015, tiv_2016, CONCAT(lat," ",lon) as un
-- FROM Insurance
-- GROUP BY un
-- HAVING COUNT(un) = 1) x

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM (
    SELECT *
    FROM Insurance
    WHERE tiv_2015 IN (
        SELECT tiv_2015
        FROM Insurance
        GROUP BY tiv_2015
        HAVING COUNT(*) > 1
    )
    AND CONCAT(lat, ' ', lon) IN (
        SELECT CONCAT(lat, ' ', lon)
        FROM Insurance
        GROUP BY lat, lon
        HAVING COUNT(*) = 1
    )
) x;