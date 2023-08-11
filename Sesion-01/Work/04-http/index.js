// const http = require("node:http");

// const fs = require("node:fs");

// fs.readFile('./hola.txt', 'utf-8', function(err, txt) {
//     if(err) {
//         console.log("Lo siento hubo un error al leer el archivo.")
//     } else {

//     }
// });

// const server = http.createServer(function(request, response) {
//     response.write("Hola mundo desde Node.js");
//     response.end();
// });

// server.listen(8080, function() {
//     console.log("Servidor escuchando en el puerto: 8080")
// });

const fs = require("node:fs");
const http = require("node:http");

const server = http.createServer(function (request, response) {
	fs.readFile("hola.html", "utf-8", function (err, html) {
		if (err) {
			response.write("ERROR");
		} else {
			response.write(html);
		}

		response.end();
	});
});

server.listen(8080, function () {
	console.log("Servidor escuchando el puerto 8080");
});