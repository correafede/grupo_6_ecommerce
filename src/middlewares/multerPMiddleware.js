const multer = require('multer');
const path = require('path');


const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, path.join(__dirname, '../../public/img/products'));
    } ,
    filename: (req, file, cb) => {
        let newproduct = 'newproduct' + '-' + Date.now() + path.extname(file.originalname);
        cb(null, newproduct);
    }
});

const uploadPFile = multer({storage});

module.exports = uploadPFile;