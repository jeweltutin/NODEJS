import express from "express";
import { authUser, createUser, deleteUser, editUser, getUser, getUsers } from "../controller/user.controller.js";
import { authJwt, authorizeRole } from "../helpers/jwt.js";

const router = express.Router();

router
    .route('/')
    .get(authJwt(), authorizeRole(['admin', 'editor', 'customer']), getUsers)
    .post(createUser);
router
    .route('/login')
    .post(authUser);
    
router
    .route('/:id')
    .get(getUser)
    .put(editUser)
    .delete(authJwt(), authorizeRole(['admin']), deleteUser);

export default router;