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