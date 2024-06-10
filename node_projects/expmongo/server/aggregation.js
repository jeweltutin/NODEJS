const express = require('express');
const mongoose = require('mongoose');
const colors = require('colors');

const employerRoutes = require('./routes/employerRoutes');
const orderRoutes = require('./routes/orderRoutes');

const app = express();

const PORT = process.env.PORT || 5000;

//DB connect with async await
const connectDB = async () => {
    try {
        const conn = await mongoose.connect('mongodb://localhost:27017/aggregation');
        console.log(`MongoDB Connected: ${conn.connection.host}`.blue.bold.underline.bgBrightMagenta);
    } catch (error) {
        console.log("DB is not Connected");
        console.log(error);
        process.exit(1);
    }   
}

app.get('/', (req, res) => {
    res.send("Server is running!");
})

app.use(express.json());

app.use('/api/employer', employerRoutes);
app.use('/api/order', orderRoutes);

app.listen(PORT, async () => {
    console.log(`Surver is running on port ${PORT}`.yellow.bold);
    await connectDB();
})