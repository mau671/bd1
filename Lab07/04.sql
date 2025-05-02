/*
 * Archivo: 04.sql
 * Descripción: Consulta para recuperar registros del trabajo 'A01' propiedad del usuario 'GE' desde la vista DBA_SCHEDULER_JOB_LOG
 * 
 * Este script:
 * - Muestra toda la información registrada para el trabajo programado 'A01' propiedad del usuario 'GE'
 * - Muestra el historial de ejecución incluyendo estado, tiempos de inicio/fin e información de errores si está disponible
 * 
 * Requisitos previos:
 * - Debe ejecutarse con privilegios SYS/SYSTEM o por un usuario con el rol SELECT_CATALOG_ROLE
 * - DBA_SCHEDULER_JOB_LOG es una vista del diccionario de datos que requiere privilegios elevados
 * 
 * Notas:
 * - Los resultados mostrarán solo trabajos que coincidan con los criterios owner='GE' y job_name='A01'
 * - La vista DBA_SCHEDULER_JOB_LOG mantiene un historial de todas las ejecuciones de trabajos y sus resultados
 */
-- Ejecutar desde SYS/SYSTEM, o en su defecto asignar el rol SELECT_CATALOG_ROLE al usuario GE.

SELECT * FROM DBA_SCHEDULER_JOB_LOG 
WHERE owner = 'GE' AND job_name = 'A01';