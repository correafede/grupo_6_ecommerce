const fs = require('fs');
const path = require('path');

const db = require('../database/models');
const sequelize = db.sequelize;

const Beer = db.Beer;



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
    }
}


module.exports = mainController;