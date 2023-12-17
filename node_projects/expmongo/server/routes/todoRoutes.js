const express = require('express');
const router = express.Router();

//import showAllTodos from '../controller/todoController';
const { showAllTodos,showSelectedFieldsOnly, showAtodoById, addTodo, addTodosMultiple, updateTodo, updateTodoWithResult, deleteAtodo, findTitleLike, findTitleLikeFromUrl } = require('../controller/todoController.js');
const { createTodo, showTodoList, showTodoListwUser } = require('../controller/todoControllerV2.js');

router.route('/').get(showAllTodos);
router.route('/ssfo').get(showSelectedFieldsOnly);
router.route('/find-title').get(findTitleLike);
router.route('/find-title-v1').get(findTitleLikeFromUrl);
//router.route('/:id').get(showAtodoById);
//router.route('/atodo/:id').get(showAtodoById);

router.route('/').post(addTodo);       
router.route('/multiple-add').post(addTodosMultiple); 
router.route('/:id').put(updateTodo);      
router.route('/update/:id').put(updateTodoWithResult);      
router.route('/:id').delete(deleteAtodo);


//Relational Routes
router.route('/rel').get(showTodoList);
router.route('/todolistwuser').get(showTodoListwUser);
router.route('/rel').post(createTodo);

module.exports = router;