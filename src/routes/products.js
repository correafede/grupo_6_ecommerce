var express = require('express');
var router = express.Router();
const multer = require('multer');
const path = require('path');
const productController = require('../controllers/productController');

router.get('/detail/:id', productController.detalle);

router.get('/cart', productController.carrito);

router.get('/create', productController.create);
// router.post('/', upload.single('image') ,productsController.store); 

router.get('/edit', productController.modify);
// router.post('/', upload.single('image') ,productsController.store); 

// router.delete('/delete/:id', productsController.destroy); 

module.exports = router;
