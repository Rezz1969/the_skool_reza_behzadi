SET PAGESIZE 2000

DESC system.ao_2025;

SELECT 
    UTBILDNINGSNAMN,
-- Totalt antal ansökningar per utbildningsområde    
    COUNT(*) AS ANTAL_BEVILJADE
FROM 
    ao_2025
    WHERE UTBILDNINGSOMRÅDE='Data/IT' AND BESLUT='Beviljad'
-- Grupperar efter Utbildningsnamn
GROUP BY 
    UTBILDNINGSNAMN
-- Sorterar i fallande ordning
ORDER BY 
    ANTAL_BEVILJADE DESC;

EXIT

