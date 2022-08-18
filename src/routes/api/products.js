const express = require('express');
const router = express.Router();
const productAPIController = require('../../controllers/api/productAPIController');


router.get('/', productAPIController.list);
router.get('/detail/:id', productAPIController.detail);
router.get('/categories', productAPIController.categories);

module.exports = router;