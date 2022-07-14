const path = require('path');
const db = require('../database/models');
const sequelize = db.sequelize;
const { Op } = require("sequelize");

const Beer = db.Cervezas;

let productController = {
    list: (req, res) => { 
        res.render("./products/products", { products });
    }

}