--Escenario: Transferencia bancaria
--Queremos transferir dinero de la cuenta A a la cuenta B.
--Ambas operaciones deben ejecutarse juntas: si una falla, se revierte todo.

-- Iniciar la transacción
START TRANSACTION;

-- 1. Debitar 100 de la cuenta A
UPDATE cuentas
SET saldo = saldo - 100
WHERE id_cuenta = 1;

-- 2. Acreditar 100 a la cuenta B
UPDATE cuentas
SET saldo = saldo + 100
WHERE id_cuenta = 2;

-- Confirmar los cambios
COMMIT;

--Qué pasa si algo falla
--Si, por ejemplo, la segunda operación no se puede ejecutar (cuenta inexistente, error de sintaxis, etc.), puedes revertir todo con:

ROLLBACK;
