// 1. Importar Express

const express = require("express");

// 2. Crear una instancia de un servidor
const app = express();

// 3. Declaracion de rutas
// Un método/ verbo de http es una acción que puede realizar un backend
// GET, POST, PATCH, DELETE

// Para regsitrar una ruta
// instancia.metodo(ruta, handler(function))
app.get("/", function(request, response) {
    // send es write y send()
    response.send("Hello World");
});

app.get("/acercade", function(request, response) {
    // __dirname es la ruta absoluta de donde se encuentra el archivo
    response.sendFile(`${__dirname}/about.html`);
});
// Ruta comodin, osea, "cualquier otra"
app.get("*", function(request, response) {
    response.send("Pagina no encontrada");
});

// 4. Escuchar un puerto
app.listen(8080, function() {
    console.log("Escuchando puerto 8080")
});