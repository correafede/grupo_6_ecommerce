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
    update: (req, res) => {
		let birra = products.find(product => product.id == req.params.id)
		let image

		if(req.files[0] != undefined){
			image = req.files[0].filename
		} else {
			image = birra.image
		};

		productToEdit = {
			id: birra.id,
			...req.body,
			image: image,
		};

		let newProducts = products.map(product => { 
			if(product.id == birra.id) {
				return product = {...birra};
			}
			return product;
		})

		fs.writeFileSync(productsFilePath, JSON.stringify(newProducts, null, ' '));
		res.render("./products/productEdit", { birra });
    },
    destroy: (req, res) => { 
		let productoDestroy = products.filter(product => product.id != req.params.id);
		fs.writeFileSync(productsFilePath, JSON.stringify(productoDestroy, null, ' '));
		res.redirect('../')
    },
    store: (req, res) => { 
        let image
		if(req.file != undefined) {
			image = req.file.filename;
		} else {
			image = "default-image.png";
		}
		let newProducto = {
			id: products[products.length -1].id + 1,
			...req.body,
			image: image,
		};

		products.push(newProducto);
		fs.writeFileSync(productsFilePath, JSON.stringify(products, null, " "));
		res.redirect("./products");
    },
	search: (req, res) => { 
        let search = req.query.keywords;
		let birraSearch = products.filter(product => product.name.toLowerCase().includes(search));	
		res.render('results', { 
			birraSearch, 
			search,
		});
    }
}

module.exports = productController;

