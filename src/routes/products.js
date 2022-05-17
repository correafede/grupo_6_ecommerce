var express = require('express');
var router = express.Router();
const src = require('debug');
const multer = require('multer');
const path = require('path');
const productController = require('../controllers/productController');

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, path.join(__dirname, '../../public/img'));
    } ,
    filename: (req, file, cb) => {
        let newproduct = 'newproduct' + Date.now() + '-'+ path.extname(file.originalname);
        cb(null, newproduct);
    }
});

const upload = multer({storage});

router.get('/', productController.list);

router.get('/detail/:id', productController.detalle);

router.get('/cart', productController.carrito);

router.get('/create', productController.create);
router.post('/', upload.single('image'), productController.store); 

router.get('/edit/:id', productController.edit);
router.patch('/edit/:id', upload.any(), productController.update); 

router.delete('/delete/:id', productController.destroy); 

router.get('/search', productController.search); 

module.exports = router;
