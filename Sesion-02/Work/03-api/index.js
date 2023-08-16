const express = require("express");

const app = express();

const db = [
    {
        id: 1, 
        name: "Gansito",
        price: 20
    },
    {
        id: 2, 
        name: "Coca Cola 600 ml",
        price: 16
    },
    {
        id: 3,
        name: "Sabritas 20g",
        price: 15
    },
    {
        id: 4,
        name: "Donas",
        price: 21
    }
];

app.get("/getProducts", function(request, response) {
    response.json(db);
});

// Un API tiene 4 maneras de recibir parametros
// 1. A traves de un pedazo de la URL
// 2. A traves del Query String (en la URL)
// 3. A traves de los encabezados
// 4. A traves del body de la peticion
// Obtener el producto con un id en especifico

app.get('/getProduct/:id', function(request, response) {
    const { id } = request.params;

    const product = db.find(x => x.id.toString() === id);

    response.json(product);
});

app.listen(8080, function() {
    console.log("> Escuchando puerto 8080");
});