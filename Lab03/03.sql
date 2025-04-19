---
    ---Descripción:
    --- Se utiliza el operador LIKE para obtener los primeros nombres que
    --- empiecen con b. El % es para decir que no importa la cantidad
    --- de caracteres que le siguen.
---
SELECT first_name
FROM ge.people
WHERE first_name LIKE 'b%';
