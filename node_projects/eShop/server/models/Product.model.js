//const mongoose = require('mongoose');

import mongoose from "mongoose";

const productSchema = mongoose.Schema({
    name: {
        type: String,
        required: true,
    },
    description: String,
    richDescription: {
        type: String,
        default: ''
    },
    image: {
        type: String,
        default: ''
    },
    images: [{
        type: String
    }],
    brand: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Brand',
    },
    mrp : {
        type: Number,
        //default:0
        required: true
    },
    sellingPrice: Number,
    /* category: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Category',
        required:true
    }, */
    categories: [
        {
            type: mongoose.Schema.Types.ObjectId,
            ref: 'Category',
            required: true
        }
    ],
    countInStock: {
        type: Number,
        required: true,
        min: 0,
        max: 255
    },
    rating: {
        type: Number,
        default: 0,
    },
    numReviews: {
        type: Number,
        default: 0,
    },
    isFeatured: {
        type: Boolean,
        default: false,
    },
    dateCreated: {
        type: Date,
        default: Date.now,
    },
    warrenty: String,
    isActive: {
        type: Boolean,
        default: true,
        required: true
    }
})

productSchema.virtual('id').get(function () {
    return this._id.toHexString();
});

productSchema.set('toJSON', {
    virtuals: true,
}); 


//exports.Product = mongoose.model('Product', productSchema);

const Product = mongoose.model('Product', productSchema);

export default Product;
