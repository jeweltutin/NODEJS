const express = require('express');
//import { showDateTime } from "../controller/dateTimeController";

const {showDateTime, showDateTimeDB, showDatefromUrl} = require('../controller/dateTimeController');

const router = express.Router();

router.route('/').get(showDateTime);
// router.route('/').get(showDateTimeDB);

const date = new Date();

//router.route('/test?date=${date.toISOString()}').get(showDatefromUrl);
//router.route('/test/:myDate').get(showDatefromUrl);   // http://localhost:5000/date-time/test/2023-12-17

router.route('/test/').get(showDatefromUrl);   

//export default router;
module.exports = router;