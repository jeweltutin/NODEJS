import { Router } from "express";

import { getHomeSlides, createHomeSlide } from "../controller/sliderController.js";


const router = Router();

router.route('/').get(getHomeSlides);
//router.route('/add').post(upload.fields([{ name: 'image', maxCount: 1 }]),createHomeSlide);
router.route('/add').post(createHomeSlide);


export default router;