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
        let userInDB = req.body.email;
        
		User.findOne({ 
                where: {
                         email: userInDB,
                       }
            }).then((user) => { 
                if (user == null ) {
                    User.create({
                        first_name: req.body.firstName,
                        last_name: req.body.lastName,
                        email: req.body.email,
                        password: bcryptjs.hashSync(req.body.password, 10),
                        id_UserCategory: 1,
                        image: "default-image.png"
                    })
                return res.redirect('./login')
            } else {
                return res.render('./users/register', { 
                    			errors: {
                    				email: {
                    					msg: 'Este email ya esta registrado'
                    				}
                    			},
                    			oldData: req.body, 
            })}
        })	
        },
        processLogin: (req, res) => {
            User.findOne( {
                where: {
                    email: req.body.email
                }
            }).then((userToLogin) => {

                if (userToLogin) {
                    let isOkThePassword = bcryptjs.compareSync(req.body.password, userToLogin.password)
                if (isOkThePassword) {
                    delete userToLogin.password;
                    req.session.userLogged = userToLogin; 
    
                    if (req.body.remember_user) {
                        res.cookie('userEmail', req.body.email, { maxAge: (1000 * 60) * 5 })// 5 minutos
                    }
                    res.cookie('userCategory', userToLogin.id_UserCategory, { maxAge: (1000 * 60) * 5 })
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
        
            })
    
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