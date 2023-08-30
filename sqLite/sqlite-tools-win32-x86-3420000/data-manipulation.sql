-- Leer datos
-- SELECT campo1, campo2, campo3,.... FROM tabla
SELECT email FROM users;
SELECT * FROM users;

-- Insertar datos en una tabla
-- INSERT INTO tabla(campo1, campo2, campo3, ...) VALUES (valor1, calor2)
-- INSERT INTO tabla VALUES(valor1, valor2, valor3, ...)

INSERT INTO users VALUES (1000, 'beto', 'beto@bedu.org', 'ornitorrinco123', '5555555555', NULL);
INSERT INTO users VALUES (1001, 'joaquin', 'joaquin@bedu.org', '123123', '666666666', NULL);
INSERT INTO users(username, email, password, id, telephone) VALUES('rodrigo', 'rodrigo@bedu.com', '13pdspo', 102, '092093090932');

INSERT INTO songs VALUES(789089,'MOJABI GHOST',3,'POP',2023);
INSERT INTO songs VALUES(18335, 'Shooting Star', 5, "J-Pop", 2002);
INSERT INTO songs VALUES(48,'Black ice',250,'rock',1900);

-- Bulk insert
INSERT INTO songs VALUES
  (789089,'MOJABI GHOST',3,'POP',2023),
  (18335, 'Shooting Star', 5, 'J-Pop', 2002),
  (48,'Black ice',250,'rock',1900),
  (1212,'Fiesta Pagana', 120, 'Folk-Metal',1999),
  (1, 'Perfecta', 3, 'Pop', 2010),
  (505, 'pegasus fantasy', '400', 'j-rock', 1985),
  (112,'master fo puppets',8,'metal',1996),
  (28, 'Somewhere only we know', 180, 'alternative', 2004);

-- Eliminar TODOS los DATOS
-- DELETE FROM tabla;
DELETE FROM songs;

-- .mode columns
--.headers on

-- Actualizar TODOS los registros
-- UPDATE tabla SET  campo = valor, campo2 = valor2;

-- Para actualizar una cantidad de registros en particular
-- UPDATE tabla SET campo = valor WHERE condicion

UPDATE songs SET title = 'Pegasus Fantasy' WHERE id = 505;

-- Para eliminar una cantidad especifica de registros:
-- DELETE FROM tabla WHERE condicion:
DELETE FROM songs WHERE id = 1212;

SELECT * FROM songs WHERE genre = 'Pop';