/*
 * Archivo: 05.sql
 * Descripción: Código para terminar o matar un job y que deje de ser ejecutado.
 * Con el SELECT se puede revisar que este ya no esté corriendo.
 * 
*/
BEGIN
  DBMS_SCHEDULER.DISABLE('A01', force => TRUE);
END;
/

SELECT job_name, enabled FROM user_scheduler_jobs WHERE job_name = 'A01';