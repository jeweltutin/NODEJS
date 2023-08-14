import { Router } from "express";
import { addNewTask, deleteTask, getAllTasks, getTask, updateTask } from "../controller/taskController.js";



const router = Router();

router.route('/add').post(addNewTask);
router.route('/').get(getAllTasks);
router.route('/:id').get(getTask);
router.route('/:id').put(updateTask);
router.route('/:id').delete(deleteTask);

export default router;