const express = require('express');
const addOrderMultiple = require('../controller/orderController');

const router = express.Router();

router
    .route('/')
    .post(addOrderMultiple);


module.exports = router;