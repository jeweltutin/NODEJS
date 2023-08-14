const express = require("express");
const multer = require("multer");
const path = require("path");

const app = express();

const UPLOADS_FOLDER = "./public/uploads/upimages/";

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, UPLOADS_FOLDER)
    },
    filename: (req, file, cb) => {
        const fileExtention = path.extname(file.originalname);
        const fileName = file.originalname
                            .replace(fileExtention, "")
                            .toLowerCase()
                            .split(" ")
                            .join("-") + "-" + Date.now()
        cb(null, fileName + fileExtention);
    }
})

var upload = multer({
    dest: UPLOADS_FOLDER,
    limits: {
        fileSize: 1000000  // 1MB   
    },
    fileFilter: (req, file, cb) => {
        //console.log(file);
        if ( file.mimetype == "image/png" || file.mimetype == "image/jpg" || file.mimetype === "image/jpeg") {
            cb(null, true);
        }else{
            //cb(null, false);
            cb(new Error("Only .jpg, .png or .jpeg format allowed!"));
        }
    }
});

var uploadMultipleWithErr = multer({
    storage: storage,
    limits: {
        fileSize: 1000000  // 1MB   
    },
    fileFilter: (req, file, cb) => {
        if(file.fieldname == "avatar"){
            if ( file.mimetype == "image/png" || file.mimetype == "image/jpg" || file.mimetype === "image/jpeg") {
                cb(null, true);
            }else{
                //cb(null, false);
                cb(new Error("Only .jpg, .png or .jpeg format allowed!"));
            }
        }else if(file.fieldname == "doc"){
            if ( file.mimetype == "application/pdf") {
                cb(null, true);
            }else{
                //cb(null, false);
                cb(new Error("Only .pdf format allowed!"));
            }
        }else{
            cb(new Error("There was an unknown error!"));
        }
      
    }
});



app.get("/", (req, res) => {
    res.send("Hello World");
});

app.post("/", upload.single("avatar"), (req, res) => {
    res.send("File Uploaded");
});

app.post("/multiplefiles", upload.array("images", 3), (req, res) => {
    res.send("File Uploaded");
});

app.post("/multiplefiles2", upload.fields([
    { name: "image", maxCount: 1 },
    { name: "gallery", maxCount: 3 },
]), (req, res) => {
    res.send("File Uploaded");
});

app.post("/multiplefileswr", uploadMultipleWithErr.fields([
    { name: "avatar", maxCount: 1 },
    { name: "doc", maxCount: 3 },
]), (req, res) => {
    console.log(req.files);
    res.send("File Uploaded");
});

// Default error handler
app.use((err, req, res, next) => {
    if (err) {
        if (err instanceof multer.MulterError) {
            //res.status(500).send(err.message); 
            res.status(500).send("There was an upload error!"); 
        } else {
            res.send(err.message);
        }
    }
    else {
        res.send("success uploaded");
    }
});

app.listen(3000, () => {
    console.log("app listening at port 3000");
});