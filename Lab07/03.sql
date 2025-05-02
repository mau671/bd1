/*
* Bloque PL/SQL que crea un trabajo programado utilizando DBMS_SCHEDULER.
*
* Este script crea un trabajo llamado 'A01' que se ejecutará cada hora comenzando
* en el momento de su creación. El trabajo ejecuta un bloque PL/SQL que inserta
* un nuevo empleado utilizando el procedimiento newEmployee del paquete employee_package
* del esquema GE.
*
* Detalles del trabajo:
* - Nombre: A01
* - Tipo: PLSQL_BLOCK
* - Acción: Insertar un empleado con valores específicos
* - Fecha de inicio: SYSTIMESTAMP (momento actual)
* - Intervalo de repetición: Cada segundo
* - Fecha de fin: NULL (se ejecutará indefinidamente)
* - Estado: Habilitado
*
* El trabajo está configurado para insertar un empleado con los siguientes datos:
* ID: El siguiente valor
* Nombre: John A
* Apellido: Doe Smith
* Salario: 5000
* Fecha: Fecha actual del sistema
*
* Pregunta d: Este parámetro define la frecuencia con la que se ejecuta el job.
* Se puede cambiar para que sea cada minuto, cada hora o cada día si así se desea.
*
* Pregunta f: El parámetro end_date especifica la fecha y hora en que el job dejará
* de ejecutarse. Como está en NULL, significa que el job no tiene una fecha de finalización
* definida y continuará ejecutándose indefinidamente. 
*
* Pregunta e:  SYSTIMESTAMP es una función que devuelve la fecha y hora actuales
* del sistema, incluyendo fracciones de segundo y la zona horaria. En el contexto
* del job, start_date => SYSTIMESTAMP indica que el job comenzará a ejecutarse
* inmediatamente a partir del momento en que se crea.
*
*/
BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'A01',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN GE.staff_package.newStaff(GE.staff_seq.NEXTVAL, ''John'', ''A'', ''Doe'', ''Smith'', 5000, SYSDATE); END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=secondly',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Insert new employee every second'
  );
END;
/
