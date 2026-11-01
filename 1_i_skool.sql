SET PAGESIZE 2000

SELECT
    COUNT(UTBILDNINGSNAMN) AS ANTAL_AI_UTBILDNINGAR
FROM
    system.ao_2025
-- Räknar totalt antal utbildningar som innehåller ordet "AI"
WHERE
    UTBILDNINGSNAMN LIKE '%AI%';

EXIT
