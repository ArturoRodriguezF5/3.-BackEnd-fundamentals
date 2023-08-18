const express = require("express");
const app = express();
const controller = require("./controller/user");

app.use(express.json());
app.use(express.text());

app.get("/getUsers", controller.getUsers);
app.get("/getUser/:id", controller.getUser);
app.get("/addUser", controller.addUser);

app.listen(8080, function () {
	console.log("> Escuchando puerto 8080");
});

/*app.get("/getUsers", function(request, response) {
    response.send(db);
});

app.get("/getUser/:id", function(request, response) {
    const {id} = request.params;
    const user = db.find((x) => x.id.toString() === id);
    response.json(user);
});



app.get("/addUser", function(request, response, {}) {
    const user = request.body;
    console.log("body: ", user);
    db.push({...user, id: ++id});

    response.end();
});
*/
app.listen(8080, function() {
    console.log("Escuchando en puerto 8080")
})