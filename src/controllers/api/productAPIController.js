const path = require('path');
const db = require('../../database/models');
const sequelize = db.sequelize;
const { Op } = require("sequelize");

const Beer = db.Beer;
const Size = db.Size;
const Color = db.Color;
const Category = db.Category;

const productAPIController = {
    list: (req, res) => {
        let promBirras = Beer.findAll({
            include: [ 'size', 'category', 'color',],
        });
        let promLast = Beer.findAll({
            include: [ 'size', 'category', 'color',],
            order: [['idCerveza', 'DESC']],
            limit: 1,
        });
        Promise
        .all([promBirras, promLast])
        .then(([birras, last]) => {

            birras.forEach((birra) => {
                birra.dataValues.detail = `http://localhost:3000/api/products/detail/${birra.idCerveza}`;
              });

            
            let response = {
                count: birras.length,
                products: birras,
                last: last
            }
            return (
                res.json(response))
            });
    },
    
    detail: (req, res) => {
        Beer.findByPk(req.params.id,
            {
                include: [ 'size', 'category', 'color'],
            })
            .then(beer => {
                let response = {

                    beer: {
                        id: beer.idCerveza,
                        name: beer.Nombre,
                        size:beer.size.Nombre,
                        category:beer.category.Nombre,
                        color:beer.color.Nombre,
                        abv: beer.abv,
                        ibu: beer.ibu,
                        desc: beer.descrip,
                        discount: beer.discount,
                        quantity: beer.quantity,
                        tags: beer.tags,
                        image: 'http://localhost:3000/img/products/' + beer.image
                    }
                }
                res.json(response);
            });
    },
    categories: (req, res) => {
        let promSize = Size.findAll();
        let promCategory = Category.findAll();
        let promColor = Color.findAll();
        let promCantidad = Beer.findAll({
            include: [ 'size', 'category', 'color'],
            where: {
                id_category: 1
            }});
            let promCantidad2 = Beer.findAll({
                include: [ 'size', 'category', 'color'],
                where: {
                    id_category: 2
                }});
                let promCantidad3 = Beer.findAll({
                    include: [ 'size', 'category', 'color'],
                    where: {
                        id_category: 3
                    }});
                    let promCantidad4 = Beer.findAll({
                        include: [ 'size', 'category', 'color'],
                        where: {
                            id_category: 4
                        }});
                        let promCantidad5 = Beer.findAll({
                            include: [ 'size', 'category', 'color'],
                            where: {
                                id_category: 5
                            }});
                            let promCantidad6 = Beer.findAll({
                                include: [ 'size', 'category', 'color'],
                                where: {
                                    id_category: 6
                                }});
                                let promCantidad7 = Beer.findAll({
                                    include: [ 'size', 'category', 'color'],
                                    where: {
                                        id_category: 7
                                    }});
                                    let promCantidad8 = Beer.findAll({
                                        include: [ 'size', 'category', 'color'],
                                        where: {
                                            id_category: 8
                                        }});
                                        let promCantidad9 = Beer.findAll({
                                            include: [ 'size', 'category', 'color'],
                                            where: {
                                                id_category: 9
                                            }});
        Promise
        .all([promSize, promCategory, promColor, promCantidad,promCantidad2,promCantidad3,promCantidad4,promCantidad5,promCantidad6,promCantidad7,promCantidad8,promCantidad9])
        .then(([sizes, categories, colors, cantidad, cantidad2, cantidad3, cantidad4, cantidad5, cantidad6 ,cantidad7,cantidad8, cantidad9 ]) => {
            let response = {
                count: sizes.length + categories.length + colors.length,
                sizes: {sizes,
                        cantidad: sizes.length},
                categories: {categories: categories, 
                            cantidad: categories.length},
                colors: {colors,
                        cantidad: colors.length},
                countByCategory: {
                    ipa: cantidad.length,
                    apa: cantidad2.length,
                    amber: cantidad3.length,
                    honey: cantidad4.length,
                    trigo: cantidad5.length,
                    stout: cantidad6.length,
                    porter: cantidad7.length,
                    sour: cantidad8.length,
                    frutadas: cantidad9.length
                }
                }
            res.json(response);
        });
    }
}

module.exports = productAPIController;