import expressAsyncHandler from "express-async-handler";
import Task from "../models/taskModel.js";


const getAllTasks = expressAsyncHandler(async (req, res) => {
    const tasks = await Task.find();
    res.json(tasks);
});

const getTask = expressAsyncHandler(async (req, res) => {
    const task = await Task.findById(req.params.id);
    if (task) {
        res.json(task);
    } else {
        res.status(404);
        throw new Error('Sorry! News not found');
    }
});


const addNewTask = expressAsyncHandler((req,res) =>{
    const task = req.body.task;
    const time = req.body.time;

    const newTask = new Task({
        task,
        time
    });

    newTask.save();
    res.status(201).json({
        success: true,
        message: 'New Task Added successfully'
    });
})

const updateTask = expressAsyncHandler(async (req, res) => {
    const id = req.params.id;
    //console.log(id)
    const updatedData = req.body;
    updatedData.task = req.body.task;
    updatedData.time = req.body.time;
    //const task = req.body.todo;
    //res.json(updatedData);
    try {
        await Task.findByIdAndUpdate(id, updatedData );
        res.json({
            success: true,
            message: 'Task updated successfully'
        });
    } catch (error) {
        res.status(404);
        throw new Error('Task not found');
    }
});

/*
const updateTask = expressAsyncHandler(async (req, res) => {
    const id = req.params.id;
    const updatedData = req.body;
    updatedData.task = req.body.todo;
    updatedData.time = req.body.time;
    //const task = req.body.todo;
    //res.json(updatedData);

        const uptask = await Task.findById(id);

        if (uptask) {
            await uptask.updateOne({ $set: updatedData });
            await uptask.save();
    
            res.json({
                success: true,
                message: 'Task updated successfully'
            });
        } else {
            await uptask.updateOne({ $set: updatedData });
            await uptask.save();
    
            res.json({
                success: true,
                message: 'Task updated successfully'
            });
        }
     
    });
*/

const deleteTask = expressAsyncHandler(async (req,res) => {
    const task = await Task.findByIdAndDelete(req.params.id);
    if (task) {
        res.json({
            success: true,
            message: 'Task deleted successfully!',
        });
    } else {
        res.status(404);
        throw new Error('Task not found');
    }
});

export {
    getAllTasks, addNewTask, getTask, updateTask, deleteTask
}