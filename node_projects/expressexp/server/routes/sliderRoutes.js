import { Router } from "express";
import uploadFile from "../config/multer.js";

import { getHomeSlides, createHomeSlide, deleteSlide } from "../controller/sliderController.js";


const router = Router();

router.route('/').get(getHomeSlides);
router.route('/add').post(uploadFile.fields([{ name: 'image', maxCount: 1 } ]), createHomeSlide);
router.route('/:id').delete(deleteSlide);


export default router;