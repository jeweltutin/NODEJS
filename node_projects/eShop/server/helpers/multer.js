//const express = require("express");
//const multer = require("multer");
//const path = require("path");
import express from "express";
import multer from "multer";
import path from "path";

const router = express.Router();

// Storage configuration
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    //cb(null, "public/images/"); // Folder to store uploaded images
    cb(null, path.join('./public', 'images'));
  },
  filename: (req, file, cb) => {
    cb(null, Date.now() + path.extname(file.originalname)); // Rename file
  },
});

// File filter (optional, to accept only images)
const fileFilter = (req, file, cb) => {
  if (file.mimetype.startsWith("image/")) {
    cb(null, true);
  } else {
    cb(new Error("Only image files are allowed!"), false);
  }
};

//const uploadFile = multer({ storage, fileFilter });

// Set file size limit (1MB)
const uploadFile = multer({
  storage: storage,
  limits: { fileSize: 1 * 1024 * 1024 }, // 1MB = 1024 * 1024 bytes
  fileFilter
});

export default uploadFile;
