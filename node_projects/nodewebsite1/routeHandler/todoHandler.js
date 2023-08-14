const express = require('express');
const mongoose = require('mongoose');
const router = express.Router();
const todoSchema = require('../schemas/todoSchema');
const TodoModel = new mongoose.model("Todo", todoSchema);
const checkLogin = require("../middlewares/checkLogin");

 
// GET ALL THE TODOS
router.get('/', async (req, res) => {
    try {
        const alltodos = await TodoModel.find({status: 'active'}).lean();
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
    
});

// GET ALL THE TODOS with populate means joining
router.get('/popdata', async (req, res) => {
    try {
        const alltodos = await TodoModel.find({})
        //.populate("user_id");   // show all data from user table
        .populate("user_id", "name username -_id");   
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
    
});

// GET INACTIVE TODOS with Instance methods
router.get("/active", checkLogin, async (req, res) => {
    console.log(req.username);
    console.log(req.userId);
    console.log(req.role);
    const showInactive = new TodoModel();
    const data = await showInactive.findInactive();
    res.status(200).json({
        data
    });

});

// GET result by name like % % with static methods
router.get("/name", async (rec, res) => {
   const data = await TodoModel.findByName();
    res.status(200).json({
        data
    });
});

// GET result by title like % % with query methods
router.get("/title", async (rec, res) => {
    const data = await TodoModel.find().byTitle("ult");
     res.status(200).json({
         data
     });
 });

// GET ACTIVE TODOS with callback
// Not working check later
router.get("/active-callback",  (rec, res) => {
    const showActive = new TodoModel();
    const data = showActive.findActive()
    .then(()=> {
        res.status(200).json({
            data
        });
    })
    .catch((err) => console.log(err));
    /*
    //Model.find() no longer accepts a callback
    const data = showActive.findActive((err, data) => {
        res.status(200).json({
            data
        });
    });*/
});

//GET RECORDS WITH SPECIFIC FIELDS
router.get("/show", async function (rec,res){
    try{
        const showtodos = await TodoModel.find({}).select({
            _id: 0,
            __v: 0,
            date: 0
        }).limit(10);
        res.status(200).json({
            result: showtodos,
            message: "Success"
        })

    } catch(error){
        res.status(500).json({
            error: "There was a server side error!"
        });
    }
})

// GET A TODO BY ID
router.get('/:id', async (req, res) => {
    try {
        const getdata = await TodoModel.find({ _id: req.params.id});
        res.status(200).json({
            result: getdata,
            message: "Success Found"
        })
    } catch (error) {
        res.status(500).json({
            error: "There was a server side error!"
        });
    }
});

// POST TODO
router.post('/', checkLogin, async (req, res) => {
    //res.send(req.body);
    const todoInsert = new TodoModel({
        ...req.body,
        user_id: req.userId
    });
    try{       
        await todoInsert.save();
        res.status(201).json({
            success: "Todo was inserted successfully!"
        });
        console.log(`${req.body}`);
    }catch (err) {
        res.status(500).json({
            error: "There was a server side error!"
        });
    }
    // POST TODO SIMPLE
/*router.post('/', checkLogin, async (req, res) => {
        try{
            //res.send(req.body);
            const todoInsert = new TodoModel(req.body);
            await todoInsert.save();
            res.status(201).json({
                success: "Todo was inserted successfully!"
            });
            console.log(`${req.body}`);
        }catch (error) {
            res.status(500).json({
                error: "There was a server side error!"
            });
        }
        */

/*const newTodo = new TodoModel(req.body);
        await newTodo.save((err) => {
        if (err) {
            res.status(500).json({
                error: "There was a server side error!"
            });
        } else {
            res.status(200).json({
                error: "Todo was inserted successfully!"
            });
        }
    }); */
});

// POST MULTIPLE TODO
router.post('/insertall', async (req, res) => {
    try {
        await TodoModel.insertMany(req.body);
        res.status(201).json({
            success: "Todo's were inserted successfully!"
        });
    } catch (error) {
        res.status(200).json({
            error: "There was a server side error!"
        });
    }
});

// PUT TODO
router.put('/:id', async (req, res) => {
    try {
        const rowUpdate = await TodoModel.updateOne({_id: req.params.id}, {
            $set: {
                status: "active"
            }
        });
        res.status(200).json({
            success: "Updated successfully!"
        });
        
    } catch (error) {
        res.status(200).json({
            error: "There was a server side error!"
        });
    }
});

// PUT TODO update with return the result
router.put('/update/:id', async (req, res) => {
    try {
        const rowUpdate = await TodoModel.findByIdAndUpdate({_id: req.params.id}, {
            $set: {
                status: "active"
            }
        },
        {
            new: true,
            useFindAndModify:false,
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
});

// DELETE TODO
router.delete('/:id', async (req, res) => {
    try {
        await TodoModel.deleteOne({ _id: req.params.id});
        res.status(200).json({
            message: "Successfully Deleted"
        })
    } catch (error) {
        res.status(500).json({
            error: "There was a server side error!"
        });
    }
});


module.exports = router;