const fs = require('fs');
const path = require('path');
const bcryptjs = require('bcryptjs');
const db = require('../database/models');
const { validationResult } = require('express-validator');
const sequelize = db.sequelize;
const { Op } = require("sequelize");

const Beer = db.Beer;
const User = db.User;
const UserCategory = db.UserCategory;

let mainController = {
    index: (req, res) => { 
        let promIPA = Beer.findAll({
            include: [ 'size', 'category', 'color'],
            where: { id_Category: 1},
            order: [['Nombre', 'ASC']],
            limit: 8
        });
        let promAPA = Beer.findAll({
            include: [ 'size', 'category', 'color'],
            where: { id_Category: 2},
            order: [['Nombre', 'ASC']],
            limit: 8
        });
        let promAMBER = Beer.findAll({
            include: [ 'size', 'category', 'color'],
            where: { id_Category: 3},
            order: [['Nombre', 'ASC']],
            limit: 8
        });
        let promOfertas = Beer.findAll({
            include: [ 'size', 'category', 'color'],
            where: { discount: { [Op.between]: [ 1 , 99]}},
        });
        let precio = [Beer.price]*[1/Beer.discount]
        // cambiar a nuevas, ofertas(con descuento mayor a x, recomandaciones, importadas etc),
        Promise
        .all([promIPA, promAPA, promAMBER, promOfertas])
        .then(([products1, products2, products3, ofertas]) => {
                res.render("index", { products1, products2, products3, ofertas});
            })
    },
    error: (req, res) => { 
        res.render("404");
    },
    panel: (req, res) => {
        return res.render("panel")
    },
    products: (req, res) => {
        Beer.findAll({
            include: [ 'size', 'category', 'color']
        }).then((products) => {
            return res.render("productsList", { products})
        })
    },
    users: (req, res) => {
        User.findAll({
            include:  ['usercategory']
        }).then((users) => {
            return res.render("usersList", { users})
        })
    },
    usersCreate: (req, res) => {
       UserCategory.findAll()

        .then((allUserCategories) => {

        return res.render("usersRegister", { allUserCategories });
        
        })
    },
    usersStore: (req, res) => {
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
                        id_UserCategory: req.body.idUserCategory,
                        image: "default-image.png"
                    })
                return res.redirect('./')
            } else {
                return res.render('./panel/users/create', { 
                    			errors: {
                    				email: {
                    					msg: 'Este email ya esta registrado'
                    				}
                    			},
                    			oldData: req.body, 
            })}
        })	
        },
    usersEdit: (req, res) => {

        let promFindUser = User.findByPk(req.params.id,
            {
                include: ['usercategory']
            });
        let promCategories = UserCategory.findAll();

        Promise
        .all([promFindUser, promCategories])
        .then(([user, allUserCategories]) => {

        return res.render("usersEdit", { user, allUserCategories });
        
        })
    },
    usersUpdate: (req, res) => {
        let UserId = req.params.id;
        User
        .update(
            {
            first_name: req.body.firstName,
            last_name: req.body.lastName,
            email: req.body.email,
            password: req.body.password,
            id_UserCategory: req.body.idUserCategory,
            image: req.body.image
            },
            {
                where: {idUsuarios: UserId}
            }
        )
        .then(() => {
            return res.redirect("../users");
        })
    },
    usersDestroy: (req, res) => {
        let UserId = req.params.id;
        User
        .destroy({where: {idUsuarios: UserId}, force: true})
        .then(()=>{
            return res.redirect("../../users");})
    },
}

module.exports = mainController;