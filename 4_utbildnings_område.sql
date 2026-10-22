SET PAGESIZE 2000

DESC system.ao_2025;

SELECT 
    UTBILDNINGSOMRÅDE,
-- Totalt antal ansökningar per utbildningsområde    
    COUNT(*) AS ANTAL,
-- Totalt antal beviljade ansökningar
    COUNT(CASE WHEN BESLUT='Beviljad' THEN 1 END) AS ANTAL_BEVILJADE, 
-- Antal beviljade ansökningar som är platsbundna    
    COUNT(CASE WHEN BESLUT='Beviljad' AND STUDIEFORM='Bunden' THEN 1 END) AS ANTAL_BEVILJADE_BUNDNA,
-- Antal beviljade ansökningar som är på distans    
    COUNT(CASE WHEN BESLUT='Beviljad' AND STUDIEFORM='Distans' THEN 1 END) AS ANTAL_BEVILJADE_BUNDNA 
FROM 
    ao_2025
-- Grupperar efter Utbildningsområde
GROUP BY 
    UTBILDNINGSOMRÅDE
-- Sorterar i fallande ordning
ORDER BY 
    ANTAL DESC;

EXIT

