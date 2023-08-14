const express = require("express");
const path = require("path");
require("./db/conn");
const userMessage = require("./models/usermessage");

const hbs = require("hbs");



const app = express();
const port = process.env.PORT || 3000;

app.use(express.urlencoded({
    extended:false
}))

//For static web page
const staticpath = path.join(__dirname, "../public");
const partialpath = path.join(__dirname, "../views/partials");
//console.log( path.join(__dirname, "../public/css"));
app.use(express.static(staticpath)); 

app.set("view engine", "hbs");
hbs.registerPartials(partialpath);

// Routing
// app.get( path, callback )

/*app.get("/", function(req,res){
    res.send("Welcome form new website!");
})*/

app.get("/",function(req,res){
    res.render("index");
})
app.get("/slider",function(req,res){
    res.render("slider");
})
app.get("/contact",function(req,res){
    res.render("contact");
})

app.post("/contact", async(req, res) => {
    try{
        //res.send(req.body);
        const umsg = new userMessage(req.body);
        await umsg.save();
        res.status(201).render("index");
    }catch (error) {
        res.status(500).send(error)
    }
})

// server create
app.listen(port, function(){
    console.log(`Server is running at port no ${port}`);
});