import mongoose from "mongoose";
import Category from "../models/Category.model.js";
import Product from "../models/Product.model.js";


/* const getProducts = async (req, res) => {
    /* const products = {
        id: 1,
        name: "Redmi note 11",
        price: "20000",
        image: 'img_url'
    } 
    //res.send(products)

    const productList = await Product.find().select('-__v -rating -images -category -richDescription -dateCreated');

    if (productList != "") {
        res.json(productList);
    } else {
        res.status(500).json({
            success: false,
            msg: "No records found!"
        })
    }
}*/


// Get products with filtering if needed
const getProducts = async (req, res) => {
    let filter = {};
    if (req.query.categories) {
        filter = { category: req.query.categories.split(',') };
    }
    const productList = await Product.find(filter).select('-__v -rating -images -richDescription -dateCreated');

    if (productList != "") {
        res.json(productList);
    } else {
        res.status(500).json({
            success: false,
            msg: "No records found!"
        })
    }
}

const getProduct = async (req, res) => {
    const product = await Product.findById(req.params.id).populate('category');

    if (!product) {
        res.status(500).json({ success: false })
    }
    res.send(product);
}

const createProduct = async (req, res) => {
    //const newProduct = req.body;
    //res.json(newProduct)
    const category = await Category.findById(req.body.category);
    if (!category) return res.status(400).send('Invalid Category');

    const { name, image, price, countInStock, description, brand, richDescription, rating, numReviews, isFeatured } = req.body;
    const product = new Product({
        name,
        image,
        price,
        brand,
        category,
        countInStock,
        description,
        richDescription,
        rating,
        numReviews,
        isFeatured
    });

    product.save()
        .then((createdProduct => {
            res.status(201).json(createdProduct)
        }))
        .catch((err) => {
            res.status(500).json({
                //error: err.errors.name.properties.message,
                error: err.message,
                success: false
            })
        })
}

const totalProduct = async(req, res) => {
    //console.warn("Total product count");
    //process.exit(1);
    const totalProduct = await Product.countDocuments();
    if(!totalProduct) {
        res.status(500).json({success: false})
    } 
    res.send({
        totalProduct: totalProduct
    });
}

/* const totalFeaturedProduct = async(req, res) => {
    const tfp = await Product.find({
        isFeatured: true
    }).countDocuments();
    if(!tfp) {
        res.status(500).json({success: false})
    } 
    res.send({
        totalProduct: tfp
    });
} */

const totalFeaturedProduct = async(req, res) => {
    const show = req.query.show ? req.query.show : 0;
    //const show = req.params.show ? req.params.show : 0
    //console.log(show);
    //process.exit(1);
    const products = await Product.find({isFeatured: true}).limit(+show);
    if(!products) {
        res.status(500).json({success: false})
    } 
    res.send(products);
}

const updateProduct = async (req, res) => {
    if (!mongoose.isValidObjectId(req.params.id)) {
        return res.status(400).send('Invalid Product Id')
    }
    const category = await Category.findById(req.body.category);
    if (!category) return res.status(400).send('Invalid Category')

    const product = await Product.findByIdAndUpdate(
        req.params.id,
        {
            name: req.body.name,
            description: req.body.description,
            richDescription: req.body.richDescription,
            image: req.body.image,
            brand: req.body.brand,
            price: req.body.price,
            category: req.body.category,
            countInStock: req.body.countInStock,
            rating: req.body.rating,
            numReviews: req.body.numReviews,
            isFeatured: req.body.isFeatured,
        },
        { new: true }
    )

    if (!product)
        return res.status(500).send('the product cannot be updated!')

    res.send(product);
}

const deleteProduct = async (req, res) => {
    Product.findByIdAndRemove(req.params.id).then(product => {
        if (product) {
            return res.status(200).json({ success: true, message: 'the product is deleted!' })
        } else {
            return res.status(404).json({ success: false, message: "product not found!" })
        }
    }).catch(err => {
        return res.status(500).json({ success: false, error: err })
    })
}


//export default getProducts;
export {
    getProducts,
    getProduct,
    totalProduct,
    totalFeaturedProduct,
    createProduct,
    updateProduct,
    deleteProduct
}