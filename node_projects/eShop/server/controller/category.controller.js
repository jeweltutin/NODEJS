import asyncHandler from 'express-async-handler';
import Category from "../models/Category.model.js";

const createCategory = asyncHandler(async (req, res) => {
    let category = new Category({
        name: req.body.name,
        icon: req.body.icon,
        color: req.body.color
    })

    category = await category.save();
    if (!category) {
        res.status(400).json('the category cannot be created!')
    }

    res.json(category);

    /*category = await category.save()
       .then((cat) => {
           res.status(201).json(cat)
       })
       .catch((err) => {
           res.status(500).json({
               error: err.errors.name.properties.message,
               success: false
           })
       })
    */

    /*   try {
          category = await category.save();
          console.log(category);
          res.send(category);
      } catch (err) {
          // console.log(err)
         res.status(400).json('the category cannot be created!')
      }  */
})

const getCategories = async (req, res) => {
    const categoryList = await Category.find();
    //console.log(categoryList);
    if (!categoryList) {
        res.status(500).json({ success: false })
    } else {
        res.status(200).send(categoryList);
    }
}

const getCategory = async (req, res) => {
    const category = await Category.findById(req.params.id);

    if(!category) {
        res.status(500).json({message: 'The category with the given ID was not found.'})
    } else{
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
        { new: true}
    )

    if(!category)
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

export { getCategories, getCategory, createCategory, updateCategory, deleteCategory }