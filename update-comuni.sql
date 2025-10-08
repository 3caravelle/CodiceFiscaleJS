SELECT
  '["'
  || c.CODICE_COMUNE || '","'
  || p.SIGLA || '","'
  || REPLACE(c.NOME, '"', '\"') || '",'
  || CASE 
       WHEN c.SOPPRESSO = 'T' THEN 0
       ELSE 1
     END
  || '],' AS js_row
FROM DB_NAME.CITTA c
JOIN DB_NAME.PROVINCIA p
  ON c.PROVINCIA = p.ID
ORDER BY c.CODICE_COMUNE;