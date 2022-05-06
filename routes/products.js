var express = require('express');
var router = express.Router();
const productController = require('../controllers/productController');

router.get('/detail/:id', productController.detalle);
router.get('/cart', productController.carrito);

module.exports = router;
