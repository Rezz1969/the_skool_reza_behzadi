SET PAGESIZE 2000

DESC system.ao_2025;
-- Listar utbildningsområden med högst andel beviljade ansökningar
SELECT 
    UTBILDNINGSOMRÅDE,
    COUNT(*) AS ANTAL_ANSÖKNINGAR,
    COUNT(CASE WHEN BESLUT = 'Beviljad' THEN 1 END) AS ANTAL_BEVILJADE,
-- Delar antalet beviljade ansökningar med antalet ansökningar och avrundar uppåt med en decimal
    ROUND(COUNT(CASE WHEN BESLUT = 'Beviljad' THEN 1 END) / COUNT(*) * 100, 1) || ' %' AS ANDEL_BEVILJADE_ANSÖKNINGAR
FROM 
    ao_2025
GROUP BY 
    UTBILDNINGSOMRÅDE
ORDER BY    
    ANDEL_BEVILJADE_ANSÖKNINGAR DESC;

EXIT

