import { Router } from 'express';
import  uploadFile  from '../config/multer.js';
import { createNews, getAllNews, getNews, updateNews, deleteNews } from '../controller/newsController.js';
import { protect } from '../middleware/authMiddleware.js';



const router = Router();

//router.post('/', protect, createNews);
//router.post('/', protect, uploadFile.fields([{ name: 'thumb', maxCount: 1 }]), createNews);
router.post('/', protect, uploadFile.fields([{ name: 'thumb', maxCount: 1 },{ name: 'logo', maxCount: 1 },{ name: 'cover', maxCount: 1 }]), createNews);    // Create news with uploads
router.get('/', getAllNews);
router.route('/:id').get(getNews);
router.route('/:id').put(protect, uploadFile.fields([{ name: 'thumb', maxCount: 1 }, { name: 'logo', maxCount: 1 },{ name: 'cover', maxCount: 1 } ]), updateNews );
router.delete('/:id', protect, deleteNews);

export default router;