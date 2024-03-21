//const mongoose = require('mongoose');
import mongoose from "mongoose";

const orderItemSchema = mongoose.Schema({
    quantity: {
        type: Number,
        required: true
    },
    product: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Product'
    }
})

//exports.OrderItem = mongoose.model('OrderItem', orderItemSchema);

const OrderItem = mongoose.model('OrderItem', orderItemSchema);
export default OrderItem;

