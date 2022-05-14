var express = require('express');
var router = express.Router();
const userController = require('../controllers/userController');
const src = require('debug');
const multer = require('multer');
const path = require('path');

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, path.join(__dirname, '../../public/img/users'));
    } ,
    filename: (req, file, cb) => {
        let newproduct = 'newuser' + Date.now() + '-'+ path.extname(file.originalname);
        cb(null, newproduct);
    }
});

const upload = multer({storage});


router.get('/login', userController.login);

router.get('/register', userController.register);
router.post('/', upload.single('image'), userController.newaccount); 


module.exports = router;
