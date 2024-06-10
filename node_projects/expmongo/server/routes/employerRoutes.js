const express = require('express');
const addEmployerMultiple = require('../controller/employerController');

const router = express.Router();

router.route('/')
      .post(addEmployerMultiple);


module.exports = router;