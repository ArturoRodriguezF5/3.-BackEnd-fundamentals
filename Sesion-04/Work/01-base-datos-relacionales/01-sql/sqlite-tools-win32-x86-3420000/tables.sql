--Esto es un comentario de una sola linea

/*
Usuarios
    -nombre
    -correo
    -contraseña
    -teléfono

Canciones
    -titulo
    -artista
    -duracion
    -genero
    -album
    -año

Artista
    -nombre
    -pais
    -generos
    -Canciones
    albumnes

Album
    -nombre
    -año
    -artista
*/

--Sintaxis para crear una tabla en sql
-- CREATE TABLE nombre-de-la-tabla (
-- nombre_de_la_columna tipo RESTRICTION,
-- otra_columna tipo restriccion,
-- ...
--)
-- Los campos username, email y telephone almacenarian valores unicos por cada registro
-- Por lo tanto no podria haber dos usuarios con el mismo username
-- A este tipo de atributos se le conoce como superllaves
-- La llave primaria es aquella que el diseñador de base de datos elige
-- Restricciones: UNIQUE, NOT NULL
-- Autoincrement incrementa de manera secuencial y automatica el id
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username VARCHAR(50) UNIQUE NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL,
  password VARCHAR(30) NOT NULL,
  telephone VARCHAR(14) UNIQUE NOT NULL,
  fecha_Nacimiento DATE
);

-- Para eliminar una tabla se utiliza la isntruccion DROPE TABLE seguido del nombre

DROP TABLE users;

CREATE TABLE songs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(50) NOT NULL,
  length INTEGER NOT NULL CHECK(length > 0),
  genre VARCHAR(30) NOT NULL,
  year INTEGER NOT NULL CHECK(year > 1500)
);

CREATE TABLE artist (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(100) NOT NULL,
  country VARCHAR(5) NOT NULL,
  songs 
);

CREATE TABLE songs_artist (
  id_song INTEGER,
  id_artist INTEGER,
  PRIMARY KEY(id_song, id_artist)
);

CREATE TABLE user_songs (
  id_user INTEGER,
  id_song INTEGER,
  PRIMARY KEY(id_user, id_song)
);

-- Relacionar artistas con canciones
-- Los artistas interpretan canciones
-- Tenemos que averiguar si es uno/uno uno/muchos muchos/muchos

-- Cuando una relacion es muchos a muchos se crea una nueva tabla