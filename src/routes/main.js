var express = require('express');
var router = express.Router();
const mainController = require('../controllers/mainController');

const adminMiddleware = require('../middlewares/adminMiddleware')
const authMiddleware = require('../middlewares/authMiddleware')

router.get('/', mainController.index);

router.get('/panel', adminMiddleware, authMiddleware, mainController.panel);

router.get('/panel/users', adminMiddleware, mainController.users);
router.get('/panel/products', adminMiddleware, mainController.products);

module.exports = router;
