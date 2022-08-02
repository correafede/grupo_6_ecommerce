const { body } = require('express-validator');

module.exports =  [
    body('email')
    .notEmpty().withMessage('Debes completar el campo con un email.').bail()
    .isEmail().withMessage('Debes completar el campo con un email valido.'),
    body('password')
    .notEmpty().withMessage('Debes completar el campo con una contraseña.').bail()
];