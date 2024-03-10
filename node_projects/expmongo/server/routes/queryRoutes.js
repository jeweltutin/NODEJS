const express = require('express');
const {showAllTodos, showATodo, workwQuery, workingWithQuery, countingQuery, sortingQuery } = require('../controller/queryController');

const router = express.Router();

router.route('/').get(showAllTodos);
router.route('/basic').get(workwQuery);
router.route('/medium').get(workingWithQuery);
router.route('/count-users').get(countingQuery);
router.route('/sort-users').get(sortingQuery);

router.route('/:tdId').get(showATodo);


module.exports = router;