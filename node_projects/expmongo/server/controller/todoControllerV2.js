const Todo = require('../models/todoModel.js');

//Post a todo with user: for relation
/* const createTodo = async (req, res) => {  
    const newTodo = new Todo(req.body);
    await newTodo.save()
    .then((data) => {
        res.status(200).json({
            result: data,
            message: "New Todo Created!"
        })
    })
    .catch((error) => {
        error
    })
} */

const createTodo = async (req, res) => {
    const userId = req.body.userID;
    const newTodo = new Todo({
        ...req.body,
        user: userId
    })
    await newTodo.save()
        .then((data) => {
            res.status(200).json({
                result: data,
                message: "New Todo Created!"
            })
        })
        .catch((error) => {
            error
        })
}

const showTodoList = async (req, res) => {
    await Todo.find()
        .then((alltodos) => {
            res.status(200).json({
                message: "Success",
                result: alltodos
            });
        })
        .catch((error) => {
            error
        })
}

const showTodoListwUser = async (req, res) => {
    // await Todo.find().populate("user")
    await Todo.find().populate("user", "name username status -_id")
        .then((alltodos) => {
            res.status(200).json({
                message: "Success",
                result: alltodos
            });
        })
        .catch((error) => {
            error
        })
}
module.exports = { createTodo, showTodoList, showTodoListwUser };
