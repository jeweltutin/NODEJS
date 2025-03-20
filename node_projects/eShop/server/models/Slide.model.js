import mongoose from "mongoose";

const slideSchema = mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    image: {
        type: String,
        required: true
    },
    url: String,
    priority: Number,
    isActive: {
        type: Boolean,
        default: true,
        required: true
    }
}, { timestamps: true });  // Enables createdAt and updatedAt fields

const Slide = mongoose.model('Slide', slideSchema);
export default Slide;
