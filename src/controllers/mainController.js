const fs = require('fs');
const path = require('path');

const productsFilePath = path.join(__dirname, '../data/products.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));

let mainController = {
    index: (req, res) => { 
        res.render("index", {lista: products}); 
    },
    search: (req, res) => { 
        res.send("buscando productos");
    },
    error: (req, res) => { 
        res.render("404");
    }
}


module.exports = mainController;