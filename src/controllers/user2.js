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
		let userInDB = User.findOne({
            where: {
                email: req.body.email
            }
        })
		 	if (userInDB) {
				return res.render('./users/register', { 
					errors: {
						email: {
							msg: 'Este email ya esta registrado'
						}
					},
					oldData: req.body, 
				});
			} else { 
            User.create( 
                {
                    first_name: req.body.firstName,
                    last_name: req.body.lastName,
                    email: req.body.email,
                    password: bcryptjs.hashSync(req.body.password, 10),
                    id_UserCategory: 1,
                    image: "default-image.png"
                }).then(() => { 
        return res.redirect('./login')})
        }
    }
}

module.exports = userController;