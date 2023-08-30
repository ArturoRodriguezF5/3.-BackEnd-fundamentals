// Establecer conexión con MongoDB

const mongoose = require("mongoose");

// Conectar a MongoDB
// mongodb://usuario:contraseña/db?
mongoose
  .connect(
    "mongodb+srv://root:root@bedu.szozgxr.mongodb.net/test?retryWrites=true&w=majority"
  )
  .then(() => console.log("> conectado a MongoDB"))
  .catch((e) => console.log("Error", e));
// Usando eventos
/*
  mongoose.connection.on('conected', () => console.log("> conectado a mongoDB"));
  mongoose.connection.on("error", (error) => console.log("Error", error));
*/

// Crear los esquemas
// Un shcema es como una tabla de sql
const userSchema = new mongoose.Schema({
  username: {type: String, required: true, unique: true, maxlength: 50},
  password: {type: String, maxlength: 50, required: true},
  age: {type: Number, min: 18},
  email: {type: String, required: true, unique: true, maxlength: 100}
});

// Crear un modelo a partir del schema
// Con esto ya se puede interactuar con la base de datos
const userModel = mongoose.model("users", userSchema);

// Creación de la API
const express = require("express");
const app = express();

app.use(express.json());

app.get("/createUser", async function (request, response) {
	const data = request.body;

	// ¿Cómo insertamos un documento en Mongoose?
	// Creamos una nueva instancia del modelo
	const instance = new userModel(data);

	try {
		// Ejecutamos el método "save" que regresa una promesa
		// con el documento insertado
		const document = await instance.save();

		response.json(document);
	} catch (e) {
		console.error(e);
		response.json({ error: true });
	}
});

app.get('/getUsers', async function(request, response) {
  const documents = await userModel.find();
  response.json(documents);
});

app.get('/getUser/:id', async function(request, response) {
  const document = await userModel.findById(request.params.id).exec();
  response.json(document);
});

app.listen(8080, () => console.log("> escuchando puerto 8080"))
