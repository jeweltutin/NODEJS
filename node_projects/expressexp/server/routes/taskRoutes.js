import { Router } from "express";
import { addNewTask, deleteTask, getAllTasks, getTask, updateTask } from "../controller/taskController.js";
import { protect } from '../middleware/authMiddleware.js';



const router = Router();

router.route('/add').post(addNewTask);
//router.route('/').get(getAllTasks);
router.route('/').get(protect, getAllTasks);
//router.get('/', protect, getAllTasks);
router.route('/:id').get(getTask);
router.route('/:id').put(updateTask);
router.route('/:id').delete(deleteTask);

export default router;