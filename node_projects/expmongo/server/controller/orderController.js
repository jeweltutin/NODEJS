const Order = require("../models/OrderModel");


const addOrderMultiple = async (req, res) => {
    //console.log(req.body);
    try {
        await Order.insertMany([
            {
                _id: 0, name: "Pepperoni", size: "small", price: 19,
                quantity: 10, date: "2024-03-13T08:14:30Z"
            },
            {
                _id: 1, name: "Pepperoni", size: "medium", price: 20,
                quantity: 20, date: "2021-03-13T09:13:24Z"
            },
            {
                _id: 2, name: "Pepperoni", size: "large", price: 21,
                quantity: 30, date: "2024-03-17T09:22:12Z"
            },
            {
                _id: 3, name: "Cheese", size: "small", price: 12,
                quantity: 15, date: "2023-03-13T11:21:39.736Z"
            },
            {
                _id: 4, name: "Cheese", size: "medium", price: 13,
                quantity: 50, date: "2022-01-12T21:23:13.331Z"
            },
            {
                _id: 5, name: "Cheese", size: "large", price: 14,
                quantity: 10, date: "2022-01-12T05:08:13Z"
            },
            {
                _id: 6, name: "Vegan", size: "small", price: 17,
                quantity: 10, date: "2023-01-13T05:08:13Z"
            },
            {
                _id: 7, name: "Vegan", size: "medium", price: 18,
                quantity: 10, date: "2024-01-13T05:10:13Z"
            }
        ]

        );
        res.status(201).json({
            success: true,
            message: "All Orders were inserted successfully!"
        })
    } catch (error) {
        res.status(401).json({
            success: false,
            data: 'Not added :(',
            error: error
        })
    }
}

module.exports = addOrderMultiple;