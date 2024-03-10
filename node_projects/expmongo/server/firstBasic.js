const express = require('express');
const mongoose = require("mongoose");

const todoRoutes = require("./routes/todoRoutes");
const userRoutes = require('./routes/userRoutes');
const queryRoutes = require('./routes/queryRoutes');
const dateTimeRoutes = require('./routes/dateTimeRoutes');

const app = express();

// database connection with mongoose
const options = {
    autoIndex: true
}
/* mongoose.connect('mongodb://localhost/todos', options)
    .then(() => console.log('connection successfull'))
    //.catch(err => console.log(err))
    .catch((error) => {
        console.log("DB is not Connected");
        console.log(error);
        process.exit(1);
    }) */

//DB connect with async await
const connectDB = async () => {
    try {
        await mongoose.connect('mongodb://localhost:27017/todos', options)
    } catch (error) {
        console.log("DB is not Connected");
        console.log(error);
        process.exit(1);
    }   
}

app.use(express.json());
//app.use(express.static('public'));
app.use('/jew', express.static('public'));  // http://localhost:5000/jew/images/slide1.webp // access public folder's files/images
//app.use(express.static(`${__dirname}/public/`)); //not worked

app.get('/', (req, res) => {
    res.send('The aerver is running');
});

app.post('/', (req, res) => {
    //console.log(req.body);
    //console.log(typeof req.body);
    //console.log(req.body.name);
    res.send('This is home page with post request');
});

app.use('/api/query', queryRoutes);
app.use('/api/todo', todoRoutes);
app.use('/api/user', userRoutes);

app.use('/date-time', dateTimeRoutes);

// Basic way server listen
/* app.listen(5000, () => {
    console.log('listening on port 5000');
}); */
const PORT = process.env.PORT || 5000;
app.listen(PORT, async() => {
    console.log(`Server is running at http://localhost:${PORT}`);
    await connectDB();
});
