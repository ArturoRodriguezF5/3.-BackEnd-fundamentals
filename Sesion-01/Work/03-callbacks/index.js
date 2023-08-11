const fs = require("node:fs");

// Callback: es una funcion que se va a ejecutar en el futuro
// Después de determinada acción
fs.readFile("./readme.txt", "utf-8", function (err, text) {
  if (err) {
    console.log("Ocurrio un error al abrir el archivo :(");
    console.log(err);
  } else {
    console.log(text);
  }
});

console.log("Leyendo un archivo...");
