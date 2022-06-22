const { body } = require('express-validator');

module.exports =  [
    body('email')
    .notEmpty().withMessage('Debes completar el campo con un email.').bail()
    .isEmail().withMessage('Debes completar el campo con un email valido.'),
    body('password')
    .notEmpty().withMessage('Debes completar el campo con una contraseña.').bail()
    .isLength({min: 6}).withMessage('Contraseña no tiene un minimo de 6 caracteres.').bail()
    .isLength({max: 16}).withMessage('Contraseña tiene mas de 16 caracteres.'),
];