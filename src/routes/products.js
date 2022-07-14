var express = require('express');
var router = express.Router();
const src = require('debug');
const multer = require('multer');
const path = require('path');
const productController = require('../controllers/productController');

const authMiddleware = require('../middlewares/authMiddleware')
const uploadPFile = require('../middlewares/multerPMiddleware')

router.get('/', productController.list);

// router.get('/detail/:id', productController.detalle);

// router.get('/cart', productController.carrito);

// router.get('/create', authMiddleware ,productController.create);
// router.post('/', uploadPFile.single('image'), productController.store); 

// router.get('/edit/:id', authMiddleware ,productController.edit);
// router.patch('/edit/:id', uploadPFile.any(), productController.update); 

// router.delete('/delete/:id', authMiddleware ,productController.destroy); 

// router.get('/search', productController.search); 

module.exports = router;
