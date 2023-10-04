import { Router } from "express";
import { authUser, registerUser, getUsers } from "../controller/userController.js";
import { protect, admin } from "../middleware/authMiddleware.js";

const router = Router();

router.route('/').post(registerUser);
router.route('/').get(getUsers);
//router.get('/', protect, admin, getUsers);
router.post('/login', authUser);
//console.log("I am from router");
export default router;
//module.exports = router;  // Not working with es6 import system