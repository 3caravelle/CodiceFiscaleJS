SELECT js_row
FROM (
    SELECT p.SIGLA || ': "' || REPLACE(p.DENOMINAZIONE, '"', '\"') || '",' AS js_row
    FROM DB_NAME.PROVINCIA p

    UNION ALL

    SELECT 'EE: "Estero",' AS js_row
    FROM DUAL
    WHERE NOT EXISTS (
        SELECT 1
        FROM DB_NAME.PROVINCIA p2
        WHERE p2.SIGLA = 'EE'
    )
)