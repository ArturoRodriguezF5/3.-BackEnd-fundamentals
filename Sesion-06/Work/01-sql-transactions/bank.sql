CREATE TABLE accounts (
  id INTEGER PRIMARY KEY,
  account_number VARCHAR(16) NOT NULL UNIQUE,
  amount FLOAT NOT NULL CHECK(amount >= 0)
);

INSERT INTO accounts VALUES (1, '980233829289', 500);
INSERT INTO accounts VALUES (2, '118721872187', 1000);

-- Como la cuenta le puede tranferir $200 a la cuenta 2?

-- Transaction: Es una o más instrucciones de SQL que se ejecutan en una sola operación.

BEGIN Transaction; -- A partir de este momento se define la transaccion, lo siguiente 

-- Recuperamos la informacion de la cuenta 1
SELECT * FROM accounts WHERE id = 1;

-- Descontamos el dinero de la cuenta 1
UPDATE accounts SET amount = amount - 200 WHERE id = 1;

-- Agregar el dinero a la cuenta 2
UPDATE accounts SET amount = amount + 200 WHERE id = 2;


-- La cuenta 2 tendría un saldo de $1200 y la cuenta 1 tendría $300

-- Para rechazar los cambios se utiliza 
ROLBACK;

-- Para confirmar los datos se utiliza 
COMMIT;

-- Las bases de datos relacionales se basan en el concepto de ACID.
-- Atomicity: En una transaction se ejecutan todas las instrucciones o no se ejecuta ninguna.
-- Consistency: Los datos siempre están actualizados para todas las conexiones de la base de datos.
-- Isolation: Las transacciones no se afectan entre si.
-- Duravility: Las transacciones siempre terminan en un estado válido.
