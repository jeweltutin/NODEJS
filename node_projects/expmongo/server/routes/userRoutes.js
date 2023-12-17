const express = require('express');
const { getUsers, createUser } = require('../controller/userController');


const router = express.Router();

router.route('/').get(getUsers);
router.route('/').post(createUser);


module.exports = router;