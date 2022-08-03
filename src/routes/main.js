var express = require('express');
var router = express.Router();
const mainController = require('../controllers/mainController');

const adminMiddleware = require('../middlewares/adminMiddleware')
const authMiddleware = require('../middlewares/authMiddleware')

router.get('/', mainController.index);

router.get('/panel', adminMiddleware, authMiddleware, mainController.panel);

router.get('/panel/users', adminMiddleware, mainController.users);
router.get('/panel/users/create', adminMiddleware, mainController.usersCreate);
router.post('/', adminMiddleware, mainController.usersStore);
router.get('/panel/users/:id', adminMiddleware, mainController.userEdit);
router.patch('/panel/users/:id', adminMiddleware, mainController.userUpdate);
router.delete('/panel/edit/delete/:id', adminMiddleware, mainController.userDestroy);

router.get('/panel/products', adminMiddleware, mainController.products);

module.exports = router;
