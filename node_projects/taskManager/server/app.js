import express from "express";
//import cors from "cors";
import morgan from "morgan";
import dotenv from 'dotenv';
import dbConnect from "./utils/dbConnect.js";
import { errorHandler, routeNotFound } from "./middlewares/errorHandler.js"; 
import routes from "./routes/index.js";

const app = express();
dotenv.config(); // Load environment variables first

//console.log("MongoDB URI:", process.env.MONGODB_URI);
dbConnect();

if (process.env.NODE_ENV === "development") {
    app.use(morgan("dev"));
}
app.use(express.json());

app.get('/', (req,res) => {
    res.send("Api server is running");
})
app.use("/api", routes);

app.use(routeNotFound);
app.use(errorHandler);

const port = process.env.PORT || 5000;
app.listen(port, () => {
    console.log(`Server is running at port no ${port}`);
}); 