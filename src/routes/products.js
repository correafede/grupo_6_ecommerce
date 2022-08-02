var express = require('express');
var router = express.Router();
const productController = require('../controllers/productController');

const authMiddleware = require('../middlewares/authMiddleware')
const uploadPFile = require('../middlewares/multerPMiddleware')
const adminMiddleware = require('../middlewares/adminMiddleware')
const productCheck = require('../middlewares/validateProductMiddleware')

router.get('/', productController.list);

router.get('/detail/:id', productController.detalle);

router.get('/cart', productController.carrito);

router.get('/create', adminMiddleware,productController.create);
router.post('/', uploadPFile.single('image'), productCheck, productController.store); 

router.get('/edit/:id', authMiddleware ,productController.edit);
router.patch('/edit/:id', uploadPFile.any(), productCheck, productController.update); 

router.delete('/delete/:id', authMiddleware ,productController.destroy); 

router.get('/search', productController.search); 

module.exports = router;
