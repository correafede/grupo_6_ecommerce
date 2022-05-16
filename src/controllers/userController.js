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
    newaccount: (req, res) => {
        let image
		if(req.file != undefined) {
			image = req.file.filename;
		} else {
			image = "default-image.png";
		}
		let newUser = {
			id: users[users.length -1].id + 1,
			...req.body,
			image: image,
		};

		users.push(newUser);
		fs.writeFileSync(usersFilePath, JSON.stringify(users, null, " "));
		res.redirect("./");
    },
	//Marcos140522
    prueba: (req, res) => {
        res.render("./users/prueba")
	//Marcos140522
	},
}

module.exports = userController;