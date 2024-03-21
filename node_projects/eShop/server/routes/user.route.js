import express from "express";
import { authUser, createUser, deleteUser, editUser, getUser, getUsers } from "../controller/user.controller.js";

const router = express.Router();

router
    .route('/')
    .get(getUsers)
    .post(createUser);
router
    .route('/login')
    .post(authUser);
    
router
    .route('/:id')
    .get(getUser)
    .put(editUser)
    .delete(deleteUser);

export default router;