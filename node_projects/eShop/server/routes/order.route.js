import express from "express";
import { createOrder, deleteOrder, editOrder, editOrderStatus, getOrder, getOrders } from "../controller/order.controller.js";

const router = express.Router();

router
    .route('/')
    .get(getOrders)
    .post(createOrder);

router
    .route('/:id')
    .get(getOrder)
    .put(editOrder);
    //.delete(deleteOrder);

router
    .route('/status/:id')
    .put(editOrderStatus);
    

export default router;