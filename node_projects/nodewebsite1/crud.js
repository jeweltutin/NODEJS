const express = require("express");
const mongoose = require("mongoose");
const dotenv = require("dotenv");
//import dotenv from 'dotenv';
const todoHandler = require("./routeHandler/todoHandler");
const userHandler = require("./routeHandler/userHandler");

//  express app initialization
const app = express();
dotenv.config();
app.use(express.json());

// Database connection with mongoose
mongoose.connect("mongodb://localhost/todos", { 
    useNewUrlParser: true,
    useUnifiedTopology: true
    })
        .then(() => console.log("connection successfull"))
        .catch((err) => console.log(err));

//  Application routes
app.use('/todo', todoHandler);
app.use('/user', userHandler);

// default errors handler
const errorHandler = function errorHandler(err, req, res, next){
    console.log(err);
    if(res.headersSent){
        return next(err);
    }
    res.status(500).json({ error: err });
}
app.use(errorHandler);

app.listen(3000, () => {
    console.log("app listening at port 3000");
});