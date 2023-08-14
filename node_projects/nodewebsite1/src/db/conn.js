  const mongoose = require("mongoose");

  mongoose.connect("mongodb://localhost:27017/webmondb",{
    //useCreateIndex:true,
    useNewUrlParser:true,
    useUnifiedTopology:true

  }).then( function(){
    console.log("connection successful")
  }).catch(function (error) {
    console.log(error);
  })