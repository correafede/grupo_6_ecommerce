var express = require('express');
var router = express.Router();
const productController = require('../controllers/productController');

router.get('/detail/:id', productController.detalle);
router.get('/cart', productController.carrito);
router.get('/create', productController.create);
router.get('/modify', productController.modify);

module.exports = router;
