const { validationResult } = require('express-validator');
const fs = require('fs');
const path = require('path');
const bcryptjs = require('bcryptjs');

const usersFilePath = path.join(__dirname, '../data/users.json');
const users = JSON.parse(fs.readFileSync(usersFilePath, 'utf-8'));

const User = require('../models/User')

let userController = {
   login: (req, res) => { 

        res.render("./users/login");
    },
    register: (req, res) => {
        res.render("./users/register");
    },
	processRegister: (req, res) => {
        const errors = validationResult(req);
		if (!errors.isEmpty()) {
			return res.render('./users/register', { 
				errors: errors.mapped(),
				oldData: req.body, 
			});
		}

		let userInDB = User.findByField('email', req.body.email)
		 	if (userInDB) {
				return res.render('./users/register', { 
					errors: {
						email: {
							msg: 'Este email ya esta registrado'
						}
					},
					oldData: req.body, 
				});
			}

		let image
		if(req.file != undefined) {
			image = req.file.filename;
		} else {
			image = "default-image.png";
		};

		let userToCreate = {
			firstName: req.body.firstName,
			lastName: req.body.lastName,
			email: req.body.email,
			password: bcryptjs.hashSync(req.body.password, 10),
			img: image
		};

		let userCreated = User.create(userToCreate);

		return res.redirect('./login')
	},
	processLogin: (req, res) => {
		let userToLogin = User.findByField('email', req.body.email);

		if (userToLogin) {
			let isOkThePassword = bcryptjs.compareSync(req.body.password, userToLogin.password)
			if (isOkThePassword) {
				delete userToLogin.password;
				req.session.userLogged = userToLogin; 

				if (req.body.remember_user) {
					res.cookie('userEmail', req.body.email, { maxAge: (1000 * 60) * 500 })
				}

				return res.redirect('/user/profile')
			}
			
			return res.render('./users/login', {
				
				errors: {
					email: {
						msg: 'Las credenciales no son correctas'
					}
				},
				oldData: req.body,
			});
		}

		return res.render('./users/login', {
			errors: {
				email: {
					msg: 'Este email no esta registrado'
				}
			}
		});
	},
	profile: (req, res) => {
		res.render("./users/profile", {
			user: req.session.userLogged
		});
	},
	logout: (req, res) => {
		res.clearCookie('userEmail');
		req.session.destroy();
		return res.redirect('/');
	}
}

module.exports = userController;