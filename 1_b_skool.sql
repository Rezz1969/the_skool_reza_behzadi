SET PAGESIZE 2000

DESC system.ao_2025;

SELECT 
    UTBILDNINGSOMRÅDE,
-- Totalt antal ansökningar per utbildningsområde    
    COUNT(*) AS ANTAL_BEVILJADE
FROM 
    ao_2025
    WHERE BESLUT='Beviljad'
-- Grupperar efter Utbildningsområde
GROUP BY 
    UTBILDNINGSOMRÅDE
-- Sorterar i fallande ordning
ORDER BY 
    ANTAL_BEVILJADE DESC;

EXIT

