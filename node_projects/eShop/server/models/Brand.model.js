import mongoose from "mongoose";
import slugify from "slugify";

const brandSchema = new mongoose.Schema({
    name: {
        type: String,
        required: true,
        unique: true, // Ensure brand names are unique
        trim: true
    },
    logo: {
        type: String, // Store the image URL
    },
    banner: {
        type: String // Store the banner image URL
    },
    products: [{
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Product' // Reference to the Product model
    }],
    slug: {
        type: String,
        unique: true
    },
    isActive: {
        type: Boolean,
        default: true,
        required: true
    }
}, { timestamps: true });

// Auto-generate slug from name before saving
brandSchema.pre("save", function (next) {
    if (this.isModified("name")) {
        this.slug = slugify(this.name, { lower: true, strict: true });
    }
    next();
});

const Brand = mongoose.model('Brand', brandSchema);
export default Brand;
