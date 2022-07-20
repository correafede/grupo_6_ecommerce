const fs = require('fs');
const path = require('path');
const bcryptjs = require('bcryptjs');
const db = require('../database/models');

const Beer = db.Beer;
const User = db.User;

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
        // cambiar a nuevas, ofertas(con descuento mayor a x, recomandaciones, importadas etc),
        Promise
        .all([promIPA, promAPA, promAMBER])
        .then(([products1, products2, products3]) => {
                res.render("index", { products1, products2, products3});
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
    userEdit: (req, res) => {

    },
    userUpdate: (req, res) => {
        let UserId = req.params.id;
        User
        .update(
            {
            first_name: req.body.firstName,
            last_name: req.body.lastName,
            email: req.body.email,
            password: bcryptjs.hashSync(req.body.password, 10),
            id_UserCategory: req.body.category,
            image: req.body.file
            },
            {
                where: {idUsuarios: UserId}
            }
        )
        .then(() => {
            return res.redirect("./panel/users");
        })
    },
    userDestroy: (req, res) => {
        let UserId = req.params.id;
        User
        .destroy({where: {idUsuarios: UserId}, force: true})
        .then(()=>{
            return res.redirect("./panel/users")})
    },
}

module.exports = mainController;