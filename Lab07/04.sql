-- Ejecutar desde SYS/SYSTEM, o en su defecto asignar el rol SELECT_CATALOG_ROLE al usuario GE.

SELECT * FROM DBA_SCHEDULER_JOB_LOG 
WHERE owner = 'GE' AND job_name = 'A01';