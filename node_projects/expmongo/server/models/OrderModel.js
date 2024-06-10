const mongoose = require('mongoose');

const orderSchema = mongoose.Schema(
    {
        _id: {
            type: Number,
            required: true
        },
        name: {
            type: String,
            required: true
        },
        size: String,
        price: Number,
        quantity: Number,
        date: Date
    }
)

const Order = mongoose.model('Order', orderSchema);
module.exports = Order;