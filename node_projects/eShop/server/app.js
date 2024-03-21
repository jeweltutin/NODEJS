import express from "express";
// const express = require('express');
import dotenv from 'dotenv';
import morgan from "morgan";
import mongoose from "mongoose";
import authJwt from "./helpers/jwt.js";
import errorHandler from "./helpers/error-handler.js";

import productRoutes from './routes/product.route.js';
import categoryRoutes from './routes/category.route.js';
import userRoutes from './routes/user.route.js';
import orderRoutes from './routes/order.route.js';



dotenv.config();
// require('dotenv/config);

const app = express();
//mongoose.connect('mongodb+srv://jeweltutin:m0tLp7QWvxdq4HgX@cluster0.thdzvng.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0&dbName=eshop-database')
//mongoose.connect('mongodb+srv://jeweltutin:m0tLp7QWvxdq4HgX@cluster0.thdzvng.mongodb.net/eshop-database')

mongoose.connect(process.env.MONGO_CONNECTION_STRING)
.then(() => {
    console.log('Database connected successfully!')
})
.catch((err) => {
    console.log(err);
})

app.use(express.json());
app.use(authJwt());
app.use(errorHandler);

if (process.env.NODE_ENV === 'development') {
    app.use(morgan('dev'));
    //app.use(morgan('tiny'));
}

const api = process.env.API_URL;

app.get(api+'/', (req, res) => {
    res.send('API server is running!');
})

app.use(`${api}/user`, userRoutes);
app.use(`${api}/product`, productRoutes);
app.use(`${api}/category`, categoryRoutes);
app.use(`${api}/order`, orderRoutes);

app.listen(5000, () => {
    //console.log(api);
    console.log('Server is running http://localhost:5000');
})