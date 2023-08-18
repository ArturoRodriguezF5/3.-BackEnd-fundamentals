const express = require("express");
const app = express();

// Nota:  en express el orden de middlewares/rutas es importante
// .use se utiliza para registrar un middleware
app.use(function(request, response, next) {
    console.log("URL:", request.url);
    next(); // La peticion puede seguir su camino
})

app.get("/", function(request, response) {
    response.send("hola");
});

app.listen(8080, function() {
    console.log("Escuchando puerto 8080");
});