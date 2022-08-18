var express = require('express');
var router = express.Router();
const mainController = require('../controllers/mainController');

const adminMiddleware = require('../middlewares/adminMiddleware')
const authMiddleware = require('../middlewares/authMiddleware')
const registerCheck = require('../middlewares/validateRegisterMiddleware')
const uploadUFile = require('../middlewares/multerUMiddleware')

router.get('/', mainController.index);

router.get('/panel', adminMiddleware, authMiddleware, mainController.panel);

router.get('/panel/users', adminMiddleware, mainController.users);
router.get('/panel/users/create', adminMiddleware, registerCheck , mainController.usersCreate);
router.post('/panel/users/create', adminMiddleware, uploadUFile.single('image'), mainController.usersStore);
router.get('/panel/users/:id', adminMiddleware, mainController.usersEdit);
router.patch('/panel/users/:id', adminMiddleware, uploadUFile.single('image'), mainController.usersUpdate);
router.delete('/panel/users/delete/:id', adminMiddleware, mainController.usersDestroy);

router.get('/panel/products', adminMiddleware, mainController.products);

module.exports = router;
