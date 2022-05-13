const fs = require('fs');
const path = require('path');

const productsFilePath = path.join(__dirname, '../data/products.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));

let productController = {
    list: (req, res) => { 
        res.render("./products/products", { products });
    },
    detalle: (req, res) => {
        let birra = products.find(birra => birra.id == req.params.id);
        res.render("./products/productDetail", { birra });
    },
    carrito: (req, res) => { 
        res.render("./products/productCart");
    },
    create: (req, res) => { 
        res.render("./products/productCreate");
    },
    edit: (req, res) => {
        let birra = products.find(birra => birra.id == req.params.id);
        res.render("./products/productEdit", { birra });
    }, 
    destroy: (req, res) => { 
        res.send("producto eliminado");
    },
    store: (req, res) => { 
        res.send("producto guardado");
    }
}

module.exports = productController;

