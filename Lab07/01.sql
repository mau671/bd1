/*
job_name: Nombre del job.
job_class: Nombre de la clase del job.
job_style: Estilo del job (REGULAR, LIGHTWEIGHT, IN_MEMORY_RUNTIME, IN_MEMORY_FULL).
program_name: Nombre del programa que ejecuta el job.
job_action: Especifica la acción del job, que como los anteriores, se debe indicar
sino generará un error. Inicia con un “BEGIN” y finaliza con un “END;” en el caso
de los bloques PL/SQL.
job_type: Tipo de acción del job ('PLSQL_BLOCK', 'STORED_PROCEDURE', 'EXECUTABLE',
'CHAIN', 'EXTERNAL_SCRIPT', 'SQL_SCRIPT', y 'BACKUP_SCRIPT').
schedule_name: Nombre del programa que especifica cuándo debe ejecutarse la job.
repeat_interval: Programación en línea basada en el tiempo.
schedule_limit: Tiempo máximo de retraso entre el inicio programado y el inicio
real del job antes de que se cancele la ejecución de un trabajo.
start_date: Fecha y hora de inicio del job
end_date: Fecha y hora de final del job
event_condition: Condición de evento para jobs basados en eventos.
queue_spec: Especifica la fuente de la cola donde se guardan los eventos que inician el job.
number_of_argument: Indica el número de argumentos que se espera del job, este va
de 0 a 255. Por defecto este es 0.
arguments: Array de argumentos del job.
job_priority: Prioridad del job.
job_weight: Peso del job para la ejecución paralela. Esto es obsoleto en Oracle
Database 11Gr2. No se debe cambiar su valor por defecto, el cual es 1.
max_run_duration: Duración máxima de la ejecución del job.
max_runs: Número máximo de ejecuciones antes de que el job se marque como completado.
max_failures: Número máximo de fallos tolerados antes de que el job sea interrumpido.
logging_level: Nivel de registro del job.
restartable: Indica si el job es reiniciable (TRUE) o no (FALSE).
stop_on_window_close: Indica si el trabajo se detiene cuando finaliza la ventana
en la que se ejecuta (TRUE) o no (FALSE).
raise_events: Cambios de estado que generan eventos.
comments: Comentarios sobre el job.
auto_drop: Si es TRUE (por defecto), indica que el job debe ser abandonado una vez completado.
enabled: Indica si el trabajo debe habilitarse inmediatamente después de crearlo
(TRUE) o no (FALSE).
follow_default_timezone: Si es TRUE y la fecha de inicio del job es nula, cuando
se cambia el atributo del programador default_timezone, el programador vuelve a
calcular la siguiente fecha y hora de ejecución de este trabajo para que se ajuste
a la nueva zona horaria.
parallel_instances: Sólo para jobs basados en eventos. Si es TRUE, al llegar el
evento especificado, el Programador crea un nuevo job ligero para gestionar ese
evento, de modo que varias instancias del mismo job basado en eventos pueden
ejecutarse en paralelo. Si es FALSE, un evento se descarta si se produce mientras
el job que lo gestiona ya se está ejecutando.
aq_job: Solo para uso interno
instance_id: El ID de la instancia en la que debe ejecutarse el job. Para jobs
completos en memoria, el valor de instance_id determina en qué instancia detener
el job; si se deja NULL, el job se detiene en todas las instancias.
credential_name: La credencial a utilizar para un único destino o la credencial
por defecto para un grupo de destinos.
destination: El nombre de un único destino externo o destino de base de datos, o
un nombre de grupo de tipo destino externo o destino de base de datos.
database_role: En un entorno Oracle Data Guard, el rol de base de datos ('PRIMARY'
o 'LOGICAL STANDBY') para el que se ejecuta el trabajo.
allow_runs_in_restricted_mode: Si es TRUE, se permite la ejecución del job cuando
la base de datos está en modo restringido, siempre que el propietario del job tenga
permiso para iniciar sesión durante este modo.
restart_on_recovery: Si se establece como TRUE para un job y el job se detiene por
un cierre de la base de datos, el job se reinicia cuando se recupera la base de
datos. Si se establece a FALSE, y el job se detiene por un cierre de la base de
datos, entonces el job se marca como detenido cuando se recupera la base de datos.
restart_on_failure: Si se establece a TRUE para un job y el job falla debido a un
error de la aplicación, entonces el job se reintenta utilizando el mecanismo normal
de reintentos del Programador (después de 1 segundo, después de 10 segundos,
después de 100 segundos, y así sucesivamente, hasta un máximo de 6 veces). Si los
6 reintentos fallan (después de unas 30 horas), el trabajo se marca como FALLIDO.
Si se establece en FALSE (por defecto), un job fallido se marca inmediatamente como FALLIDO.
*/