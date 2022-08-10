const path = require('path');
const db = require('../../database/models');
const sequelize = db.sequelize;
const { Op } = require("sequelize");

const Beer = db.Beer;
// const Size = db.Size;
// const Color = db.Color;
// const Category = db.Category;

const productAPIController = {
    list: (req, res) => {
        Beer.findAll({
            include: [ 'size', 'category', 'color'],
        })
        .then(birras => {
            let response = {
                count: birras.length,
                countByCategory: 3,
                products: birras
            }
                res.json(response);
            })
    },
    
    detail: (req, res) => {
        Beer.findByPk(req.params.id,
            {
                include: [ 'size', 'category', 'color'],
            })
            .then(beer => {
                let response = {
                    count: beer.length,
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
    }
}

module.exports = productAPIController;