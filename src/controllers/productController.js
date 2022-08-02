const path = require('path');
const db = require('../database/models');
const sequelize = db.sequelize;
const { Op } = require("sequelize");
const { validationResult } = require('express-validator');

const Beer = db.Beer;
const Size = db.Size;
const Color = db.Color;
const Category = db.Category;

let productController = {
    list: (req, res) => { 
        Beer.findAll({
            include: [ 'size', 'category', 'color'],
            order: [['Nombre', 'ASC']]
        })
            .then(products => {
                res.render("./products/products", { products});
            })
    },
    detalle: (req, res)=> {
        Beer.findByPk(req.params.id,
            {
                include: ['size', 'category', 'color',]
            })
            .then(birra => {
                res.render('./products/productDetail', {birra});
            });
    },
    carrito: (req, res) => { 
        res.render("/products/productCart");
    },
    create: (req, res) => { 
        let promSizes = Size.findAll();
        let promCategories = Category.findAll();
        let promColors = Color.findAll();

        Promise
        .all([promSizes, promCategories, promColors])
        .then(([allSizes, allCategories, allColors]) => {

        return res.render("./products/productCreate", { allSizes, allCategories, allColors})});
    
    },
    store: (req, res) => {
        // const errors = validationResult(req);
		// if (!errors.isEmpty()) {
		// 	return res.redirect('/products/create', { 
		// 		errors: errors.mapped(),
		// 	});
		// }
        Beer
        .create(
            {
            Nombre: req.body.name,
            id_Size: req.body.idSize,
            id_Category: req.body.idCategory,
            id_Color: req.body.idColor,
            abv: req.body.abv,
            ibu: req.body.ibu,
            descrip: req.body.description,
            price: req.body.price,
            discount: req.body.discount,
            quantity: req.body.quantity,
            }
        )
        .then(() => {
            return res.redirect("./products");
        })
    },
    edit: (req, res) => {
        let promFindBeer = db.Beer.findByPk(req.params.id,
            {
                include: ['size', 'category', 'color']
            });
        let promSizes = Size.findAll();
        let promCategories = Category.findAll();
        let promColors = Color.findAll();

        Promise
        .all([promFindBeer, promSizes, promCategories, promColors])
        .then(([birra, allSizes, allCategories, allColors]) => {

        return res.render("./products/productEdit", { birra, allSizes, allCategories, allColors})});
    },
    update: (req, res) => {
        let BeerId = req.params.id;
        Beer
        .update(
            {
            Nombre: req.body.name,
            id_Size: req.body.idSize,
            id_Category: req.body.idCategory,
            id_Color: req.body.idColor,
            abv: req.body.abv,
            ibu: req.body.ibu,
            descrip: req.body.description,
            price: req.body.price,
            discount: req.body.discount,
            quantity: req.body.quantity,
            },
            {
                where: {idCerveza: BeerId}
            }
        )
        .then(() => {
            return res.redirect("../");
        })
    },
    destroy: (req, res) => {
        let BirraId = req.params.id;
        Beer
        .destroy({where: {idCerveza: BirraId}, force: true})
        .then(()=>{
            return res.redirect("../")})
    },
    search: (req, res) => { 
        let search = req.query.keywords;
        let birraSearch = Beer.findAll({
            include: [ 'size', 'category', 'color'],
            where: {
                tags: { [Op.like]: '%' + req.query.keywords + '%' },
                   }
                }
            )
        .then((birraSearch) => {
                return res.render('results', { 
                    birraSearch, 
                    search
                }
            )
        })
    }
}

module.exports = productController