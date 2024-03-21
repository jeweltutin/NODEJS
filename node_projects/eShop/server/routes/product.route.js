import express from 'express';
import { getProducts, createProduct, getProduct, updateProduct, deleteProduct, totalProduct, totalFeaturedProduct } from '../controller/product.controller.js';

const router = express.Router();

router
    .route('/')
    .get(getProducts)
    .post(createProduct);

router.route('/count').get(totalProduct);
router.route('/featured-count').get(totalFeaturedProduct);    // req.query
//router.route('/featured-count/:show').get(totalFeaturedProduct);  // For req.params 


router
    .route('/:id')
    .get(getProduct)
    .put(updateProduct)
    .delete(deleteProduct);



export default router;