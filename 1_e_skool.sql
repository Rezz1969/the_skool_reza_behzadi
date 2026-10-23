SET PAGESIZE 2000

DESC system.ao_2025;

SELECT 
    UTBILDNINGSNAMN,
-- Totalt antal ansökningar per utbildningsområde    
    COUNT(*) AS ANTAL_AVSLAGNA
FROM 
    ao_2025
    WHERE UTBILDNINGSOMRÅDE='Data/IT' AND BESLUT='Avslag'
-- Grupperar efter Utbildningsnamn
GROUP BY 
    UTBILDNINGSNAMN
-- Sorterar i fallande ordning
ORDER BY 
    ANTAL_AVSLAGNA DESC
-- Det är många ansökningar som är avslagna (135). Begränsar till de första 30
FETCH FIRST 30 ROWS ONLY;

EXIT

