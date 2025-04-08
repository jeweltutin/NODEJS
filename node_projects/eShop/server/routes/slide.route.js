import express from "express";
import { getSlides, getSlideById, createSlide, updateSlide, deleteSlide } from "../controller/slide.controller.js";
import { expressjwt } from "express-jwt";
import uploadFile from "../helpers/multer.js";
import dotenv from 'dotenv';
dotenv.config();

const router = express.Router();
const secret = process.env.JWT_SECRET;

// Middleware to protect routes and decode the JWT token into req.user
const authJwt = expressjwt({
    secret,
    algorithms: ["HS256"],
    requestProperty: "user"
});

// Middleware to check if the user has a valid role
const authorizeRole = (roles) => {
    return (req, res, next) => {
        console.log('Decoded User:', req.user); // Debugging: Ensure token is decoded

        if (!req.user) {
            return res.status(401).json({ error: "User is not authenticated" });
        }

        const userRole = req.user.role;

        if (!roles.includes(userRole)) {
            return res.status(403).json({ error: "You don't have permission to access this route." });
        }

        next();
    };
};

// ✅ Apply `authJwt` before `authorizeRole`
// Protected GET route
router.get("/", authJwt, authorizeRole(['admin', 'editor']), getSlides);
router.get("/:id", authJwt, authorizeRole(['admin', 'editor']), getSlideById);

// ✅ Protect other routes with authJwt
router.post("/", authJwt, authorizeRole(['admin', 'editor']), uploadFile.single("image"), createSlide);
router.put("/:id", authJwt, authorizeRole(['admin', 'editor']), uploadFile.single("image"), updateSlide);
router.delete("/:id", authJwt, authorizeRole(['admin']), deleteSlide);

export default router;
