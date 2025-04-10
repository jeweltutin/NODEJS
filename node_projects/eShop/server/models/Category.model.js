//const mongoose = require('mongoose');
import mongoose from 'mongoose';
import slugify from 'slugify';

const categorySchema = mongoose.Schema({
    name: {
        type: String,
        required: true,
        unique: true,
        trim: true,
        lowercase: true,
    },
    icon: String,
    color: {
        type: String,
    },
    banner: String,
    products: [
        {
            type: mongoose.Schema.Types.ObjectId,
            ref: 'Product'
        }
    ],
    slug: {
        type: String,
        unique: true
    },
    isActive: {
        type: Boolean,
        default: true,
        required: true
    }
}
    , { timestamps: true })

// Auto-generate slug from name before saving
categorySchema.pre("save", function (next) {
    if (this.isModified("name")) {
        this.slug = slugify(this.name, { lower: true, strict: true });
    }
    next();
});

categorySchema.virtual('productsCount').get(function () {
    return this.products.length;
});

/* categorySchema.virtual('id').get(function () {
    return this._id.toHexString();
});

categorySchema.set('toJSON', {
    virtuals: true,
}); */

//exports.Category = mongoose.model('Category', categorySchema);
const Category = mongoose.model('Category', categorySchema);

export default Category;


