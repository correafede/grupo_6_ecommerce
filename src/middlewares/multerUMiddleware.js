const multer = require('multer');
const path = require('path');

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, path.join(__dirname, '../../public/img/users'));
    } ,
    filename: (req, file, cb) => {
        let newuserpic = 'newuser' + Date.now() + '-'+ path.extname(file.originalname);
        cb(null, newuserpic);
    }
});

const uploadUFile = multer({storage});

module.exports = uploadUFile;