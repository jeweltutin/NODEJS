const express = require('express');
const mongoose = require("mongoose");

const todoRoutes = require("./routes/todoRoutes");
const userRoutes = require('./routes/userRoutes');
const dateTimeRoutes = require('./routes/dateTimeRoutes');

const app = express();

// database connection with mongoose
const options = {
    autoIndex: true
    }
mongoose.connect('mongodb://localhost/todos', options)
        .then(()=> console.log('connection successfull'))
        .catch(err => console.log(err))

app.use(express.json());
//app.use(express.static('public'));
app.use('/jew', express.static('public'));
//app.use(express.static(`${__dirname}/public/`)); //not worked

app.get('/', (req,res) => {
    res.send('The aerver is running');
});

app.post('/', (req,res) => {
    //console.log(req.body);
    //console.log(typeof req.body);
    //console.log(req.body.name);
    res.send('This is home page with post request');
});

app.use('/api/todo', todoRoutes);
app.use('/api/user', userRoutes);

app.use('/date-time', dateTimeRoutes);

app.listen(5000,() => {
    console.log('listening on port 5000');
});