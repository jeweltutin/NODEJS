const express = require('express');
//import { showDateTime } from "../controller/dateTimeController";

const {showDateTime, showDateTimeDB} = require('../controller/dateTimeController');

const router = express.Router();

// router.route('/').get(showDateTime);
router.route('/').get(showDateTimeDB);

//export default router;
module.exports = router;