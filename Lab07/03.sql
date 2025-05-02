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
* - Intervalo de repetición: Cada hora
* - Fecha de fin: NULL (se ejecutará indefinidamente)
* - Estado: Habilitado
*
* El trabajo está configurado para insertar un empleado con los siguientes datos:
* ID: 1
* Nombre: John A
* Apellido: Doe Smith
* Salario: 5000
* Fecha: Fecha actual del sistema
*/
BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'A01',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN GE.employee_package.newEmployee(1, ''John'', ''A'', ''Doe'', ''Smith'', 5000, SYSDATE); END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Insert new employee every hour'
  );
END;
/