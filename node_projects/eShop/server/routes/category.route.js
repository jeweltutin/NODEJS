import express from 'express';
import { createCategory, deleteCategory, getCategories, getCategoriesWithProducts, getCategory, updateCategory } from '../controller/category.controller.js';
import { aCategoryWithHowmayProducts, createACategoryWithProducts, getAcategoryWithProducts } from '../controller/productv2.controller.js';

const router = express.Router();

router
    .route('/')
    .get(getCategories)
    .post(createCategory);

router
    .route('/v2')
    .get(getCategoriesWithProducts)
    .post(createACategoryWithProducts);
    router
    .route('/v2/category-product-count')
    .get(aCategoryWithHowmayProducts);

router 
    .route('/v2/:id')
    .get(getAcategoryWithProducts);


    
router
    .route('/:id')
    .get(getCategory)
    .put(updateCategory)
    .delete(deleteCategory);

export default router;