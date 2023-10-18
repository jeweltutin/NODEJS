import { Router } from 'express';
import { getHomeData } from '../controller/publicController.js';

const router = Router();

router.route('/slides').get(getHomeData);


export default router;