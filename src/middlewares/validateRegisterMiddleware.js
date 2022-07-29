const { body } = require('express-validator');
const path = require("path");

module.exports = [
    body('firstName')
    .notEmpty().withMessage('Debes completar el campo de nombre.').bail()
    .isLength({min: 2}).withMessage('Nombre no tiene un minimo de 2 caracteres.'),
    body('lastName')
    .notEmpty().withMessage('Debes completar el campo de apellido.').bail()
    .isLength({min: 2}).withMessage('Apellido no tiene un minimo de 2 caracteres.'),
    body('email')
    .notEmpty().withMessage('Debes completar el campo con un email.').bail()
    .isEmail().withMessage('Debes completar el campo con un email valido.'),
    body('password')
    .notEmpty().withMessage('Debes completar el campo con una contraseña.').bail()
    .isStrongPassword({
        minLength: 8,
        minLowercase: 1,
        minUppercase: 1,
        minNumbers: 1,
        minSymbols: 1,
        returnScore: false})
    .withMessage('Una contraseña correcta debe tener letras mayúsculas, minúsculas, un número y un carácter especial.'),
    body('confirmPassword')
    .notEmpty().withMessage('Debes completar el campo con la misma contraseña.').bail()
    .custom((value,{req}) =>{
        if(value !== req.body.password){
            throw new Error('Las contraseñas ingresadas no son las mismas.')
        }
        return true;
    }),
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
]