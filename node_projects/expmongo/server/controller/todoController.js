const Todo = require('../models/todoModel');

const showAllTodos = (async (req, res) => {
    //res.json('Nice working');
    try {
        const alltodos = await Todo.find({ status: 'inactive' }).lean();
        res.json(alltodos);
        /* res.status(200).json({
            result: alltodos,
            message: "Success"
        }) */
    } catch (error) {
        res.status(500).json({
            error: "There was a server side error!"
        });
    }
})

// This is working without any checking or msg for basic
/* const addTodo = (req,res) => {
    //res.json('Nice working');
    const newTodo = new Todo(req.body);
    newTodo.save();
} */

//MongooseError('Model.prototype.save() no longer accepts a callback')
/* const addTodo = (req,res) => {
    const newTodo = new Todo(req.body);
    newTodo.save((err) => {
        if (err) {
            res.status(500).json({
                error: "There was a server side error!"
            })
        } else {
            res.status(200).json({
                message: "Todo was inserted successfully!"
            })
        }
    } );
} */

//GET RECORDS WITH SPECIFIC FIELDS
const showSelectedFieldsOnly = async (req, res) => {
    try {
        const showtodos = await Todo.find({}).select({
            _id: 0,
            __v: 0,
            date: 0
        }).limit(15);
        res.status(200).json({
            result: showtodos,
            message: "Success"
        })

    } catch (error) {
        res.status(500).json({
            error: "There was a server side error!"
        });
    }
}

//GET RECORDS BY TITLE LIKE %% // Find the title like %TM%
 const findTitleLike = (req, res) => {
    //Todo.find ({ title: /TM/i })
    
    // executes, title LIKE /html/ and only selecting the "title" and "description" fields
    Todo.find({ title: /tm/i }, 'title description').exec()
    .then((data) => {
        res.status(200).json({
            result: data,
            message: "Success Found"
        })
    })
    .catch((error) => {
        msg: error
    })
} 

//GET RECORDS BY TITLE LIKE %% // Find the title like %TM% from url
//http://localhost:5000/api/todo/find-title-v1?searchTitle=php
const findTitleLikeFromUrl = (req, res) => {
    //Todo.find ({ title: /TM/i })
    let  titleFronUrl = req.query.searchTitle;
    if (!titleFronUrl) {
        titleFronUrl = '';
    } else {
        titleFronUrl;
    }
    console.log(titleFronUrl);
    // executes, title LIKE /html/ and only selecting the "title" and "description" fields
    Todo.find({ title: RegExp(titleFronUrl, 'i') }, 'title description').exec()
    .then((data) => {
        res.status(200).json({
            result: data,
            message: "Success Found"
        })
    })
    .catch((error) => {
        msg: error
    })
} 


// GET A TODO BY ID //** We can use try catch or using then catch */
const showAtodoById = async (req,res) => {
    await Todo.find({ _id: req.params.id})
    .then((data)=> {
        res.status(200).json({
            result: data,
            message: "Success Found"
        })
    })
    .catch((error)=> {
        res.status(500).json({
            // msg: "There was a server side error!"
            msg: error.message
        });
    })

    /* 
    const getdata = await Todo.find({ _id: req.params.id})
    try {
        const getdata = await Todo.find({ _id: req.params.id});
        res.status(200).json({
            result: getdata,
            message: "Success Found"
        })
    } catch (error) {
        res.status(500).json({
            error: "There was a server side error!"
        });
    } */
}


const addTodo = async (req, res) => {
    //res.json('Nice working');
    const newTodo = new Todo(req.body);
    try {
        await newTodo.save();
        res.status(201).json({
            success: true,
            message: "Todo was inserted successfully!"
        })
    } catch (error) {
        res.status(401).json({
            success: false,
            data: 'Slide not added :('
        })
    }
}

const addTodosMultiple = async (req, res) => {
    try {
        await Todo.insertMany(req.body);
        res.status(201).json({
            success: true,
            message: "Todo's were inserted successfully!"
        })
    } catch (error) {
        res.status(401).json({
            success: false,
            data: 'Slide not added :('
        })
    }
}

const updateTodo = async (req, res) => {
    try {
        await Todo.updateOne({ _id: req.params.id }, {
            $set: {
                title: "Learn Express updated - Happy Day"
            }
        });
        res.status(201).json({
            success: true,
            message: "Todo updated successfully!"
        });
    } catch (error) {
        res.status(401).json({
            success: false,
            data: 'Not updated :('
        })
    }
}

// PUT TODO update with return the result

const updateTodoWithResult = async (req, res) => {
    const updatedData = req.body;
    console.log(updatedData);
    try {
        const rowUpdate = await Todo.findByIdAndUpdate({ _id: req.params.id }, {
            /*  $set: {
                 title: updatedData.title,
                 description: updatedData.description
             }  */
            $set: updatedData
        },
            {
                new: true,
            });
        res.status(200).json({
            result: rowUpdate,
            success: "Updated successfully!"
        });

    } catch (error) {
        res.status(200).json({
            error: "There was a server side error!"
        });
    }
}

const deleteAtodo = async (req, res) => {
    try {
        await Todo.deleteOne({ _id: req.params.id});
        res.status(200).json({
            message: "Successfully Deleted"
        })
    } catch (error) {
        res.status(500).json({
            error: "There was a server side error!"
        });
    }
}

module.exports = { showAllTodos, showSelectedFieldsOnly, showAtodoById, findTitleLike, findTitleLikeFromUrl, addTodo, addTodosMultiple, updateTodo, updateTodoWithResult, deleteAtodo }