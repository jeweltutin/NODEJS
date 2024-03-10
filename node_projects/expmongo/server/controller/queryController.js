const Todo = require('../models/todoModel');
const User = require('../models/userModel');

const showAllTodos = async (req, res) => {
    //res.send({data: "Working Good"});
    try {
        //const todos = await Todo.find({});
        const todos = await Todo.find({}).limit(5);
        if (todos) {
            res.status(200).send(todos);
            /* res.status(200).send({
                message: "Success",
                data: todos
            }); */
        } else {
            res.status(404).send({
                message: "No todos found"
            });
        }
    } catch (error) {
        res.status(500).send({
            message: error.message
        })
    }
}


// http://localhost:5000/api/query/6554a4e4588c73da3ac7c523
const showATodo = async (req, res) => {
    const todoId = req.params.tdId;
    try {
        //const todos = await Todo.find({});
        //const todos = await Todo.find({ _id: todoId});   // Will return an array
        //const todos = await Todo.findOne({ _id: todoId});   // Will return an object
        const todos = await Todo.findById(todoId);   // Will return an object

        /* const todos = await Todo.findOne({ _id: todoId})
        .select({
            _id: 0,
            title: 1,
            status: 1
        }); */

        //We can use without using select
        /* const todos = await Todo.findOne({ _id: todoId }, {
            _id: 0,
            title: 1,
            status: 1
        }); */

        //Another way of select
        //const todos = await Todo.findOne({ _id: todoId }).select('title -_id status');

        //Another way of select
        //const todos = await Todo.findOne({ _id: todoId }, ('title -_id status'));
        
        if (todos) {
            //res.status(200).send(todos);
            res.status(200).send({
                success: true,
                message: "Single product found",
                data: todos
            });
        } else {
            res.status(404).send({
                success: false,
                message: "No todo found"
            });
        }
    } catch (error) {
        res.status(500).send({
            message: error.message
        })
    }
}



const workwQuery = async (req, res) => {
    //console.log("Working");
    //process.exit(1);

    // const users = await User.find();
    //const users = await User.find({ salary : { $eq: 30000 } });
    //const users = await User.find({ salary : { $in: [ 8000, 25000, 30000 ] } });


    // find data using comparison query parameter
    /* const salary = req.query.salary;
    let users;
    if (salary) {
        //users = await User.find({ salary : { $eq: salary }, name: 'Badrul' });
        users = await User.find({ salary : { $eq: salary } });
    } else {
        users = await User.find();
    } */

    // Find data using logical operator
    /* let users = await User .find({
        $and: [{ salary: { $gt: 5000 }}, { age: { $lt: 25 } }]
    }) */

    // Find data using logical operator from peramiter
    // `http://localhost:5000/api/query/basic?salary=20000&age=25
    const salary = req.query.salary;
    const age = req.query.age;
    let users;
    let countUsers;
    if( salary && age ){
        users = await User .find({
            $and: [{ salary: { $gt: salary }}, { age: { $gt: age } }]
        })
    }else {
        users = await User .find({}).sort({name: 1});   // For ascending 1 and descending -1 
        countUsers = await User.find().countDocuments();
    }
    
    
    if (users) {
        //res.status(200).send(todos);
        res.status(200).send({
            success: true,
            message: "users fetched",
            data: users,
            total: countUsers
        });
    } else {
        res.status(404).send({
            success: false,
            message: "No users found"
        });
    }
}

const workingWithQuery = async (req, res) => {
    // console.log("running");
    //const users = await User.find();
    const users = await User.find({
        'name.last': 'Lota',
        age: { $gt: 17, $lt: 66 },
        salary : { $in: [ 8000, 12000, 30000 ] }
    });

    res.status(200).send({
        success: true,
        message: "users fetched",
        data: users
    });
}

const countingQuery = async (req, res) => {
    const selectUsers = await User.find({
        
    }).countDocuments();

    //res.status(200).send("Total "+selectUsers+" Users found");
    res.status(200).json("Total "+selectUsers+" Users found");
}


// sorted by date ascending "asc/1" sorted by date decending "desc/-1"
const sortingQuery = async (req, res) => {
    const selectUsers = await User.find().sort({
        //salary: 'desc'
        salary: -1
    });

    //res.status(200).send("Total "+selectUsers+" Users found");
    res.status(200).json(selectUsers);
}

//module.exports = showAllTodos;
module.exports = { showAllTodos, showATodo, workwQuery, workingWithQuery, countingQuery, sortingQuery };