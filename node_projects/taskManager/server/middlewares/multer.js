//const multer = require("multer");
//const path = require("path");

import multer from "multer";
import path from "path";

// Set storage engine
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "uploads/"); // Save files to the 'uploads' folder
  },
  filename: (req, file, cb) => {
    cb(null, `${Date.now()}-${file.originalname}`); // Rename file with a timestamp
  },
});

// Initialize Multer
const uploadImage = multer({
  storage,
  limits: { fileSize: 1024 * 1024 * 5 }, // 5MB max file size
});

// Export the middleware
//module.exports = uploadImage;
export default uploadImage;
