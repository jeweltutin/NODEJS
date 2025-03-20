import express from "express";
import { getSlides, createSlide, updateSlide, deleteSlide } from "../controller/slide.controller.js";
import { expressjwt } from "express-jwt";
import uploadFile from "../helpers/multer.js";

import dotenv from 'dotenv';
dotenv.config();

const router = express.Router();
const secret = process.env.JWT_SECRET;
// Middleware to protect admin routes
const adminAuth = expressjwt({ secret, algorithms: ["HS256"] });

// Public route
router.get("/", getSlides);

// Admin-protected routes
router.post("/", adminAuth, uploadFile.single("image"), createSlide);
router.put("/:id", adminAuth, uploadFile.single("image"), updateSlide);
router.delete("/:id", adminAuth, deleteSlide);

export default router;
