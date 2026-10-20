SET PAGESIZE 2000

DESC system.ao_2025;

-- Läser hela tabellen och skriver ut de 10 första raderna
SELECT *
FROM ao_2025
FETCH FIRST 10 ROWS ONLY;

-- Tar fram de 20 första utbildningar som är beviljade och är på distans
SELECT * 
FROM ao_2025
WHERE BESLUT='Beviljad' AND STUDIEFORM='Distans'
FETCH FIRST 20 ROWS ONLY;

-- Räknar totalt antal beviljade utbildningar som är på distans
SELECT COUNT(*) FROM ao_2025
WHERE BESLUT='Beviljad' AND STUDIEFORM='Distans'

EXIT
