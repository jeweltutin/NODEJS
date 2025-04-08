import express from "express";
import {createBrand, getBrands, getSingleBrand, updateBrand, deleteBrand } from "../controller/brand.controller.js";
import uploadFile from "../helpers/multer.js";
import { authJwt } from "../helpers/jwt.js";

const router = express.Router();

router.get("/", authJwt(), getBrands);
router.get("/:brandId", getSingleBrand);
router.post("/", uploadFile.fields([ { name: 'logo', maxCount: 1 }, { name: 'banner', maxCount:1 } ]), createBrand);
router.put("/:brandId", 
    uploadFile.fields([
        { name: 'logo', maxCount: 1 },
        { name: 'banner', maxCount: 1 }
    ]),
    updateBrand
);

router.delete("/:brandId", deleteBrand);



export default router;