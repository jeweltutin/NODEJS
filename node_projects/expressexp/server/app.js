import express  from "express";
import envfile from 'dotenv';
import dbconnect from "./config/db.js";
import consoleColors from 'colors';
import cors from 'cors'
//import path from 'path';
//import {fileURLToPath} from 'url';

// Import Routes
import userRoutes from './routes/userRoutes.js';
import sliderRoutes from './routes/sliderRoutes.js';
import newsRoutes from './routes/newsRoutes.js';
import movieRoutes from './routes/movieRoutes.js';
import taskRoutes from './routes/taskRoutes.js';

const app = express();
app.use(cors())
envfile.config();
dbconnect();
consoleColors.enable();
//consoleColors.disable();
app.use(express.json());

// Function to serve all static files
// inside public directory.
app.use(express.static('storage'));
app.use('/uploads', express.static('uploads'));

/*const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
app.use(
    '/storage/uploads',
    express.static(path.join(__dirname, '../storage/uploads'))
  );*/

app.get('/', (req, res) => {
    res.send('Welcome! server working');
});

app.get('/erchk', (rec, res) => {
    //res.send('Hello');
    //throw new Error('There was an error');
    res.send(a);
});



// Routes
app.use('/api/user', userRoutes);
app.use('/api/slide', sliderRoutes);
app.use('/api/news', newsRoutes);
app.use('/api/movies', movieRoutes);
app.use('/api/tasks', taskRoutes);

/*const __dirname = path.resolve();
app.use(
  '/storage/uploads',
  express.static(path.join(__dirname, '../storage/uploads'))
);*/


// 404 error handler
app.use((req, res, next) => {
    // res.send('Requested url was not found!'); // OR
    next('Requested url was not found!');
});

// Invigible default error handling middlewire Overwrite. This will be the last middlewire function
app.use((err, req, res, next) => {
    //console.log(err);
    //res.status(500).send('Ther was an error!');
    if (err.message) {
        res.status(500).send(err.message);
    } else {
        res.status(500).send(err);
    }
});



//const PORT = 3000;
//app.listen(PORT, console.log("app listening at port 3000"));
const PORT = process.env.PORT || 8000;
app.listen(PORT, (error) =>{
    if(!error)
        console.log("Server is Successfully Running, and App is listening on port: " .rainbow.italic + PORT.green.bold)
        //console.log(`Server running in ${process.env.NODE_ENV} mode on port ${PORT}`.yellow.bold)
    else 
        console.log("Error occurred, server can't start", error);
    }
);