const { body } = require('express-validator');

module.exports =  [
    body('name')
    .notEmpty().withMessage('Debes completar el campo con el nombre del producto.').bail()
    .isLength({min: 5}).withMessage('El nombre del producto debe tener minimo 5 caracteres'),
    body('description')
    .notEmpty().withMessage('Debes completar la descripcion.').bail()
    .isLength({min: 20}).withMessage('La descripcion debe tener minimo 20 caracteres.'),
    body('image').custom((value, {req}) => { 
        let file = req.file;
        let accepetedExtensions = ['.jpg', 'jpeg','.png', '.gif' ];
    
        if (file) {
            let fileExtension = path.extname(file.originalname);
            if (!accepetedExtensions.includes(fileExtension)){
                throw new Error('Las extensiones de archivo pertimidas son: ' + accepetedExtensions.join(', '));
            }      
    }
    return true 
    })
];