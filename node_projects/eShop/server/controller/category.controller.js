import asyncHandler from 'express-async-handler';
import Category from "../models/Category.model.js";

const createCategory = asyncHandler(async (req, res) => {
    const categoryName = req.body.name.toLowerCase().trim();
    const icon = req.files.icon?.[0].filename;
    const banner = req.files?.banner?.[0]?.filename;

    // Ensure the indexes are synced (especially if table was deleted)
    await Category.syncIndexes();

    let category = new Category({
        name: categoryName,
        icon: icon,
        banner: banner,
        color: req.body.color,
    });

    try {
        category = await category.save();
        res.status(201).json(category);
    } catch (error) {
        if (error.code === 11000) {
            // MongoDB duplicate key error
            return res.status(400).json({ message: 'Category already exists' });
        }

        // General server error
        res.status(500).json({ message: 'Something went wrong', error });
        console.error("Error while creating category:", error);
    }
});


const getCategories = async (req, res) => {
    const categoryList = await Category.find();
    //console.log(categoryList);
    if (!categoryList) {
        res.status(500).json({ success: false })
    } else {
        res.status(200).send(categoryList);
    }
}

const getCategoriesWithProducts = async (req, res) => {
    const categoryList = await Category.find().populate('products', 'name price countInStock');
    //console.log(categoryList);
    if (!categoryList) {
        res.status(500).json({ success: false })
    } else {
        res.status(200).send(categoryList);
    }
}

const getCategory = async (req, res) => {
    const category = await Category.findById(req.params.id);

    if (!category) {
        res.status(500).json({ message: 'The category with the given ID was not found.' })
    } else {
        res.status(200).send(category);
    }
}

const updateCategory = async (req, res) => {
    const category = await Category.findByIdAndUpdate(
        req.params.id,
        {
            name: req.body.name,
            //icon: req.body.icon || category.icon, //TypeError: Cannot read properties of undefined (reading 'icon')
            icon: req.body.icon,
            color: req.body.color
        },
        { new: true }
    )

    if (!category)
        return res.status(400).send('the category cannot be created!')

    res.send(category);
}



const deleteCategory = async (req, res) => {
    Category.findByIdAndRemove(req.params.id).then(category => {
        if (category) {
            return res.status(200).json({ success: true, message: 'the category is deleted!' })
        } else {
            return res.status(404).json({ success: false, message: "category not found!" })
        }
    }).catch(err => {
        return res.status(500).json({
            success: false,
            error: err.message
        })
    })
}

export { getCategories, getCategory, getCategoriesWithProducts, createCategory, updateCategory, deleteCategory }