import asyncHandler from "express-async-handler";
import Product from "../models/Product.model.js";
import Category from "../models/Category.model.js";
import mongoose from "mongoose";


export const createAProductWithCategories = asyncHandler(async (req, res) => {
    const { name, image, price, countInStock, description, brand, richDescription, rating, numReviews, isFeatured, categories } = req.body;

    //console.log(categories[1]);
    //process.exit(1);

    const existProduct = await Product.findOne({ name }, 'name countInStock price');

    if (existProduct) {
        res.status(400).json({
            success: false,
            msg: 'Product already exist!',
            data: existProduct
        });
    } else {
        const newProduct = await Product.create({
            name,
            image,
            price,
            brand,
            countInStock,
            description,
            richDescription,
            rating,
            numReviews,
            isFeatured,
            categories
        });

        for (var i = 0; i < categories.length; i++) {
            //console.log(categories[i]);
            await Category.updateOne({ '_id': categories[i] }, { $push: { products: newProduct._id } });
            //await Category.updateOne({ '_id': categories[i] }, { $set: { products: newProduct._id } });
        }
        return res.send(newProduct);
    }
})

export const createACategoryWithProducts = async (req, res) => {
    console.log(req.body);
    //process.exit(1);
    let category = new Category({
        name: req.body.name,
        icon: req.body.icon,
        color: req.body.color,
        products: req.body.products
    })

    category = await category.save();
    if (!category) {
        res.status(400).json('the category cannot be created!')
    }

    res.json(category);
}


export const getAllProducts = async (req, res) => {
    const productList = await Product.find().select('-v -rating -images -richDescription -dateCreated').populate('categories');

    if (productList != "") {
        res.json(productList);
    } else {
        res.status(500).json({
            success: false,
            msg: "No records found!"
        })
    }
}

export const getAcategoryWithProducts = async (req, res) => {
    const catId = req.params.id;
    //const theCat = await Category.find({ _id: catId });
    const theCat = await Category.findById(catId).populate('products', 'name price image');
    if (theCat != "" && theCat != null) {
        res.json(theCat);
    } else {
        res.status(500).json({
            success: false,
            msg: "No records found!"
        })
    }
}

export const aCategoryWithHowmayProducts = async (req, res) => {
    //const catId = req.params.id;
    const catId = '661cef5c002e46673756927c';
    const objId = mongoose.Types.ObjectId;
    //const theCat = await Category.find({ _id: catId });

    console.log("hello!");
    //process.exit(1);
    const data = await Category.aggregate([
        { $match: { color: "#0A0A08" } },
        { $limit: 20 },
        { $count: "total" }
    ]);

    //const result = data ? data[0] : '';

    const totalProductInACategory = await Category.aggregate([
        { $match: { _id: new objId('661cef5c002e46673756927c') } },
        {
            $project: {
                "name": 1,
                "products": 1
            }
        }
    ])

    const cnt = await Category.findById(catId);

    const ttlcnt = await Category.aggregate([
        {
            $project:
            {
                "name": 1,
                //"products": 1,
                //"Count products": { $size: "$products" },
                "Count products": { 
                    "$size": { "$ifNull": [ "$products", [] ] }
                }
            }
        }
    ])

    //console.log(totalProductInACategory)

    //res.json(cnt.products.length);
    res.json(ttlcnt);

}

export const getSingleProduct = async (req, res) => {
    const product = await Product.findById(req.params.id).populate('categories');

    if (!product) {
        res.status(500).json({ success: false })
    }
    res.send(product);
}

export const deleteProductWithUpdateCat = async (req, res) => {
    const productId = req.params.id;
    const delProduct = await Product.findByIdAndDelete(productId);
    if (delProduct) {
        await Category.updateMany({ '_id': delProduct.categories }, { $pull: { products: delProduct._id } });
        res.json({
            updatedCats: delProduct.categories,
            product: delProduct._id,
            msg: "Product Deleted Successfully"
        });
    } else {
        res.status(500).json({
            success: false,
            msg: "Product not found!"
        })
    }
}

export const updateProductWithCat = async (req, res) => {
    const productId = req.params.id;
    const data = req.body;
    const selectedCategories = req.body.categories;

    const prdUpdate = await Product.findByIdAndUpdate(
        productId,
        { $set: data },
        { new: true }
    )

    if (prdUpdate) {
        await Category.updateMany(
            { 'products': productId },
            { $pull: { products: productId } }
        )

        const existProducts = await Category.find({ _id: selectedCategories, products: productId }).select("products");

        //process.exit(1);
        if (existProducts.length == 0) {
            await Category.updateMany({ '_id': prdUpdate.categories }, { $push: { products: prdUpdate._id } });
            res.status(200).json({
                success: true,
                msg: 'Product updated successfully!',
                data: prdUpdate,
            });
        } else {
            res.status(400).json({
                success: false,
                msg: 'Not Found!',
                data: [],
            });
        }
    }
}
