import express from 'express';
import { getProducts, createProduct, getProduct, updateProduct, deleteProduct, totalProduct, totalFeaturedProduct } from '../controller/product.controller.js';
import { createAProductWithCategories, deleteProductWithUpdateCat, getAllProducts, getSingleProduct, updateProductWithCat } from '../controller/productv2.controller.js';

const router = express.Router();

router
    .route('/')
    .get(getProducts)
    .post(createProduct);

router.route('/count').get(totalProduct);
router.route('/featured-count').get(totalFeaturedProduct);    // req.query
//router.route('/featured-count/:show').get(totalFeaturedProduct);  // For req.params 

router
    .route('/v2')
    .get(getAllProducts)
    .post(createAProductWithCategories);

router
    .route('/v2/:id')
    .get(getSingleProduct)
    .delete(deleteProductWithUpdateCat)
    .put(updateProductWithCat);

router
    .route('/:id')
    .get(getProduct)
    .put(updateProduct)
    .delete(deleteProduct);



export default router;