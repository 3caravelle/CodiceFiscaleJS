SELECT
  '["'
  || c.CODICE_COMUNE || '","'
  || COALESCE(p.SIGLA, 'EE') || '","'
  || REPLACE(c.NOME, '"', '\"') || '",'
  || CASE 
       WHEN c.SOPPRESSO = 'T' THEN 0
       ELSE 1
     END
  || '],' AS js_row
FROM TELMED_REPL.CITTA c
LEFT JOIN TELMED_REPL.PROVINCIA p
  ON c.PROVINCIA = p.ID
ORDER BY c.CODICE_COMUNE;