SET PAGESIZE 2000

DESC system.ao_2025;

SELECT 
    UTBILDNINGSOMRÅDE,
-- Totalt antal ansökningar per utbildningsområde    
    COUNT(*) AS ANTAL_AVSLAGNA
FROM 
    ao_2025
    WHERE BESLUT='Avslag'
-- Grupperar efter Utbildningsområde
GROUP BY 
    UTBILDNINGSOMRÅDE
-- Sorterar i fallande ordning
ORDER BY 
    ANTAL_AVSLAGNA DESC;

EXIT

