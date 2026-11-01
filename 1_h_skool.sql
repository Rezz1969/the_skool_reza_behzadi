SET PAGESIZE 2000

SELECT
    UTBILDNINGSOMRÅDE,
-- Totalt antal ansökningar
    COUNT(*) as TOTALT_ANTAL_ANSÖKNINGAR,
-- Räknar ut procentsatsen av distanskurser
    ROUND(COUNT(CASE WHEN STUDIEFORM = 'Distans' THEN 1 END) / COUNT(*) * 100, 1) ||' %' AS ANDEL_DISTANS,
-- Räknar ut procentsatsen av bundnakurser
    ROUND(COUNT(CASE WHEN STUDIEFORM = 'Bunden' THEN 1 END) / COUNT(*) * 100, 1) || ' %' AS ANDEL_BUNDNA
FROM
    ao_2025
GROUP BY
    UTBILDNINGSOMRÅDE
ORDER BY
    UTBILDNINGSOMRÅDE ASC;

EXIT 
