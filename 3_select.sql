SET PAGESIZE 2000

DESC system.ao_2025;

-- Räkna antalet ansökningar på Data/IT
SELECT COUNT(*)
FROM ao_2025
WHERE UTBILDNINGSOMRÅDE='Data/IT'

-- Räkna antalet beviljade ansökningar på Data/IT
SELECT COUNT(*)
FROM ao_2025
WHERE UTBILDNINGSOMRÅDE='Data/IT' AND BESLUT='Beviljad'

-- Räkna antalet avslag på Data/IT
SELECT COUNT(*)
FROM ao_2025
WHERE UTBILDNINGSOMRÅDE='Data/IT' AND BESLUT='Avslag'


EXIT
