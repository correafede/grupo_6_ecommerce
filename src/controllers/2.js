const path = require('path');
const db = require('../database/models');
const sequelize = db.sequelize;
const { Op } = require("sequelize");
const { validationResult } = require('express-validator');
const fs = require('fs');
const bcryptjs = require('bcryptjs');

const User = db.User;

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
    
            User.create( 
                {
                    first_name: req.body.firstName,
                    last_name: req.body.lastName,
                    email: req.body.email,
                    password: bcryptjs.hashSync(req.body.password, 10),
                    image: image
                });
        return res.redirect('./login')
    }


}

module.exports = userController;