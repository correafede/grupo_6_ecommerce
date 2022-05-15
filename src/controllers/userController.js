const fs = require('fs');
const path = require('path');

const usersFilePath = path.join(__dirname, '../data/users.json');
const users = JSON.parse(fs.readFileSync(usersFilePath, 'utf-8'));


let userController = {
   login: (req, res) => { 
        res.render("./users/login");
    },
    register: (req, res) => { 
        res.render("./users/register");
    },
    //Marcos140522
    prueba: (req, res) => {
        res.render("./users/prueba");
    }
}

module.exports = userController;