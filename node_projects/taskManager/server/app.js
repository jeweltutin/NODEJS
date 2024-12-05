import express from "express";
//import cors from "cors";
import dotenv from 'dotenv';
import morgan from "morgan";
import dbConnect  from "./utils/dbConnect.js";

const app = express();
dotenv.config(); // Load environment variables first
dbConnect();
const port = process.env.PORT || 5000;

//console.log("MongoDB URI:", process.env.MONGODB_URI);
app.get('/', (req,res) => {
    res.send("Api server is running");
})

app.listen(port, () => {
    console.log(`Server is running at port no ${port}`);
}); 