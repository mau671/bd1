BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'A01',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN utils.newEmployee; END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=secondly',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Mi primer job'
  );
END;
/
