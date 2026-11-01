SET PAGESIZE 2000

DESC system.ao_2025;

SELECT 
    LÄN,
-- Totalt antal ansökningar per utbildningsområde    
    COUNT(*) AS ANTAL_BEVILJADE_ANSÖKNINGAR
FROM 
    ao_2025
    WHERE BESLUT='Beviljad' AND Kommun !='Flera kommuner'
-- Grupperar efter Utbildningsområde
GROUP BY 
    LÄN    
-- Sorterar i fallande ordning
ORDER BY 
    ANTAL_BEVILJADE_ANSÖKNINGAR DESC
-- Visa endast de 5 första i storleksordningen
FETCH FIRST 5 ROWS ONLY;

EXIT

