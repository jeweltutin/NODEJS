import express from "express";
import { isAdminRoute, protectRoute } from "../middlewares/auth.js";
import { createSubTask, createTask, dashboardStatistics, deleteRestoreTask, duplicateTask, getTask, getTasks, postTaskActivity, trashTask, updateTask } from "../controller/taskController.js";
import uploadImage from "../middlewares/multer.js"; 


const router = express.Router();

//router.post("/create", protectRoute, isAdminRoute, createTask);
router.post("/create", protectRoute, isAdminRoute, uploadImage.array("assets", 5), createTask); // Use Multer for file handling
router.post("/duplicate/:id", protectRoute, isAdminRoute, duplicateTask);
router.post("/activity/:id", protectRoute, postTaskActivity);

router.get("/dashboard", protectRoute, dashboardStatistics);
router.get("/", getTasks);
router.get("/:id", protectRoute, getTask);

router.put("/create-subtask/:id", protectRoute, isAdminRoute, createSubTask);
router.put("/update/:id", protectRoute, isAdminRoute, uploadImage.array('assets', 5), updateTask);
router.put("/:id", protectRoute, isAdminRoute, trashTask);

router.delete(
  "/delete-restore/:id?",
  protectRoute,
  isAdminRoute,
  deleteRestoreTask
);

export default router;




//http://localhost:8800/api/task?stage=todo