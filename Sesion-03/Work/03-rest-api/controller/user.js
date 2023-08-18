const model = require("../db/db");

function getUsers(request, response) {
    const data = model.getAll();
    response.json(data);
}

function getUser(request, response) {
    
}

function addUser(request, response) {

}

module.exports = {
    getUsers,
    getUser,
    addUser
}