var express = require('express');
var router = express.Router();
const mainController = require('../controllers/mainController.js');

router.get('/', mainController.index);
router.get('/productDetail/:id', mainController.detalle);
router.get('/register', mainController.register);
router.get('/login', mainController.login);
router.get('/productCart', mainController.carrito);

module.exports = router;
