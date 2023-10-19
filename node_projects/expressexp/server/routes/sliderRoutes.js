import { Router } from "express";
import uploadFile from "../config/multer.js";

import { getHomeSlides, createHomeSlide, deleteSlide, updateHomeSlide } from "../controller/sliderController.js";
import { protect } from "../middleware/authMiddleware.js";


const router = Router();

router.route('/all').get(getHomeSlides);
router.route('/add').post(protect, uploadFile.fields([{ name: 'image', maxCount: 1 } ]), createHomeSlide);
router.route('/:id').delete(deleteSlide)
                    .put(protect, uploadFile.fields([{ name: 'image', maxCount: 1 }]), updateHomeSlide);


export default router;