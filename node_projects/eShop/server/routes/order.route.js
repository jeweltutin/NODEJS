import express from "express";
import { createOrder, editOrder, editOrderStatus, getOrder, getOrders } from "../controller/order.controller.js";

const router = express.Router();

router
    .route('/')
    .get(getOrders)
    .post(createOrder);

router
    .route('/:id')
    .get(getOrder)
    .put(editOrder);

router
    .route('/status/:id')
    .put(editOrderStatus);

export default router;